package §3c§
{
   import §,Z§.*;
   import §9t§.*;
   import §@!'§.*;
   
   use namespace b2internal;
   
   public class b2Collision
   {
      
      public static const b2_nullFeature:uint = 255;
      
      private static var §8$§:Vector.<§10§>;
      
      private static var s_clipPoints1:Vector.<§10§>;
      
      private static var s_clipPoints2:Vector.<§10§>;
      
      private static var §2!4§:Vector.<int>;
      
      private static var §>!U§:Vector.<int>;
      
      private static var §-";§:b2Vec2;
      
      private static var §-"1§:b2Vec2;
      
      private static var § !s§:b2Vec2;
      
      private static var static:b2Vec2;
      
      private static var §3"&§:b2Vec2;
      
      private static var s_tangent2:b2Vec2;
      
      private static var s_v11:b2Vec2;
      
      private static var s_v12:b2Vec2;
      
      private static var b2CollidePolyTempVec:b2Vec2;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            b2_nullFeature = 255;
            loop0:
            while(true)
            {
               §8$§ = §^!u§();
               addr195:
               while(true)
               {
                  s_clipPoints1 = §^!u§();
                  continue loop0;
               }
            }
         }
         §§goto(addr134);
      }
      
      public function b2Collision()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super();
         }
      }
      
      public static function §%"+§(param1:Vector.<§10§>, param2:Vector.<§10§>, param3:b2Vec2, param4:Number) : int
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc5_:§10§ = null;
         var _loc6_:int = 0;
         var _loc7_:b2Vec2 = null;
         var _loc9_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:b2Vec2 = null;
         var _loc13_:§10§ = null;
         if(!_loc15_)
         {
            _loc6_ = 0;
         }
         _loc7_ = (_loc5_ = param2[0]).v;
         var _loc8_:b2Vec2 = (_loc5_ = param2[1]).v;
         if(!_loc15_)
         {
            §§push(param3.x);
            if(!_loc15_)
            {
               §§push(_loc7_.x);
               if(!(_loc15_ && param2))
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc15_)
                  {
                     §§push(param3.y);
                     if(!_loc15_)
                     {
                        §§push(_loc7_.y);
                        if(_loc14_ || b2Collision)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc14_)
                           {
                              §§push(§§pop() + §§pop());
                              if(_loc14_ || b2Collision)
                              {
                                 §§push(param4);
                                 if(!_loc15_)
                                 {
                                    addr101:
                                    §§push(§§pop() - §§pop());
                                    if(!_loc15_)
                                    {
                                       §§push(Number(§§pop()));
                                       if(_loc14_)
                                       {
                                          addr107:
                                          _loc9_ = §§pop();
                                          §§push(param3.x);
                                          if(_loc14_)
                                          {
                                             §§push(_loc8_.x);
                                             if(!_loc15_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!(_loc15_ && param1))
                                                {
                                                   addr124:
                                                   §§push(param3.y);
                                                   if(_loc14_ || param1)
                                                   {
                                                      addr133:
                                                      §§push(§§pop() * _loc8_.y);
                                                      if(!_loc15_)
                                                      {
                                                         addr138:
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc14_)
                                                         {
                                                            addr142:
                                                            addr141:
                                                            §§push(§§pop() - param4);
                                                            if(_loc15_ && b2Collision)
                                                            {
                                                            }
                                                            addr151:
                                                            var _loc10_:* = §§pop();
                                                            if(_loc14_ || param1)
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
                                                                           addr290:
                                                                           while(true)
                                                                           {
                                                                           }
                                                                        }
                                                                        addr280:
                                                                     }
                                                                     loop4:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc10_);
                                                                        loop5:
                                                                        while(_loc14_)
                                                                        {
                                                                           §§push(0);
                                                                           loop6:
                                                                           while(true)
                                                                           {
                                                                              if(§§pop() <= §§pop())
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    param1[_loc6_++].Set(param2[1]);
                                                                                    addr269:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc14_ || param3))
                                                                                       {
                                                                                          §§goto(addr280);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr290);
                                                                                 }
                                                                                 addr259:
                                                                              }
                                                                              loop9:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc9_);
                                                                                 if(!_loc15_)
                                                                                 {
                                                                                    if(_loc15_ && param1)
                                                                                    {
                                                                                       continue loop5;
                                                                                    }
                                                                                    §§push(_loc10_);
                                                                                    if(!_loc15_)
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(_loc14_)
                                                                                       {
                                                                                          §§push(0);
                                                                                          if(!(_loc15_ && param3))
                                                                                          {
                                                                                             if(!_loc15_)
                                                                                             {
                                                                                                if(§§pop() < §§pop())
                                                                                                {
                                                                                                   if(!(_loc15_ && param2))
                                                                                                   {
                                                                                                      if(_loc14_ || b2Collision)
                                                                                                      {
                                                                                                         if(_loc14_)
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc9_);
                                                                                                               if(!(_loc14_ || b2Collision))
                                                                                                               {
                                                                                                                  break loop9;
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc9_);
                                                                                                                  if(!(_loc14_ || param1))
                                                                                                                  {
                                                                                                                     continue loop6;
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() - _loc10_);
                                                                                                                     continue loop6;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            addr214:
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr259);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr269);
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc14_)
                                                                                                      {
                                                                                                         if(false)
                                                                                                         {
                                                                                                            continue loop4;
                                                                                                         }
                                                                                                         §§push(_loc12_ = (_loc5_ = param1[_loc6_]).v);
                                                                                                         §§push(_loc7_.x);
                                                                                                         if(!(_loc15_ && param1))
                                                                                                         {
                                                                                                            §§push(_loc11_);
                                                                                                            if(_loc14_ || param3)
                                                                                                            {
                                                                                                               §§push(_loc8_.x);
                                                                                                               if(_loc14_ || param2)
                                                                                                               {
                                                                                                                  §§push(§§pop() - _loc7_.x);
                                                                                                               }
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                            }
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                         }
                                                                                                         §§pop().x = §§pop();
                                                                                                         if(_loc14_)
                                                                                                         {
                                                                                                            §§push(_loc12_);
                                                                                                            §§push(_loc7_.y);
                                                                                                            if(_loc14_)
                                                                                                            {
                                                                                                               §§push(_loc11_);
                                                                                                               if(_loc14_ || param2)
                                                                                                               {
                                                                                                                  §§push(_loc8_.y);
                                                                                                                  if(!(_loc15_ && param3))
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
                                                                                                         if(_loc14_ || param1)
                                                                                                         {
                                                                                                            if(_loc9_ > 0)
                                                                                                            {
                                                                                                               addr378:
                                                                                                               _loc13_ = param2[0];
                                                                                                               if(_loc14_ || param3)
                                                                                                               {
                                                                                                                  _loc5_.id = _loc13_.id;
                                                                                                                  if(!_loc14_)
                                                                                                                  {
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr424);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               _loc13_ = param2[1];
                                                                                                               if(_loc14_ || param2)
                                                                                                               {
                                                                                                                  _loc5_.id = _loc13_.id;
                                                                                                               }
                                                                                                            }
                                                                                                            _loc6_++;
                                                                                                            §§goto(addr424);
                                                                                                         }
                                                                                                         §§goto(addr378);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr290);
                                                                                                      }
                                                                                                   }
                                                                                                   addr249:
                                                                                                }
                                                                                                addr424:
                                                                                             }
                                                                                             continue loop1;
                                                                                             return _loc6_;
                                                                                          }
                                                                                          §§goto(addr230);
                                                                                       }
                                                                                       §§goto(addr222);
                                                                                    }
                                                                                    §§goto(addr230);
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              addr247:
                                                                              while(true)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 addr248:
                                                                                 while(true)
                                                                                 {
                                                                                    _loc11_ = §§pop();
                                                                                    §§goto(addr249);
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        continue loop0;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr214);
                                                         }
                                                         §§goto(addr151);
                                                         §§push(Number(§§pop()));
                                                      }
                                                   }
                                                }
                                                §§goto(addr142);
                                             }
                                             §§goto(addr133);
                                          }
                                          §§goto(addr142);
                                       }
                                       §§goto(addr124);
                                    }
                                    §§goto(addr142);
                                 }
                                 §§goto(addr138);
                              }
                              §§goto(addr141);
                           }
                           §§goto(addr138);
                        }
                        §§goto(addr133);
                     }
                     §§goto(addr138);
                  }
                  §§goto(addr107);
               }
               §§goto(addr101);
            }
         }
         §§goto(addr107);
      }
      
      public static function §9!R§(param1:b2PolygonShape, param2:b2Transform, param3:int, param4:b2PolygonShape, param5:b2Transform) : Number
      {
         var _loc26_:Boolean = true;
         var _loc27_:Boolean = false;
         var _loc11_:b2Mat22 = null;
         var _loc12_:b2Vec2 = null;
         var _loc25_:* = NaN;
         §§push(param1.§+!U§);
         if(!_loc27_)
         {
            §§push(int(§§pop()));
         }
         var _loc6_:* = §§pop();
         var _loc7_:Vector.<b2Vec2> = param1.§8S§;
         var _loc8_:Vector.<b2Vec2> = param1.§<d§;
         §§push(param4.§+!U§);
         if(_loc26_)
         {
            §§push(int(§§pop()));
         }
         var _loc9_:* = §§pop();
         var _loc10_:Vector.<b2Vec2> = param4.§8S§;
         _loc11_ = param2.R;
         _loc12_ = _loc8_[param3];
         §§push(_loc11_.col1.x);
         if(!_loc27_)
         {
            §§push(_loc12_.x);
            if(_loc26_)
            {
               §§push(§§pop() * §§pop());
               if(_loc26_)
               {
                  §§push(_loc11_.col2.x);
                  if(_loc26_)
                  {
                     addr74:
                     §§push(§§pop() * _loc12_.y);
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc26_ || b2Collision)
                  {
                     addr85:
                     §§push(Number(§§pop()));
                  }
                  var _loc13_:* = §§pop();
                  §§push(_loc11_.col1.y);
                  if(_loc26_)
                  {
                     §§push(_loc12_.x);
                     if(!(_loc27_ && b2Collision))
                     {
                        §§push(§§pop() * §§pop());
                        if(!_loc27_)
                        {
                           addr104:
                           §§push(_loc11_.col2.y);
                           if(!_loc27_)
                           {
                              addr112:
                              §§push(§§pop() + §§pop() * _loc12_.y);
                              if(_loc26_ || param1)
                              {
                                 addr120:
                                 §§push(Number(§§pop()));
                              }
                              var _loc14_:* = §§pop();
                              §§push((_loc11_ = param5.R).col1.x);
                              if(_loc26_)
                              {
                                 §§push(_loc13_);
                                 if(!_loc27_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(!(_loc27_ && param2))
                                    {
                                       §§push(_loc11_.col1.y);
                                       if(!(_loc27_ && param1))
                                       {
                                          addr152:
                                          §§push(§§pop() * _loc14_);
                                       }
                                       §§push(§§pop() + §§pop());
                                       if(_loc27_)
                                       {
                                       }
                                       addr158:
                                       var _loc15_:* = §§pop();
                                       §§push(_loc11_.col2.x);
                                       if(_loc26_)
                                       {
                                          §§push(_loc13_);
                                          if(_loc26_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(!(_loc27_ && param1))
                                             {
                                                §§push(_loc11_.col2.y);
                                                if(!(_loc27_ && param1))
                                                {
                                                   addr185:
                                                   §§push(§§pop() * _loc14_);
                                                }
                                                §§push(§§pop() + §§pop());
                                                if(!_loc26_)
                                                {
                                                }
                                                addr191:
                                                var _loc16_:* = §§pop();
                                                var _loc17_:* = 0;
                                                var _loc18_:* = Number(Number.MAX_VALUE);
                                                var _loc19_:int = 0;
                                                while(_loc19_ < _loc9_)
                                                {
                                                   §§push((_loc12_ = _loc10_[_loc19_]).x);
                                                   if(_loc26_ || b2Collision)
                                                   {
                                                      §§push(_loc15_);
                                                      if(_loc26_ || param3)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(!(_loc27_ && param2))
                                                         {
                                                            §§push(_loc12_.y);
                                                            if(_loc26_ || param3)
                                                            {
                                                               §§push(§§pop() * _loc16_);
                                                               if(_loc26_)
                                                               {
                                                                  addr245:
                                                                  §§push(§§pop() + §§pop());
                                                                  if(_loc26_ || param3)
                                                                  {
                                                                     addr253:
                                                                     §§push(Number(§§pop()));
                                                                     if(!_loc27_)
                                                                     {
                                                                        addr256:
                                                                        §§push(§§pop());
                                                                        if(_loc26_)
                                                                        {
                                                                           addr259:
                                                                           _loc25_ = §§pop();
                                                                           if(_loc26_)
                                                                           {
                                                                              addr263:
                                                                              if(§§pop() < _loc18_)
                                                                              {
                                                                                 if(!_loc27_)
                                                                                 {
                                                                                    §§push(_loc25_);
                                                                                    if(_loc26_ || param1)
                                                                                    {
                                                                                       addr274:
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                    _loc18_ = §§pop();
                                                                                    if(_loc26_ || b2Collision)
                                                                                    {
                                                                                       §§push(_loc19_);
                                                                                       if(_loc26_ || param2)
                                                                                       {
                                                                                          §§push(int(§§pop()));
                                                                                       }
                                                                                       _loc17_ = §§pop();
                                                                                       if(_loc27_ && param3)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              _loc19_++;
                                                                              continue;
                                                                           }
                                                                        }
                                                                        §§goto(addr263);
                                                                     }
                                                                  }
                                                                  §§goto(addr274);
                                                               }
                                                               §§goto(addr259);
                                                            }
                                                            §§goto(addr245);
                                                         }
                                                         §§goto(addr256);
                                                      }
                                                      §§goto(addr263);
                                                   }
                                                   §§goto(addr253);
                                                }
                                                _loc12_ = _loc7_[param3];
                                                _loc11_ = param2.R;
                                                §§push(param2.position.x);
                                                if(!(_loc27_ && param1))
                                                {
                                                   §§push(_loc11_.col1.x);
                                                   if(!(_loc27_ && b2Collision))
                                                   {
                                                      §§push(_loc12_.x);
                                                      if(!_loc27_)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc26_)
                                                         {
                                                            addr350:
                                                            §§push(_loc11_.col2.x);
                                                            if(!(_loc27_ && param1))
                                                            {
                                                               addr360:
                                                               §§push(§§pop() * _loc12_.y);
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                         }
                                                         §§push(§§pop() + §§pop());
                                                         if(!(_loc27_ && param3))
                                                         {
                                                            addr373:
                                                            var _loc20_:Number = §§pop();
                                                            §§push(param2.position.y);
                                                            if(_loc26_)
                                                            {
                                                               §§push(_loc11_.col1.y);
                                                               if(_loc26_ || b2Collision)
                                                               {
                                                                  §§push(_loc12_.x);
                                                                  if(_loc26_)
                                                                  {
                                                                     addr410:
                                                                     §§push(§§pop() * §§pop());
                                                                     if(!_loc27_)
                                                                     {
                                                                        §§push(_loc11_.col2.y);
                                                                        if(!(_loc27_ && param1))
                                                                        {
                                                                           §§push(§§pop() * _loc12_.y);
                                                                        }
                                                                     }
                                                                     §§push(§§pop() + §§pop());
                                                                     if(_loc26_)
                                                                     {
                                                                        addr413:
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                     var _loc21_:* = §§pop();
                                                                     _loc12_ = _loc10_[_loc17_];
                                                                     _loc11_ = param5.R;
                                                                     §§push(param5.position.x);
                                                                     if(!_loc27_)
                                                                     {
                                                                        §§push(_loc11_.col1.x);
                                                                        if(!_loc27_)
                                                                        {
                                                                           §§push(_loc12_.x);
                                                                           if(!(_loc27_ && param2))
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              if(!_loc27_)
                                                                              {
                                                                                 addr455:
                                                                                 §§push(_loc11_.col2.x);
                                                                                 if(_loc26_)
                                                                                 {
                                                                                    addr451:
                                                                                    §§push(§§pop() * _loc12_.y);
                                                                                 }
                                                                                 §§push(§§pop() + (§§pop() + §§pop()));
                                                                                 if(_loc26_ || param2)
                                                                                 {
                                                                                    addr464:
                                                                                    var _loc22_:* = Number(§§pop());
                                                                                    §§push(param5.position.y);
                                                                                    if(!_loc27_)
                                                                                    {
                                                                                       §§push(_loc11_.col1.y);
                                                                                       if(!(_loc27_ && param2))
                                                                                       {
                                                                                          §§push(_loc12_.x);
                                                                                          if(_loc26_ || b2Collision)
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(_loc26_ || b2Collision)
                                                                                             {
                                                                                                addr506:
                                                                                                §§push(_loc11_.col2.y);
                                                                                                if(!_loc27_)
                                                                                                {
                                                                                                   addr502:
                                                                                                   §§push(§§pop() * _loc12_.y);
                                                                                                }
                                                                                                §§push(§§pop() + (§§pop() + §§pop()));
                                                                                                if(_loc26_)
                                                                                                {
                                                                                                   addr510:
                                                                                                   var _loc23_:* = Number(§§pop());
                                                                                                   if(_loc26_ || b2Collision)
                                                                                                   {
                                                                                                      §§push(_loc22_);
                                                                                                      if(!_loc27_)
                                                                                                      {
                                                                                                         §§push(_loc20_);
                                                                                                         if(_loc26_)
                                                                                                         {
                                                                                                            §§push(§§pop() - §§pop());
                                                                                                            if(_loc26_ || param2)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                               if(!_loc27_)
                                                                                                               {
                                                                                                                  _loc22_ = §§pop();
                                                                                                                  if(_loc26_)
                                                                                                                  {
                                                                                                                     addr538:
                                                                                                                     §§push(_loc23_);
                                                                                                                     if(!(_loc27_ && param2))
                                                                                                                     {
                                                                                                                        addr546:
                                                                                                                        §§push(_loc21_);
                                                                                                                        if(_loc26_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() - §§pop());
                                                                                                                           if(_loc26_ || param3)
                                                                                                                           {
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                              if(_loc26_ || param1)
                                                                                                                              {
                                                                                                                                 _loc23_ = §§pop();
                                                                                                                                 addr566:
                                                                                                                                 §§push(_loc22_);
                                                                                                                                 if(!(_loc27_ && param1))
                                                                                                                                 {
                                                                                                                                    §§push(_loc13_);
                                                                                                                                    if(_loc26_ || param1)
                                                                                                                                    {
                                                                                                                                       addr582:
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       if(_loc26_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc23_);
                                                                                                                                          if(!_loc26_)
                                                                                                                                          {
                                                                                                                                          }
                                                                                                                                          §§goto(addr607);
                                                                                                                                       }
                                                                                                                                       §§goto(addr605);
                                                                                                                                    }
                                                                                                                                    §§goto(addr607);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr607:
                                                                                                                           §§push(§§pop() * _loc14_);
                                                                                                                           if(_loc26_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              if(_loc26_)
                                                                                                                              {
                                                                                                                                 addr605:
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                              }
                                                                                                                           }
                                                                                                                           var _loc24_:* = §§pop();
                                                                                                                           return §§pop();
                                                                                                                           §§push(§§pop());
                                                                                                                        }
                                                                                                                        §§goto(addr582);
                                                                                                                     }
                                                                                                                     §§goto(addr605);
                                                                                                                  }
                                                                                                                  §§goto(addr566);
                                                                                                               }
                                                                                                               §§goto(addr605);
                                                                                                            }
                                                                                                            §§goto(addr546);
                                                                                                         }
                                                                                                         §§goto(addr607);
                                                                                                      }
                                                                                                      §§goto(addr546);
                                                                                                   }
                                                                                                   §§goto(addr538);
                                                                                                }
                                                                                                §§goto(addr510);
                                                                                             }
                                                                                             §§goto(addr506);
                                                                                          }
                                                                                          §§goto(addr502);
                                                                                       }
                                                                                       §§goto(addr506);
                                                                                    }
                                                                                    §§goto(addr510);
                                                                                 }
                                                                                 §§goto(addr464);
                                                                              }
                                                                              §§goto(addr455);
                                                                           }
                                                                           §§goto(addr451);
                                                                        }
                                                                        §§goto(addr455);
                                                                     }
                                                                     §§goto(addr464);
                                                                  }
                                                                  §§push(§§pop() + §§pop());
                                                               }
                                                               §§goto(addr410);
                                                            }
                                                            §§goto(addr413);
                                                         }
                                                         §§goto(addr373);
                                                      }
                                                      §§goto(addr360);
                                                   }
                                                   §§goto(addr350);
                                                }
                                                §§goto(addr373);
                                             }
                                             §§goto(addr191);
                                             §§push(Number(§§pop()));
                                          }
                                          §§goto(addr185);
                                       }
                                       §§goto(addr191);
                                    }
                                    §§goto(addr158);
                                    §§push(Number(§§pop()));
                                 }
                                 §§goto(addr152);
                              }
                              §§goto(addr158);
                           }
                           §§goto(addr112);
                        }
                        §§goto(addr120);
                     }
                     §§goto(addr112);
                  }
                  §§goto(addr104);
               }
               §§goto(addr85);
            }
            §§goto(addr74);
         }
         §§goto(addr85);
      }
      
      public static function §@j§(param1:Vector.<int>, param2:b2PolygonShape, param3:b2Transform, param4:b2PolygonShape, param5:b2Transform) : Number
      {
         var _loc26_:Boolean = false;
         var _loc27_:Boolean = true;
         var _loc8_:b2Vec2 = null;
         var _loc9_:b2Mat22 = null;
         var _loc22_:* = 0;
         var _loc23_:* = NaN;
         var _loc24_:* = 0;
         var _loc25_:* = NaN;
         §§push(param2.§+!U§);
         if(!_loc26_)
         {
            §§push(int(§§pop()));
         }
         var _loc6_:* = §§pop();
         var _loc7_:Vector.<b2Vec2> = param2.§<d§;
         _loc9_ = param5.R;
         _loc8_ = param4.§^E§;
         §§push(param5.position.x);
         if(!_loc26_)
         {
            §§push(_loc9_.col1.x);
            if(!(_loc26_ && param2))
            {
               §§push(_loc8_.x);
               if(_loc27_)
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc26_ && param1))
                  {
                     addr85:
                     §§push(_loc9_.col2.x);
                     if(!_loc26_)
                     {
                        addr81:
                        §§push(§§pop() * _loc8_.y);
                     }
                     §§push(§§pop() + (§§pop() + §§pop()));
                     if(_loc27_)
                     {
                        addr88:
                        §§push(Number(§§pop()));
                     }
                     var _loc10_:* = §§pop();
                     §§push(param5.position.y);
                     if(_loc27_ || b2Collision)
                     {
                        §§push(_loc9_.col1.y);
                        if(!_loc26_)
                        {
                           §§push(_loc8_.x);
                           if(!_loc26_)
                           {
                              addr126:
                              §§push(§§pop() * §§pop());
                              if(!(_loc26_ && param3))
                              {
                                 §§push(_loc9_.col2.y);
                                 if(!_loc26_)
                                 {
                                    §§push(§§pop() * _loc8_.y);
                                 }
                              }
                              §§push(§§pop() + §§pop());
                              if(!_loc26_)
                              {
                                 addr129:
                                 §§push(Number(§§pop()));
                              }
                              var _loc11_:* = §§pop();
                              _loc9_ = param3.R;
                              _loc8_ = param2.§^E§;
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
                                          if(!_loc26_)
                                          {
                                             §§push(§§pop().x);
                                             if(!_loc26_)
                                             {
                                                §§push(_loc8_.x);
                                                if(!(_loc26_ && b2Collision))
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(!_loc26_)
                                                   {
                                                      §§push(_loc9_.col2);
                                                      if(!(_loc26_ && param3))
                                                      {
                                                         §§push(§§pop().x);
                                                         if(_loc27_)
                                                         {
                                                            §§push(_loc8_.y);
                                                            if(_loc27_ || param2)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(_loc27_)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  if(_loc27_)
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     if(!(_loc26_ && param1))
                                                                     {
                                                                        §§push(§§pop() - §§pop());
                                                                        if(_loc27_ || param2)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           if(_loc27_ || param1)
                                                                           {
                                                                              _loc10_ = §§pop();
                                                                              if(_loc27_ || param1)
                                                                              {
                                                                                 addr234:
                                                                                 §§push(_loc11_);
                                                                                 if(!(_loc26_ && b2Collision))
                                                                                 {
                                                                                    addr244:
                                                                                    §§push(param3.position.y);
                                                                                    if(!_loc26_)
                                                                                    {
                                                                                       §§push(_loc9_.col1);
                                                                                       if(!(_loc26_ && b2Collision))
                                                                                       {
                                                                                          addr256:
                                                                                          §§push(§§pop().y);
                                                                                          if(!_loc26_)
                                                                                          {
                                                                                             §§push(_loc8_.x);
                                                                                             if(!_loc26_)
                                                                                             {
                                                                                                addr263:
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(!_loc26_)
                                                                                                {
                                                                                                   addr266:
                                                                                                   §§push(_loc9_.col2.y);
                                                                                                   if(_loc27_ || param2)
                                                                                                   {
                                                                                                      addr276:
                                                                                                      §§push(§§pop() * _loc8_.y);
                                                                                                   }
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(!_loc26_)
                                                                                                   {
                                                                                                      addr282:
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      if(!_loc26_)
                                                                                                      {
                                                                                                         addr285:
                                                                                                         §§push(§§pop() - §§pop());
                                                                                                         if(_loc27_)
                                                                                                         {
                                                                                                            addr288:
                                                                                                            §§push(Number(§§pop()));
                                                                                                            if(!(_loc26_ && param3))
                                                                                                            {
                                                                                                               addr296:
                                                                                                               _loc11_ = §§pop();
                                                                                                               addr297:
                                                                                                               §§push(_loc10_);
                                                                                                               if(!(_loc26_ && param2))
                                                                                                               {
                                                                                                                  addr305:
                                                                                                                  §§push(param3.R.col1.x);
                                                                                                                  if(!_loc26_)
                                                                                                                  {
                                                                                                                     addr311:
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     if(!(_loc26_ && b2Collision))
                                                                                                                     {
                                                                                                                        §§push(_loc11_);
                                                                                                                        if(!(_loc26_ && b2Collision))
                                                                                                                        {
                                                                                                                           addr332:
                                                                                                                           addr331:
                                                                                                                           addr330:
                                                                                                                           §§push(§§pop() + §§pop() * param3.R.col1.y);
                                                                                                                           if(_loc26_ && param3)
                                                                                                                           {
                                                                                                                           }
                                                                                                                           var _loc12_:* = §§pop();
                                                                                                                           §§push(_loc10_);
                                                                                                                           if(!_loc26_)
                                                                                                                           {
                                                                                                                              §§push(param3.R.col2.x);
                                                                                                                              if(!(_loc26_ && param1))
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 if(!_loc26_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc11_);
                                                                                                                                    if(_loc27_)
                                                                                                                                    {
                                                                                                                                       addr362:
                                                                                                                                       §§push(§§pop() * param3.R.col2.y);
                                                                                                                                    }
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    if(_loc27_)
                                                                                                                                    {
                                                                                                                                       addr370:
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 var _loc13_:* = §§pop();
                                                                                                                                 var _loc14_:* = 0;
                                                                                                                                 §§push(-Number.MAX_VALUE);
                                                                                                                                 if(_loc27_ || param1)
                                                                                                                                 {
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                 }
                                                                                                                                 var _loc15_:* = §§pop();
                                                                                                                                 var _loc16_:int = 0;
                                                                                                                                 while(_loc16_ < _loc6_)
                                                                                                                                 {
                                                                                                                                    §§push((_loc8_ = _loc7_[_loc16_]).x);
                                                                                                                                    if(!_loc26_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc12_);
                                                                                                                                       if(!_loc26_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          if(_loc27_)
                                                                                                                                          {
                                                                                                                                             addr405:
                                                                                                                                             §§push(_loc8_.y);
                                                                                                                                             if(_loc27_ || param1)
                                                                                                                                             {
                                                                                                                                                addr414:
                                                                                                                                                §§push(§§pop() * _loc13_);
                                                                                                                                                if(_loc27_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                   if(!_loc26_)
                                                                                                                                                   {
                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                      if(_loc27_ || param3)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop());
                                                                                                                                                         if(_loc27_ || param3)
                                                                                                                                                         {
                                                                                                                                                            addr437:
                                                                                                                                                            _loc25_ = §§pop();
                                                                                                                                                            if(!_loc26_)
                                                                                                                                                            {
                                                                                                                                                               addr441:
                                                                                                                                                               if(§§pop() > _loc15_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc27_ || param3)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc25_);
                                                                                                                                                                     if(_loc27_)
                                                                                                                                                                     {
                                                                                                                                                                        addr453:
                                                                                                                                                                        _loc15_ = Number(§§pop());
                                                                                                                                                                        addr452:
                                                                                                                                                                        if(_loc26_ && b2Collision)
                                                                                                                                                                        {
                                                                                                                                                                        }
                                                                                                                                                                        _loc16_++;
                                                                                                                                                                        continue;
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr453);
                                                                                                                                                                  }
                                                                                                                                                                  §§push(_loc16_);
                                                                                                                                                                  if(!(_loc26_ && param1))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(int(§§pop()));
                                                                                                                                                                  }
                                                                                                                                                                  _loc14_ = §§pop();
                                                                                                                                                                  if(_loc26_)
                                                                                                                                                                  {
                                                                                                                                                                     continue;
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr453);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr452);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr441);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr453);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr437);
                                                                                                                                          }
                                                                                                                                          §§goto(addr453);
                                                                                                                                       }
                                                                                                                                       §§goto(addr414);
                                                                                                                                    }
                                                                                                                                    §§goto(addr405);
                                                                                                                                 }
                                                                                                                                 §§push(§9!R§(param2,param3,_loc14_,param4,param5));
                                                                                                                                 if(_loc27_)
                                                                                                                                 {
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                 }
                                                                                                                                 var _loc17_:* = §§pop();
                                                                                                                                 if(!_loc26_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc14_);
                                                                                                                                    if(!_loc26_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() - 1);
                                                                                                                                       if(!_loc26_)
                                                                                                                                       {
                                                                                                                                          if(§§pop() >= 0)
                                                                                                                                          {
                                                                                                                                             addr509:
                                                                                                                                             §§push(_loc14_);
                                                                                                                                             if(_loc27_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() - 1);
                                                                                                                                                if(_loc27_)
                                                                                                                                                {
                                                                                                                                                   §§push(int(§§pop()));
                                                                                                                                                   if(!(_loc26_ && param3))
                                                                                                                                                   {
                                                                                                                                                      addr536:
                                                                                                                                                      §§push(int(§§pop()));
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      addr533:
                                                                                                                                                      §§push(int(§§pop() - 1));
                                                                                                                                                      if(!_loc26_)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr536);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   var _loc18_:* = §§pop();
                                                                                                                                                   §§push(§9!R§(param2,param3,_loc18_,param4,param5));
                                                                                                                                                   if(!(_loc26_ && b2Collision))
                                                                                                                                                   {
                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                   }
                                                                                                                                                   var _loc19_:* = §§pop();
                                                                                                                                                   if(_loc27_)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc14_);
                                                                                                                                                      if(!_loc26_)
                                                                                                                                                      {
                                                                                                                                                         §§push(1);
                                                                                                                                                         if(_loc27_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                            if(_loc27_)
                                                                                                                                                            {
                                                                                                                                                               if(§§pop() < _loc6_)
                                                                                                                                                               {
                                                                                                                                                                  addr568:
                                                                                                                                                                  §§push(_loc14_);
                                                                                                                                                                  if(_loc27_)
                                                                                                                                                                  {
                                                                                                                                                                     addr573:
                                                                                                                                                                     addr572:
                                                                                                                                                                     §§push(int(§§pop() + 1));
                                                                                                                                                                     if(_loc26_ && param2)
                                                                                                                                                                     {
                                                                                                                                                                     }
                                                                                                                                                                     addr586:
                                                                                                                                                                     var _loc20_:* = §§pop();
                                                                                                                                                                     §§push(§9!R§(param2,param3,_loc20_,param4,param5));
                                                                                                                                                                     if(_loc27_ || param1)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                     }
                                                                                                                                                                     var _loc21_:* = §§pop();
                                                                                                                                                                     if(!(_loc26_ && param2))
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
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§pop();
                                                                                                                                                                                       addr1023:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc19_);
                                                                                                                                                                                          addr991:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc21_);
                                                                                                                                                                                             addr992:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc26_ && b2Collision)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop2;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§push(§§pop() > §§pop());
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc27_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop3;
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    addr1022:
                                                                                                                                                                                 }
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!§§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc21_);
                                                                                                                                                                                       loop6:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc17_);
                                                                                                                                                                                          while(!(_loc26_ && param3))
                                                                                                                                                                                          {
                                                                                                                                                                                             if(§§pop() > §§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc26_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(1);
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      _loc24_ = §§pop();
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr970:
                                                                                                                                                                                                }
                                                                                                                                                                                                loop9:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc20_);
                                                                                                                                                                                                   loop10:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(int(§§pop()));
                                                                                                                                                                                                      loop11:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         _loc22_ = §§pop();
                                                                                                                                                                                                         loop12:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc27_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!(_loc26_ && param2))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc21_);
                                                                                                                                                                                                                  loop13:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(Number(§§pop()));
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
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc24_);
                                                                                                                                                                                                                                 if(!(_loc26_ && param2))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(-1);
                                                                                                                                                                                                                                    for(; §§pop() != §§pop(); if(!(_loc27_ || param1))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue;
                                                                                                                                                                                                                                    },§§goto(addr791),§§push(§§pop() + §§pop()))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc22_);
                                                                                                                                                                                                                                       if(!(_loc26_ && param2))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!_loc26_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!_loc26_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(1);
                                                                                                                                                                                                                                                if(!_loc26_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                loop38:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                   addr817:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc27_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(int(§§pop()));
                                                                                                                                                                                                                                                         if(_loc27_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc27_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!(_loc26_ && param3))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  loop40:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(int(§§pop()));
                                                                                                                                                                                                                                                                     addr836:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(_loc27_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc26_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              break;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           _loc14_ = §§pop();
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(!_loc26_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr843:
                                                                                                                                                                                                                                                                                 loop27:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(§9!R§(param2,param3,_loc14_,param4,param5));
                                                                                                                                                                                                                                                                                    if(_loc26_ && param1)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr718:
                                                                                                                                                                                                                                                                                       loop35:
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!(_loc26_ && b2Collision))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             continue loop1;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          addr890:
                                                                                                                                                                                                                                                                                          while(_loc27_ || b2Collision)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(int(§§pop()));
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§goto(addr916);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             continue loop35;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       continue loop1;
                                                                                                                                                                                                                                                                                       addr718:
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                    loop28:
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(_loc27_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(_loc27_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             continue loop13;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          addr861:
                                                                                                                                                                                                                                                                                          while(_loc27_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(0);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          continue loop6;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       addr791:
                                                                                                                                                                                                                                                                                       while(!_loc26_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr793:
                                                                                                                                                                                                                                                                                          §§push(_loc6_);
                                                                                                                                                                                                                                                                                          if(!(_loc26_ && param2))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(§§pop() < §§pop());
                                                                                                                                                                                                                                                                                             if(_loc27_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(!_loc26_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(§§pop())
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(_loc26_ && b2Collision)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            while(!_loc26_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(_loc27_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  continue loop27;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               continue loop15;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            continue loop16;
                                                                                                                                                                                                                                                                                                            addr918:
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§push(_loc22_);
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            continue loop38;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      addr807:
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      addr833:
                                                                                                                                                                                                                                                                                                      §§push(0);
                                                                                                                                                                                                                                                                                                      while(_loc27_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         continue loop40;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(int(§§pop()));
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      addr986:
                                                                                                                                                                                                                                                                                                      addr833:
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§goto(addr1022);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(_loc27_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(§§pop())
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(_loc27_ || param2)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(_loc26_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               break;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§push(_loc22_);
                                                                                                                                                                                                                                                                                                            if(!_loc26_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               continue loop10;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            addr916:
                                                                                                                                                                                                                                                                                                            addr916:
                                                                                                                                                                                                                                                                                                            addr916:
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(int(§§pop()));
                                                                                                                                                                                                                                                                                                               addr917:
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  _loc14_ = §§pop();
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            addr916:
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr918);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(_loc6_);
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(!(_loc26_ && param3))
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(§§pop() - 1);
                                                                                                                                                                                                                                                                                                               while(!(_loc26_ && param3))
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§goto(addr916);
                                                                                                                                                                                                                                                                                                                  §§push(int(§§pop()));
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               continue loop14;
                                                                                                                                                                                                                                                                                                               addr908:
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            addr987:
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               _loc22_ = §§pop();
                                                                                                                                                                                                                                                                                                               addr988:
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(_loc19_);
                                                                                                                                                                                                                                                                                                                  addr974:
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                     break loop28;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         addr900:
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr916);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1000);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                continue loop9;
                                                                                                                                                                                                                                                                                                addr865:
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr987);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§goto(addr793);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             addr864:
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr865);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       break;
                                                                                                                                                                                                                                                                                       addr622:
                                                                                                                                                                                                                                                                                       §§goto(addr864);
                                                                                                                                                                                                                                                                                       if(!(_loc26_ && param2))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          return §§pop();
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       _loc23_ = §§pop();
                                                                                                                                                                                                                                                                                       addr976:
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!(_loc26_ && param3))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             continue loop16;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1023);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr916);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(_loc17_);
                                                                                                                                                                                                                                                                                 addr934:
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              return §§pop();
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr917);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     continue loop11;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     _loc24_ = §§pop();
                                                                                                                                                                                                                                                                     addr1016:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr1015:
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr986);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr898);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr833);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr908);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr859:
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr861);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr916);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr833);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    while(_loc27_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§goto(addr859);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    continue loop12;
                                                                                                                                                                                                                                    addr857:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr917);
                                                                                                                                                                                                                                 addr679:
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               else
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr1004:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1015);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr988);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                param1[0] = _loc14_;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr934);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr992);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1004);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1023);
                                                                                                                                                                  }
                                                                                                                                                                  addr585:
                                                                                                                                                                  §§goto(addr586);
                                                                                                                                                                  §§push(int(§§pop()));
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  §§push(0);
                                                                                                                                                                  if(!_loc26_)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr585);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr586);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr586);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr573);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr572);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr573);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr568);
                                                                                                                                                }
                                                                                                                                                §§goto(addr533);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§push(_loc6_);
                                                                                                                                             if(_loc27_ || param1)
                                                                                                                                             {
                                                                                                                                                §§goto(addr533);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr536);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr533);
                                                                                                                                 }
                                                                                                                                 §§goto(addr509);
                                                                                                                              }
                                                                                                                              §§goto(addr362);
                                                                                                                           }
                                                                                                                           §§goto(addr370);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr332);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr332);
                                                                                                            §§push(Number(§§pop()));
                                                                                                         }
                                                                                                         §§goto(addr305);
                                                                                                      }
                                                                                                      §§goto(addr332);
                                                                                                   }
                                                                                                   §§goto(addr331);
                                                                                                }
                                                                                                §§goto(addr282);
                                                                                             }
                                                                                             §§goto(addr276);
                                                                                          }
                                                                                          §§goto(addr282);
                                                                                       }
                                                                                       §§goto(addr330);
                                                                                    }
                                                                                    §§goto(addr332);
                                                                                 }
                                                                                 §§goto(addr288);
                                                                              }
                                                                              §§goto(addr297);
                                                                           }
                                                                           §§goto(addr296);
                                                                        }
                                                                        §§goto(addr332);
                                                                     }
                                                                     §§goto(addr311);
                                                                  }
                                                                  §§goto(addr266);
                                                               }
                                                               §§goto(addr263);
                                                            }
                                                         }
                                                         §§goto(addr276);
                                                      }
                                                   }
                                                   §§goto(addr266);
                                                }
                                                §§goto(addr276);
                                             }
                                             §§goto(addr282);
                                          }
                                          §§goto(addr256);
                                       }
                                       §§goto(addr285);
                                    }
                                    §§goto(addr244);
                                 }
                                 §§goto(addr288);
                              }
                              §§goto(addr234);
                           }
                           §§push(§§pop() + §§pop());
                        }
                        §§goto(addr126);
                     }
                     §§goto(addr129);
                  }
                  §§goto(addr85);
               }
               §§goto(addr81);
            }
            §§goto(addr85);
         }
         §§goto(addr88);
      }
      
      public static function §^! §(param1:Vector.<§10§>, param2:b2PolygonShape, param3:b2Transform, param4:int, param5:b2PolygonShape, param6:b2Transform) : void
      {
         var _loc24_:Boolean = false;
         var _loc25_:Boolean = true;
         var _loc12_:b2Mat22 = null;
         var _loc13_:b2Vec2 = null;
         var _loc20_:§10§ = null;
         var _loc23_:* = NaN;
         §§push(param2.§+!U§);
         if(_loc25_)
         {
            §§push(int(§§pop()));
         }
         var _loc7_:* = §§pop();
         var _loc8_:Vector.<b2Vec2> = param2.§<d§;
         §§push(param5.§+!U§);
         if(_loc25_ || param3)
         {
            §§push(int(§§pop()));
         }
         var _loc9_:* = §§pop();
         var _loc10_:Vector.<b2Vec2> = param5.§8S§;
         var _loc11_:Vector.<b2Vec2> = param5.§<d§;
         _loc12_ = param3.R;
         _loc13_ = _loc8_[param4];
         §§push(_loc12_.col1.x);
         if(!(_loc24_ && param2))
         {
            §§push(_loc13_.x);
            if(!_loc24_)
            {
               §§push(§§pop() * §§pop());
               if(!_loc24_)
               {
                  §§push(_loc12_.col2.x);
                  if(!_loc24_)
                  {
                     addr88:
                     §§push(§§pop() * _loc13_.y);
                  }
                  §§push(§§pop() + §§pop());
                  if(!(_loc24_ && param3))
                  {
                     addr99:
                     §§push(Number(§§pop()));
                  }
               }
               var _loc14_:* = §§pop();
               §§push(_loc12_.col1.y);
               if(!_loc24_)
               {
                  §§push(_loc13_.x);
                  if(_loc25_)
                  {
                     §§push(§§pop() * §§pop());
                     if(!(_loc24_ && param1))
                     {
                        §§push(_loc12_.col2.y);
                        if(!(_loc24_ && b2Collision))
                        {
                           addr128:
                           §§push(§§pop() * _loc13_.y);
                        }
                        §§push(§§pop() + §§pop());
                        if(!(_loc24_ && param1))
                        {
                           addr139:
                           §§push(Number(§§pop()));
                        }
                     }
                     var _loc15_:* = §§pop();
                     §§push((_loc12_ = param6.R).col1.x);
                     if(_loc25_ || b2Collision)
                     {
                        §§push(_loc14_);
                        if(!_loc24_)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc25_)
                           {
                              addr161:
                              §§push(_loc12_.col1.y);
                              if(!_loc24_)
                              {
                                 addr166:
                                 §§push(§§pop() * _loc15_);
                              }
                              §§push(§§pop() + §§pop());
                              if(_loc25_ || b2Collision)
                              {
                                 addr176:
                                 §§push(Number(§§pop()));
                              }
                              var _loc16_:* = §§pop();
                              if(_loc25_)
                              {
                                 §§push(_loc12_.col2.x);
                                 if(_loc25_)
                                 {
                                    §§push(_loc14_);
                                    if(_loc25_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(_loc25_ || param2)
                                       {
                                          §§push(_loc12_.col2.y);
                                          if(!_loc24_)
                                          {
                                             addr201:
                                             §§push(§§pop() * _loc15_);
                                          }
                                          §§push(§§pop() + §§pop());
                                          if(_loc25_ || param3)
                                          {
                                             addr211:
                                             §§push(Number(§§pop()));
                                             if(!_loc24_)
                                             {
                                                _loc15_ = §§pop();
                                                if(_loc25_ || param1)
                                                {
                                                   addr222:
                                                   §§push(_loc16_);
                                                   if(!(_loc24_ && param3))
                                                   {
                                                      addr231:
                                                      _loc14_ = Number(§§pop());
                                                   }
                                                   §§goto(addr231);
                                                }
                                                var _loc17_:* = 0;
                                                var _loc18_:* = Number(Number.MAX_VALUE);
                                                var _loc19_:int = 0;
                                                loop0:
                                                while(true)
                                                {
                                                   §§push(_loc19_);
                                                   if(!_loc24_)
                                                   {
                                                      §§push(_loc9_);
                                                      if(_loc25_ || b2Collision)
                                                      {
                                                         if(§§pop() >= §§pop())
                                                         {
                                                            §§push(_loc17_);
                                                            if(_loc25_)
                                                            {
                                                               §§push(int(§§pop()));
                                                               break;
                                                            }
                                                            break;
                                                         }
                                                         _loc13_ = _loc11_[_loc19_];
                                                         if(_loc25_ || param3)
                                                         {
                                                            §§push(_loc14_);
                                                            if(_loc25_ || param2)
                                                            {
                                                               §§push(_loc13_.x);
                                                               if(!_loc24_)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(!(_loc24_ && param2))
                                                                  {
                                                                     addr297:
                                                                     §§push(_loc15_);
                                                                     if(_loc25_)
                                                                     {
                                                                        §§push(§§pop() * _loc13_.y);
                                                                        if(!_loc24_)
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           if(_loc25_)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              if(!_loc24_)
                                                                              {
                                                                                 addr311:
                                                                                 §§push(§§pop());
                                                                                 if(!_loc24_)
                                                                                 {
                                                                                    _loc23_ = §§pop();
                                                                                    if(!_loc24_)
                                                                                    {
                                                                                       addr318:
                                                                                       if(§§pop() < _loc18_)
                                                                                       {
                                                                                          loop6:
                                                                                          while(true)
                                                                                          {
                                                                                             addr326:
                                                                                             §§push(_loc23_);
                                                                                             if(_loc25_ || param3)
                                                                                             {
                                                                                                addr327:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                   continue loop6;
                                                                                                }
                                                                                                addr327:
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                _loc18_ = §§pop();
                                                                                                loop3:
                                                                                                while(true)
                                                                                                {
                                                                                                   addr263:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc19_);
                                                                                                      if(!_loc24_)
                                                                                                      {
                                                                                                         §§push(int(§§pop()));
                                                                                                      }
                                                                                                      _loc17_ = §§pop();
                                                                                                      addr269:
                                                                                                      while(_loc25_ || param2)
                                                                                                      {
                                                                                                      }
                                                                                                      continue loop3;
                                                                                                   }
                                                                                                   continue loop6;
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr327);
                                                                                          }
                                                                                          addr319:
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          _loc19_++;
                                                                                          if(!_loc24_)
                                                                                          {
                                                                                             if(_loc25_)
                                                                                             {
                                                                                                while(false)
                                                                                                {
                                                                                                   §§goto(addr263);
                                                                                                }
                                                                                                continue loop0;
                                                                                                addr261:
                                                                                             }
                                                                                             §§goto(addr319);
                                                                                             §§goto(addr326);
                                                                                          }
                                                                                          §§goto(addr269);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr318);
                                                                              }
                                                                              §§goto(addr327);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr318);
                                                                  }
                                                                  §§goto(addr311);
                                                               }
                                                               §§goto(addr318);
                                                            }
                                                            §§goto(addr297);
                                                         }
                                                         §§goto(addr261);
                                                      }
                                                      addr347:
                                                      var _loc21_:* = §§pop();
                                                      if(_loc25_)
                                                      {
                                                         §§push(1);
                                                         if(!_loc24_)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc25_ || param1)
                                                            {
                                                               if(§§pop() < _loc9_)
                                                               {
                                                                  §§push(_loc21_);
                                                                  if(_loc25_)
                                                                  {
                                                                     addr369:
                                                                     addr368:
                                                                     §§push(int(§§pop() + 1));
                                                                     if(_loc25_)
                                                                     {
                                                                        addr372:
                                                                     }
                                                                     addr377:
                                                                     var _loc22_:int = §§pop();
                                                                     _loc20_ = param1[0];
                                                                     _loc13_ = _loc10_[_loc21_];
                                                                     _loc12_ = param6.R;
                                                                     addr376:
                                                                     if(_loc25_ || b2Collision)
                                                                     {
                                                                        §§push(_loc20_.v);
                                                                        loop9:
                                                                        while(true)
                                                                        {
                                                                           §§push(param6.position);
                                                                           addr572:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().x);
                                                                              if(_loc25_ || param1)
                                                                              {
                                                                                 §§push(_loc12_.col1);
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().x);
                                                                                    addr583:
                                                                                    addr494:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc13_.x);
                                                                                       addr585:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          addr586:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc12_.col2);
                                                                                             addr588:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop().x);
                                                                                                addr589:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc13_.y);
                                                                                                   addr591:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      addr592:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         addr593:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§push(_loc12_.col1);
                                                                                    if(!(_loc25_ || param2))
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    §§push(§§pop().y);
                                                                                    if(_loc25_)
                                                                                    {
                                                                                       if(!(_loc24_ && param2))
                                                                                       {
                                                                                          if(_loc25_)
                                                                                          {
                                                                                             §§push(_loc13_.x);
                                                                                             if(_loc25_ || param3)
                                                                                             {
                                                                                                if(_loc25_ || b2Collision)
                                                                                                {
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(_loc25_)
                                                                                                   {
                                                                                                      §§push(_loc12_.col2);
                                                                                                      if(!_loc24_)
                                                                                                      {
                                                                                                         §§push(§§pop().y);
                                                                                                         if(_loc25_)
                                                                                                         {
                                                                                                            if(!_loc24_)
                                                                                                            {
                                                                                                               if(_loc25_)
                                                                                                               {
                                                                                                                  §§push(_loc13_.y);
                                                                                                                  if(!_loc24_)
                                                                                                                  {
                                                                                                                     addr550:
                                                                                                                     §§push(§§pop() + §§pop() * §§pop());
                                                                                                                     if(!(_loc24_ && param1))
                                                                                                                     {
                                                                                                                        addr559:
                                                                                                                        §§pop().y = §§pop() + §§pop();
                                                                                                                        loop22:
                                                                                                                        for(; !(_loc24_ && param1); while(!(_loc24_ && param2))
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc20_.id);
                                                                                                                                 loop29:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().§;!B§);
                                                                                                                                    loop30:
                                                                                                                                    while(_loc25_ || param2)
                                                                                                                                    {
                                                                                                                                       §§push(_loc21_);
                                                                                                                                       loop31:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§pop().§25§ = §§pop();
                                                                                                                                          addr465:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc20_.id);
                                                                                                                                             if(!(_loc24_ && b2Collision))
                                                                                                                                             {
                                                                                                                                                if(!_loc25_)
                                                                                                                                                {
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                                §§push(§§pop().§;!B§);
                                                                                                                                                if(_loc25_ || param3)
                                                                                                                                                {
                                                                                                                                                   continue loop31;
                                                                                                                                                }
                                                                                                                                                continue loop30;
                                                                                                                                             }
                                                                                                                                             continue loop29;
                                                                                                                                          }
                                                                                                                                          §§goto(addr469);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr470);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        })
                                                                                                                        {
                                                                                                                           §§push(_loc20_.id);
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop().§;!B§);
                                                                                                                              addr470:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(param4);
                                                                                                                                 addr471:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§pop().§+"0§ = §§pop();
                                                                                                                                    continue loop22;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        continue loop9;
                                                                                                                     }
                                                                                                                     §§goto(addr586);
                                                                                                                  }
                                                                                                                  §§goto(addr591);
                                                                                                               }
                                                                                                               §§goto(addr589);
                                                                                                            }
                                                                                                            §§goto(addr592);
                                                                                                         }
                                                                                                         §§goto(addr550);
                                                                                                      }
                                                                                                      §§goto(addr588);
                                                                                                   }
                                                                                                   §§goto(addr550);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr585);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr550);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr583);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr593);
                                                                                    }
                                                                                    §§goto(addr550);
                                                                                 }
                                                                              }
                                                                              addr594:
                                                                              while(true)
                                                                              {
                                                                                 §§pop().x = §§pop();
                                                                                 continue loop9;
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr479);
                                                                  }
                                                                  §§goto(addr372);
                                                               }
                                                               else
                                                               {
                                                                  §§push(0);
                                                                  if(!_loc24_)
                                                                  {
                                                                     §§goto(addr376);
                                                                  }
                                                                  §§goto(addr377);
                                                               }
                                                            }
                                                            §§goto(addr369);
                                                         }
                                                         §§goto(addr368);
                                                      }
                                                      §§goto(addr369);
                                                   }
                                                   break;
                                                }
                                                §§goto(addr347);
                                                §§push(§§pop());
                                             }
                                          }
                                       }
                                       §§goto(addr231);
                                    }
                                    §§goto(addr201);
                                 }
                                 §§goto(addr211);
                              }
                              §§goto(addr222);
                           }
                           §§goto(addr176);
                        }
                        §§goto(addr166);
                     }
                     §§goto(addr161);
                  }
                  §§goto(addr128);
               }
               §§goto(addr139);
            }
            §§goto(addr88);
         }
         §§goto(addr99);
      }
      
      private static function §^!u§() : Vector.<§10§>
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Vector.<§10§> = new Vector.<§10§>(2);
         if(!_loc3_)
         {
            _loc1_[0] = new §10§();
         }
         do
         {
            _loc1_[1] = new §10§();
         }
         while(_loc3_);
         
         return _loc1_;
      }
      
      public static function §>B§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2PolygonShape, param5:b2Transform) : void
      {
         var _loc46_:Boolean = true;
         var _loc47_:Boolean = false;
         var _loc6_:§10§ = null;
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
         if(_loc46_ || param2)
         {
            param1.§[!J§ = 0;
         }
         var _loc7_:Number = param2.§7!m§ + param4.§7!m§;
         var _loc8_:* = 0;
         if(!(_loc47_ && b2Collision))
         {
            §2!4§[0] = _loc8_;
         }
         §§push(§@j§(§2!4§,param2,param3,param4,param5));
         if(_loc46_)
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         if(_loc46_ || param1)
         {
            §§push(int(§2!4§[0]));
            if(_loc46_ || param3)
            {
               _loc8_ = §§pop();
               if(!(_loc47_ && param1))
               {
                  if(_loc9_ > _loc7_)
                  {
                     if(!(_loc47_ && param2))
                     {
                        §§goto(addr130);
                     }
                  }
                  §§push(0);
               }
               §§goto(addr130);
            }
            var _loc10_:* = §§pop();
            if(!(_loc47_ && param1))
            {
               §>!U§[0] = _loc10_;
            }
            §§push(§@j§(§>!U§,param4,param5,param2,param3));
            if(_loc46_ || param2)
            {
               §§push(Number(§§pop()));
            }
            var _loc11_:* = §§pop();
            if(!(_loc47_ && b2Collision))
            {
               _loc10_ = int(§>!U§[0]);
               if(_loc46_)
               {
                  §§push(_loc11_);
                  if(!(_loc47_ && param3))
                  {
                     if(§§pop() > _loc7_)
                     {
                        if(!(_loc47_ && param3))
                        {
                           return;
                        }
                        addr192:
                        §§push(0.98);
                        if(_loc46_ || b2Collision)
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                     §§goto(addr192);
                  }
                  var _loc18_:* = §§pop();
                  §§push(0.001);
                  if(_loc46_)
                  {
                     §§push(Number(§§pop()));
                  }
                  var _loc19_:* = §§pop();
                  if(!_loc47_)
                  {
                     §§push(_loc11_);
                     §§push(_loc18_);
                     if(!_loc47_)
                     {
                        §§push(_loc9_);
                        if(!_loc47_)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc46_)
                           {
                              addr220:
                              §§push(§§pop() + _loc19_);
                           }
                           if(§§pop() > §§pop())
                           {
                              addr222:
                              _loc12_ = param4;
                              _loc13_ = param2;
                              _loc14_ = param5;
                              _loc15_ = param3;
                              if(!_loc47_)
                              {
                                 §§push(_loc10_);
                                 while(true)
                                 {
                                    §§push(int(§§pop()));
                                    addr264:
                                    while(true)
                                    {
                                       _loc16_ = §§pop();
                                    }
                                 }
                                 addr263:
                              }
                              loop19:
                              while(true)
                              {
                                 loop20:
                                 while(true)
                                 {
                                    param1.§0w§ = b2Manifold.§9!&§;
                                    while(true)
                                    {
                                       §§push(1);
                                       if(_loc46_)
                                       {
                                          if(_loc46_)
                                          {
                                             _loc17_ = §§pop();
                                             if(_loc46_)
                                             {
                                                if(!(_loc47_ && param2))
                                                {
                                                   if(true)
                                                   {
                                                      break loop20;
                                                   }
                                                   continue loop20;
                                                }
                                                continue loop19;
                                             }
                                             continue;
                                          }
                                          §§goto(addr263);
                                       }
                                       break;
                                    }
                                    §§goto(addr264);
                                 }
                              }
                           }
                           else
                           {
                              _loc12_ = param2;
                              _loc13_ = param4;
                              _loc14_ = param3;
                              _loc15_ = param5;
                              if(_loc46_ || param1)
                              {
                                 §§push(_loc8_);
                                 if(!_loc47_)
                                 {
                                    §§push(int(§§pop()));
                                 }
                                 loop0:
                                 while(true)
                                 {
                                    _loc16_ = §§pop();
                                    loop1:
                                    while(true)
                                    {
                                       addr297:
                                       while(true)
                                       {
                                          param1.§0w§ = b2Manifold.§%p§;
                                          addr302:
                                          while(true)
                                          {
                                             if(!_loc47_)
                                             {
                                                continue loop0;
                                             }
                                             continue loop1;
                                          }
                                       }
                                    }
                                 }
                              }
                              §§goto(addr295);
                           }
                           §§goto(addr311);
                        }
                     }
                     §§goto(addr220);
                  }
                  §§goto(addr222);
               }
            }
            §§goto(addr192);
         }
         addr130:
      }
      
      public static function § !3§(param1:b2Manifold, param2:b2CircleShape, param3:b2Transform, param4:b2CircleShape, param5:b2Transform) : void
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         var _loc6_:b2Mat22 = null;
         var _loc7_:b2Vec2 = null;
         if(!_loc16_)
         {
            param1.§[!J§ = 0;
         }
         _loc6_ = param3.R;
         _loc7_ = param2.§1Q§;
         §§push(param3.position.x);
         if(!_loc16_)
         {
            §§push(_loc6_.col1.x);
            if(!_loc16_)
            {
               §§push(_loc7_.x);
               if(_loc17_ || param3)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc17_)
                  {
                     addr72:
                     §§push(_loc6_.col2.x);
                     if(_loc17_ || param3)
                     {
                        addr68:
                        §§push(§§pop() * _loc7_.y);
                     }
                     §§push(§§pop() + (§§pop() + §§pop()));
                     if(!_loc16_)
                     {
                        addr75:
                        §§push(Number(§§pop()));
                     }
                     var _loc8_:* = §§pop();
                     §§push(param3.position.y);
                     if(!_loc16_)
                     {
                        §§push(_loc6_.col1.y);
                        if(!(_loc16_ && param1))
                        {
                           §§push(_loc7_.x);
                           if(!(_loc16_ && param2))
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc17_ || param3)
                              {
                                 addr123:
                                 §§push(_loc6_.col2.y);
                                 if(_loc17_ || param3)
                                 {
                                    addr119:
                                    §§push(§§pop() * _loc7_.y);
                                 }
                                 §§push(§§pop() + (§§pop() + §§pop()));
                                 if(_loc17_)
                                 {
                                    addr127:
                                    var _loc9_:Number = §§pop();
                                    _loc6_ = param5.R;
                                    _loc7_ = param4.§1Q§;
                                    §§push(param5.position.x);
                                    if(_loc17_ || param1)
                                    {
                                       §§push(_loc6_.col1.x);
                                       if(!(_loc16_ && param1))
                                       {
                                          §§push(_loc7_.x);
                                          if(_loc17_ || param3)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(_loc17_)
                                             {
                                                addr168:
                                                §§push(_loc6_.col2.x);
                                                if(_loc17_)
                                                {
                                                   addr173:
                                                   §§push(§§pop() * _loc7_.y);
                                                }
                                                §§push(§§pop() + §§pop());
                                             }
                                             §§push(§§pop() + §§pop());
                                             if(_loc17_ || param3)
                                             {
                                                addr186:
                                                var _loc10_:Number = §§pop();
                                                §§push(param5.position.y);
                                                if(!(_loc16_ && param3))
                                                {
                                                   §§push(_loc6_.col1.y);
                                                   if(_loc17_ || b2Collision)
                                                   {
                                                      §§push(_loc7_.x);
                                                      if(!_loc16_)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(!(_loc16_ && param1))
                                                         {
                                                            addr229:
                                                            §§push(_loc6_.col2.y);
                                                            if(!_loc16_)
                                                            {
                                                               addr234:
                                                               §§push(§§pop() * _loc7_.y);
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                         }
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc17_ || param3)
                                                         {
                                                            addr247:
                                                            var _loc11_:Number = §§pop();
                                                            §§push(_loc10_);
                                                            if(!_loc16_)
                                                            {
                                                               §§push(§§pop() - _loc8_);
                                                               if(!_loc16_)
                                                               {
                                                                  addr255:
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               var _loc12_:* = §§pop();
                                                               §§push(_loc11_);
                                                               if(_loc17_ || b2Collision)
                                                               {
                                                                  §§push(§§pop() - _loc9_);
                                                                  if(_loc17_)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                               }
                                                               var _loc13_:* = §§pop();
                                                               §§push(_loc12_);
                                                               if(_loc17_)
                                                               {
                                                                  §§push(_loc12_);
                                                                  if(!(_loc16_ && b2Collision))
                                                                  {
                                                                     addr293:
                                                                     §§push(§§pop() * §§pop());
                                                                     if(!_loc16_)
                                                                     {
                                                                        §§push(_loc13_);
                                                                        if(!_loc16_)
                                                                        {
                                                                           §§push(§§pop() * _loc13_);
                                                                        }
                                                                     }
                                                                     var _loc14_:Number = §§pop();
                                                                     var _loc15_:Number = param2.§7!m§ + param4.§7!m§;
                                                                     if(_loc17_ || param1)
                                                                     {
                                                                        §§push(_loc14_);
                                                                        §§push(_loc15_);
                                                                        if(!_loc16_)
                                                                        {
                                                                           §§push(§§pop() * _loc15_);
                                                                        }
                                                                        if(§§pop() <= §§pop())
                                                                        {
                                                                           loop0:
                                                                           while(true)
                                                                           {
                                                                              param1.§0w§ = b2Manifold.§#m§;
                                                                              loop1:
                                                                              while(true)
                                                                              {
                                                                                 param1.m_localPoint.SetV(param2.§1Q§);
                                                                                 while(_loc17_ || param2)
                                                                                 {
                                                                                    param1.§0"B§.§@!d§();
                                                                                    loop3:
                                                                                    while(_loc17_ || param2)
                                                                                    {
                                                                                       param1.§[!J§ = 1;
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc17_ || param2)
                                                                                          {
                                                                                             if(!(_loc17_ || param1))
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             param1.§,!T§[0].m_localPoint.SetV(param4.§1Q§);
                                                                                             while(_loc17_ || param2)
                                                                                             {
                                                                                                param1.§,!T§[0].m_id.key = 0;
                                                                                                if(!(_loc17_ || param1))
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                if(!_loc16_)
                                                                                                {
                                                                                                   return;
                                                                                                }
                                                                                                §§goto(addr353);
                                                                                             }
                                                                                             continue loop3;
                                                                                          }
                                                                                          continue loop1;
                                                                                       }
                                                                                       return;
                                                                                    }
                                                                                 }
                                                                                 continue loop0;
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr417);
                                                                  }
                                                                  §§push(§§pop() + §§pop());
                                                                  if(!_loc17_)
                                                                  {
                                                                  }
                                                               }
                                                               §§goto(addr293);
                                                            }
                                                            §§goto(addr255);
                                                         }
                                                         §§goto(addr247);
                                                      }
                                                      §§goto(addr234);
                                                   }
                                                   §§goto(addr229);
                                                }
                                                §§goto(addr247);
                                             }
                                             §§goto(addr186);
                                          }
                                          §§goto(addr173);
                                       }
                                       §§goto(addr168);
                                    }
                                    §§goto(addr186);
                                 }
                                 §§goto(addr127);
                              }
                              §§goto(addr123);
                           }
                           §§goto(addr119);
                        }
                        §§goto(addr123);
                     }
                     §§goto(addr127);
                  }
                  §§goto(addr72);
               }
               §§goto(addr68);
            }
            §§goto(addr72);
         }
         §§goto(addr75);
      }
      
      public static function §1!6§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2CircleShape, param5:b2Transform) : void
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
         var _loc32_:* = NaN;
         var _loc33_:* = NaN;
         if(_loc34_ || param2)
         {
            param1.§[!J§ = 0;
         }
         _loc12_ = param5.R;
         _loc11_ = param4.§1Q§;
         §§push(param5.position.x);
         if(!_loc35_)
         {
            §§push(_loc12_.col1.x);
            if(!_loc35_)
            {
               §§push(_loc11_.x);
               if(_loc34_)
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc35_)
                  {
                     addr85:
                     §§push(_loc12_.col2.x);
                     if(_loc34_)
                     {
                        addr81:
                        §§push(§§pop() * _loc11_.y);
                     }
                     §§push(§§pop() + (§§pop() + §§pop()));
                     if(!(_loc35_ && param3))
                     {
                        addr94:
                        var _loc13_:Number = §§pop();
                        §§push(param5.position.y);
                        if(_loc34_)
                        {
                           §§push(_loc12_.col1.y);
                           if(_loc34_ || param2)
                           {
                              §§push(_loc11_.x);
                              if(!(_loc35_ && b2Collision))
                              {
                                 §§push(§§pop() * §§pop());
                                 if(_loc34_)
                                 {
                                    addr136:
                                    §§push(_loc12_.col2.y);
                                    if(!(_loc35_ && b2Collision))
                                    {
                                       addr132:
                                       §§push(§§pop() * _loc11_.y);
                                    }
                                    §§push(§§pop() + (§§pop() + §§pop()));
                                    if(_loc34_ || param2)
                                    {
                                       addr144:
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc14_:* = §§pop();
                                    if(!_loc35_)
                                    {
                                       §§push(_loc13_);
                                       if(_loc34_ || param3)
                                       {
                                          §§push(param3.position);
                                          if(!_loc35_)
                                          {
                                             §§push(§§pop().x);
                                             if(_loc34_ || param3)
                                             {
                                                §§push(§§pop() - §§pop());
                                                if(_loc34_)
                                                {
                                                   §§push(Number(§§pop()));
                                                   if(!(_loc35_ && param3))
                                                   {
                                                      _loc7_ = §§pop();
                                                      if(!(_loc35_ && param3))
                                                      {
                                                         addr187:
                                                         §§push(_loc14_);
                                                         if(_loc34_)
                                                         {
                                                            addr193:
                                                            §§push(§§pop() - param3.position.y);
                                                            if(!_loc35_)
                                                            {
                                                               addr197:
                                                               _loc8_ = Number(§§pop());
                                                            }
                                                         }
                                                         §§goto(addr197);
                                                      }
                                                      _loc12_ = param3.R;
                                                      §§push(_loc7_);
                                                      if(!_loc35_)
                                                      {
                                                         §§push(_loc12_.col1.x);
                                                         if(_loc34_)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(!_loc35_)
                                                            {
                                                               §§push(_loc8_);
                                                               if(!_loc35_)
                                                               {
                                                                  addr216:
                                                                  §§push(§§pop() * _loc12_.col1.y);
                                                               }
                                                               §§push(§§pop() + §§pop());
                                                               if(_loc34_ || param3)
                                                               {
                                                                  addr228:
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               var _loc15_:* = §§pop();
                                                               §§push(_loc7_);
                                                               if(_loc34_)
                                                               {
                                                                  §§push(_loc12_.col2.x);
                                                                  if(!_loc35_)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(!(_loc35_ && param1))
                                                                     {
                                                                        §§push(_loc8_);
                                                                        if(!(_loc35_ && b2Collision))
                                                                        {
                                                                           addr258:
                                                                           §§push(§§pop() + §§pop() * _loc12_.col2.y);
                                                                           if(!_loc34_)
                                                                           {
                                                                           }
                                                                           addr262:
                                                                           var _loc16_:* = §§pop();
                                                                           var _loc18_:* = 0;
                                                                           §§push(-Number.MAX_VALUE);
                                                                           if(_loc34_)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                           var _loc19_:* = §§pop();
                                                                           var _loc20_:Number = param2.§7!m§ + param4.§7!m§;
                                                                           §§push(param2.§+!U§);
                                                                           if(_loc34_ || param1)
                                                                           {
                                                                              §§push(int(§§pop()));
                                                                           }
                                                                           var _loc21_:* = §§pop();
                                                                           var _loc22_:Vector.<b2Vec2> = param2.§8S§;
                                                                           var _loc23_:Vector.<b2Vec2> = param2.§<d§;
                                                                           var _loc24_:int = 0;
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc24_);
                                                                              if(_loc34_)
                                                                              {
                                                                                 §§push(_loc21_);
                                                                                 if(_loc34_)
                                                                                 {
                                                                                    if(§§pop() >= §§pop())
                                                                                    {
                                                                                       §§push(_loc18_);
                                                                                       if(_loc34_ || b2Collision)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       addr489:
                                                                                       §§push(§§pop());
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       _loc11_ = _loc22_[_loc24_];
                                                                                       if(_loc34_)
                                                                                       {
                                                                                          §§push(_loc15_);
                                                                                          if(!(_loc35_ && param3))
                                                                                          {
                                                                                             §§push(_loc11_.x);
                                                                                             if(_loc34_ || b2Collision)
                                                                                             {
                                                                                                §§push(§§pop() - §§pop());
                                                                                                if(_loc34_ || param1)
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                   if(_loc34_)
                                                                                                   {
                                                                                                      addr337:
                                                                                                      _loc7_ = §§pop();
                                                                                                      if(!(_loc35_ && param3))
                                                                                                      {
                                                                                                         §§push(_loc16_);
                                                                                                         if(_loc34_ || param1)
                                                                                                         {
                                                                                                            addr355:
                                                                                                            §§push(§§pop() - _loc11_.y);
                                                                                                            if(_loc35_)
                                                                                                            {
                                                                                                            }
                                                                                                            addr359:
                                                                                                            _loc8_ = §§pop();
                                                                                                            addr360:
                                                                                                            §§push((_loc11_ = _loc23_[_loc24_]).x);
                                                                                                            if(!(_loc35_ && b2Collision))
                                                                                                            {
                                                                                                               §§push(_loc7_);
                                                                                                               if(!_loc35_)
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(_loc34_)
                                                                                                                  {
                                                                                                                     §§push(_loc11_.y);
                                                                                                                     if(_loc34_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * _loc8_);
                                                                                                                        if(!(_loc35_ && param3))
                                                                                                                        {
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           if(!_loc35_)
                                                                                                                           {
                                                                                                                              addr396:
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                              if(_loc34_ || param2)
                                                                                                                              {
                                                                                                                                 §§push(§§pop());
                                                                                                                                 if(_loc34_ || param3)
                                                                                                                                 {
                                                                                                                                    _loc31_ = §§pop();
                                                                                                                                    if(!_loc35_)
                                                                                                                                    {
                                                                                                                                       addr415:
                                                                                                                                       §§push(_loc20_);
                                                                                                                                       if(_loc34_)
                                                                                                                                       {
                                                                                                                                          addr418:
                                                                                                                                          if(§§pop() > §§pop())
                                                                                                                                          {
                                                                                                                                             if(!(_loc35_ && param2))
                                                                                                                                             {
                                                                                                                                                return;
                                                                                                                                             }
                                                                                                                                             loop1:
                                                                                                                                             for(; false; while(true)
                                                                                                                                             {
                                                                                                                                                _loc24_++;
                                                                                                                                                if(!(_loc35_ && param1))
                                                                                                                                                {
                                                                                                                                                   continue loop1;
                                                                                                                                                }
                                                                                                                                                §§goto(addr452);
                                                                                                                                             })
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc24_);
                                                                                                                                                   if(!(_loc35_ && b2Collision))
                                                                                                                                                   {
                                                                                                                                                      §§push(int(§§pop()));
                                                                                                                                                   }
                                                                                                                                                   _loc18_ = §§pop();
                                                                                                                                                   addr452:
                                                                                                                                                   while(_loc34_ || b2Collision)
                                                                                                                                                   {
                                                                                                                                                      continue loop1;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             continue;
                                                                                                                                          }
                                                                                                                                          §§push(_loc31_);
                                                                                                                                          if(_loc34_)
                                                                                                                                          {
                                                                                                                                             addr464:
                                                                                                                                             if(§§pop() > _loc19_)
                                                                                                                                             {
                                                                                                                                                if(_loc34_)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc31_);
                                                                                                                                                   if(_loc34_)
                                                                                                                                                   {
                                                                                                                                                      addr471:
                                                                                                                                                      _loc19_ = Number(§§pop());
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr441);
                                                                                                                                                      }
                                                                                                                                                      addr472:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr471);
                                                                                                                                                }
                                                                                                                                                §§goto(addr472);
                                                                                                                                             }
                                                                                                                                             §§goto(addr430);
                                                                                                                                          }
                                                                                                                                          §§goto(addr471);
                                                                                                                                          §§goto(addr471);
                                                                                                                                       }
                                                                                                                                       §§goto(addr464);
                                                                                                                                    }
                                                                                                                                    §§goto(addr471);
                                                                                                                                 }
                                                                                                                                 §§goto(addr464);
                                                                                                                              }
                                                                                                                              §§goto(addr471);
                                                                                                                           }
                                                                                                                           §§goto(addr415);
                                                                                                                        }
                                                                                                                        §§goto(addr418);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr464);
                                                                                                            }
                                                                                                            §§goto(addr396);
                                                                                                         }
                                                                                                         §§push(Number(§§pop()));
                                                                                                      }
                                                                                                      §§goto(addr360);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr359);
                                                                                             }
                                                                                             §§goto(addr355);
                                                                                          }
                                                                                          §§goto(addr337);
                                                                                       }
                                                                                       §§goto(addr355);
                                                                                    }
                                                                                 }
                                                                                 var _loc25_:* = §§pop();
                                                                                 if(!(_loc35_ && param2))
                                                                                 {
                                                                                    §§push(1);
                                                                                    if(_loc34_ || param3)
                                                                                    {
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(_loc34_ || param1)
                                                                                       {
                                                                                          if(§§pop() < _loc21_)
                                                                                          {
                                                                                             §§push(_loc25_);
                                                                                             if(!_loc35_)
                                                                                             {
                                                                                                addr522:
                                                                                                §§push(int(§§pop() + 1));
                                                                                                if(_loc34_)
                                                                                                {
                                                                                                   addr534:
                                                                                                   §§push(int(§§pop()));
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§push(0);
                                                                                             if(_loc34_ || param2)
                                                                                             {
                                                                                                §§goto(addr534);
                                                                                             }
                                                                                          }
                                                                                          var _loc26_:* = §§pop();
                                                                                          var _loc27_:b2Vec2 = _loc22_[_loc25_];
                                                                                          var _loc28_:b2Vec2 = _loc22_[_loc26_];
                                                                                          if(!(_loc35_ && param3))
                                                                                          {
                                                                                             §§push(_loc19_);
                                                                                             if(!(_loc35_ && param2))
                                                                                             {
                                                                                                if(§§pop() < Number.MIN_VALUE)
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      param1.§[!J§ = 1;
                                                                                                      loop35:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         param1.§0w§ = b2Manifold.§%p§;
                                                                                                         loop36:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            param1.§0"B§.SetV(_loc23_[_loc18_]);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(param1.m_localPoint);
                                                                                                               loop38:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(0.5);
                                                                                                                  loop39:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc27_.x);
                                                                                                                     if(!(_loc35_ && param3))
                                                                                                                     {
                                                                                                                        §§push(_loc28_.x);
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                        }
                                                                                                                        addr655:
                                                                                                                     }
                                                                                                                     addr656:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        addr657:
                                                                                                                        addr636:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§pop().x = §§pop();
                                                                                                                           if(_loc34_)
                                                                                                                           {
                                                                                                                              if(_loc34_ || param2)
                                                                                                                              {
                                                                                                                                 continue loop38;
                                                                                                                              }
                                                                                                                              continue loop35;
                                                                                                                           }
                                                                                                                           continue loop36;
                                                                                                                        }
                                                                                                                        addr636:
                                                                                                                        if(!_loc35_)
                                                                                                                        {
                                                                                                                           break loop39;
                                                                                                                        }
                                                                                                                        continue loop39;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§pop().y = §§pop();
                                                                                                                  addr639:
                                                                                                                  §§goto(addr598);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§push(_loc15_);
                                                                                                   if(!(_loc35_ && b2Collision))
                                                                                                   {
                                                                                                      §§push(_loc27_.x);
                                                                                                      if(!_loc35_)
                                                                                                      {
                                                                                                         §§push(§§pop() - §§pop());
                                                                                                         if(!(_loc35_ && param1))
                                                                                                         {
                                                                                                            §§push(_loc28_.x);
                                                                                                            if(_loc34_)
                                                                                                            {
                                                                                                               §§push(_loc27_.x);
                                                                                                               if(_loc34_ || param3)
                                                                                                               {
                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                  if(_loc34_ || b2Collision)
                                                                                                                  {
                                                                                                                     addr738:
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     if(_loc34_)
                                                                                                                     {
                                                                                                                        §§push(_loc16_);
                                                                                                                        if(!_loc35_)
                                                                                                                        {
                                                                                                                           addr744:
                                                                                                                           §§push(_loc27_.y);
                                                                                                                           if(_loc34_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                              if(!_loc35_)
                                                                                                                              {
                                                                                                                                 §§push(_loc28_.y);
                                                                                                                                 if(!_loc34_)
                                                                                                                                 {
                                                                                                                                 }
                                                                                                                                 addr759:
                                                                                                                                 §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                 if(_loc34_)
                                                                                                                                 {
                                                                                                                                    addr763:
                                                                                                                                    var _loc29_:Number = §§pop();
                                                                                                                                    §§push(_loc15_);
                                                                                                                                    if(!_loc35_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc28_.x);
                                                                                                                                       if(!_loc35_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                          if(_loc34_ || param1)
                                                                                                                                          {
                                                                                                                                             addr779:
                                                                                                                                             §§push(_loc27_.x);
                                                                                                                                             if(_loc34_)
                                                                                                                                             {
                                                                                                                                                addr783:
                                                                                                                                                §§push(_loc28_.x);
                                                                                                                                                if(_loc34_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                   if(!_loc35_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      if(!(_loc35_ && param3))
                                                                                                                                                      {
                                                                                                                                                         addr798:
                                                                                                                                                         §§push(_loc16_);
                                                                                                                                                         if(_loc34_ || param2)
                                                                                                                                                         {
                                                                                                                                                            addr806:
                                                                                                                                                            §§push(_loc28_.y);
                                                                                                                                                            if(_loc34_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() - §§pop());
                                                                                                                                                               if(!(_loc35_ && b2Collision))
                                                                                                                                                               {
                                                                                                                                                                  addr828:
                                                                                                                                                                  §§push(_loc27_.y);
                                                                                                                                                                  if(_loc34_)
                                                                                                                                                                  {
                                                                                                                                                                     addr835:
                                                                                                                                                                     §§push(§§pop() * (§§pop() - _loc28_.y));
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr835);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr835);
                                                                                                                                                         }
                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                         if(!(_loc35_ && param2))
                                                                                                                                                         {
                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      var _loc30_:* = §§pop();
                                                                                                                                                      if(!_loc35_)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc29_);
                                                                                                                                                         loop6:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(0);
                                                                                                                                                            if(_loc34_ || param1)
                                                                                                                                                            {
                                                                                                                                                               if(§§pop() > §§pop())
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc30_);
                                                                                                                                                                  if(_loc34_ || param1)
                                                                                                                                                                  {
                                                                                                                                                                     if(§§pop() > 0)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(0.5);
                                                                                                                                                                        loop7:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc27_.x);
                                                                                                                                                                           loop8:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc28_.x);
                                                                                                                                                                              loop9:
                                                                                                                                                                              while(!_loc35_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                 loop10:
                                                                                                                                                                                 while(_loc34_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                    loop11:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                       addr1297:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          _loc32_ = §§pop();
                                                                                                                                                                                          loop13:
                                                                                                                                                                                          while(_loc34_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(0.5);
                                                                                                                                                                                             loop14:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc27_.y);
                                                                                                                                                                                                if(!(_loc35_ && b2Collision))
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc28_.y);
                                                                                                                                                                                                   loop15:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!(_loc35_ && param3))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!(_loc35_ && param1))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                                                                            loop16:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                               loop17:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                                                                  loop18:
                                                                                                                                                                                                                  while(_loc34_ || param3)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     _loc33_ = §§pop();
                                                                                                                                                                                                                     loop19:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc15_);
                                                                                                                                                                                                                        if(_loc34_ || param3)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop7;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr1099:
                                                                                                                                                                                                                        if(!(_loc35_ && param2))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(_loc16_);
                                                                                                                                                                                                                           if(_loc35_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!_loc35_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop() * _loc23_[_loc25_].y);
                                                                                                                                                                                                                                 if(_loc34_ || param1)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!(_loc34_ || param1))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop8;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    if(!_loc35_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!(_loc35_ && b2Collision))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!(_loc35_ && b2Collision))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                             if(!_loc35_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr1176:
                                                                                                                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                                                                                                                if(_loc34_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr1179:
                                                                                                                                                                                                                                                   §§push(§§pop());
                                                                                                                                                                                                                                                   if(_loc34_ || b2Collision)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr1187:
                                                                                                                                                                                                                                                      if(!_loc34_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop10;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      if(!(_loc35_ && b2Collision))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!(_loc35_ && param3))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc34_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!(_loc35_ && b2Collision))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  _loc19_ = §§pop();
                                                                                                                                                                                                                                                                  addr1213:
                                                                                                                                                                                                                                                                  if(_loc34_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc34_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!_loc35_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           continue loop11;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        continue loop14;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     continue loop17;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  continue loop18;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               addr1657:
                                                                                                                                                                                                                                                               if(§§pop() > §§pop())
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§goto(addr1658);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               do
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  param1.§[!J§ = 1;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               while(_loc35_ && param2);
                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                               param1.§0w§ = b2Manifold.§%p§;
                                                                                                                                                                                                                                                               addr1591:
                                                                                                                                                                                                                                                               param1.§0"B§.x = _loc15_ - _loc27_.x;
                                                                                                                                                                                                                                                               addr1598:
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr1462:
                                                                                                                                                                                                                                                               §§push(_loc28_.x);
                                                                                                                                                                                                                                                               if(_loc34_ || param3)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!_loc35_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr1522:
                                                                                                                                                                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                     if(_loc34_ || param1)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                        break loop18;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     if(§§pop() > §§pop())
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr1523:
                                                                                                                                                                                                                                                                        if(!_loc35_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc34_ || param1)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              return;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§goto(addr1598);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr1406:
                                                                                                                                                                                                                                                                        param1.§[!J§ = 1;
                                                                                                                                                                                                                                                                        if(!(_loc34_ || param2))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§goto(addr1406);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        if(_loc34_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           param1.§0w§ = b2Manifold.§%p§;
                                                                                                                                                                                                                                                                           addr1405:
                                                                                                                                                                                                                                                                           §§push(param1.§0"B§);
                                                                                                                                                                                                                                                                           §§push(_loc15_);
                                                                                                                                                                                                                                                                           if(!_loc35_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(!_loc35_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr1379:
                                                                                                                                                                                                                                                                                 §§push(_loc28_.x);
                                                                                                                                                                                                                                                                                 if(_loc34_ || param2)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(!_loc35_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr1389:
                                                                                                                                                                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                       if(_loc34_ || param3)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!_loc35_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§pop().x = §§pop();
                                                                                                                                                                                                                                                                                             addr1350:
                                                                                                                                                                                                                                                                                             §§push(param1.§0"B§);
                                                                                                                                                                                                                                                                                             §§push(_loc16_);
                                                                                                                                                                                                                                                                                             if(_loc34_ || param2)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(_loc28_.y);
                                                                                                                                                                                                                                                                                                if(!_loc35_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr1363:
                                                                                                                                                                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                   if(!_loc35_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§pop().y = §§pop();
                                                                                                                                                                                                                                                                                                      addr1366:
                                                                                                                                                                                                                                                                                                      if(!_loc35_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         addr1336:
                                                                                                                                                                                                                                                                                                         §§push(param1.§0"B§);
                                                                                                                                                                                                                                                                                                         if(!_loc35_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§pop().Normalize();
                                                                                                                                                                                                                                                                                                            addr1339:
                                                                                                                                                                                                                                                                                                            if(_loc35_ && b2Collision)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§goto(addr1366);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            addr1323:
                                                                                                                                                                                                                                                                                                            param1.m_localPoint.SetV(_loc28_);
                                                                                                                                                                                                                                                                                                            break loop13;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr1350);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      addr849:
                                                                                                                                                                                                                                                                                                      return;
                                                                                                                                                                                                                                                                                                      addr1542:
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1389);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1379);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr1363);
                                                                                                                                                                                                                                                                                             addr1399:
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1591);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       addr1582:
                                                                                                                                                                                                                                                                                       §§pop().y = §§pop();
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr1564:
                                                                                                                                                                                                                                                                                          §§push(param1.§0"B§);
                                                                                                                                                                                                                                                                                          if(_loc35_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             break;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§pop().Normalize();
                                                                                                                                                                                                                                                                                          param1.m_localPoint.SetV(_loc27_);
                                                                                                                                                                                                                                                                                          if(_loc35_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             continue;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          param1.§,!T§[0].m_localPoint.SetV(param4.§1Q§);
                                                                                                                                                                                                                                                                                          param1.§,!T§[0].m_id.key = 0;
                                                                                                                                                                                                                                                                                          §§goto(addr1542);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(_loc16_);
                                                                                                                                                                                                                                                                                          if(!(_loc35_ && param3))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr1581:
                                                                                                                                                                                                                                                                                             §§push(§§pop() - _loc27_.y);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1582);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       addr1571:
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1591);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1581);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§goto(addr1591);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1389);
                                                                                                                                                                                                                                                                           addr1405:
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        addr1592:
                                                                                                                                                                                                                                                                        §§goto(addr1571);
                                                                                                                                                                                                                                                                        §§push(param1.§0"B§);
                                                                                                                                                                                                                                                                        addr1592:
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1592);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr1628:
                                                                                                                                                                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                     if(!_loc35_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr1633:
                                                                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                        §§push(_loc16_);
                                                                                                                                                                                                                                                                        §§push(_loc27_.y);
                                                                                                                                                                                                                                                                        break loop15;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1657);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  return;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               addr1511:
                                                                                                                                                                                                                                                               §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                                                                                                                               §§push(_loc20_);
                                                                                                                                                                                                                                                               if(_loc35_ && param3)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  break loop6;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1522);
                                                                                                                                                                                                                                                               §§push(§§pop() * _loc20_);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1592);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1511);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr1236:
                                                                                                                                                                                                                                                      if(_loc34_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(§§pop() <= §§pop())
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            loop20:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               param1.§[!J§ = 1;
                                                                                                                                                                                                                                                               loop21:
                                                                                                                                                                                                                                                               while(_loc34_ || param2)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  param1.§0w§ = b2Manifold.§%p§;
                                                                                                                                                                                                                                                                  loop22:
                                                                                                                                                                                                                                                                  while(!(_loc35_ && param1))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(param1.§0"B§);
                                                                                                                                                                                                                                                                     loop23:
                                                                                                                                                                                                                                                                     for(; !(_loc35_ && param3); while(!(_loc35_ && param1))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§pop().y = _loc23_[_loc25_].y;
                                                                                                                                                                                                                                                                        §§goto(addr973);
                                                                                                                                                                                                                                                                        §§goto(addr982);
                                                                                                                                                                                                                                                                     })
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(_loc34_ || b2Collision)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!(_loc35_ && param2))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(_loc34_ || param1)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§pop().x = _loc23_[_loc25_].x;
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(_loc34_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(param1.§0"B§);
                                                                                                                                                                                                                                                                                       continue loop23;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    if(_loc35_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       break;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    continue loop20;
                                                                                                                                                                                                                                                                                    addr891:
                                                                                                                                                                                                                                                                                    if(!(_loc35_ && param2))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(_loc34_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!_loc34_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             continue loop19;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          if(_loc34_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(_loc34_ || b2Collision)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                param1.§,!T§[0].m_id.key = 0;
                                                                                                                                                                                                                                                                                                addr911:
                                                                                                                                                                                                                                                                                                if(!(_loc34_ || param1))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   loop29:
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(_loc34_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(_loc34_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§goto(addr891);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            loop27:
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(_loc35_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  while(!_loc35_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(_loc34_ || param2)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(param1.§0"B§);
                                                                                                                                                                                                                                                                                                                        if(!(_loc35_ && param2))
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§pop().Normalize();
                                                                                                                                                                                                                                                                                                                           continue loop27;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        continue loop23;
                                                                                                                                                                                                                                                                                                                        addr982:
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     continue loop13;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  continue loop21;
                                                                                                                                                                                                                                                                                                                  addr973:
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               if(!_loc34_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  continue loop22;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               if(!(_loc34_ || param3))
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  addr1433:
                                                                                                                                                                                                                                                                                                                  if(_loc34_ || param1)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(_loc34_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(_loc35_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           addr1624:
                                                                                                                                                                                                                                                                                                                           §§push(_loc15_ - _loc27_.x);
                                                                                                                                                                                                                                                                                                                           §§push(_loc15_);
                                                                                                                                                                                                                                                                                                                           break loop19;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§push(_loc15_);
                                                                                                                                                                                                                                                                                                                        if(_loc34_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           addr1449:
                                                                                                                                                                                                                                                                                                                           §§push(_loc28_.x);
                                                                                                                                                                                                                                                                                                                           if(_loc34_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              if(_loc34_ || param2)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 addr1459:
                                                                                                                                                                                                                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                 if(!_loc34_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    continue loop6;
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr1462);
                                                                                                                                                                                                                                                                                                                                 §§push(_loc15_);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr1633);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           addr1656:
                                                                                                                                                                                                                                                                                                                           §§push(_loc16_);
                                                                                                                                                                                                                                                                                                                           if(!_loc35_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              addr1651:
                                                                                                                                                                                                                                                                                                                              §§push(§§pop() - _loc27_.y);
                                                                                                                                                                                                                                                                                                                              break loop9;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr1657);
                                                                                                                                                                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr1462);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr1603);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  break;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§push(param1.m_localPoint);
                                                                                                                                                                                                                                                                                                               if(_loc34_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(!(_loc35_ && param1))
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§pop().Set(_loc32_,_loc33_);
                                                                                                                                                                                                                                                                                                                     while(!(_loc35_ && param3))
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        param1.§,!T§[0].m_localPoint.SetV(param4.§1Q§);
                                                                                                                                                                                                                                                                                                                        continue loop29;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     addr927:
                                                                                                                                                                                                                                                                                                                     addr1309:
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§goto(addr1556);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr849);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§goto(addr1323);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr1567);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr927);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1405);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                if(!(_loc35_ && param1))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(_loc35_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§goto(addr1406);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr849);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1399);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr1556);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1405);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1239);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 param1.§,!T§[0].m_id.key = 0;
                                                                                                                                                                                                                                                                                 §§goto(addr1309);
                                                                                                                                                                                                                                                                                 addr1319:
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§goto(addr1591);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr849);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1564);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§goto(addr1405);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1336);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1339);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1523);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         addr1239:
                                                                                                                                                                                                                                                         return;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1624);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1213);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1179);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr1655:
                                                                                                                                                                                                                                          §§goto(addr1656);
                                                                                                                                                                                                                                          §§push(_loc20_);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1449);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1522);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1187);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           else
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr1136:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           if(!_loc34_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop16;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop15;
                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1462);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1628);
                                                                                                                                                                                                                     §§push(_loc27_.x);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  break loop10;
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr1271:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         break;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop9;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1449);
                                                                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1271);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          if(!(_loc35_ && param1))
                                                                                                                                                                                          {
                                                                                                                                                                                             param1.§,!T§[0].m_localPoint.SetV(param4.§1Q§);
                                                                                                                                                                                             §§goto(addr1319);
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr1552);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§push(_loc28_.y);
                                                                                                                                                                                 if(!(_loc35_ && param2))
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc35_ && param3))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                                                                       if(!_loc35_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc16_);
                                                                                                                                                                                          if(!_loc35_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc28_.y);
                                                                                                                                                                                             if(_loc34_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr1462);
                                                                                                                                                                                                §§push(§§pop() - §§pop());
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr1651);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1462);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1449);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1462);
                                                                                                                                                                              }
                                                                                                                                                                              break loop6;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1433);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1462);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1624);
                                                                                                                                                            }
                                                                                                                                                            break;
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1654);
                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1242);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr806);
                                                                                                                                                }
                                                                                                                                                §§goto(addr835);
                                                                                                                                             }
                                                                                                                                             §§goto(addr828);
                                                                                                                                          }
                                                                                                                                          §§goto(addr798);
                                                                                                                                       }
                                                                                                                                       §§goto(addr783);
                                                                                                                                    }
                                                                                                                                    §§goto(addr779);
                                                                                                                                 }
                                                                                                                                 §§goto(addr763);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr759);
                                                                                                                           §§push(§§pop() - _loc27_.y);
                                                                                                                        }
                                                                                                                        §§goto(addr759);
                                                                                                                     }
                                                                                                                     §§goto(addr763);
                                                                                                                  }
                                                                                                                  §§goto(addr744);
                                                                                                               }
                                                                                                               §§goto(addr759);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr763);
                                                                                                      }
                                                                                                      §§goto(addr738);
                                                                                                   }
                                                                                                   §§goto(addr763);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr763);
                                                                                          }
                                                                                          addr598:
                                                                                          param1.§,!T§[0].m_localPoint.SetV(param4.§1Q§);
                                                                                          while(true)
                                                                                          {
                                                                                             param1.§,!T§[0].m_id.key = 0;
                                                                                             if(_loc35_)
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             if(_loc34_)
                                                                                             {
                                                                                                if(!_loc35_)
                                                                                                {
                                                                                                   if(_loc34_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   continue loop34;
                                                                                                }
                                                                                                continue loop37;
                                                                                             }
                                                                                             §§goto(addr639);
                                                                                          }
                                                                                          return;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr522);
                                                                              }
                                                                              break;
                                                                           }
                                                                           §§goto(addr489);
                                                                           §§push(int(§§pop()));
                                                                        }
                                                                        §§goto(addr258);
                                                                     }
                                                                     §§goto(addr262);
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                               }
                                                               §§goto(addr258);
                                                            }
                                                            §§goto(addr228);
                                                         }
                                                         §§goto(addr216);
                                                      }
                                                      §§goto(addr228);
                                                   }
                                                }
                                                §§goto(addr197);
                                             }
                                          }
                                          §§goto(addr193);
                                       }
                                       §§goto(addr197);
                                    }
                                    §§goto(addr187);
                                 }
                                 §§goto(addr136);
                              }
                              §§goto(addr132);
                           }
                           §§goto(addr136);
                        }
                        §§goto(addr144);
                     }
                     §§goto(addr94);
                  }
                  §§goto(addr85);
               }
               §§goto(addr81);
            }
            §§goto(addr85);
         }
         §§goto(addr94);
      }
      
      public static function §5"0§(param1:b2AABB, param2:b2AABB) : Boolean
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc3_:b2Vec2 = param2.§<!@§;
         var _loc4_:b2Vec2 = param1.§2!1§;
         §§push(_loc3_.x);
         if(_loc10_ || b2Collision)
         {
            §§push(§§pop() - _loc4_.x);
            if(!(_loc9_ && param2))
            {
               addr44:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            §§push(_loc3_.y);
            if(_loc10_ || b2Collision)
            {
               §§push(§§pop() - _loc4_.y);
               if(_loc10_)
               {
                  addr60:
                  §§push(Number(§§pop()));
               }
               var _loc6_:* = §§pop();
               _loc3_ = param1.§<!@§;
               _loc4_ = param2.§2!1§;
               §§push(_loc3_.x);
               if(_loc10_)
               {
                  §§push(§§pop() - _loc4_.x);
                  if(!(_loc9_ && param2))
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var _loc7_:* = §§pop();
               §§push(_loc3_.y);
               if(_loc10_ || param2)
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
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             loop10:
                                             while(true)
                                             {
                                                §§push(_loc7_);
                                                loop11:
                                                while(true)
                                                {
                                                   §§push(0);
                                                   loop12:
                                                   while(_loc10_)
                                                   {
                                                      if(_loc10_ || _loc3_)
                                                      {
                                                         §§push(§§pop() > §§pop());
                                                         loop13:
                                                         while(true)
                                                         {
                                                            §§push(§§pop());
                                                            if(!_loc10_)
                                                            {
                                                               break;
                                                            }
                                                            if(!§§pop())
                                                            {
                                                               loop14:
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  loop15:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc10_)
                                                                     {
                                                                        if(!(_loc10_ || param1))
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§push(false);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr221:
                                                                     }
                                                                     §§push(_loc8_);
                                                                     if(!_loc9_)
                                                                     {
                                                                        if(!_loc10_)
                                                                        {
                                                                           continue loop0;
                                                                        }
                                                                        §§push(0);
                                                                        if(_loc9_)
                                                                        {
                                                                           continue loop12;
                                                                           addr167:
                                                                        }
                                                                        §§push(§§pop() > §§pop());
                                                                     }
                                                                     continue loop11;
                                                                     while(true)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(!(_loc9_ && _loc3_))
                                                                              {
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    §§push(false);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       continue loop10;
                                                                                    }
                                                                                    addr240:
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    continue loop15;
                                                                                 }
                                                                                 addr125:
                                                                                 §§push(true);
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    if(_loc10_)
                                                                                    {
                                                                                       continue loop14;
                                                                                    }
                                                                                    continue;
                                                                                 }
                                                                              }
                                                                              if(!_loc10_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              if(_loc10_)
                                                                              {
                                                                                 return §§pop();
                                                                              }
                                                                              addr246:
                                                                              while(true)
                                                                              {
                                                                                 §§pop();
                                                                                 break loop15;
                                                                              }
                                                                           }
                                                                           §§goto(addr125);
                                                                        }
                                                                     }
                                                                     continue loop13;
                                                                     return §§pop();
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc6_);
                                                                     continue loop0;
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr167);
                                                         }
                                                         continue loop3;
                                                      }
                                                      continue loop1;
                                                   }
                                                   addr218:
                                                   while(true)
                                                   {
                                                      continue loop8;
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr221);
                                          if(!(_loc9_ && _loc3_))
                                          {
                                             if(!_loc9_)
                                             {
                                                return §§pop();
                                             }
                                             continue loop2;
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr246);
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr240);
               }
               §§goto(addr105);
            }
            §§goto(addr60);
         }
         §§goto(addr44);
      }
   }
}
