package §>!Z§
{
   import §&H§.*;
   import §3b§.*;
   import §@!3§.*;
   
   use namespace b2internal;
   
   public class b2Collision
   {
      
      public static const b2_nullFeature:uint = 255;
      
      private static var §?!d§:Vector.<§"h§>;
      
      private static var s_clipPoints1:Vector.<§"h§>;
      
      private static var s_clipPoints2:Vector.<§"h§>;
      
      private static var §[!w§:Vector.<int>;
      
      private static var §!!T§:Vector.<int>;
      
      private static var §do§:b2Vec2;
      
      private static var §'V§:b2Vec2;
      
      private static var §=k§:b2Vec2;
      
      private static var §,!P§:b2Vec2;
      
      private static var §7!G§:b2Vec2;
      
      private static var s_tangent2:b2Vec2;
      
      private static var s_v11:b2Vec2;
      
      private static var s_v12:b2Vec2;
      
      private static var b2CollidePolyTempVec:b2Vec2;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            b2_nullFeature = 255;
            loop0:
            while(true)
            {
               §?!d§ = §^3§();
               loop1:
               while(true)
               {
                  s_clipPoints1 = §^3§();
                  while(true)
                  {
                     s_clipPoints2 = §^3§();
                     loop6:
                     while(!(_loc1_ && _loc1_))
                     {
                        §'V§ = new b2Vec2();
                        loop7:
                        for(; _loc2_; if(!(_loc2_ || _loc2_))
                        {
                           continue;
                        },§§goto(addr58))
                        {
                           §=k§ = new b2Vec2();
                           loop8:
                           while(true)
                           {
                              §,!P§ = new b2Vec2();
                              while(true)
                              {
                                 §7!G§ = new b2Vec2();
                                 addr110:
                                 while(!_loc1_)
                                 {
                                    s_tangent2 = new b2Vec2();
                                    while(true)
                                    {
                                       if(!_loc1_)
                                       {
                                          if(_loc1_)
                                          {
                                             break;
                                          }
                                          continue loop0;
                                       }
                                       addr179:
                                       while(true)
                                       {
                                          §[!w§ = new Vector.<int>(1);
                                          addr173:
                                          while(true)
                                          {
                                             §!!T§ = new Vector.<int>(1);
                                             break loop7;
                                          }
                                       }
                                    }
                                    continue loop1;
                                 }
                                 continue loop8;
                                 addr66:
                                 if(_loc1_ && _loc1_)
                                 {
                                    continue;
                                 }
                                 if(_loc1_)
                                 {
                                    continue loop6;
                                 }
                                 if(!_loc1_)
                                 {
                                    s_v12 = new b2Vec2();
                                    while(true)
                                    {
                                       if(!_loc2_)
                                       {
                                          while(true)
                                          {
                                             if(_loc2_)
                                             {
                                                §§goto(addr66);
                                             }
                                             else
                                             {
                                                §§goto(addr110);
                                             }
                                          }
                                          continue loop6;
                                          addr64:
                                       }
                                       if(!_loc1_)
                                       {
                                          continue loop7;
                                       }
                                       §§goto(addr93);
                                       addr58:
                                       b2CollidePolyTempVec = new b2Vec2();
                                       if(!(_loc1_ && _loc1_))
                                       {
                                          return;
                                       }
                                    }
                                    continue loop7;
                                 }
                                 §§goto(addr173);
                              }
                           }
                        }
                        while(true)
                        {
                           §do§ = new b2Vec2();
                           continue loop6;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr179);
      }
      
      public function b2Collision()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function §1!f§(param1:Vector.<§"h§>, param2:Vector.<§"h§>, param3:b2Vec2, param4:Number) : int
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc5_:§"h§ = null;
         var _loc6_:int = 0;
         var _loc7_:b2Vec2 = null;
         var _loc9_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:b2Vec2 = null;
         var _loc13_:§"h§ = null;
         if(_loc14_ || param1)
         {
            _loc6_ = 0;
         }
         _loc7_ = (_loc5_ = param2[0]).v;
         var _loc8_:b2Vec2 = (_loc5_ = param2[1]).v;
         if(_loc14_)
         {
            §§push(param3.x);
            if(!(_loc15_ && b2Collision))
            {
               §§push(_loc7_.x);
               if(!(_loc15_ && param1))
               {
                  §§push(§§pop() * §§pop());
                  if(_loc14_ || param2)
                  {
                     §§push(param3.y);
                     if(!(_loc15_ && b2Collision))
                     {
                        §§push(_loc7_.y);
                        if(!(_loc15_ && b2Collision))
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc14_)
                           {
                              addr110:
                              §§push(§§pop() + §§pop());
                              if(!(_loc15_ && b2Collision))
                              {
                                 §§push(param4);
                                 if(!_loc15_)
                                 {
                                    §§push(§§pop() - §§pop());
                                    if(_loc14_ || param3)
                                    {
                                       §§push(Number(§§pop()));
                                       if(_loc14_ || param1)
                                       {
                                          _loc9_ = §§pop();
                                          addr138:
                                          §§push(param3.x);
                                          if(!(_loc15_ && param2))
                                          {
                                             addr147:
                                             §§push(_loc8_.x);
                                             if(_loc14_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!(_loc15_ && param1))
                                                {
                                                   addr159:
                                                   §§push(param3.y);
                                                   if(_loc14_)
                                                   {
                                                      addr163:
                                                      §§push(§§pop() * _loc8_.y);
                                                      if(!(_loc15_ && param2))
                                                      {
                                                         addr185:
                                                         §§push(§§pop() + §§pop());
                                                         if(!_loc15_)
                                                         {
                                                            §§push(param4);
                                                         }
                                                         var _loc10_:Number = §§pop();
                                                         if(!(_loc15_ && param1))
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
                                                                        addr325:
                                                                        while(true)
                                                                        {
                                                                        }
                                                                     }
                                                                     addr315:
                                                                  }
                                                                  loop4:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc10_);
                                                                     loop5:
                                                                     while(true)
                                                                     {
                                                                        §§push(0);
                                                                        addr293:
                                                                        while(_loc14_ || param3)
                                                                        {
                                                                           if(§§pop() <= §§pop())
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 param1[_loc6_++].Set(param2[1]);
                                                                                 addr311:
                                                                                 while(true)
                                                                                 {
                                                                                 }
                                                                              }
                                                                              addr301:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc9_);
                                                                              if(!(_loc15_ && param3))
                                                                              {
                                                                                 addr279:
                                                                                 §§push(_loc10_);
                                                                                 if(_loc14_)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(!_loc14_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    continue loop0;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() - _loc10_);
                                                                                    addr281:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() / §§pop());
                                                                                       if(_loc14_)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                          addr284:
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          _loc11_ = §§pop();
                                                                                          addr286:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc14_)
                                                                                             {
                                                                                                if(true)
                                                                                                {
                                                                                                   §§push(_loc12_ = (_loc5_ = param1[_loc6_]).v);
                                                                                                   §§push(_loc7_.x);
                                                                                                   if(_loc14_ || param3)
                                                                                                   {
                                                                                                      §§push(_loc11_);
                                                                                                      if(!(_loc15_ && param3))
                                                                                                      {
                                                                                                         §§push(_loc8_.x);
                                                                                                         if(_loc14_ || b2Collision)
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
                                                                                                      if(_loc14_ || param3)
                                                                                                      {
                                                                                                         §§push(_loc11_);
                                                                                                         if(!(_loc15_ && param3))
                                                                                                         {
                                                                                                            §§push(_loc8_.y);
                                                                                                            if(_loc14_ || param2)
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
                                                                                                }
                                                                                                continue loop4;
                                                                                                if(!_loc15_)
                                                                                                {
                                                                                                   if(_loc9_ > 0)
                                                                                                   {
                                                                                                      §§goto(addr418);
                                                                                                   }
                                                                                                   _loc13_ = param2[1];
                                                                                                   if(!_loc15_)
                                                                                                   {
                                                                                                      _loc5_.id = _loc13_.id;
                                                                                                   }
                                                                                                   §§goto(addr463);
                                                                                                }
                                                                                                addr418:
                                                                                                _loc13_ = param2[0];
                                                                                                if(!(_loc15_ && b2Collision))
                                                                                                {
                                                                                                   _loc5_.id = _loc13_.id;
                                                                                                   if(_loc14_ || b2Collision)
                                                                                                   {
                                                                                                      addr463:
                                                                                                      _loc6_++;
                                                                                                   }
                                                                                                }
                                                                                                return _loc6_;
                                                                                             }
                                                                                             §§goto(addr315);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 addr279:
                                                                              }
                                                                              break;
                                                                              §§goto(addr311);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(_loc15_ && param1)
                                                                              {
                                                                                 continue loop5;
                                                                              }
                                                                              §§push(_loc9_);
                                                                              if(!(_loc15_ && param1))
                                                                              {
                                                                                 §§goto(addr279);
                                                                              }
                                                                              §§goto(addr281);
                                                                           }
                                                                        }
                                                                        continue loop1;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr261);
                                                      }
                                                   }
                                                }
                                                §§goto(addr185);
                                             }
                                             §§push(§§pop() - §§pop());
                                             if(_loc14_ || param1)
                                             {
                                                §§goto(addr185);
                                             }
                                          }
                                          §§goto(addr185);
                                       }
                                    }
                                    §§goto(addr159);
                                 }
                                 §§goto(addr163);
                              }
                              §§goto(addr147);
                           }
                           §§goto(addr185);
                        }
                        §§goto(addr163);
                     }
                     §§goto(addr185);
                  }
                  §§goto(addr147);
               }
               §§goto(addr110);
            }
            §§goto(addr185);
         }
         §§goto(addr138);
      }
      
      public static function §=R§(param1:b2PolygonShape, param2:b2Transform, param3:int, param4:b2PolygonShape, param5:b2Transform) : Number
      {
         var _loc26_:Boolean = false;
         var _loc27_:Boolean = true;
         var _loc11_:b2Mat22 = null;
         var _loc12_:b2Vec2 = null;
         var _loc25_:* = NaN;
         §§push(param1.§]D§);
         if(!_loc26_)
         {
            §§push(int(§§pop()));
         }
         var _loc6_:* = §§pop();
         var _loc7_:Vector.<b2Vec2> = param1.§0!k§;
         var _loc8_:Vector.<b2Vec2> = param1.§0!%§;
         §§push(param4.§]D§);
         if(_loc27_ || param2)
         {
            §§push(int(§§pop()));
         }
         var _loc9_:* = §§pop();
         var _loc10_:Vector.<b2Vec2> = param4.§0!k§;
         _loc11_ = param2.R;
         _loc12_ = _loc8_[param3];
         §§push(_loc11_.col1.x);
         if(_loc27_ || param2)
         {
            §§push(_loc12_.x);
            if(_loc27_ || param3)
            {
               addr96:
               §§push(§§pop() * §§pop());
               if(_loc27_)
               {
                  §§push(_loc11_.col2.x);
                  if(_loc27_)
                  {
                     §§push(§§pop() * _loc12_.y);
                  }
               }
               var _loc13_:Number = §§pop();
               §§push(_loc11_.col1.y);
               if(!_loc26_)
               {
                  §§push(_loc12_.x);
                  if(_loc27_ || param2)
                  {
                     §§push(§§pop() * §§pop());
                     if(_loc27_ || param3)
                     {
                        addr120:
                        §§push(_loc11_.col2.y);
                        if(!(_loc26_ && param2))
                        {
                           addr133:
                           §§push(§§pop() + §§pop() * _loc12_.y);
                           if(!(_loc26_ && param2))
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                        §§goto(addr133);
                     }
                     var _loc14_:* = §§pop();
                     §§push((_loc11_ = param5.R).col1.x);
                     if(_loc27_)
                     {
                        §§push(_loc13_);
                        if(!(_loc26_ && param3))
                        {
                           §§push(§§pop() * §§pop());
                           if(!(_loc26_ && param2))
                           {
                              addr168:
                              §§push(_loc11_.col1.y);
                              if(!(_loc26_ && param2))
                              {
                                 addr178:
                                 §§push(§§pop() * _loc14_);
                              }
                              §§push(§§pop() + §§pop());
                              if(_loc27_)
                              {
                                 addr183:
                                 §§push(Number(§§pop()));
                              }
                              var _loc15_:* = §§pop();
                              §§push(_loc11_.col2.x);
                              if(!(_loc26_ && param1))
                              {
                                 §§push(_loc13_);
                                 if(_loc27_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(!_loc26_)
                                    {
                                       §§push(_loc11_.col2.y);
                                       if(!_loc26_)
                                       {
                                          addr206:
                                          §§push(§§pop() * _loc14_);
                                       }
                                       §§push(§§pop() + §§pop());
                                       if(_loc27_ || param1)
                                       {
                                          addr217:
                                          var _loc16_:Number = §§pop();
                                          var _loc17_:* = 0;
                                          var _loc18_:* = Number(Number.MAX_VALUE);
                                          var _loc19_:int = 0;
                                          while(_loc19_ < _loc9_)
                                          {
                                             §§push((_loc12_ = _loc10_[_loc19_]).x);
                                             if(_loc27_ || b2Collision)
                                             {
                                                §§push(_loc15_);
                                                if(!_loc26_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(!(_loc26_ && param1))
                                                   {
                                                      §§push(_loc12_.y);
                                                      if(_loc27_)
                                                      {
                                                         §§push(§§pop() * _loc16_);
                                                         if(_loc26_)
                                                         {
                                                         }
                                                         addr284:
                                                         if(§§pop() < §§pop())
                                                         {
                                                            if(_loc26_ && b2Collision)
                                                            {
                                                               continue;
                                                            }
                                                            addr301:
                                                            §§push(_loc25_);
                                                            if(_loc27_ || param3)
                                                            {
                                                               §§push(Number(§§pop()));
                                                            }
                                                            _loc18_ = §§pop();
                                                            if(!(_loc26_ && param1))
                                                            {
                                                               §§push(_loc19_);
                                                               if(!(_loc26_ && param2))
                                                               {
                                                                  §§push(int(§§pop()));
                                                               }
                                                               _loc17_ = §§pop();
                                                               if(_loc26_ && b2Collision)
                                                               {
                                                                  continue;
                                                               }
                                                            }
                                                         }
                                                         _loc19_++;
                                                         continue;
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                      if(!(_loc26_ && b2Collision))
                                                      {
                                                         addr269:
                                                         §§push(Number(§§pop()));
                                                         if(!_loc26_)
                                                         {
                                                            addr272:
                                                            §§push(§§pop());
                                                            if(!(_loc26_ && b2Collision))
                                                            {
                                                               _loc25_ = §§pop();
                                                               if(!_loc26_)
                                                               {
                                                                  addr283:
                                                                  §§goto(addr284);
                                                                  §§push(_loc18_);
                                                               }
                                                               §§goto(addr301);
                                                            }
                                                            §§goto(addr284);
                                                         }
                                                      }
                                                      §§goto(addr283);
                                                   }
                                                   §§goto(addr272);
                                                }
                                                §§goto(addr284);
                                             }
                                             §§goto(addr269);
                                          }
                                          _loc12_ = _loc7_[param3];
                                          _loc11_ = param2.R;
                                          §§push(param2.position.x);
                                          if(_loc27_)
                                          {
                                             §§push(_loc11_.col1.x);
                                             if(_loc27_)
                                             {
                                                §§push(_loc12_.x);
                                                if(!(_loc26_ && b2Collision))
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc27_)
                                                   {
                                                      addr371:
                                                      §§push(_loc11_.col2.x);
                                                      if(!_loc26_)
                                                      {
                                                         addr379:
                                                         §§push(§§pop() + §§pop() * _loc12_.y);
                                                      }
                                                      §§goto(addr379);
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                   if(_loc27_)
                                                   {
                                                      addr384:
                                                      var _loc20_:Number = §§pop();
                                                      §§push(param2.position.y);
                                                      if(!_loc26_)
                                                      {
                                                         §§push(_loc11_.col1.y);
                                                         if(!(_loc26_ && param2))
                                                         {
                                                            §§push(_loc12_.x);
                                                            if(_loc27_ || param2)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(_loc27_ || param1)
                                                               {
                                                                  addr417:
                                                                  §§push(_loc11_.col2.y);
                                                                  if(!_loc26_)
                                                                  {
                                                                     addr422:
                                                                     §§push(§§pop() * _loc12_.y);
                                                                  }
                                                                  §§push(§§pop() + §§pop());
                                                               }
                                                               §§push(§§pop() + §§pop());
                                                               if(_loc27_)
                                                               {
                                                                  addr430:
                                                                  var _loc21_:Number = §§pop();
                                                                  _loc12_ = _loc10_[_loc17_];
                                                                  _loc11_ = param5.R;
                                                                  §§push(param5.position.x);
                                                                  if(!_loc26_)
                                                                  {
                                                                     §§push(_loc11_.col1.x);
                                                                     if(!(_loc26_ && param1))
                                                                     {
                                                                        §§push(_loc12_.x);
                                                                        if(_loc27_)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(!(_loc26_ && param3))
                                                                           {
                                                                              addr476:
                                                                              §§push(_loc11_.col2.x);
                                                                              if(_loc27_)
                                                                              {
                                                                                 addr472:
                                                                                 §§push(§§pop() * _loc12_.y);
                                                                              }
                                                                              §§push(§§pop() + (§§pop() + §§pop()));
                                                                              if(!(_loc26_ && b2Collision))
                                                                              {
                                                                                 addr484:
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                              var _loc22_:* = §§pop();
                                                                              §§push(param5.position.y);
                                                                              if(!(_loc26_ && param2))
                                                                              {
                                                                                 §§push(_loc11_.col1.y);
                                                                                 if(!_loc26_)
                                                                                 {
                                                                                    §§push(_loc12_.x);
                                                                                    if(_loc27_ || param1)
                                                                                    {
                                                                                       addr532:
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(!(_loc26_ && param2))
                                                                                       {
                                                                                          §§push(_loc11_.col2.y);
                                                                                          if(_loc27_ || b2Collision)
                                                                                          {
                                                                                             §§push(§§pop() * _loc12_.y);
                                                                                          }
                                                                                       }
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(_loc27_)
                                                                                       {
                                                                                          addr535:
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                       var _loc23_:* = §§pop();
                                                                                       if(!(_loc26_ && b2Collision))
                                                                                       {
                                                                                          §§push(_loc22_);
                                                                                          if(_loc27_ || b2Collision)
                                                                                          {
                                                                                             §§push(_loc20_);
                                                                                             if(!_loc26_)
                                                                                             {
                                                                                                §§push(§§pop() - §§pop());
                                                                                                if(!(_loc26_ && param3))
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                   if(_loc27_ || b2Collision)
                                                                                                   {
                                                                                                      _loc22_ = §§pop();
                                                                                                      if(!(_loc26_ && param2))
                                                                                                      {
                                                                                                         §§push(_loc23_);
                                                                                                         if(!(_loc26_ && param2))
                                                                                                         {
                                                                                                            §§push(_loc21_);
                                                                                                            if(_loc27_)
                                                                                                            {
                                                                                                               §§push(§§pop() - §§pop());
                                                                                                               if(!_loc26_)
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  if(!_loc26_)
                                                                                                                  {
                                                                                                                     addr596:
                                                                                                                     _loc23_ = §§pop();
                                                                                                                     addr597:
                                                                                                                     §§push(_loc22_);
                                                                                                                     if(!_loc26_)
                                                                                                                     {
                                                                                                                        §§push(_loc13_);
                                                                                                                        if(_loc27_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           if(!(_loc26_ && b2Collision))
                                                                                                                           {
                                                                                                                              addr621:
                                                                                                                              §§push(_loc23_);
                                                                                                                              if(_loc27_)
                                                                                                                              {
                                                                                                                                 addr624:
                                                                                                                                 §§push(§§pop() * _loc14_);
                                                                                                                                 if(!(_loc26_ && param3))
                                                                                                                                 {
                                                                                                                                    addr633:
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    if(!(_loc26_ && param1))
                                                                                                                                    {
                                                                                                                                       addr641:
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                    }
                                                                                                                                    §§push(§§pop());
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr641);
                                                                                                                        }
                                                                                                                        var _loc24_:* = §§pop();
                                                                                                                        return §§pop();
                                                                                                                     }
                                                                                                                     §§goto(addr641);
                                                                                                                  }
                                                                                                                  §§goto(addr621);
                                                                                                               }
                                                                                                               §§goto(addr641);
                                                                                                            }
                                                                                                            §§goto(addr633);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr597);
                                                                                                   }
                                                                                                   §§goto(addr596);
                                                                                                }
                                                                                                §§goto(addr621);
                                                                                             }
                                                                                             §§goto(addr624);
                                                                                          }
                                                                                          §§goto(addr641);
                                                                                       }
                                                                                       §§goto(addr596);
                                                                                    }
                                                                                    §§push(§§pop() + §§pop());
                                                                                 }
                                                                                 §§goto(addr532);
                                                                              }
                                                                              §§goto(addr535);
                                                                           }
                                                                           §§goto(addr476);
                                                                        }
                                                                        §§goto(addr472);
                                                                     }
                                                                     §§goto(addr476);
                                                                  }
                                                                  §§goto(addr484);
                                                               }
                                                               §§goto(addr430);
                                                            }
                                                            §§goto(addr422);
                                                         }
                                                         §§goto(addr417);
                                                      }
                                                      §§goto(addr430);
                                                   }
                                                   §§goto(addr384);
                                                }
                                                §§goto(addr379);
                                             }
                                             §§goto(addr371);
                                          }
                                          §§goto(addr384);
                                       }
                                    }
                                    §§goto(addr217);
                                 }
                                 §§goto(addr206);
                              }
                              §§goto(addr217);
                           }
                           §§goto(addr183);
                        }
                        §§goto(addr178);
                     }
                     §§goto(addr168);
                  }
                  §§goto(addr133);
               }
               §§goto(addr120);
            }
            §§push(§§pop() + §§pop());
            if(!_loc27_)
            {
            }
         }
         §§goto(addr96);
      }
      
      public static function §var§(param1:Vector.<int>, param2:b2PolygonShape, param3:b2Transform, param4:b2PolygonShape, param5:b2Transform) : Number
      {
         var _loc26_:Boolean = false;
         var _loc27_:Boolean = true;
         var _loc8_:b2Vec2 = null;
         var _loc9_:b2Mat22 = null;
         var _loc22_:* = 0;
         var _loc23_:* = NaN;
         var _loc24_:* = 0;
         var _loc25_:* = NaN;
         §§push(param2.§]D§);
         if(_loc27_)
         {
            §§push(int(§§pop()));
         }
         var _loc6_:* = §§pop();
         var _loc7_:Vector.<b2Vec2> = param2.§0!%§;
         _loc9_ = param5.R;
         _loc8_ = param4.§=!S§;
         §§push(param5.position.x);
         if(!_loc26_)
         {
            §§push(_loc9_.col1.x);
            if(!(_loc26_ && b2Collision))
            {
               §§push(_loc8_.x);
               if(!_loc26_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc27_ || param2)
                  {
                     addr76:
                     §§push(_loc9_.col2.x);
                     if(!(_loc26_ && param1))
                     {
                        addr86:
                        §§push(§§pop() * _loc8_.y);
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc27_ || b2Collision)
                  {
                     addr98:
                     §§push(Number(§§pop()));
                  }
                  var _loc10_:* = §§pop();
                  §§push(param5.position.y);
                  if(!(_loc26_ && param2))
                  {
                     §§push(_loc9_.col1.y);
                     if(!(_loc26_ && param3))
                     {
                        §§push(_loc8_.x);
                        if(_loc27_)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc27_ || b2Collision)
                           {
                              addr141:
                              §§push(_loc9_.col2.y);
                              if(!_loc26_)
                              {
                                 addr137:
                                 §§push(§§pop() * _loc8_.y);
                              }
                              §§push(§§pop() + (§§pop() + §§pop()));
                              if(_loc27_ || param3)
                              {
                                 addr149:
                                 §§push(Number(§§pop()));
                              }
                              var _loc11_:* = §§pop();
                              _loc9_ = param3.R;
                              _loc8_ = param2.§=!S§;
                              if(_loc27_ || b2Collision)
                              {
                                 §§push(_loc10_);
                                 if(!(_loc26_ && param1))
                                 {
                                    §§push(param3.position);
                                    if(_loc27_ || param2)
                                    {
                                       §§push(§§pop().x);
                                       if(_loc27_)
                                       {
                                          §§push(_loc9_.col1);
                                          if(_loc27_ || param3)
                                          {
                                             §§push(§§pop().x);
                                             if(!_loc26_)
                                             {
                                                §§push(_loc8_.x);
                                                if(!_loc26_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc27_ || b2Collision)
                                                   {
                                                      §§push(_loc9_.col2);
                                                      if(!(_loc26_ && param2))
                                                      {
                                                         §§push(§§pop().x);
                                                         if(_loc27_ || b2Collision)
                                                         {
                                                            §§push(_loc8_.y);
                                                            if(_loc27_ || param2)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(!_loc26_)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  if(!(_loc26_ && b2Collision))
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     if(!(_loc26_ && b2Collision))
                                                                     {
                                                                        addr255:
                                                                        §§push(§§pop() - §§pop());
                                                                        if(_loc27_)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           if(!_loc26_)
                                                                           {
                                                                              _loc10_ = §§pop();
                                                                              if(!_loc26_)
                                                                              {
                                                                                 §§push(_loc11_);
                                                                                 if(_loc27_)
                                                                                 {
                                                                                    addr269:
                                                                                    §§push(param3.position.y);
                                                                                    if(!_loc26_)
                                                                                    {
                                                                                       §§push(_loc9_.col1);
                                                                                       if(!(_loc26_ && b2Collision))
                                                                                       {
                                                                                          §§push(§§pop().y);
                                                                                          if(_loc27_)
                                                                                          {
                                                                                             addr284:
                                                                                             §§push(_loc8_.x);
                                                                                             if(_loc27_)
                                                                                             {
                                                                                                addr288:
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(_loc27_ || b2Collision)
                                                                                                {
                                                                                                   addr298:
                                                                                                   §§push(_loc9_.col2.y);
                                                                                                   if(!(_loc26_ && param3))
                                                                                                   {
                                                                                                      addr309:
                                                                                                      addr308:
                                                                                                      §§push(§§pop() + §§pop() * _loc8_.y);
                                                                                                      if(_loc26_ && param3)
                                                                                                      {
                                                                                                      }
                                                                                                      §§push(§§pop() + §§pop() * §§pop());
                                                                                                      if(_loc27_ || param1)
                                                                                                      {
                                                                                                         addr366:
                                                                                                         var _loc12_:Number = §§pop();
                                                                                                         §§push(_loc10_);
                                                                                                         if(!_loc26_)
                                                                                                         {
                                                                                                            §§push(param3.R.col2.x);
                                                                                                            if(_loc27_ || param3)
                                                                                                            {
                                                                                                               addr405:
                                                                                                               addr406:
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               if(!(_loc26_ && b2Collision))
                                                                                                               {
                                                                                                                  §§push(_loc11_);
                                                                                                                  if(_loc27_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() * param3.R.col2.y);
                                                                                                                  }
                                                                                                               }
                                                                                                               var _loc13_:Number = §§pop();
                                                                                                               var _loc14_:* = 0;
                                                                                                               §§push(-Number.MAX_VALUE);
                                                                                                               if(_loc27_ || param2)
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                               }
                                                                                                               var _loc15_:* = §§pop();
                                                                                                               var _loc16_:int = 0;
                                                                                                               while(_loc16_ < _loc6_)
                                                                                                               {
                                                                                                                  §§push((_loc8_ = _loc7_[_loc16_]).x);
                                                                                                                  if(!(_loc26_ && param3))
                                                                                                                  {
                                                                                                                     §§push(_loc12_);
                                                                                                                     if(_loc27_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        if(!_loc26_)
                                                                                                                        {
                                                                                                                           §§push(_loc8_.y);
                                                                                                                           if(_loc27_ || b2Collision)
                                                                                                                           {
                                                                                                                              §§push(§§pop() * _loc13_);
                                                                                                                              if(!_loc26_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                 if(!(_loc26_ && param1))
                                                                                                                                 {
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                    if(!_loc26_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop());
                                                                                                                                       if(!(_loc26_ && param3))
                                                                                                                                       {
                                                                                                                                          addr477:
                                                                                                                                          _loc25_ = §§pop();
                                                                                                                                          if(_loc26_)
                                                                                                                                          {
                                                                                                                                          }
                                                                                                                                          addr493:
                                                                                                                                          _loc15_ = Number(§§pop());
                                                                                                                                          addr492:
                                                                                                                                          if(_loc27_ || param2)
                                                                                                                                          {
                                                                                                                                             §§push(_loc16_);
                                                                                                                                             if(!(_loc26_ && param2))
                                                                                                                                             {
                                                                                                                                                §§push(int(§§pop()));
                                                                                                                                             }
                                                                                                                                             _loc14_ = §§pop();
                                                                                                                                             if(_loc27_ || param3)
                                                                                                                                             {
                                                                                                                                                addr518:
                                                                                                                                                _loc16_++;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          continue;
                                                                                                                                       }
                                                                                                                                       addr481:
                                                                                                                                       if(§§pop() > §§pop())
                                                                                                                                       {
                                                                                                                                          if(_loc27_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc25_);
                                                                                                                                             if(!(_loc26_ && b2Collision))
                                                                                                                                             {
                                                                                                                                                §§goto(addr492);
                                                                                                                                             }
                                                                                                                                             §§goto(addr493);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr518);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§push(_loc15_);
                                                                                                                              }
                                                                                                                              §§goto(addr477);
                                                                                                                           }
                                                                                                                           §§goto(addr481);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr477);
                                                                                                               }
                                                                                                               §§push(§=R§(param2,param3,_loc14_,param4,param5));
                                                                                                               if(!_loc26_)
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                               }
                                                                                                               var _loc17_:* = §§pop();
                                                                                                               if(!(_loc26_ && param3))
                                                                                                               {
                                                                                                                  §§push(_loc14_);
                                                                                                                  if(!(_loc26_ && param1))
                                                                                                                  {
                                                                                                                     §§push(§§pop() - 1);
                                                                                                                     if(!_loc26_)
                                                                                                                     {
                                                                                                                        if(§§pop() >= 0)
                                                                                                                        {
                                                                                                                           addr564:
                                                                                                                           §§push(_loc14_);
                                                                                                                           if(!_loc26_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() - 1);
                                                                                                                              if(!_loc26_)
                                                                                                                              {
                                                                                                                                 addr570:
                                                                                                                                 §§push(int(§§pop()));
                                                                                                                                 if(_loc27_ || b2Collision)
                                                                                                                                 {
                                                                                                                                    addr592:
                                                                                                                                    var _loc18_:int = §§pop();
                                                                                                                                    addr591:
                                                                                                                                    §§push(§=R§(param2,param3,_loc18_,param4,param5));
                                                                                                                                    if(_loc27_ || param2)
                                                                                                                                    {
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                    }
                                                                                                                                    var _loc19_:* = §§pop();
                                                                                                                                    if(!_loc26_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc14_);
                                                                                                                                       if(_loc27_ || param3)
                                                                                                                                       {
                                                                                                                                          §§push(1);
                                                                                                                                          if(_loc27_ || param2)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                             if(_loc27_)
                                                                                                                                             {
                                                                                                                                                if(§§pop() < _loc6_)
                                                                                                                                                {
                                                                                                                                                   addr633:
                                                                                                                                                   §§push(_loc14_);
                                                                                                                                                   if(!_loc26_)
                                                                                                                                                   {
                                                                                                                                                      addr638:
                                                                                                                                                      §§push(int(§§pop() + 1));
                                                                                                                                                      if(_loc27_)
                                                                                                                                                      {
                                                                                                                                                         addr645:
                                                                                                                                                         §§push(int(§§pop()));
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr645);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§push(0);
                                                                                                                                                   if(!_loc26_)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr645);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                var _loc20_:* = §§pop();
                                                                                                                                                §§push(§=R§(param2,param3,_loc20_,param4,param5));
                                                                                                                                                if(_loc27_ || param3)
                                                                                                                                                {
                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                }
                                                                                                                                                var _loc21_:* = §§pop();
                                                                                                                                                if(_loc27_ || param3)
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
                                                                                                                                                                  addr1098:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc19_);
                                                                                                                                                                     addr1076:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc21_);
                                                                                                                                                                        addr1077:
                                                                                                                                                                        addr1022:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() > §§pop());
                                                                                                                                                                           addr1078:
                                                                                                                                                                           while(!_loc26_)
                                                                                                                                                                           {
                                                                                                                                                                           }
                                                                                                                                                                           continue loop4;
                                                                                                                                                                        }
                                                                                                                                                                        addr1022:
                                                                                                                                                                        while(!(_loc26_ && param3))
                                                                                                                                                                        {
                                                                                                                                                                           continue loop1;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
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
                                                                                                                                                                     while(_loc27_)
                                                                                                                                                                     {
                                                                                                                                                                        if(§§pop() <= §§pop())
                                                                                                                                                                        {
                                                                                                                                                                           param1[0] = _loc14_;
                                                                                                                                                                           loop12:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc17_);
                                                                                                                                                                              loop13:
                                                                                                                                                                              while(!(_loc27_ || param3))
                                                                                                                                                                              {
                                                                                                                                                                                 loop14:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    _loc23_ = §§pop();
                                                                                                                                                                                    loop15:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       loop16:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          loop17:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc24_);
                                                                                                                                                                                             if(!_loc26_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc26_ && param1))
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(-1);
                                                                                                                                                                                                   loop18:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(§§pop() == §§pop())
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc27_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc27_ || param2)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc27_ || param1)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc22_);
                                                                                                                                                                                                                  loop40:
                                                                                                                                                                                                                  while(!_loc26_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() - 1);
                                                                                                                                                                                                                     loop41:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(0);
                                                                                                                                                                                                                        loop34:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop() >= §§pop());
                                                                                                                                                                                                                           loop30:
                                                                                                                                                                                                                           while(_loc27_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!§§pop())
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc6_);
                                                                                                                                                                                                                                 while(!(_loc26_ && param1))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!(_loc26_ && param3))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop() - 1);
                                                                                                                                                                                                                                       loop39:
                                                                                                                                                                                                                                       while(!(_loc26_ && param3))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(int(§§pop()));
                                                                                                                                                                                                                                          loop44:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(int(§§pop()));
                                                                                                                                                                                                                                             loop33:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                _loc14_ = §§pop();
                                                                                                                                                                                                                                                addr981:
                                                                                                                                                                                                                                                addr1037:
                                                                                                                                                                                                                                                loop22:
                                                                                                                                                                                                                                                while(_loc27_ || param3)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc27_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc27_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         loop23:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(§=R§(param2,param3,_loc14_,param4,param5));
                                                                                                                                                                                                                                                            if(_loc27_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr744:
                                                                                                                                                                                                                                                               if(_loc26_ && b2Collision)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  while(!_loc26_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(_loc6_);
                                                                                                                                                                                                                                                                     if(!_loc27_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        continue loop34;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§push(§§pop() < §§pop());
                                                                                                                                                                                                                                                                     if(_loc26_ && b2Collision)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        continue loop30;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     if(!_loc27_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        continue loop3;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     if(!§§pop())
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(0);
                                                                                                                                                                                                                                                                        if(_loc27_ || param2)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§goto(addr884);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr885);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr744);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  continue loop10;
                                                                                                                                                                                                                                                                  addr842:
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               if(!_loc27_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  continue loop41;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               if(_loc27_ || param3)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                  if(!(_loc26_ && param3))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(§§pop());
                                                                                                                                                                                                                                                                     if(_loc27_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(_loc26_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           continue loop2;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        _loc17_ = §§pop();
                                                                                                                                                                                                                                                                        addr774:
                                                                                                                                                                                                                                                                        loop29:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc27_ || b2Collision)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr781:
                                                                                                                                                                                                                                                                              §§push(_loc23_);
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc26_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    continue loop11;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 if(§§pop() <= §§pop())
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    param1[0] = _loc22_;
                                                                                                                                                                                                                                                                                    if(!(_loc26_ && b2Collision))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(_loc26_ && param3)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr785:
                                                                                                                                                                                                                                                                                          if(!(_loc27_ || param2))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             break;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          continue loop12;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       if(_loc27_ || param1)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!_loc27_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             continue loop15;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§push(_loc23_);
                                                                                                                                                                                                                                                                                          if(!_loc26_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(_loc26_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                loop25:
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(_loc26_ && b2Collision)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      continue loop29;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   if(!_loc27_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      continue loop39;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                   addr829:
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      continue loop25;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                continue loop33;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             if(_loc27_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                return §§pop();
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             addr951:
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(int(§§pop()));
                                                                                                                                                                                                                                                                                                if(!_loc26_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   continue loop44;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                continue loop33;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             _loc23_ = §§pop();
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(!_loc26_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(_loc26_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   break;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                continue loop23;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             continue loop16;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(_loc19_);
                                                                                                                                                                                                                                                                                             break loop39;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          addr902:
                                                                                                                                                                                                                                                                                          addr1073:
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    while(_loc26_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§goto(addr829);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    if(!_loc26_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       continue loop17;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    addr858:
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(!_loc27_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          continue loop22;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       if(!_loc26_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(_loc22_);
                                                                                                                                                                                                                                                                                             addr863:
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                continue loop18;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          addr862:
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(1);
                                                                                                                                                                                                                                                                                             addr1052:
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                _loc24_ = §§pop();
                                                                                                                                                                                                                                                                                                break loop18;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          addr1051:
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr785);
                                                                                                                                                                                                                                                                                 §§goto(addr781);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(_loc22_);
                                                                                                                                                                                                                                                                                 if(_loc26_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    continue loop33;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr951);
                                                                                                                                                                                                                                                                                 §§push(§§pop() - 1);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              addr782:
                                                                                                                                                                                                                                                                              addr947:
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc26_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    continue loop13;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§push(int(§§pop()));
                                                                                                                                                                                                                                                                                 loop37:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr884:
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(int(§§pop()));
                                                                                                                                                                                                                                                                                       addr885:
                                                                                                                                                                                                                                                                                       addr1090:
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!_loc27_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             continue loop33;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          if(!(_loc27_ || param3))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             continue loop40;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          if(_loc26_ && param1)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             break;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          _loc14_ = §§pop();
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          _loc24_ = §§pop();
                                                                                                                                                                                                                                                                                          addr1091:
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(_loc18_);
                                                                                                                                                                                                                                                                                             addr1071:
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(int(§§pop()));
                                                                                                                                                                                                                                                                                                break loop17;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       continue loop37;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              addr872:
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr902);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        addr774:
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr782);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr774);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§goto(addr1022);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr774);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         continue loop41;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr1082:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!(_loc26_ && b2Collision))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§goto(addr1090);
                                                                                                                                                                                                                                                            §§push(-1);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§goto(addr1098);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1076);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(_loc21_);
                                                                                                                                                                                                                                                      continue loop10;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop16;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       continue loop14;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1052);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(int(§§pop()));
                                                                                                                                                                                                                                    break loop40;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr956:
                                                                                                                                                                                                                                 addr1040:
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr947);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1078);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     _loc22_ = §§pop();
                                                                                                                                                                                                                     §§goto(addr1042);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1091);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            break;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr981);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc22_);
                                                                                                                                                                                                         if(!_loc26_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!_loc26_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(1);
                                                                                                                                                                                                               if(_loc26_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr842);
                                                                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr956);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr885);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr1040);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                break;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr979);
                                                                                                                                                                                          }
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             _loc22_ = §§pop();
                                                                                                                                                                                             §§goto(addr1073);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              return §§pop();
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1051);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1077);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1082);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr862);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr638);
                                                                                                                                       }
                                                                                                                                       §§goto(addr645);
                                                                                                                                    }
                                                                                                                                    §§goto(addr633);
                                                                                                                                 }
                                                                                                                                 §§goto(addr591);
                                                                                                                              }
                                                                                                                              §§goto(addr592);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              addr582:
                                                                                                                              §§push(§§pop() - 1);
                                                                                                                           }
                                                                                                                           §§push(int(§§pop()));
                                                                                                                           if(!(_loc26_ && param2))
                                                                                                                           {
                                                                                                                              §§goto(addr592);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§push(_loc6_);
                                                                                                                           if(_loc27_)
                                                                                                                           {
                                                                                                                              §§goto(addr582);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr592);
                                                                                                                     }
                                                                                                                     §§goto(addr570);
                                                                                                                  }
                                                                                                                  §§goto(addr592);
                                                                                                               }
                                                                                                               §§goto(addr564);
                                                                                                            }
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            if(_loc27_ || param3)
                                                                                                            {
                                                                                                               §§goto(addr405);
                                                                                                            }
                                                                                                            §§goto(addr406);
                                                                                                         }
                                                                                                         §§goto(addr405);
                                                                                                      }
                                                                                                      §§goto(addr366);
                                                                                                   }
                                                                                                   §§goto(addr309);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr309);
                                                                                          }
                                                                                          §§push(§§pop() + §§pop());
                                                                                          if(!(_loc26_ && b2Collision))
                                                                                          {
                                                                                             §§push(§§pop() - §§pop());
                                                                                             if(_loc27_)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                if(!_loc26_)
                                                                                                {
                                                                                                   addr331:
                                                                                                   _loc11_ = §§pop();
                                                                                                   addr332:
                                                                                                   §§push(_loc10_);
                                                                                                   if(_loc27_ || b2Collision)
                                                                                                   {
                                                                                                      §§push(param3.R.col1.x);
                                                                                                      if(_loc27_)
                                                                                                      {
                                                                                                         addr346:
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         if(_loc27_)
                                                                                                         {
                                                                                                            addr349:
                                                                                                            §§push(_loc11_);
                                                                                                            if(_loc26_)
                                                                                                            {
                                                                                                            }
                                                                                                            §§goto(addr309);
                                                                                                         }
                                                                                                         §§goto(addr366);
                                                                                                      }
                                                                                                      addr355:
                                                                                                      §§goto(addr309);
                                                                                                      §§push(param3.R.col1.y);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr366);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr355);
                                                                                    }
                                                                                    §§goto(addr309);
                                                                                 }
                                                                                 §§goto(addr349);
                                                                              }
                                                                              §§goto(addr332);
                                                                           }
                                                                        }
                                                                        §§goto(addr366);
                                                                     }
                                                                     §§goto(addr346);
                                                                  }
                                                                  §§goto(addr284);
                                                               }
                                                               §§goto(addr309);
                                                            }
                                                            §§goto(addr308);
                                                         }
                                                         §§goto(addr309);
                                                      }
                                                      §§goto(addr298);
                                                   }
                                                   §§goto(addr309);
                                                }
                                                §§goto(addr288);
                                             }
                                             §§goto(addr298);
                                          }
                                          §§goto(addr355);
                                       }
                                       §§goto(addr255);
                                    }
                                    §§goto(addr269);
                                 }
                              }
                              §§goto(addr331);
                           }
                           §§goto(addr141);
                        }
                        §§goto(addr137);
                     }
                     §§goto(addr141);
                  }
                  §§goto(addr149);
               }
               §§goto(addr86);
            }
            §§goto(addr76);
         }
         §§goto(addr98);
      }
      
      public static function §%!t§(param1:Vector.<§"h§>, param2:b2PolygonShape, param3:b2Transform, param4:int, param5:b2PolygonShape, param6:b2Transform) : void
      {
         var _loc24_:Boolean = false;
         var _loc25_:Boolean = true;
         var _loc12_:b2Mat22 = null;
         var _loc13_:b2Vec2 = null;
         var _loc20_:§"h§ = null;
         var _loc23_:* = NaN;
         §§push(param2.§]D§);
         if(!(_loc24_ && param3))
         {
            §§push(int(§§pop()));
         }
         var _loc7_:* = §§pop();
         var _loc8_:Vector.<b2Vec2> = param2.§0!%§;
         §§push(param5.§]D§);
         if(!(_loc24_ && b2Collision))
         {
            §§push(int(§§pop()));
         }
         var _loc9_:* = §§pop();
         var _loc10_:Vector.<b2Vec2> = param5.§0!k§;
         var _loc11_:Vector.<b2Vec2> = param5.§0!%§;
         _loc12_ = param3.R;
         _loc13_ = _loc8_[param4];
         §§push(_loc12_.col1.x);
         if(!_loc24_)
         {
            §§push(_loc13_.x);
            if(!_loc24_)
            {
               §§push(§§pop() * §§pop());
               if(_loc25_ || b2Collision)
               {
                  §§push(_loc12_.col2.x);
                  if(_loc25_ || b2Collision)
                  {
                     addr101:
                     §§push(§§pop() + §§pop() * _loc13_.y);
                     if(_loc25_)
                     {
                        addr104:
                        §§push(Number(§§pop()));
                     }
                  }
                  §§goto(addr101);
               }
               var _loc14_:* = §§pop();
               §§push(_loc12_.col1.y);
               if(_loc25_ || param2)
               {
                  §§push(_loc13_.x);
                  if(_loc25_)
                  {
                     §§push(§§pop() * §§pop());
                     if(_loc25_ || param3)
                     {
                        addr128:
                        §§push(_loc12_.col2.y);
                        if(!_loc24_)
                        {
                           addr136:
                           §§push(§§pop() + §§pop() * _loc13_.y);
                           if(_loc25_)
                           {
                              addr139:
                              §§push(Number(§§pop()));
                           }
                           var _loc15_:* = §§pop();
                           §§push((_loc12_ = param6.R).col1.x);
                           if(!_loc24_)
                           {
                              §§push(_loc14_);
                              if(!(_loc24_ && param3))
                              {
                                 §§push(§§pop() * §§pop());
                                 if(!(_loc24_ && param3))
                                 {
                                    §§push(_loc12_.col1.y);
                                    if(!(_loc24_ && b2Collision))
                                    {
                                       addr176:
                                       §§push(§§pop() * _loc15_);
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(!(_loc24_ && b2Collision))
                                    {
                                       addr187:
                                       var _loc16_:Number = §§pop();
                                       if(!_loc24_)
                                       {
                                          §§push(_loc12_.col2.x);
                                          if(!(_loc24_ && b2Collision))
                                          {
                                             §§push(_loc14_);
                                             if(_loc25_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(_loc25_)
                                                {
                                                   §§push(_loc12_.col2.y);
                                                   if(_loc25_)
                                                   {
                                                      addr213:
                                                      §§push(§§pop() + §§pop() * _loc15_);
                                                      if(!(_loc24_ && param3))
                                                      {
                                                         §§push(Number(§§pop()));
                                                         if(!_loc25_)
                                                         {
                                                         }
                                                         addr231:
                                                         _loc14_ = §§pop();
                                                         addr232:
                                                         var _loc17_:* = 0;
                                                         var _loc18_:* = Number(Number.MAX_VALUE);
                                                         var _loc19_:int = 0;
                                                         loop0:
                                                         while(true)
                                                         {
                                                            §§push(_loc19_);
                                                            if(!(_loc24_ && param2))
                                                            {
                                                               §§push(_loc9_);
                                                               if(!(_loc24_ && b2Collision))
                                                               {
                                                                  if(§§pop() >= §§pop())
                                                                  {
                                                                     §§push(_loc17_);
                                                                     if(_loc25_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     addr366:
                                                                     §§push(§§pop());
                                                                  }
                                                                  else
                                                                  {
                                                                     _loc13_ = _loc11_[_loc19_];
                                                                     if(_loc25_ || param1)
                                                                     {
                                                                        §§push(_loc14_);
                                                                        if(!(_loc24_ && param1))
                                                                        {
                                                                           §§push(_loc13_.x);
                                                                           if(_loc25_ || b2Collision)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              if(_loc25_)
                                                                              {
                                                                                 §§push(_loc15_);
                                                                                 if(!_loc24_)
                                                                                 {
                                                                                    addr305:
                                                                                    §§push(§§pop() * _loc13_.y);
                                                                                    if(_loc25_ || param2)
                                                                                    {
                                                                                       addr315:
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(!_loc24_)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          if(!(_loc24_ && b2Collision))
                                                                                          {
                                                                                             addr326:
                                                                                             §§push(§§pop());
                                                                                             if(_loc25_ || param3)
                                                                                             {
                                                                                                _loc23_ = §§pop();
                                                                                                if(!_loc24_)
                                                                                                {
                                                                                                   addr338:
                                                                                                   if(§§pop() < _loc18_)
                                                                                                   {
                                                                                                      loop2:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc23_);
                                                                                                         if(!_loc24_)
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                               addr343:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc18_ = §§pop();
                                                                                                                  loop6:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     addr266:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc19_);
                                                                                                                        if(_loc25_ || param1)
                                                                                                                        {
                                                                                                                           §§push(int(§§pop()));
                                                                                                                        }
                                                                                                                        _loc17_ = §§pop();
                                                                                                                        addr277:
                                                                                                                        addr281:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!_loc24_)
                                                                                                                           {
                                                                                                                              if(!_loc24_)
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              continue loop2;
                                                                                                                           }
                                                                                                                           continue loop6;
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            addr342:
                                                                                                         }
                                                                                                         §§goto(addr343);
                                                                                                      }
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc19_++;
                                                                                                      if(_loc25_ || param3)
                                                                                                      {
                                                                                                         while(false)
                                                                                                         {
                                                                                                            §§goto(addr266);
                                                                                                         }
                                                                                                         continue loop0;
                                                                                                         addr264:
                                                                                                      }
                                                                                                      §§goto(addr277);
                                                                                                      §§goto(addr281);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr343);
                                                                                             }
                                                                                             §§goto(addr338);
                                                                                          }
                                                                                          §§goto(addr342);
                                                                                       }
                                                                                       §§goto(addr326);
                                                                                    }
                                                                                    §§goto(addr338);
                                                                                 }
                                                                                 §§goto(addr315);
                                                                              }
                                                                              §§goto(addr338);
                                                                           }
                                                                           §§goto(addr305);
                                                                        }
                                                                        §§goto(addr343);
                                                                     }
                                                                     §§goto(addr264);
                                                                  }
                                                               }
                                                               var _loc21_:* = §§pop();
                                                               if(!(_loc24_ && param3))
                                                               {
                                                                  §§push(1);
                                                                  if(!(_loc24_ && b2Collision))
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     if(!(_loc24_ && param2))
                                                                     {
                                                                        if(§§pop() < _loc9_)
                                                                        {
                                                                           §§push(_loc21_);
                                                                           if(!(_loc24_ && param2))
                                                                           {
                                                                              addr404:
                                                                              §§push(int(§§pop() + 1));
                                                                              if(_loc25_)
                                                                              {
                                                                                 addr426:
                                                                                 §§push(int(§§pop()));
                                                                              }
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(0);
                                                                           if(_loc25_ || b2Collision)
                                                                           {
                                                                              §§goto(addr426);
                                                                           }
                                                                        }
                                                                        var _loc22_:* = §§pop();
                                                                        _loc20_ = param1[0];
                                                                        _loc13_ = _loc10_[_loc21_];
                                                                        _loc12_ = param6.R;
                                                                        if(_loc25_ || b2Collision)
                                                                        {
                                                                           §§push(_loc20_.v);
                                                                           loop9:
                                                                           while(true)
                                                                           {
                                                                              §§push(param6.position);
                                                                              addr612:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().x);
                                                                                 addr613:
                                                                                 loop11:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc12_.col1);
                                                                                    addr615:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().x);
                                                                                       if(!(_loc24_ && param3))
                                                                                       {
                                                                                          §§push(_loc13_.x);
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             addr626:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc12_.col2);
                                                                                                addr628:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop().x);
                                                                                                   addr629:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc13_.y);
                                                                                                      addr631:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         addr632:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             addr578:
                                                                                             if(!(_loc25_ || param3))
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             §§push(_loc13_.y);
                                                                                             if(!(_loc24_ && param1))
                                                                                             {
                                                                                                addr595:
                                                                                                §§push(§§pop() + (§§pop() + §§pop() * §§pop()));
                                                                                                if(_loc25_)
                                                                                                {
                                                                                                   if(!(_loc25_ || param2))
                                                                                                   {
                                                                                                      continue loop11;
                                                                                                   }
                                                                                                   §§pop().y = §§pop();
                                                                                                   loop22:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc20_.id);
                                                                                                      loop23:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop().§?!O§);
                                                                                                         loop24:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(param4);
                                                                                                            loop25:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§pop().§<!y§ = §§pop();
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  addr485:
                                                                                                                  loop27:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc20_.id);
                                                                                                                     loop28:
                                                                                                                     while(_loc25_)
                                                                                                                     {
                                                                                                                        §§push(§§pop().§?!O§);
                                                                                                                        loop29:
                                                                                                                        while(!(_loc24_ && param1))
                                                                                                                        {
                                                                                                                           §§push(_loc21_);
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!_loc25_)
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                                 addr502:
                                                                                                                              }
                                                                                                                              §§pop().§?! § = §§pop();
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(_loc25_ || param3)
                                                                                                                                 {
                                                                                                                                    §§push(_loc20_.id);
                                                                                                                                    if(_loc24_)
                                                                                                                                    {
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    §§push(§§pop().§?!O§);
                                                                                                                                    if(_loc24_ && param2)
                                                                                                                                    {
                                                                                                                                       continue loop29;
                                                                                                                                    }
                                                                                                                                    §§goto(addr463);
                                                                                                                                    continue loop29;
                                                                                                                                 }
                                                                                                                                 continue loop9;
                                                                                                                              }
                                                                                                                              §§push(0);
                                                                                                                              addr463:
                                                                                                                              continue loop28;
                                                                                                                              if(_loc24_ && param1)
                                                                                                                              {
                                                                                                                                 continue;
                                                                                                                              }
                                                                                                                              §§pop().§'!c§ = §§pop();
                                                                                                                              if(!_loc24_)
                                                                                                                              {
                                                                                                                                 if(_loc24_)
                                                                                                                                 {
                                                                                                                                    break loop27;
                                                                                                                                 }
                                                                                                                                 continue loop22;
                                                                                                                              }
                                                                                                                              §§goto(addr502);
                                                                                                                           }
                                                                                                                           continue loop25;
                                                                                                                        }
                                                                                                                        continue loop24;
                                                                                                                     }
                                                                                                                     continue loop23;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr631);
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§pop().x = §§pop();
                                                                                                continue loop9;
                                                                                             }
                                                                                             addr634:
                                                                                          }
                                                                                       }
                                                                                       addr633:
                                                                                       while(true)
                                                                                       {
                                                                                          §§goto(addr634);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr483);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr404);
                                                            }
                                                            break;
                                                         }
                                                         §§goto(addr366);
                                                         §§push(int(§§pop()));
                                                      }
                                                      _loc15_ = §§pop();
                                                      if(!_loc24_)
                                                      {
                                                         addr227:
                                                         §§push(_loc16_);
                                                         if(_loc25_)
                                                         {
                                                            addr230:
                                                            §§goto(addr231);
                                                            §§push(Number(§§pop()));
                                                         }
                                                         §§goto(addr231);
                                                      }
                                                      §§goto(addr232);
                                                   }
                                                   §§goto(addr213);
                                                }
                                                §§goto(addr230);
                                             }
                                             §§goto(addr213);
                                          }
                                          §§goto(addr231);
                                       }
                                       §§goto(addr227);
                                    }
                                 }
                                 §§goto(addr187);
                              }
                              §§goto(addr176);
                           }
                           §§goto(addr187);
                        }
                        §§goto(addr136);
                     }
                     §§goto(addr139);
                  }
                  §§goto(addr136);
               }
               §§goto(addr128);
            }
            §§goto(addr101);
         }
         §§goto(addr104);
      }
      
      private static function §^3§() : Vector.<§"h§>
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Vector.<§"h§> = new Vector.<§"h§>(2);
         if(!(_loc2_ && _loc1_))
         {
            _loc1_[0] = new §"h§();
         }
         do
         {
            _loc1_[1] = new §"h§();
         }
         while(_loc2_ && _loc2_);
         
         return _loc1_;
      }
      
      public static function §8!R§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2PolygonShape, param5:b2Transform) : void
      {
         var _loc46_:Boolean = true;
         var _loc47_:Boolean = false;
         var _loc6_:§"h§ = null;
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
         if(_loc46_)
         {
            param1.§&!h§ = 0;
         }
         var _loc7_:Number = param2.§ !c§ + param4.§ !c§;
         var _loc8_:* = 0;
         if(_loc46_ || param3)
         {
            §[!w§[0] = _loc8_;
         }
         §§push(§var§(§[!w§,param2,param3,param4,param5));
         if(_loc46_)
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         if(!_loc47_)
         {
            §§push(int(§[!w§[0]));
            if(_loc46_)
            {
               _loc8_ = §§pop();
               if(_loc46_ || param1)
               {
                  addr105:
                  if(_loc9_ > _loc7_)
                  {
                     if(_loc46_)
                     {
                        return;
                     }
                  }
               }
               §§push(0);
            }
            var _loc10_:* = §§pop();
            if(!(_loc47_ && param2))
            {
               §!!T§[0] = _loc10_;
            }
            §§push(§var§(§!!T§,param4,param5,param2,param3));
            if(!(_loc47_ && param2))
            {
               §§push(Number(§§pop()));
            }
            var _loc11_:* = §§pop();
            if(_loc46_)
            {
               _loc10_ = int(§!!T§[0]);
               if(_loc46_)
               {
                  §§push(_loc11_);
                  if(!_loc47_)
                  {
                     if(§§pop() > _loc7_)
                     {
                        if(_loc46_ || param1)
                        {
                           return;
                        }
                        addr162:
                        §§push(0.98);
                        if(!_loc47_)
                        {
                           addr165:
                           §§push(Number(§§pop()));
                        }
                        var _loc18_:* = §§pop();
                        §§push(0.001);
                        if(_loc46_)
                        {
                           §§push(Number(§§pop()));
                        }
                        var _loc19_:* = §§pop();
                        if(!(_loc47_ && param3))
                        {
                           §§push(_loc11_);
                           §§push(_loc18_);
                           if(_loc46_ || param2)
                           {
                              §§push(_loc9_);
                              if(_loc46_ || param2)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(!(_loc47_ && param2))
                                 {
                                    addr205:
                                    §§push(§§pop() + _loc19_);
                                 }
                                 if(§§pop() > §§pop())
                                 {
                                    addr207:
                                    _loc12_ = param4;
                                    _loc13_ = param2;
                                    _loc14_ = param5;
                                    _loc15_ = param3;
                                    if(!(_loc47_ && param3))
                                    {
                                       §§push(_loc10_);
                                       if(!_loc47_)
                                       {
                                          §§push(int(§§pop()));
                                       }
                                       loop8:
                                       while(true)
                                       {
                                          _loc16_ = §§pop();
                                          addr260:
                                          while(true)
                                          {
                                             addr249:
                                             while(true)
                                             {
                                                param1.§3r§ = b2Manifold.§3!J§;
                                                continue loop8;
                                             }
                                          }
                                       }
                                       addr259:
                                    }
                                    while(true)
                                    {
                                       §§push(1);
                                       if(_loc46_ || param1)
                                       {
                                          _loc17_ = §§pop();
                                          if(!_loc46_)
                                          {
                                             continue;
                                          }
                                          if(!(_loc47_ && b2Collision))
                                          {
                                             if(true)
                                             {
                                                break;
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr260);
                                          }
                                          §§goto(addr249);
                                       }
                                       else
                                       {
                                          §§goto(addr259);
                                       }
                                    }
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
                                       if(!(_loc47_ && param1))
                                       {
                                          §§push(int(§§pop()));
                                       }
                                       while(true)
                                       {
                                          _loc16_ = §§pop();
                                          addr304:
                                          §§push(0);
                                          if(_loc47_)
                                          {
                                             continue;
                                          }
                                          _loc17_ = §§pop();
                                          if(!(_loc47_ && param2))
                                          {
                                             if(false)
                                             {
                                                loop2:
                                                while(true)
                                                {
                                                   param1.§3r§ = b2Manifold.§-!-§;
                                                   addr297:
                                                   addr315:
                                                   while(!(_loc47_ && param1))
                                                   {
                                                      §§goto(addr304);
                                                   }
                                                   while(true)
                                                   {
                                                      continue loop2;
                                                   }
                                                }
                                             }
                                             addr316:
                                             var _loc21_:Vector.<§"h§> = §?!d§;
                                             if(!(_loc47_ && b2Collision))
                                             {
                                                §%!t§(_loc21_,_loc12_,_loc14_,_loc16_,_loc13_,_loc15_);
                                             }
                                             §§push(_loc12_.§]D§);
                                             if(!_loc47_)
                                             {
                                                §§push(int(§§pop()));
                                             }
                                             var _loc22_:* = §§pop();
                                             var _loc23_:Vector.<b2Vec2>;
                                             var _loc24_:b2Vec2 = (_loc23_ = _loc12_.§0!k§)[_loc16_];
                                             if(!(_loc47_ && b2Collision))
                                             {
                                                if(_loc16_ + 1 < _loc22_)
                                                {
                                                   addr361:
                                                   _loc25_ = _loc23_[int(_loc16_ + 1)];
                                                }
                                                else
                                                {
                                                   _loc25_ = _loc23_[0];
                                                }
                                                var _loc26_:b2Vec2;
                                                §§push(_loc26_ = §do§);
                                                §§push(_loc25_.x);
                                                if(_loc46_ || b2Collision)
                                                {
                                                   §§push(_loc24_.x);
                                                   if(_loc46_)
                                                   {
                                                      addr394:
                                                      §§push(§§pop() - §§pop());
                                                      §§push(_loc25_.y);
                                                      if(_loc46_)
                                                      {
                                                         addr398:
                                                         §§push(§§pop() - _loc24_.y);
                                                      }
                                                      §§pop().Set(§§pop(),§§pop());
                                                      if(_loc46_ || param3)
                                                      {
                                                         _loc26_.Normalize();
                                                      }
                                                      var _loc27_:b2Vec2;
                                                      (_loc27_ = §'V§).x = _loc26_.y;
                                                      if(_loc46_)
                                                      {
                                                         §§push(_loc27_);
                                                         §§push(_loc26_.x);
                                                         if(_loc46_ || param1)
                                                         {
                                                            §§push(-§§pop());
                                                         }
                                                         §§pop().y = §§pop();
                                                      }
                                                      var _loc28_:b2Vec2;
                                                      §§push(_loc28_ = §=k§);
                                                      §§push(0.5);
                                                      if(_loc46_ || param1)
                                                      {
                                                         §§push(_loc24_.x);
                                                         if(_loc46_)
                                                         {
                                                            §§push(_loc25_.x);
                                                            if(_loc46_ || param1)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               if(_loc46_)
                                                               {
                                                                  addr461:
                                                                  §§push(§§pop() * §§pop());
                                                                  §§push(0.5);
                                                                  if(!_loc47_)
                                                                  {
                                                                     addr464:
                                                                     §§push(_loc24_.y);
                                                                     if(!_loc47_)
                                                                     {
                                                                        addr471:
                                                                        §§push(§§pop() * (§§pop() + _loc25_.y));
                                                                     }
                                                                     §§goto(addr471);
                                                                  }
                                                                  §§pop().Set(§§pop(),§§pop());
                                                                  var _loc29_:b2Vec2 = §7!G§;
                                                                  _loc20_ = _loc14_.R;
                                                                  if(_loc46_ || param1)
                                                                  {
                                                                     §§push(_loc29_);
                                                                     §§push(_loc20_.col1.x);
                                                                     if(!_loc47_)
                                                                     {
                                                                        §§push(_loc26_.x);
                                                                        if(!(_loc47_ && param1))
                                                                        {
                                                                           addr519:
                                                                           §§push(§§pop() * §§pop());
                                                                           if(_loc46_ || param3)
                                                                           {
                                                                              §§push(_loc20_.col2.x);
                                                                              if(!_loc47_)
                                                                              {
                                                                                 §§push(§§pop() * _loc26_.y);
                                                                              }
                                                                           }
                                                                           §§pop().x = §§pop();
                                                                           if(_loc46_ || param3)
                                                                           {
                                                                              addr527:
                                                                              §§push(_loc29_);
                                                                              §§push(_loc20_.col1.y);
                                                                              if(_loc46_ || param2)
                                                                              {
                                                                                 §§push(_loc26_.x);
                                                                                 if(!(_loc47_ && param1))
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(_loc46_ || param2)
                                                                                    {
                                                                                       addr569:
                                                                                       §§push(_loc20_.col2.y);
                                                                                       if(!(_loc47_ && param3))
                                                                                       {
                                                                                          addr565:
                                                                                          §§push(§§pop() * _loc26_.y);
                                                                                       }
                                                                                       §§pop().y = §§pop() + §§pop();
                                                                                       addr570:
                                                                                       var _loc30_:b2Vec2;
                                                                                       §§push(_loc30_ = s_tangent2);
                                                                                       §§push(_loc29_.x);
                                                                                       if(!(_loc47_ && param2))
                                                                                       {
                                                                                          §§push(-§§pop());
                                                                                       }
                                                                                       §§pop().x = §§pop();
                                                                                       if(_loc46_ || b2Collision)
                                                                                       {
                                                                                          §§push(_loc30_);
                                                                                          §§push(_loc29_.y);
                                                                                          if(!(_loc47_ && param1))
                                                                                          {
                                                                                             §§push(-§§pop());
                                                                                          }
                                                                                          §§pop().y = §§pop();
                                                                                       }
                                                                                       var _loc31_:b2Vec2;
                                                                                       (_loc31_ = §,!P§).x = _loc29_.y;
                                                                                       if(_loc46_)
                                                                                       {
                                                                                          §§push(_loc31_);
                                                                                          §§push(_loc29_.x);
                                                                                          if(!(_loc47_ && param3))
                                                                                          {
                                                                                             §§push(-§§pop());
                                                                                          }
                                                                                          §§pop().y = §§pop();
                                                                                       }
                                                                                       var _loc32_:b2Vec2 = s_v11;
                                                                                       var _loc33_:b2Vec2 = s_v12;
                                                                                       if(!(_loc47_ && b2Collision))
                                                                                       {
                                                                                          §§push(_loc32_);
                                                                                          §§push(_loc14_.position.x);
                                                                                          if(_loc46_)
                                                                                          {
                                                                                             §§push(_loc20_.col1.x);
                                                                                             if(!_loc47_)
                                                                                             {
                                                                                                §§push(_loc24_.x);
                                                                                                if(_loc46_)
                                                                                                {
                                                                                                   addr827:
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(!(_loc47_ && b2Collision))
                                                                                                   {
                                                                                                      addr817:
                                                                                                      §§push(_loc20_.col2.x);
                                                                                                      if(!_loc47_)
                                                                                                      {
                                                                                                         addr822:
                                                                                                         §§push(§§pop() * _loc24_.y);
                                                                                                      }
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                   }
                                                                                                   §§pop().x = §§pop() + §§pop();
                                                                                                   loop4:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc32_);
                                                                                                      §§push(_loc14_.position.y);
                                                                                                      if(_loc46_)
                                                                                                      {
                                                                                                         §§push(_loc20_.col1.y);
                                                                                                         if(_loc46_)
                                                                                                         {
                                                                                                            §§push(_loc24_.x);
                                                                                                            if(!(_loc47_ && b2Collision))
                                                                                                            {
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               if(!(_loc47_ && param1))
                                                                                                               {
                                                                                                                  addr791:
                                                                                                                  §§push(_loc20_.col2.y);
                                                                                                                  if(_loc46_)
                                                                                                                  {
                                                                                                                     addr787:
                                                                                                                     §§push(§§pop() * _loc24_.y);
                                                                                                                  }
                                                                                                                  §§pop().y = §§pop() + (§§pop() + §§pop());
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     addr705:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc33_);
                                                                                                                        §§push(_loc14_.position.x);
                                                                                                                        if(!(_loc47_ && param1))
                                                                                                                        {
                                                                                                                           §§push(_loc20_.col1.x);
                                                                                                                           if(!_loc47_)
                                                                                                                           {
                                                                                                                              §§push(_loc25_.x);
                                                                                                                              if(!(_loc47_ && param1))
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 if(!_loc47_)
                                                                                                                                 {
                                                                                                                                    addr743:
                                                                                                                                    §§push(_loc20_.col2.x);
                                                                                                                                    if(_loc46_)
                                                                                                                                    {
                                                                                                                                       addr739:
                                                                                                                                       §§push(§§pop() * _loc25_.y);
                                                                                                                                    }
                                                                                                                                    §§pop().x = §§pop() + (§§pop() + §§pop());
                                                                                                                                    continue loop4;
                                                                                                                                 }
                                                                                                                                 §§goto(addr743);
                                                                                                                              }
                                                                                                                              §§goto(addr739);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr743);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr793:
                                                                                                               }
                                                                                                               §§goto(addr791);
                                                                                                            }
                                                                                                            §§goto(addr787);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr791);
                                                                                                   }
                                                                                                   addr828:
                                                                                                }
                                                                                                §§goto(addr822);
                                                                                             }
                                                                                             §§goto(addr817);
                                                                                          }
                                                                                          §§goto(addr827);
                                                                                       }
                                                                                       §§goto(addr828);
                                                                                    }
                                                                                    §§goto(addr569);
                                                                                 }
                                                                                 §§goto(addr565);
                                                                              }
                                                                              §§goto(addr569);
                                                                           }
                                                                           §§goto(addr570);
                                                                        }
                                                                        §§push(§§pop() + §§pop());
                                                                     }
                                                                     §§goto(addr519);
                                                                  }
                                                                  §§goto(addr527);
                                                               }
                                                               §§goto(addr464);
                                                            }
                                                            §§goto(addr471);
                                                         }
                                                         §§goto(addr464);
                                                      }
                                                      §§goto(addr461);
                                                   }
                                                   §§goto(addr398);
                                                }
                                                §§goto(addr394);
                                             }
                                             §§goto(addr361);
                                          }
                                          §§goto(addr297);
                                       }
                                    }
                                    §§goto(addr315);
                                 }
                                 §§goto(addr316);
                              }
                           }
                           §§goto(addr205);
                        }
                        §§goto(addr207);
                     }
                     §§goto(addr162);
                  }
                  §§goto(addr165);
               }
            }
            §§goto(addr162);
         }
         §§goto(addr105);
      }
      
      public static function §,!C§(param1:b2Manifold, param2:b2CircleShape, param3:b2Transform, param4:b2CircleShape, param5:b2Transform) : void
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         var _loc6_:b2Mat22 = null;
         var _loc7_:b2Vec2 = null;
         if(_loc17_ || param3)
         {
            param1.§&!h§ = 0;
         }
         _loc6_ = param3.R;
         _loc7_ = param2.§`3§;
         §§push(param3.position.x);
         if(_loc17_ || param1)
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
                     addr77:
                     §§push(_loc6_.col2.x);
                     if(!_loc16_)
                     {
                        addr73:
                        §§push(§§pop() * _loc7_.y);
                     }
                     §§push(§§pop() + (§§pop() + §§pop()));
                     if(_loc17_)
                     {
                        addr80:
                        §§push(Number(§§pop()));
                     }
                     var _loc8_:* = §§pop();
                     §§push(param3.position.y);
                     if(!_loc16_)
                     {
                        §§push(_loc6_.col1.y);
                        if(!_loc16_)
                        {
                           §§push(_loc7_.x);
                           if(_loc17_)
                           {
                              §§push(§§pop() * §§pop());
                              if(!(_loc16_ && param3))
                              {
                                 addr104:
                                 §§push(_loc6_.col2.y);
                                 if(!_loc16_)
                                 {
                                    addr109:
                                    §§push(§§pop() * _loc7_.y);
                                 }
                                 §§push(§§pop() + §§pop());
                              }
                              §§push(§§pop() + §§pop());
                              if(_loc17_)
                              {
                                 addr117:
                                 var _loc9_:Number = §§pop();
                                 _loc6_ = param5.R;
                                 _loc7_ = param4.§`3§;
                                 §§push(param5.position.x);
                                 if(!(_loc16_ && b2Collision))
                                 {
                                    §§push(_loc6_.col1.x);
                                    if(_loc17_)
                                    {
                                       §§push(_loc7_.x);
                                       if(_loc17_)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(_loc17_ || param3)
                                          {
                                             addr162:
                                             §§push(_loc6_.col2.x);
                                             if(!_loc16_)
                                             {
                                                addr158:
                                                §§push(§§pop() * _loc7_.y);
                                             }
                                             §§push(§§pop() + (§§pop() + §§pop()));
                                             if(!_loc16_)
                                             {
                                                addr165:
                                                §§push(Number(§§pop()));
                                             }
                                             var _loc10_:* = §§pop();
                                             §§push(param5.position.y);
                                             if(!(_loc16_ && b2Collision))
                                             {
                                                §§push(_loc6_.col1.y);
                                                if(!(_loc16_ && param3))
                                                {
                                                   §§push(_loc7_.x);
                                                   if(!_loc16_)
                                                   {
                                                      addr223:
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc17_ || b2Collision)
                                                      {
                                                         §§push(_loc6_.col2.y);
                                                         if(_loc17_ || param1)
                                                         {
                                                            §§push(§§pop() * _loc7_.y);
                                                         }
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc17_)
                                                      {
                                                         addr227:
                                                         var _loc11_:Number = §§pop();
                                                         §§push(_loc10_);
                                                         if(_loc17_)
                                                         {
                                                            §§push(§§pop() - _loc8_);
                                                            if(_loc17_ || b2Collision)
                                                            {
                                                               addr240:
                                                               §§push(Number(§§pop()));
                                                            }
                                                            var _loc12_:* = §§pop();
                                                            §§push(_loc11_);
                                                            if(_loc17_)
                                                            {
                                                               §§push(§§pop() - _loc9_);
                                                               if(_loc17_)
                                                               {
                                                                  addr249:
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               var _loc13_:* = §§pop();
                                                               §§push(_loc12_);
                                                               if(_loc17_ || param2)
                                                               {
                                                                  §§push(_loc12_);
                                                                  if(_loc17_)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(!_loc16_)
                                                                     {
                                                                        §§push(_loc13_);
                                                                        if(_loc17_)
                                                                        {
                                                                           addr268:
                                                                           §§push(§§pop() * _loc13_);
                                                                        }
                                                                        §§push(§§pop() + §§pop());
                                                                        if(_loc17_)
                                                                        {
                                                                           addr274:
                                                                           var _loc14_:Number = §§pop();
                                                                           var _loc15_:Number = param2.§ !c§ + param4.§ !c§;
                                                                           if(!(_loc16_ && b2Collision))
                                                                           {
                                                                              §§push(_loc14_);
                                                                              §§push(_loc15_);
                                                                              if(_loc17_ || b2Collision)
                                                                              {
                                                                                 §§push(§§pop() * _loc15_);
                                                                              }
                                                                              if(§§pop() <= §§pop())
                                                                              {
                                                                                 loop0:
                                                                                 while(true)
                                                                                 {
                                                                                    param1.§3r§ = b2Manifold.§+!,§;
                                                                                    loop1:
                                                                                    while(true)
                                                                                    {
                                                                                       param1.m_localPoint.SetV(param2.§`3§);
                                                                                       loop2:
                                                                                       for(; _loc17_ || param2; if(_loc16_ && param3)
                                                                                       {
                                                                                          continue;
                                                                                       },§§goto(addr311))
                                                                                       {
                                                                                          param1.§1!§.§+J§();
                                                                                          loop3:
                                                                                          while(!_loc16_)
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                param1.§&!h§ = 1;
                                                                                                while(_loc17_)
                                                                                                {
                                                                                                   if(_loc17_ || b2Collision)
                                                                                                   {
                                                                                                      param1.§ !C§[0].m_localPoint.SetV(param4.§`3§);
                                                                                                      while(!(_loc16_ && param1))
                                                                                                      {
                                                                                                         param1.§ !C§[0].m_id.key = 0;
                                                                                                         if(_loc17_)
                                                                                                         {
                                                                                                            continue loop2;
                                                                                                         }
                                                                                                      }
                                                                                                      continue;
                                                                                                   }
                                                                                                   continue loop1;
                                                                                                }
                                                                                                continue loop3;
                                                                                             }
                                                                                             return;
                                                                                          }
                                                                                       }
                                                                                       continue loop0;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              return;
                                                                           }
                                                                           §§goto(addr349);
                                                                        }
                                                                     }
                                                                     §§goto(addr274);
                                                                  }
                                                                  §§goto(addr268);
                                                               }
                                                               §§goto(addr274);
                                                            }
                                                            §§goto(addr249);
                                                         }
                                                         §§goto(addr240);
                                                      }
                                                      §§goto(addr227);
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                }
                                                §§goto(addr223);
                                             }
                                             §§goto(addr227);
                                          }
                                          §§goto(addr162);
                                       }
                                       §§goto(addr158);
                                    }
                                    §§goto(addr162);
                                 }
                                 §§goto(addr165);
                              }
                              §§goto(addr117);
                           }
                           §§goto(addr109);
                        }
                        §§goto(addr104);
                     }
                     §§goto(addr117);
                  }
                  §§goto(addr77);
               }
               §§goto(addr73);
            }
            §§goto(addr77);
         }
         §§goto(addr80);
      }
      
      public static function §;R§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2CircleShape, param5:b2Transform) : void
      {
         var _loc34_:Boolean = false;
         var _loc35_:Boolean = true;
         var _loc6_:b2ManifoldPoint = null;
         var _loc7_:* = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:b2Vec2 = null;
         var _loc12_:b2Mat22 = null;
         var _loc17_:Number = NaN;
         var _loc31_:* = NaN;
         var _loc32_:Number = NaN;
         var _loc33_:* = NaN;
         if(_loc35_ || param3)
         {
            param1.§&!h§ = 0;
         }
         _loc12_ = param5.R;
         _loc11_ = param4.§`3§;
         §§push(param5.position.x);
         if(_loc35_ || param2)
         {
            §§push(_loc12_.col1.x);
            if(!_loc34_)
            {
               §§push(_loc11_.x);
               if(!_loc34_)
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc34_ && param3))
                  {
                     addr87:
                     §§push(_loc12_.col2.x);
                     if(_loc35_)
                     {
                        addr92:
                        §§push(§§pop() * _loc11_.y);
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§push(§§pop() + §§pop());
                  if(!_loc34_)
                  {
                     addr100:
                     var _loc13_:Number = §§pop();
                     §§push(param5.position.y);
                     if(!_loc34_)
                     {
                        §§push(_loc12_.col1.y);
                        if(_loc35_ || b2Collision)
                        {
                           §§push(_loc11_.x);
                           if(_loc35_)
                           {
                              §§push(§§pop() * §§pop());
                              if(!_loc34_)
                              {
                                 addr123:
                                 §§push(_loc12_.col2.y);
                                 if(!_loc34_)
                                 {
                                    addr128:
                                    §§push(§§pop() * _loc11_.y);
                                 }
                                 §§push(§§pop() + §§pop());
                              }
                              §§push(§§pop() + §§pop());
                              if(!(_loc34_ && param2))
                              {
                                 addr141:
                                 var _loc14_:Number = §§pop();
                                 if(_loc35_ || b2Collision)
                                 {
                                    §§push(_loc13_);
                                    if(_loc35_)
                                    {
                                       §§push(param3.position);
                                       if(!_loc34_)
                                       {
                                          §§push(§§pop().x);
                                          if(_loc35_)
                                          {
                                             §§push(§§pop() - §§pop());
                                             if(_loc35_ || b2Collision)
                                             {
                                                addr167:
                                                §§push(Number(§§pop()));
                                                if(_loc35_)
                                                {
                                                   _loc7_ = §§pop();
                                                   if(!(_loc34_ && param2))
                                                   {
                                                      addr178:
                                                      §§push(_loc14_);
                                                      if(!(_loc34_ && b2Collision))
                                                      {
                                                         addr189:
                                                         §§push(§§pop() - param3.position.y);
                                                         if(!_loc34_)
                                                         {
                                                            addr193:
                                                            _loc8_ = §§pop();
                                                         }
                                                      }
                                                      §§goto(addr193);
                                                   }
                                                   _loc12_ = param3.R;
                                                   §§push(_loc7_);
                                                   if(!_loc34_)
                                                   {
                                                      §§push(_loc12_.col1.x);
                                                      if(!(_loc34_ && param2))
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc35_)
                                                         {
                                                            addr214:
                                                            §§push(_loc8_);
                                                            if(_loc35_)
                                                            {
                                                               addr217:
                                                               §§push(§§pop() * _loc12_.col1.y);
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                            if(!_loc34_)
                                                            {
                                                               addr224:
                                                               §§push(Number(§§pop()));
                                                            }
                                                            var _loc15_:* = §§pop();
                                                            §§push(_loc7_);
                                                            if(!(_loc34_ && param2))
                                                            {
                                                               §§push(_loc12_.col2.x);
                                                               if(_loc35_ || b2Collision)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(!_loc34_)
                                                                  {
                                                                     §§push(_loc8_);
                                                                     if(_loc35_)
                                                                     {
                                                                        addr250:
                                                                        §§push(§§pop() * _loc12_.col2.y);
                                                                     }
                                                                     §§push(§§pop() + §§pop());
                                                                     if(_loc35_)
                                                                     {
                                                                        addr257:
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                     var _loc16_:* = §§pop();
                                                                     var _loc18_:* = 0;
                                                                     §§push(-Number.MAX_VALUE);
                                                                     if(!_loc34_)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                     var _loc19_:* = §§pop();
                                                                     var _loc20_:Number = param2.§ !c§ + param4.§ !c§;
                                                                     §§push(param2.§]D§);
                                                                     if(!(_loc34_ && param2))
                                                                     {
                                                                        §§push(int(§§pop()));
                                                                     }
                                                                     var _loc21_:* = §§pop();
                                                                     var _loc22_:Vector.<b2Vec2> = param2.§0!k§;
                                                                     var _loc23_:Vector.<b2Vec2> = param2.§0!%§;
                                                                     var _loc24_:int = 0;
                                                                     loop0:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc24_);
                                                                        if(!(_loc34_ && param3))
                                                                        {
                                                                           §§push(_loc21_);
                                                                           if(_loc35_ || param1)
                                                                           {
                                                                              if(§§pop() >= §§pop())
                                                                              {
                                                                                 §§push(_loc18_);
                                                                                 if(_loc35_)
                                                                                 {
                                                                                    addr484:
                                                                                    §§push(int(§§pop()));
                                                                                 }
                                                                                 §§push(§§pop());
                                                                              }
                                                                              else
                                                                              {
                                                                                 _loc11_ = _loc22_[_loc24_];
                                                                                 if(_loc35_ || param1)
                                                                                 {
                                                                                    §§push(_loc15_);
                                                                                    if(!(_loc34_ && param2))
                                                                                    {
                                                                                       §§push(_loc11_.x);
                                                                                       if(!(_loc34_ && param2))
                                                                                       {
                                                                                          §§push(§§pop() - §§pop());
                                                                                          if(_loc35_)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             if(_loc35_ || param2)
                                                                                             {
                                                                                                addr338:
                                                                                                _loc7_ = §§pop();
                                                                                                if(!_loc34_)
                                                                                                {
                                                                                                   §§push(_loc16_);
                                                                                                   if(_loc34_)
                                                                                                   {
                                                                                                   }
                                                                                                   addr355:
                                                                                                   _loc8_ = §§pop();
                                                                                                   addr356:
                                                                                                   §§push((_loc11_ = _loc23_[_loc24_]).x);
                                                                                                   if(_loc35_ || param1)
                                                                                                   {
                                                                                                      §§push(_loc7_);
                                                                                                      if(!_loc34_)
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         if(_loc35_)
                                                                                                         {
                                                                                                            addr376:
                                                                                                            §§push(_loc11_.y);
                                                                                                            if(_loc35_ || param2)
                                                                                                            {
                                                                                                               §§push(§§pop() * _loc8_);
                                                                                                               if(!_loc34_)
                                                                                                               {
                                                                                                                  addr389:
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  if(!(_loc34_ && param3))
                                                                                                                  {
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     if(!_loc34_)
                                                                                                                     {
                                                                                                                        addr400:
                                                                                                                        §§push(§§pop());
                                                                                                                        if(!(_loc34_ && param1))
                                                                                                                        {
                                                                                                                           addr408:
                                                                                                                           _loc31_ = §§pop();
                                                                                                                           if(_loc35_ || param1)
                                                                                                                           {
                                                                                                                              §§push(_loc20_);
                                                                                                                              if(!(_loc34_ && param3))
                                                                                                                              {
                                                                                                                                 addr424:
                                                                                                                                 if(§§pop() > §§pop())
                                                                                                                                 {
                                                                                                                                    if(!_loc34_)
                                                                                                                                    {
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    loop8:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(true)
                                                                                                                                       {
                                                                                                                                          continue loop0;
                                                                                                                                       }
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
                                                                                                                                                if(!_loc35_)
                                                                                                                                                {
                                                                                                                                                   continue loop4;
                                                                                                                                                }
                                                                                                                                                if(!_loc34_)
                                                                                                                                                {
                                                                                                                                                   continue loop8;
                                                                                                                                                }
                                                                                                                                                addr463:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   continue loop3;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             continue loop0;
                                                                                                                                          }
                                                                                                                                          addr453:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc31_);
                                                                                                                                             if(_loc35_ || param2)
                                                                                                                                             {
                                                                                                                                             }
                                                                                                                                             addr462:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                _loc19_ = §§pop();
                                                                                                                                                §§goto(addr463);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§push(_loc31_);
                                                                                                                                    if(!_loc34_)
                                                                                                                                    {
                                                                                                                                       addr452:
                                                                                                                                       if(§§pop() > _loc19_)
                                                                                                                                       {
                                                                                                                                          §§goto(addr453);
                                                                                                                                       }
                                                                                                                                       §§goto(addr431);
                                                                                                                                    }
                                                                                                                                    §§goto(addr462);
                                                                                                                                 }
                                                                                                                                 §§goto(addr462);
                                                                                                                              }
                                                                                                                              §§goto(addr452);
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§goto(addr462);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr424);
                                                                                                                     }
                                                                                                                     §§goto(addr462);
                                                                                                                  }
                                                                                                                  §§goto(addr400);
                                                                                                               }
                                                                                                               §§goto(addr452);
                                                                                                            }
                                                                                                            §§goto(addr408);
                                                                                                         }
                                                                                                         §§goto(addr400);
                                                                                                      }
                                                                                                      §§goto(addr389);
                                                                                                   }
                                                                                                   §§goto(addr376);
                                                                                                   addr354:
                                                                                                }
                                                                                                §§goto(addr356);
                                                                                             }
                                                                                             addr346:
                                                                                             §§push(§§pop() - _loc11_.y);
                                                                                             if(_loc35_ || param1)
                                                                                             {
                                                                                                §§goto(addr354);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr355);
                                                                                       }
                                                                                       §§goto(addr346);
                                                                                    }
                                                                                    §§goto(addr338);
                                                                                 }
                                                                                 §§goto(addr355);
                                                                              }
                                                                           }
                                                                           var _loc25_:* = §§pop();
                                                                           if(_loc35_ || param1)
                                                                           {
                                                                              §§push(1);
                                                                              if(!(_loc34_ && param1))
                                                                              {
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(_loc35_ || b2Collision)
                                                                                 {
                                                                                    if(§§pop() < _loc21_)
                                                                                    {
                                                                                       §§push(_loc25_);
                                                                                       if(_loc35_)
                                                                                       {
                                                                                          addr518:
                                                                                          §§push(int(§§pop() + 1));
                                                                                          if(_loc35_)
                                                                                          {
                                                                                             addr525:
                                                                                             §§push(int(§§pop()));
                                                                                             addr521:
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push(0);
                                                                                       if(!_loc34_)
                                                                                       {
                                                                                          §§goto(addr525);
                                                                                       }
                                                                                    }
                                                                                    var _loc26_:* = §§pop();
                                                                                    var _loc27_:b2Vec2 = _loc22_[_loc25_];
                                                                                    var _loc28_:b2Vec2 = _loc22_[_loc26_];
                                                                                    if(!_loc34_)
                                                                                    {
                                                                                       §§push(_loc19_);
                                                                                       if(!_loc34_)
                                                                                       {
                                                                                          if(§§pop() < Number.MIN_VALUE)
                                                                                          {
                                                                                             addr674:
                                                                                             param1.§&!h§ = 1;
                                                                                             param1.§3r§ = b2Manifold.§-!-§;
                                                                                             param1.§1!§.SetV(_loc23_[_loc18_]);
                                                                                             addr659:
                                                                                             if(_loc35_)
                                                                                             {
                                                                                                addr650:
                                                                                                addr629:
                                                                                                §§push(param1.m_localPoint);
                                                                                                §§push(0.5);
                                                                                                if(_loc35_ || param2)
                                                                                                {
                                                                                                   addr649:
                                                                                                   §§push(_loc27_.x);
                                                                                                   if(_loc35_ || param3)
                                                                                                   {
                                                                                                      addr648:
                                                                                                      §§push(§§pop() + _loc28_.x);
                                                                                                   }
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                }
                                                                                                §§pop().x = §§pop();
                                                                                                addr651:
                                                                                                §§push(param1.m_localPoint);
                                                                                                if(_loc35_)
                                                                                                {
                                                                                                   §§push(0.5);
                                                                                                   if(!_loc34_)
                                                                                                   {
                                                                                                      §§push(_loc27_.y);
                                                                                                      if(_loc35_)
                                                                                                      {
                                                                                                         if(_loc35_ || param2)
                                                                                                         {
                                                                                                            §§push(_loc28_.y);
                                                                                                            if(_loc35_ || param3)
                                                                                                            {
                                                                                                               addr616:
                                                                                                               §§push(§§pop() * (§§pop() + §§pop()));
                                                                                                               if(_loc35_ || param2)
                                                                                                               {
                                                                                                                  §§pop().y = §§pop();
                                                                                                                  param1.§ !C§[0].m_localPoint.SetV(param4.§`3§);
                                                                                                                  param1.§ !C§[0].m_id.key = 0;
                                                                                                                  if(!(_loc34_ && param1))
                                                                                                                  {
                                                                                                                     if(_loc34_)
                                                                                                                     {
                                                                                                                        §§goto(addr659);
                                                                                                                     }
                                                                                                                     return;
                                                                                                                  }
                                                                                                                  §§goto(addr651);
                                                                                                               }
                                                                                                               §§goto(addr650);
                                                                                                            }
                                                                                                            §§goto(addr648);
                                                                                                         }
                                                                                                         §§goto(addr649);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr616);
                                                                                                }
                                                                                                §§goto(addr629);
                                                                                             }
                                                                                             §§goto(addr674);
                                                                                             addr677:
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§push(_loc15_);
                                                                                             if(_loc35_)
                                                                                             {
                                                                                                §§push(_loc27_.x);
                                                                                                if(_loc35_ || param2)
                                                                                                {
                                                                                                   §§push(§§pop() - §§pop());
                                                                                                   if(!(_loc34_ && b2Collision))
                                                                                                   {
                                                                                                      addr698:
                                                                                                      §§push(_loc28_.x);
                                                                                                      if(_loc35_ || b2Collision)
                                                                                                      {
                                                                                                         §§push(_loc27_.x);
                                                                                                         if(!_loc34_)
                                                                                                         {
                                                                                                            §§push(§§pop() - §§pop());
                                                                                                            if(_loc35_ || param1)
                                                                                                            {
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               if(_loc35_)
                                                                                                               {
                                                                                                                  addr722:
                                                                                                                  §§push(_loc16_);
                                                                                                                  if(!_loc34_)
                                                                                                                  {
                                                                                                                     addr725:
                                                                                                                     §§push(_loc27_.y);
                                                                                                                     if(_loc35_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                        if(!_loc34_)
                                                                                                                        {
                                                                                                                           §§push(_loc28_.y);
                                                                                                                           if(!(_loc34_ && param1))
                                                                                                                           {
                                                                                                                              addr744:
                                                                                                                              addr745:
                                                                                                                              §§push(§§pop() + §§pop() * (§§pop() - _loc27_.y));
                                                                                                                              if(_loc34_)
                                                                                                                              {
                                                                                                                              }
                                                                                                                              var _loc29_:* = §§pop();
                                                                                                                              §§push(_loc15_);
                                                                                                                              if(!_loc34_)
                                                                                                                              {
                                                                                                                                 §§push(_loc28_.x);
                                                                                                                                 if(!(_loc34_ && b2Collision))
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() - §§pop());
                                                                                                                                    if(_loc35_ || b2Collision)
                                                                                                                                    {
                                                                                                                                       addr770:
                                                                                                                                       §§push(_loc27_.x);
                                                                                                                                       if(!_loc34_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc28_.x);
                                                                                                                                          if(_loc35_ || b2Collision)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() - §§pop());
                                                                                                                                             if(!_loc34_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                if(_loc35_ || param1)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc16_);
                                                                                                                                                   if(!(_loc34_ && b2Collision))
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc28_.y);
                                                                                                                                                      if(!_loc34_)
                                                                                                                                                      {
                                                                                                                                                         addr816:
                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                         if(!_loc34_)
                                                                                                                                                         {
                                                                                                                                                            addr819:
                                                                                                                                                            §§push(_loc27_.y);
                                                                                                                                                            if(!_loc34_)
                                                                                                                                                            {
                                                                                                                                                               addr826:
                                                                                                                                                               §§push(§§pop() * (§§pop() - _loc28_.y));
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr826);
                                                                                                                                                         }
                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                         if(_loc35_ || param3)
                                                                                                                                                         {
                                                                                                                                                            addr836:
                                                                                                                                                            var _loc30_:Number = §§pop();
                                                                                                                                                            if(_loc35_ || b2Collision)
                                                                                                                                                            {
                                                                                                                                                               addr1582:
                                                                                                                                                               if(_loc29_ > 0)
                                                                                                                                                               {
                                                                                                                                                                  addr1420:
                                                                                                                                                                  §§push(_loc30_);
                                                                                                                                                                  if(!(_loc34_ && param1))
                                                                                                                                                                  {
                                                                                                                                                                     if(§§pop() > 0)
                                                                                                                                                                     {
                                                                                                                                                                        addr1250:
                                                                                                                                                                        §§push(0.5);
                                                                                                                                                                        if(_loc35_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc34_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc27_.x);
                                                                                                                                                                              if(_loc35_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc35_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr1262:
                                                                                                                                                                                    §§push(_loc28_.x);
                                                                                                                                                                                    if(!(_loc34_ && param2))
                                                                                                                                                                                    {
                                                                                                                                                                                       addr1270:
                                                                                                                                                                                       §§push(§§pop() * (§§pop() + §§pop()));
                                                                                                                                                                                       if(!(_loc34_ && param2))
                                                                                                                                                                                       {
                                                                                                                                                                                          addr1279:
                                                                                                                                                                                          _loc32_ = §§pop();
                                                                                                                                                                                          addr1280:
                                                                                                                                                                                          §§push(0.5);
                                                                                                                                                                                          if(!_loc34_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc35_ || param3)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc27_.y);
                                                                                                                                                                                                if(_loc35_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc34_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr1238:
                                                                                                                                                                                                      §§push(Number(§§pop() * (§§pop() + _loc28_.y)));
                                                                                                                                                                                                      if(!_loc34_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc35_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            _loc33_ = §§pop();
                                                                                                                                                                                                            addr1243:
                                                                                                                                                                                                            if(_loc35_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc15_);
                                                                                                                                                                                                               if(!(_loc34_ && param1))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!(_loc34_ && b2Collision))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc35_ || param2)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc32_);
                                                                                                                                                                                                                        if(_loc35_ || b2Collision)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc35_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                                                                                                                              if(_loc35_ || param3)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop() * _loc23_[_loc25_].x);
                                                                                                                                                                                                                                 if(_loc35_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc16_);
                                                                                                                                                                                                                                    if(_loc35_ || param3)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!_loc34_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(_loc33_);
                                                                                                                                                                                                                                          if(_loc35_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc35_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!_loc34_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc35_ || b2Collision)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc35_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                         if(!(_loc34_ && b2Collision))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!_loc34_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc35_ || param3)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§§pop() * _loc23_[_loc25_].y);
                                                                                                                                                                                                                                                                  if(!_loc34_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr1153:
                                                                                                                                                                                                                                                                     if(_loc35_ || param3)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!_loc34_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                           if(_loc35_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr1165:
                                                                                                                                                                                                                                                                              if(_loc35_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                 if(_loc34_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 addr1185:
                                                                                                                                                                                                                                                                                 if(_loc35_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(_loc35_ || param2)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(_loc35_ || b2Collision)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr1202:
                                                                                                                                                                                                                                                                                          §§push(_loc20_);
                                                                                                                                                                                                                                                                                          if(_loc35_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(§§pop() <= §§pop())
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                addr1034:
                                                                                                                                                                                                                                                                                                param1.§&!h§ = 1;
                                                                                                                                                                                                                                                                                                addr1038:
                                                                                                                                                                                                                                                                                                if(_loc35_ || param2)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(!(_loc34_ && b2Collision))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(!_loc34_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         param1.§3r§ = b2Manifold.§-!-§;
                                                                                                                                                                                                                                                                                                         addr1031:
                                                                                                                                                                                                                                                                                                         if(_loc35_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            addr1013:
                                                                                                                                                                                                                                                                                                            §§push(param1.§1!§);
                                                                                                                                                                                                                                                                                                            if(!(_loc34_ && param3))
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§pop().x = _loc23_[_loc25_].x;
                                                                                                                                                                                                                                                                                                               addr972:
                                                                                                                                                                                                                                                                                                               addr1025:
                                                                                                                                                                                                                                                                                                               §§push(param1.§1!§);
                                                                                                                                                                                                                                                                                                               if(_loc35_ || param1)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(!_loc34_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§pop().y = _loc23_[_loc25_].y;
                                                                                                                                                                                                                                                                                                                     addr986:
                                                                                                                                                                                                                                                                                                                     if(_loc35_ || param1)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(_loc35_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(!(_loc34_ && param2))
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              if(_loc35_ || b2Collision)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(param1.§1!§);
                                                                                                                                                                                                                                                                                                                                 if(!(_loc34_ && param3))
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    if(!(_loc34_ && param3))
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       if(_loc35_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          if(_loc35_ || param2)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§pop().Normalize();
                                                                                                                                                                                                                                                                                                                                             addr966:
                                                                                                                                                                                                                                                                                                                                             if(!_loc34_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§push(param1.m_localPoint);
                                                                                                                                                                                                                                                                                                                                                if(_loc35_ || param2)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§pop().Set(_loc32_,_loc33_);
                                                                                                                                                                                                                                                                                                                                                   addr913:
                                                                                                                                                                                                                                                                                                                                                   if(!(_loc34_ && param2))
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      if(_loc35_ || b2Collision)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         if(_loc35_ || param2)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            if(!_loc34_)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               if(_loc35_)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  param1.§ !C§[0].m_localPoint.SetV(param4.§`3§);
                                                                                                                                                                                                                                                                                                                                                                  addr885:
                                                                                                                                                                                                                                                                                                                                                                  if(!(_loc34_ && param3))
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     if(!(_loc34_ && param1))
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        param1.§ !C§[0].m_id.key = 0;
                                                                                                                                                                                                                                                                                                                                                                        if(!_loc34_)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           if(!(_loc34_ && param2))
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              if(!_loc35_)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr966);
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              if(_loc34_ && b2Collision)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 addr1325:
                                                                                                                                                                                                                                                                                                                                                                                 param1.§1!§.Normalize();
                                                                                                                                                                                                                                                                                                                                                                                 addr1374:
                                                                                                                                                                                                                                                                                                                                                                                 if(_loc35_ || param2)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    if(_loc35_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       addr1305:
                                                                                                                                                                                                                                                                                                                                                                                       §§push(param1.m_localPoint);
                                                                                                                                                                                                                                                                                                                                                                                       if(!(_loc34_ && param2))
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          §§pop().SetV(_loc28_);
                                                                                                                                                                                                                                                                                                                                                                                          addr1314:
                                                                                                                                                                                                                                                                                                                                                                                          if(!(_loc34_ && param2))
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             param1.§ !C§[0].m_localPoint.SetV(param4.§`3§);
                                                                                                                                                                                                                                                                                                                                                                                             addr1299:
                                                                                                                                                                                                                                                                                                                                                                                             if(!_loc35_)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                if(_loc35_ || b2Collision)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   addr1404:
                                                                                                                                                                                                                                                                                                                                                                                                   param1.§&!h§ = 1;
                                                                                                                                                                                                                                                                                                                                                                                                   addr1408:
                                                                                                                                                                                                                                                                                                                                                                                                   if(_loc35_ || param2)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      param1.§3r§ = b2Manifold.§-!-§;
                                                                                                                                                                                                                                                                                                                                                                                                      addr1379:
                                                                                                                                                                                                                                                                                                                                                                                                      §§push(param1.§1!§);
                                                                                                                                                                                                                                                                                                                                                                                                      §§push(_loc15_);
                                                                                                                                                                                                                                                                                                                                                                                                      if(!(_loc34_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         addr1388:
                                                                                                                                                                                                                                                                                                                                                                                                         §§push(_loc28_.x);
                                                                                                                                                                                                                                                                                                                                                                                                         if(_loc35_ || param3)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            addr1396:
                                                                                                                                                                                                                                                                                                                                                                                                            §§pop().x = §§pop() - §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                            §§push(param1.§1!§);
                                                                                                                                                                                                                                                                                                                                                                                                            if(_loc35_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               §§push(_loc16_);
                                                                                                                                                                                                                                                                                                                                                                                                               if(!_loc34_)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  if(!(_loc34_ && param2))
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     if(_loc35_)
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        §§push(_loc28_.y);
                                                                                                                                                                                                                                                                                                                                                                                                                        if(_loc35_ || param3)
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           addr1373:
                                                                                                                                                                                                                                                                                                                                                                                                                           §§pop().y = §§pop() - §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1374);
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1388);
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1379);
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1396);
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1373);
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            addr1567:
                                                                                                                                                                                                                                                                                                                                                                                                            §§pop().x = _loc15_ - _loc27_.x;
                                                                                                                                                                                                                                                                                                                                                                                                            addr1564:
                                                                                                                                                                                                                                                                                                                                                                                                            addr1566:
                                                                                                                                                                                                                                                                                                                                                                                                            §§push(param1.§1!§);
                                                                                                                                                                                                                                                                                                                                                                                                            §§push(_loc16_);
                                                                                                                                                                                                                                                                                                                                                                                                            if(!_loc34_)
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               if(!_loc34_)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  addr1548:
                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(_loc27_.y);
                                                                                                                                                                                                                                                                                                                                                                                                                  if(_loc35_)
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     addr1551:
                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                     if(!(_loc35_ || param2))
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1564);
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     §§pop().y = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                     addr1536:
                                                                                                                                                                                                                                                                                                                                                                                                                     param1.§1!§.Normalize();
                                                                                                                                                                                                                                                                                                                                                                                                                     addr1530:
                                                                                                                                                                                                                                                                                                                                                                                                                     param1.m_localPoint.SetV(_loc27_);
                                                                                                                                                                                                                                                                                                                                                                                                                     param1.§ !C§[0].m_localPoint.SetV(param4.§`3§);
                                                                                                                                                                                                                                                                                                                                                                                                                     param1.§ !C§[0].m_id.key = 0;
                                                                                                                                                                                                                                                                                                                                                                                                                     return;
                                                                                                                                                                                                                                                                                                                                                                                                                     addr1526:
                                                                                                                                                                                                                                                                                                                                                                                                                     addr1559:
                                                                                                                                                                                                                                                                                                                                                                                                                     addr1537:
                                                                                                                                                                                                                                                                                                                                                                                                                     addr1532:
                                                                                                                                                                                                                                                                                                                                                                                                                     addr1516:
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1566);
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1567);
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1551);
                                                                                                                                                                                                                                                                                                                                                                                                            addr1397:
                                                                                                                                                                                                                                                                                                                                                                                                            addr1563:
                                                                                                                                                                                                                                                                                                                                                                                                            addr1568:
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1548);
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1551);
                                                                                                                                                                                                                                                                                                                                                                                                      addr1403:
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1526);
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr1559);
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             param1.§ !C§[0].m_id.key = 0;
                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr1551);
                                                                                                                                                                                                                                                                                                                                                                                             addr1289:
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr1374);
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr1530);
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr1408);
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1397);
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1551);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr913);
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr885);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     param1.§3r§ = b2Manifold.§-!-§;
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1563);
                                                                                                                                                                                                                                                                                                                                                                     §§push(param1.§1!§);
                                                                                                                                                                                                                                                                                                                                                                     addr1579:
                                                                                                                                                                                                                                                                                                                                                                     addr1574:
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr986);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               addr1584:
                                                                                                                                                                                                                                                                                                                                                               §§push(_loc15_);
                                                                                                                                                                                                                                                                                                                                                               §§push(_loc27_.x);
                                                                                                                                                                                                                                                                                                                                                               if(_loc35_)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  addr1589:
                                                                                                                                                                                                                                                                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                                  §§push(_loc15_);
                                                                                                                                                                                                                                                                                                                                                                  §§push(_loc27_.x);
                                                                                                                                                                                                                                                                                                                                                                  if(_loc35_ || param2)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     addr1600:
                                                                                                                                                                                                                                                                                                                                                                     §§push(§§pop() * (§§pop() - §§pop()));
                                                                                                                                                                                                                                                                                                                                                                     §§push(_loc16_);
                                                                                                                                                                                                                                                                                                                                                                     §§push(_loc27_.y);
                                                                                                                                                                                                                                                                                                                                                                     if(!(_loc34_ && param3))
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        addr1626:
                                                                                                                                                                                                                                                                                                                                                                        addr1631:
                                                                                                                                                                                                                                                                                                                                                                        addr1630:
                                                                                                                                                                                                                                                                                                                                                                        addr1625:
                                                                                                                                                                                                                                                                                                                                                                        addr1628:
                                                                                                                                                                                                                                                                                                                                                                        addr1622:
                                                                                                                                                                                                                                                                                                                                                                        addr1629:
                                                                                                                                                                                                                                                                                                                                                                        addr1627:
                                                                                                                                                                                                                                                                                                                                                                        addr1623:
                                                                                                                                                                                                                                                                                                                                                                        if(§§pop() + (§§pop() - §§pop()) * (_loc16_ - _loc27_.y) > _loc20_ * _loc20_)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           if(!(_loc34_ && param3))
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              return;
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           addr1640:
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        param1.§&!h§ = 1;
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1579);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1626);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1631);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1537);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1314);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1038);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1031);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr1305);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             addr1497:
                                                                                                                                                                                                                                                                                                                                             if(_loc35_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                return;
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr1532);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr1567);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr1536);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr1013);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr972);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr1640);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr1403);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr1280);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr1025);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr1396);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr1325);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr1379);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr1299);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1243);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   addr1205:
                                                                                                                                                                                                                                                                                                   if(_loc35_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      return;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1289);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                if(!(_loc34_ && b2Collision))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr1215:
                                                                                                                                                                                                                                                                                                   §§goto(addr1034);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1574);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr1205);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1626);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1589);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    addr1454:
                                                                                                                                                                                                                                                                                    §§push(_loc15_);
                                                                                                                                                                                                                                                                                    if(!_loc34_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(!(_loc34_ && param3))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(_loc28_.x);
                                                                                                                                                                                                                                                                                          if(!_loc34_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                             if(_loc35_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                addr1471:
                                                                                                                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                if(_loc35_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr1474:
                                                                                                                                                                                                                                                                                                   §§push(_loc16_);
                                                                                                                                                                                                                                                                                                   §§push(_loc28_.y);
                                                                                                                                                                                                                                                                                                   if(_loc35_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      addr1480:
                                                                                                                                                                                                                                                                                                      §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                      §§push(_loc16_);
                                                                                                                                                                                                                                                                                                      §§push(_loc28_.y);
                                                                                                                                                                                                                                                                                                      if(_loc35_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                         if(!_loc34_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            addr1488:
                                                                                                                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                            if(_loc35_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               addr1493:
                                                                                                                                                                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                               §§push(_loc20_);
                                                                                                                                                                                                                                                                                                               §§push(_loc20_);
                                                                                                                                                                                                                                                                                                               if(_loc35_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  addr1496:
                                                                                                                                                                                                                                                                                                                  if(§§pop() > §§pop() * §§pop())
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§goto(addr1497);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§goto(addr1404);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§goto(addr1630);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr1567);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§goto(addr1600);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr1493);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1625);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1480);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1628);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1488);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1622);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1629);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1471);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1238);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§push(§§pop());
                                                                                                                                                                                                                                                                           if(_loc35_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(_loc35_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc35_ || b2Collision)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(!_loc34_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       _loc19_ = §§pop();
                                                                                                                                                                                                                                                                                       §§goto(addr1185);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1600);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1474);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1270);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1202);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1480);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1496);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1202);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1627);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1493);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1202);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1623);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1626);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1480);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1262);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1238);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1488);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1153);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1165);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1185);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1238);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1202);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1250);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1238);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1165);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1516);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1584);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1270);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1454);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1238);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1279);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1238);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1493);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1582);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1270);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1582);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1420);
                                                                                                                                                                     }
                                                                                                                                                                     if(!(_loc34_ && param2))
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc34_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc15_);
                                                                                                                                                                           if(!_loc34_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc28_.x);
                                                                                                                                                                              if(!(_loc34_ && b2Collision))
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc34_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr1454);
                                                                                                                                                                                    §§push(§§pop() - §§pop());
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr1589);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1626);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1454);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1568);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1497);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1600);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1584);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1215);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr836);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr826);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr819);
                                                                                                                                                }
                                                                                                                                                §§goto(addr836);
                                                                                                                                             }
                                                                                                                                             §§goto(addr819);
                                                                                                                                          }
                                                                                                                                          §§goto(addr816);
                                                                                                                                       }
                                                                                                                                       §§goto(addr819);
                                                                                                                                    }
                                                                                                                                    §§goto(addr836);
                                                                                                                                 }
                                                                                                                                 §§goto(addr819);
                                                                                                                              }
                                                                                                                              §§goto(addr770);
                                                                                                                           }
                                                                                                                           §§goto(addr744);
                                                                                                                        }
                                                                                                                        §§goto(addr745);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr744);
                                                                                                               §§push(Number(§§pop()));
                                                                                                            }
                                                                                                            §§goto(addr725);
                                                                                                         }
                                                                                                         §§goto(addr744);
                                                                                                      }
                                                                                                      §§goto(addr725);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr744);
                                                                                             }
                                                                                             §§goto(addr722);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr698);
                                                                                    }
                                                                                    §§goto(addr677);
                                                                                 }
                                                                              }
                                                                              §§goto(addr518);
                                                                           }
                                                                           §§goto(addr521);
                                                                        }
                                                                        §§goto(addr484);
                                                                     }
                                                                     return;
                                                                  }
                                                                  §§goto(addr257);
                                                               }
                                                               §§goto(addr250);
                                                            }
                                                            §§goto(addr257);
                                                         }
                                                         §§goto(addr224);
                                                      }
                                                      §§goto(addr217);
                                                   }
                                                   §§goto(addr214);
                                                }
                                             }
                                             §§goto(addr193);
                                          }
                                       }
                                       §§goto(addr189);
                                    }
                                    §§goto(addr167);
                                 }
                                 §§goto(addr178);
                              }
                              §§goto(addr141);
                           }
                           §§goto(addr128);
                        }
                        §§goto(addr123);
                     }
                     §§goto(addr141);
                  }
                  §§goto(addr100);
               }
               §§goto(addr92);
            }
            §§goto(addr87);
         }
         §§goto(addr100);
      }
      
      public static function §]I§(param1:b2AABB, param2:b2AABB) : Boolean
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc3_:b2Vec2 = param2.§>h§;
         var _loc4_:b2Vec2 = param1.§^!z§;
         §§push(_loc3_.x);
         if(!(_loc9_ && _loc3_))
         {
            §§push(§§pop() - _loc4_.x);
            if(!_loc9_)
            {
               addr39:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            §§push(_loc3_.y);
            if(_loc10_ || param2)
            {
               §§push(§§pop() - _loc4_.y);
               if(!(_loc9_ && _loc3_))
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc6_:* = §§pop();
            _loc3_ = param1.§>h§;
            _loc4_ = param2.§^!z§;
            §§push(_loc3_.x);
            if(_loc10_)
            {
               §§push(§§pop() - _loc4_.x);
               if(!(_loc9_ && b2Collision))
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc7_:* = §§pop();
            §§push(_loc3_.y);
            if(!_loc9_)
            {
               §§push(§§pop() - _loc4_.y);
               if(!_loc9_)
               {
                  addr95:
                  §§push(Number(§§pop()));
               }
               var _loc8_:* = §§pop();
               if(!(_loc9_ && param1))
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
                        if(!_loc9_)
                        {
                           §§push(§§pop());
                           loop2:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 addr251:
                                 while(true)
                                 {
                                    §§pop();
                                    addr252:
                                    while(true)
                                    {
                                       §§push(_loc6_);
                                       addr233:
                                       while(true)
                                       {
                                          if(_loc9_)
                                          {
                                             continue loop0;
                                          }
                                          §§push(0);
                                          while(true)
                                          {
                                             §§push(§§pop() > §§pop());
                                          }
                                       }
                                    }
                                 }
                                 addr251:
                              }
                              while(true)
                              {
                                 loop4:
                                 while(!§§pop())
                                 {
                                    loop5:
                                    while(true)
                                    {
                                       §§push(_loc7_);
                                       loop6:
                                       while(_loc10_ || b2Collision)
                                       {
                                          §§push(0);
                                          loop7:
                                          while(!_loc9_)
                                          {
                                             §§push(§§pop() > §§pop());
                                             while(!_loc9_)
                                             {
                                                continue loop2;
                                                addr156:
                                                if(!(_loc10_ || b2Collision))
                                                {
                                                   continue;
                                                }
                                                while(§§pop())
                                                {
                                                   if(!(_loc9_ && param2))
                                                   {
                                                      if(_loc10_)
                                                      {
                                                         §§push(false);
                                                         addr175:
                                                         if(_loc10_)
                                                         {
                                                            return §§pop();
                                                         }
                                                         addr242:
                                                      }
                                                      loop10:
                                                      while(true)
                                                      {
                                                         if(_loc9_ && _loc3_)
                                                         {
                                                            continue loop5;
                                                         }
                                                         §§push(_loc8_);
                                                         if(_loc9_ && param1)
                                                         {
                                                            continue loop6;
                                                         }
                                                         §§push(0);
                                                         if(_loc9_)
                                                         {
                                                            continue loop7;
                                                         }
                                                         if(!(_loc10_ || _loc3_))
                                                         {
                                                            break;
                                                         }
                                                         §§push(§§pop() > §§pop());
                                                         if(_loc10_)
                                                         {
                                                            addr149:
                                                            if(!(_loc9_ && param2))
                                                            {
                                                               §§goto(addr156);
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  if(_loc10_)
                                                                  {
                                                                     §§pop();
                                                                     continue loop10;
                                                                  }
                                                                  §§goto(addr251);
                                                                  §§goto(addr149);
                                                               }
                                                               §§goto(addr252);
                                                               addr210:
                                                            }
                                                         }
                                                      }
                                                      continue loop1;
                                                      return §§pop();
                                                   }
                                                   if(_loc10_ || param2)
                                                   {
                                                      addr185:
                                                      break;
                                                   }
                                                   break loop4;
                                                }
                                                §§push(true);
                                                if(!(_loc9_ && b2Collision))
                                                {
                                                   return §§pop();
                                                }
                                                §§goto(addr175);
                                             }
                                             continue loop4;
                                          }
                                          §§goto(addr236);
                                       }
                                       §§goto(addr233);
                                    }
                                 }
                                 if(!_loc9_)
                                 {
                                    §§goto(addr242);
                                    §§push(false);
                                 }
                                 else
                                 {
                                    §§goto(addr252);
                                 }
                              }
                              continue loop0;
                           }
                        }
                        §§goto(addr251);
                     }
                  }
               }
               §§goto(addr185);
            }
            §§goto(addr95);
         }
         §§goto(addr39);
      }
   }
}
