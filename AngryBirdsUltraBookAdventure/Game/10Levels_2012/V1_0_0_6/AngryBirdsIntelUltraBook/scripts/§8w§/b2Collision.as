package §8w§
{
   import §,C§.*;
   import §3!m§.*;
   import §;%§.*;
   
   use namespace b2internal;
   
   public class b2Collision
   {
      
      public static const b2_nullFeature:uint = 255;
      
      private static var §"f§:Vector.<§6'§>;
      
      private static var s_clipPoints1:Vector.<§6'§>;
      
      private static var s_clipPoints2:Vector.<§6'§>;
      
      private static var §5!;§:Vector.<int>;
      
      private static var §4!0§:Vector.<int>;
      
      private static var §^!t§:b2Vec2;
      
      private static var §"!F§:b2Vec2;
      
      private static var §!!9§:b2Vec2;
      
      private static var §<Z§:b2Vec2;
      
      private static var §0!A§:b2Vec2;
      
      private static var s_tangent2:b2Vec2;
      
      private static var s_v11:b2Vec2;
      
      private static var s_v12:b2Vec2;
      
      private static var b2CollidePolyTempVec:b2Vec2;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || b2Collision)
         {
            b2_nullFeature = 255;
            loop0:
            while(true)
            {
               §"f§ = §4F§();
               while(true)
               {
                  s_clipPoints1 = §4F§();
                  loop2:
                  while(true)
                  {
                     s_clipPoints2 = §4F§();
                     loop3:
                     while(true)
                     {
                        §5!;§ = new Vector.<int>(1);
                        loop4:
                        while(true)
                        {
                           §4!0§ = new Vector.<int>(1);
                           loop5:
                           while(true)
                           {
                              §^!t§ = new b2Vec2();
                              while(_loc1_)
                              {
                                 §"!F§ = new b2Vec2();
                                 loop7:
                                 for(; !_loc2_; while(_loc1_ || _loc1_)
                                 {
                                    s_tangent2 = new b2Vec2();
                                    continue loop2;
                                 })
                                 {
                                    §!!9§ = new b2Vec2();
                                    while(true)
                                    {
                                       §<Z§ = new b2Vec2();
                                       addr115:
                                       while(!_loc2_)
                                       {
                                          §0!A§ = new b2Vec2();
                                          continue loop7;
                                       }
                                       continue loop3;
                                       addr55:
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          continue loop5;
                                       }
                                    }
                                 }
                              }
                              continue loop4;
                           }
                        }
                     }
                     while(_loc1_)
                     {
                        continue loop0;
                     }
                  }
               }
            }
         }
         while(true)
         {
            s_v11 = new b2Vec2();
            §§goto(addr53);
         }
         §§goto(addr41);
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
      
      public static function § !a§(param1:Vector.<§6'§>, param2:Vector.<§6'§>, param3:b2Vec2, param4:Number) : int
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc5_:§6'§ = null;
         var _loc6_:int = 0;
         var _loc7_:b2Vec2 = null;
         var _loc9_:* = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:b2Vec2 = null;
         var _loc13_:§6'§ = null;
         if(!_loc14_)
         {
            _loc6_ = 0;
         }
         _loc7_ = (_loc5_ = param2[0]).v;
         var _loc8_:b2Vec2 = (_loc5_ = param2[1]).v;
         if(_loc15_ || param2)
         {
            §§push(param3.x);
            if(_loc15_ || b2Collision)
            {
               §§push(_loc7_.x);
               if(_loc15_ || param3)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc15_)
                  {
                     §§push(param3.y);
                     if(!(_loc14_ && param3))
                     {
                        §§push(_loc7_.y);
                        if(!_loc14_)
                        {
                           §§push(§§pop() * §§pop());
                           if(!(_loc14_ && b2Collision))
                           {
                              addr106:
                              §§push(§§pop() + §§pop());
                              if(_loc15_)
                              {
                                 addr109:
                                 §§push(param4);
                                 if(_loc15_ || param2)
                                 {
                                    §§push(§§pop() - §§pop());
                                    if(!(_loc14_ && param2))
                                    {
                                       §§push(Number(§§pop()));
                                       if(_loc15_ || param2)
                                       {
                                          addr133:
                                          _loc9_ = §§pop();
                                          §§push(param3.x);
                                          if(_loc15_ || param3)
                                          {
                                             addr143:
                                             §§push(_loc8_.x);
                                             if(_loc15_)
                                             {
                                                addr147:
                                                §§push(§§pop() * §§pop());
                                                if(!(_loc14_ && param2))
                                                {
                                                   addr155:
                                                   §§push(param3.y);
                                                   if(!_loc14_)
                                                   {
                                                      addr159:
                                                      §§push(§§pop() * _loc8_.y);
                                                      if(_loc15_)
                                                      {
                                                         addr176:
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc15_ || param1)
                                                         {
                                                            addr172:
                                                            §§push(param4);
                                                         }
                                                         var _loc10_:Number = §§pop();
                                                         if(_loc15_ || param2)
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
                                                                        addr316:
                                                                        while(true)
                                                                        {
                                                                        }
                                                                     }
                                                                     addr306:
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
                                                                              loop7:
                                                                              while(_loc15_)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    param1[_loc6_++].Set(param2[1]);
                                                                                    loop10:
                                                                                    while(true)
                                                                                    {
                                                                                       addr186:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc9_);
                                                                                          if(_loc15_ || param1)
                                                                                          {
                                                                                             §§push(_loc10_);
                                                                                             if(_loc15_)
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(_loc15_ || b2Collision)
                                                                                                {
                                                                                                   §§push(0);
                                                                                                   if(!(_loc14_ && b2Collision))
                                                                                                   {
                                                                                                      if(§§pop() >= §§pop())
                                                                                                      {
                                                                                                         return _loc6_;
                                                                                                      }
                                                                                                      if(_loc15_ || param1)
                                                                                                      {
                                                                                                         if(_loc14_)
                                                                                                         {
                                                                                                            continue loop10;
                                                                                                         }
                                                                                                         if(_loc15_ || b2Collision)
                                                                                                         {
                                                                                                            §§push(_loc9_);
                                                                                                            if(_loc15_)
                                                                                                            {
                                                                                                               §§push(_loc9_);
                                                                                                               if(!(_loc14_ && param2))
                                                                                                               {
                                                                                                                  addr254:
                                                                                                                  §§push(§§pop() - _loc10_);
                                                                                                                  if(!_loc15_)
                                                                                                                  {
                                                                                                                     continue loop6;
                                                                                                                  }
                                                                                                                  if(_loc14_)
                                                                                                                  {
                                                                                                                     continue loop1;
                                                                                                                  }
                                                                                                                  §§push(§§pop() / §§pop());
                                                                                                                  if(!(_loc14_ && param3))
                                                                                                                  {
                                                                                                                     if(!(_loc15_ || param2))
                                                                                                                     {
                                                                                                                        continue loop5;
                                                                                                                     }
                                                                                                                     if(!_loc15_)
                                                                                                                     {
                                                                                                                        continue loop0;
                                                                                                                     }
                                                                                                                     addr276:
                                                                                                                     _loc11_ = §§pop();
                                                                                                                  }
                                                                                                                  §§goto(addr276);
                                                                                                               }
                                                                                                               §§goto(addr254);
                                                                                                            }
                                                                                                            §§goto(addr276);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr306);
                                                                                                         }
                                                                                                      }
                                                                                                      if(!(_loc14_ && param3))
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      continue loop7;
                                                                                                      addr445:
                                                                                                   }
                                                                                                   §§goto(addr254);
                                                                                                }
                                                                                                §§goto(addr276);
                                                                                             }
                                                                                             §§goto(addr254);
                                                                                          }
                                                                                          §§goto(addr276);
                                                                                       }
                                                                                       if(false)
                                                                                       {
                                                                                          continue loop4;
                                                                                       }
                                                                                       §§push(_loc12_ = (_loc5_ = param1[_loc6_]).v);
                                                                                       §§push(_loc7_.x);
                                                                                       if(!(_loc14_ && param2))
                                                                                       {
                                                                                          §§push(_loc11_);
                                                                                          if(_loc15_ || param3)
                                                                                          {
                                                                                             §§push(_loc8_.x);
                                                                                             if(!_loc14_)
                                                                                             {
                                                                                                §§push(§§pop() - _loc7_.x);
                                                                                             }
                                                                                             §§push(§§pop() * §§pop());
                                                                                          }
                                                                                          §§push(§§pop() + §§pop());
                                                                                       }
                                                                                       §§pop().x = §§pop();
                                                                                       if(!(_loc14_ && param3))
                                                                                       {
                                                                                          §§push(_loc12_);
                                                                                          §§push(_loc7_.y);
                                                                                          if(!(_loc14_ && param1))
                                                                                          {
                                                                                             §§push(_loc11_);
                                                                                             if(_loc15_ || b2Collision)
                                                                                             {
                                                                                                §§push(_loc8_.y);
                                                                                                if(_loc15_ || b2Collision)
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
                                                                                       if(_loc15_)
                                                                                       {
                                                                                          if(_loc9_ > 0)
                                                                                          {
                                                                                             _loc13_ = param2[0];
                                                                                             addr404:
                                                                                             if(!_loc14_)
                                                                                             {
                                                                                                _loc5_.id = _loc13_.id;
                                                                                                if(!(_loc14_ && param1))
                                                                                                {
                                                                                                   addr444:
                                                                                                   _loc6_++;
                                                                                                   addr432:
                                                                                                }
                                                                                                §§goto(addr445);
                                                                                             }
                                                                                             §§goto(addr432);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             _loc13_ = param2[1];
                                                                                             if(_loc15_)
                                                                                             {
                                                                                                _loc5_.id = _loc13_.id;
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr444);
                                                                                       }
                                                                                       §§goto(addr404);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr316);
                                                                           }
                                                                           §§goto(addr186);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr292);
                                                      }
                                                   }
                                                   §§push(§§pop() - §§pop());
                                                   if(_loc14_)
                                                   {
                                                   }
                                                   §§goto(addr176);
                                                }
                                             }
                                          }
                                          §§goto(addr176);
                                       }
                                       §§goto(addr143);
                                    }
                                    §§goto(addr172);
                                 }
                                 §§goto(addr147);
                              }
                              §§goto(addr155);
                           }
                        }
                        §§goto(addr159);
                     }
                     §§goto(addr106);
                  }
                  §§goto(addr109);
               }
               §§goto(addr176);
            }
         }
         §§goto(addr133);
      }
      
      public static function §0!^§(param1:b2PolygonShape, param2:b2Transform, param3:int, param4:b2PolygonShape, param5:b2Transform) : Number
      {
         var _loc26_:Boolean = true;
         var _loc27_:Boolean = false;
         var _loc11_:b2Mat22 = null;
         var _loc12_:b2Vec2 = null;
         var _loc25_:* = NaN;
         §§push(param1.§!!=§);
         if(!_loc27_)
         {
            §§push(int(§§pop()));
         }
         var _loc6_:* = §§pop();
         var _loc7_:Vector.<b2Vec2> = param1.§%!]§;
         var _loc8_:Vector.<b2Vec2> = param1.§+[§;
         §§push(param4.§!!=§);
         if(_loc26_ || param2)
         {
            §§push(int(§§pop()));
         }
         var _loc9_:* = §§pop();
         var _loc10_:Vector.<b2Vec2> = param4.§%!]§;
         _loc11_ = param2.R;
         _loc12_ = _loc8_[param3];
         §§push(_loc11_.col1.x);
         if(!(_loc27_ && param3))
         {
            §§push(_loc12_.x);
            if(!_loc27_)
            {
               addr91:
               §§push(§§pop() * §§pop());
               if(!_loc27_)
               {
                  §§push(_loc11_.col2.x);
                  if(_loc26_)
                  {
                     §§push(§§pop() * _loc12_.y);
                  }
               }
               var _loc13_:* = §§pop();
               §§push(_loc11_.col1.y);
               if(!_loc27_)
               {
                  §§push(_loc12_.x);
                  if(!(_loc27_ && b2Collision))
                  {
                     addr120:
                     §§push(§§pop() * §§pop());
                     if(_loc26_)
                     {
                        §§push(_loc11_.col2.y);
                        if(_loc26_)
                        {
                           §§push(§§pop() * _loc12_.y);
                        }
                     }
                     var _loc14_:Number = §§pop();
                     §§push((_loc11_ = param5.R).col1.x);
                     if(_loc26_)
                     {
                        §§push(_loc13_);
                        if(!_loc27_)
                        {
                           addr152:
                           §§push(§§pop() * §§pop());
                           if(!_loc27_)
                           {
                              §§push(_loc11_.col1.y);
                              if(_loc26_)
                              {
                                 §§push(§§pop() * _loc14_);
                              }
                           }
                           var _loc15_:Number = §§pop();
                           §§push(_loc11_.col2.x);
                           if(!_loc27_)
                           {
                              §§push(_loc13_);
                              if(!(_loc27_ && param3))
                              {
                                 §§push(§§pop() * §§pop());
                                 if(!(_loc27_ && param2))
                                 {
                                    §§push(_loc11_.col2.y);
                                    if(_loc26_)
                                    {
                                       addr182:
                                       §§push(§§pop() + §§pop() * _loc14_);
                                       if(_loc27_)
                                       {
                                       }
                                       addr186:
                                       var _loc16_:* = §§pop();
                                       var _loc17_:* = 0;
                                       var _loc18_:* = Number(Number.MAX_VALUE);
                                       var _loc19_:int = 0;
                                       while(_loc19_ < _loc9_)
                                       {
                                          §§push((_loc12_ = _loc10_[_loc19_]).x);
                                          if(_loc26_)
                                          {
                                             §§push(_loc15_);
                                             if(_loc26_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!_loc27_)
                                                {
                                                   addr212:
                                                   §§push(_loc12_.y);
                                                   if(_loc26_ || param2)
                                                   {
                                                      §§push(§§pop() * _loc16_);
                                                      if(!(_loc27_ && b2Collision))
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(!_loc27_)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            if(!(_loc27_ && param1))
                                                            {
                                                               addr241:
                                                               §§push(§§pop());
                                                               if(_loc26_ || param3)
                                                               {
                                                                  addr249:
                                                                  _loc25_ = §§pop();
                                                                  addr265:
                                                                  if(!_loc27_)
                                                                  {
                                                                     addr252:
                                                                     §§push(_loc18_);
                                                                  }
                                                                  _loc18_ = §§pop();
                                                                  if(_loc26_)
                                                                  {
                                                                     addr268:
                                                                     §§push(_loc19_);
                                                                     if(_loc26_)
                                                                     {
                                                                        §§push(int(§§pop()));
                                                                     }
                                                                     _loc17_ = §§pop();
                                                                     if(!(_loc27_ && param3))
                                                                     {
                                                                        addr280:
                                                                        _loc19_++;
                                                                     }
                                                                  }
                                                                  continue;
                                                               }
                                                               if(§§pop() < §§pop())
                                                               {
                                                                  if(!(_loc27_ && b2Collision))
                                                                  {
                                                                     §§push(_loc25_);
                                                                     if(_loc26_)
                                                                     {
                                                                        §§goto(addr265);
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                     §§goto(addr265);
                                                                  }
                                                                  §§goto(addr268);
                                                               }
                                                               §§goto(addr280);
                                                            }
                                                            §§goto(addr252);
                                                         }
                                                         §§goto(addr241);
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr249);
                                          }
                                          §§goto(addr212);
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
                                             if(_loc26_ || param2)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(_loc26_ || param3)
                                                {
                                                   addr349:
                                                   §§push(_loc11_.col2.x);
                                                   if(_loc26_ || param2)
                                                   {
                                                      addr345:
                                                      §§push(§§pop() * _loc12_.y);
                                                   }
                                                   §§push(§§pop() + (§§pop() + §§pop()));
                                                   if(_loc26_ || param3)
                                                   {
                                                      addr357:
                                                      §§push(Number(§§pop()));
                                                   }
                                                   var _loc20_:* = §§pop();
                                                   §§push(param2.position.y);
                                                   if(_loc26_)
                                                   {
                                                      §§push(_loc11_.col1.y);
                                                      if(_loc26_)
                                                      {
                                                         §§push(_loc12_.x);
                                                         if(_loc26_)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(!(_loc27_ && param3))
                                                            {
                                                               addr381:
                                                               §§push(_loc11_.col2.y);
                                                               if(!(_loc27_ && param3))
                                                               {
                                                                  addr394:
                                                                  §§push(§§pop() + §§pop() * _loc12_.y);
                                                               }
                                                               §§goto(addr394);
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc26_ || param1)
                                                            {
                                                               addr404:
                                                               var _loc21_:Number = §§pop();
                                                               _loc12_ = _loc10_[_loc17_];
                                                               _loc11_ = param5.R;
                                                               §§push(param5.position.x);
                                                               if(_loc26_ || b2Collision)
                                                               {
                                                                  §§push(_loc11_.col1.x);
                                                                  if(_loc26_)
                                                                  {
                                                                     §§push(_loc12_.x);
                                                                     if(!_loc27_)
                                                                     {
                                                                        addr450:
                                                                        §§push(§§pop() * §§pop());
                                                                        if(!(_loc27_ && param1))
                                                                        {
                                                                           §§push(_loc11_.col2.x);
                                                                           if(_loc26_)
                                                                           {
                                                                              §§push(§§pop() * _loc12_.y);
                                                                           }
                                                                        }
                                                                        §§push(§§pop() + §§pop());
                                                                        if(!(_loc27_ && param3))
                                                                        {
                                                                           addr459:
                                                                           var _loc22_:* = Number(§§pop());
                                                                           §§push(param5.position.y);
                                                                           if(!_loc27_)
                                                                           {
                                                                              §§push(_loc11_.col1.y);
                                                                              if(!_loc27_)
                                                                              {
                                                                                 §§push(_loc12_.x);
                                                                                 if(_loc26_ || param1)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(_loc26_ || param3)
                                                                                    {
                                                                                       addr487:
                                                                                       §§push(_loc11_.col2.y);
                                                                                       if(!(_loc27_ && param2))
                                                                                       {
                                                                                          addr500:
                                                                                          §§push(§§pop() + §§pop() * _loc12_.y);
                                                                                       }
                                                                                       §§goto(addr500);
                                                                                    }
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(!_loc27_)
                                                                                    {
                                                                                       addr505:
                                                                                       var _loc23_:* = Number(§§pop());
                                                                                       if(!_loc27_)
                                                                                       {
                                                                                          §§push(_loc22_);
                                                                                          if(!_loc27_)
                                                                                          {
                                                                                             §§push(_loc20_);
                                                                                             if(_loc26_ || param3)
                                                                                             {
                                                                                                §§push(§§pop() - §§pop());
                                                                                                if(!(_loc27_ && param3))
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                   if(_loc26_ || b2Collision)
                                                                                                   {
                                                                                                      _loc22_ = §§pop();
                                                                                                      if(!(_loc27_ && b2Collision))
                                                                                                      {
                                                                                                         §§push(_loc23_);
                                                                                                         if(!_loc27_)
                                                                                                         {
                                                                                                            §§push(_loc21_);
                                                                                                            if(_loc26_ || param3)
                                                                                                            {
                                                                                                               addr554:
                                                                                                               §§push(§§pop() - §§pop());
                                                                                                               if(_loc26_ || b2Collision)
                                                                                                               {
                                                                                                                  addr562:
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  if(!_loc27_)
                                                                                                                  {
                                                                                                                     _loc23_ = §§pop();
                                                                                                                     addr566:
                                                                                                                     §§push(_loc22_);
                                                                                                                     if(!_loc27_)
                                                                                                                     {
                                                                                                                        addr569:
                                                                                                                        §§push(_loc13_);
                                                                                                                        if(!(_loc27_ && b2Collision))
                                                                                                                        {
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           if(!(_loc27_ && param3))
                                                                                                                           {
                                                                                                                              §§goto(addr595);
                                                                                                                           }
                                                                                                                           §§goto(addr611);
                                                                                                                        }
                                                                                                                        §§goto(addr598);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr611);
                                                                                                               }
                                                                                                               §§goto(addr595);
                                                                                                            }
                                                                                                            §§goto(addr607);
                                                                                                         }
                                                                                                         addr595:
                                                                                                         §§push(_loc23_);
                                                                                                         if(_loc26_)
                                                                                                         {
                                                                                                            addr598:
                                                                                                            §§push(§§pop() * _loc14_);
                                                                                                            if(_loc26_ || b2Collision)
                                                                                                            {
                                                                                                               addr607:
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               if(!_loc27_)
                                                                                                               {
                                                                                                                  addr611:
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  §§push(Number(§§pop()));
                                                                                                               }
                                                                                                               §§goto(addr611);
                                                                                                            }
                                                                                                         }
                                                                                                         var _loc24_:* = §§pop();
                                                                                                         return §§pop();
                                                                                                      }
                                                                                                      §§goto(addr566);
                                                                                                   }
                                                                                                   §§goto(addr611);
                                                                                                }
                                                                                                §§goto(addr562);
                                                                                             }
                                                                                             §§goto(addr554);
                                                                                          }
                                                                                          §§goto(addr569);
                                                                                       }
                                                                                       §§goto(addr566);
                                                                                    }
                                                                                    §§goto(addr505);
                                                                                 }
                                                                                 §§goto(addr500);
                                                                              }
                                                                              §§goto(addr487);
                                                                           }
                                                                           §§goto(addr505);
                                                                        }
                                                                        §§goto(addr459);
                                                                     }
                                                                     §§push(§§pop() + §§pop());
                                                                  }
                                                                  §§goto(addr450);
                                                               }
                                                               §§goto(addr459);
                                                            }
                                                            §§goto(addr404);
                                                         }
                                                         §§goto(addr394);
                                                      }
                                                      §§goto(addr381);
                                                   }
                                                   §§goto(addr404);
                                                }
                                                §§goto(addr349);
                                             }
                                             §§goto(addr345);
                                          }
                                          §§goto(addr349);
                                       }
                                       §§goto(addr357);
                                    }
                                    §§goto(addr182);
                                 }
                                 §§goto(addr186);
                                 §§push(Number(§§pop()));
                              }
                           }
                           §§goto(addr182);
                        }
                        §§push(§§pop() + §§pop());
                        if(_loc27_ && param1)
                        {
                        }
                     }
                     §§goto(addr152);
                  }
                  §§push(§§pop() + §§pop());
                  if(!_loc26_)
                  {
                  }
               }
               §§goto(addr120);
            }
            §§push(§§pop() + §§pop());
            if(_loc26_)
            {
               §§push(Number(§§pop()));
            }
         }
         §§goto(addr91);
      }
      
      public static function §,!z§(param1:Vector.<int>, param2:b2PolygonShape, param3:b2Transform, param4:b2PolygonShape, param5:b2Transform) : Number
      {
         var _loc26_:Boolean = false;
         var _loc27_:Boolean = true;
         var _loc8_:b2Vec2 = null;
         var _loc9_:b2Mat22 = null;
         var _loc22_:* = 0;
         var _loc23_:* = NaN;
         var _loc24_:* = 0;
         var _loc25_:* = NaN;
         §§push(param2.§!!=§);
         if(_loc27_ || param1)
         {
            §§push(int(§§pop()));
         }
         var _loc6_:* = §§pop();
         var _loc7_:Vector.<b2Vec2> = param2.§+[§;
         _loc9_ = param5.R;
         _loc8_ = param4.§"L§;
         §§push(param5.position.x);
         if(_loc27_)
         {
            §§push(_loc9_.col1.x);
            if(!_loc26_)
            {
               §§push(_loc8_.x);
               if(!(_loc26_ && param3))
               {
                  §§push(§§pop() * §§pop());
                  if(_loc27_)
                  {
                     addr90:
                     §§push(_loc9_.col2.x);
                     if(_loc27_ || b2Collision)
                     {
                        addr86:
                        §§push(§§pop() * _loc8_.y);
                     }
                     §§push(§§pop() + (§§pop() + §§pop()));
                     if(_loc27_)
                     {
                        addr93:
                        §§push(Number(§§pop()));
                     }
                     var _loc10_:* = §§pop();
                     §§push(param5.position.y);
                     if(!(_loc26_ && param3))
                     {
                        §§push(_loc9_.col1.y);
                        if(_loc27_ || param2)
                        {
                           §§push(_loc8_.x);
                           if(!_loc26_)
                           {
                              addr141:
                              §§push(§§pop() * §§pop());
                              if(!(_loc26_ && param3))
                              {
                                 §§push(_loc9_.col2.y);
                                 if(_loc27_ || param1)
                                 {
                                    §§push(§§pop() * _loc8_.y);
                                 }
                              }
                              §§push(§§pop() + §§pop());
                              if(_loc27_ || param1)
                              {
                                 addr150:
                                 var _loc11_:* = Number(§§pop());
                                 _loc9_ = param3.R;
                                 _loc8_ = param2.§"L§;
                                 if(!(_loc26_ && b2Collision))
                                 {
                                    §§push(_loc10_);
                                    if(_loc27_ || param3)
                                    {
                                       §§push(param3.position);
                                       if(_loc27_ || param2)
                                       {
                                          §§push(§§pop().x);
                                          if(_loc27_)
                                          {
                                             §§push(_loc9_.col1);
                                             if(_loc27_ || param1)
                                             {
                                                §§push(§§pop().x);
                                                if(_loc27_)
                                                {
                                                   §§push(_loc8_.x);
                                                   if(_loc27_ || param1)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc27_ || param2)
                                                      {
                                                         §§push(_loc9_.col2);
                                                         if(_loc27_ || param2)
                                                         {
                                                            §§push(§§pop().x);
                                                            if(!_loc26_)
                                                            {
                                                               §§push(_loc8_.y);
                                                               if(!(_loc26_ && b2Collision))
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(!_loc26_)
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     if(!(_loc26_ && b2Collision))
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        if(!(_loc26_ && param2))
                                                                        {
                                                                           §§push(§§pop() - §§pop());
                                                                           if(_loc27_ || param3)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              if(!_loc27_)
                                                                              {
                                                                              }
                                                                              addr277:
                                                                              §§push(param3.position.y);
                                                                              if(_loc27_)
                                                                              {
                                                                                 addr282:
                                                                                 §§push(_loc9_.col1);
                                                                                 if(!_loc26_)
                                                                                 {
                                                                                    addr286:
                                                                                    §§push(§§pop().y);
                                                                                    if(_loc27_)
                                                                                    {
                                                                                       §§push(_loc8_.x);
                                                                                       if(_loc27_)
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(_loc27_ || param1)
                                                                                          {
                                                                                             addr301:
                                                                                             §§push(_loc9_.col2.y);
                                                                                             if(!(_loc26_ && param1))
                                                                                             {
                                                                                                addr314:
                                                                                                addr313:
                                                                                                addr311:
                                                                                                §§push(§§pop() + §§pop() * _loc8_.y);
                                                                                                if(!_loc27_)
                                                                                                {
                                                                                                }
                                                                                                §§push(§§pop() + §§pop() * §§pop());
                                                                                                if(_loc27_)
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                }
                                                                                                var _loc12_:* = §§pop();
                                                                                                §§push(_loc10_);
                                                                                                if(_loc27_ || param1)
                                                                                                {
                                                                                                   §§push(param3.R.col2.x);
                                                                                                   if(_loc27_ || param3)
                                                                                                   {
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      if(_loc27_ || param1)
                                                                                                      {
                                                                                                         §§push(_loc11_);
                                                                                                         if(_loc27_)
                                                                                                         {
                                                                                                            addr387:
                                                                                                            §§push(§§pop() * param3.R.col2.y);
                                                                                                         }
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         if(!(_loc26_ && param2))
                                                                                                         {
                                                                                                            addr401:
                                                                                                            var _loc13_:Number = §§pop();
                                                                                                            var _loc14_:* = 0;
                                                                                                            §§push(-Number.MAX_VALUE);
                                                                                                            if(!_loc26_)
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
                                                                                                                  if(!_loc26_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     if(_loc27_)
                                                                                                                     {
                                                                                                                        §§push(_loc8_.y);
                                                                                                                        if(!_loc26_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * _loc13_);
                                                                                                                           if(!_loc26_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              if(!_loc26_)
                                                                                                                              {
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                 if(!(_loc26_ && param2))
                                                                                                                                 {
                                                                                                                                    addr454:
                                                                                                                                    §§push(§§pop());
                                                                                                                                    if(_loc27_)
                                                                                                                                    {
                                                                                                                                       _loc25_ = §§pop();
                                                                                                                                       if(_loc27_ || param2)
                                                                                                                                       {
                                                                                                                                          addr466:
                                                                                                                                          addr465:
                                                                                                                                          if(§§pop() > _loc15_)
                                                                                                                                          {
                                                                                                                                             if(_loc27_ || param1)
                                                                                                                                             {
                                                                                                                                                §§push(_loc25_);
                                                                                                                                                if(_loc27_ || param2)
                                                                                                                                                {
                                                                                                                                                   addr483:
                                                                                                                                                   _loc15_ = Number(§§pop());
                                                                                                                                                   if(!_loc27_)
                                                                                                                                                   {
                                                                                                                                                      continue;
                                                                                                                                                   }
                                                                                                                                                   §§push(_loc16_);
                                                                                                                                                   if(!(_loc26_ && param2))
                                                                                                                                                   {
                                                                                                                                                      §§push(int(§§pop()));
                                                                                                                                                   }
                                                                                                                                                   _loc14_ = §§pop();
                                                                                                                                                   if(_loc26_ && param2)
                                                                                                                                                   {
                                                                                                                                                      continue;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr483);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          _loc16_++;
                                                                                                                                          continue;
                                                                                                                                       }
                                                                                                                                       §§goto(addr483);
                                                                                                                                    }
                                                                                                                                    §§goto(addr466);
                                                                                                                                 }
                                                                                                                                 §§goto(addr465);
                                                                                                                              }
                                                                                                                              §§goto(addr483);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr454);
                                                                                                                  }
                                                                                                                  §§goto(addr466);
                                                                                                               }
                                                                                                               §§goto(addr454);
                                                                                                            }
                                                                                                            §§push(§0!^§(param2,param3,_loc14_,param4,param5));
                                                                                                            if(_loc27_)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                            }
                                                                                                            var _loc17_:* = §§pop();
                                                                                                            if(_loc27_ || param2)
                                                                                                            {
                                                                                                               §§push(_loc14_);
                                                                                                               if(!_loc26_)
                                                                                                               {
                                                                                                                  §§push(§§pop() - 1);
                                                                                                                  if(_loc27_)
                                                                                                                  {
                                                                                                                     if(§§pop() >= 0)
                                                                                                                     {
                                                                                                                        addr534:
                                                                                                                        §§push(_loc14_);
                                                                                                                        if(_loc27_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() - 1);
                                                                                                                           if(_loc27_ || param1)
                                                                                                                           {
                                                                                                                              addr555:
                                                                                                                              §§push(int(§§pop()));
                                                                                                                              if(_loc26_)
                                                                                                                              {
                                                                                                                              }
                                                                                                                              addr572:
                                                                                                                              var _loc18_:int = §§pop();
                                                                                                                              §§push(§0!^§(param2,param3,_loc18_,param4,param5));
                                                                                                                              if(!(_loc26_ && b2Collision))
                                                                                                                              {
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                              }
                                                                                                                              var _loc19_:* = §§pop();
                                                                                                                              if(_loc27_ || param1)
                                                                                                                              {
                                                                                                                                 §§push(_loc14_);
                                                                                                                                 if(!_loc26_)
                                                                                                                                 {
                                                                                                                                    §§push(1);
                                                                                                                                    if(_loc27_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                       if(_loc27_ || param1)
                                                                                                                                       {
                                                                                                                                          if(§§pop() < _loc6_)
                                                                                                                                          {
                                                                                                                                             addr613:
                                                                                                                                             §§push(_loc14_);
                                                                                                                                             if(!_loc26_)
                                                                                                                                             {
                                                                                                                                                addr618:
                                                                                                                                                addr617:
                                                                                                                                                §§push(int(§§pop() + 1));
                                                                                                                                                if(!_loc27_)
                                                                                                                                                {
                                                                                                                                                }
                                                                                                                                                addr626:
                                                                                                                                                var _loc20_:* = §§pop();
                                                                                                                                                §§push(§0!^§(param2,param3,_loc20_,param4,param5));
                                                                                                                                                if(!_loc26_)
                                                                                                                                                {
                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                }
                                                                                                                                                var _loc21_:* = §§pop();
                                                                                                                                                if(_loc27_)
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
                                                                                                                                                                  addr1118:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc19_);
                                                                                                                                                                     addr1098:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc21_);
                                                                                                                                                                        addr1099:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() > §§pop());
                                                                                                                                                                           addr1100:
                                                                                                                                                                           while(_loc27_ || param3)
                                                                                                                                                                           {
                                                                                                                                                                           }
                                                                                                                                                                           continue loop3;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               addr1117:
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
                                                                                                                                                                     while(_loc27_ || param3)
                                                                                                                                                                     {
                                                                                                                                                                        if(§§pop() > §§pop())
                                                                                                                                                                        {
                                                                                                                                                                           loop49:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(1);
                                                                                                                                                                              loop50:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc27_ || b2Collision)
                                                                                                                                                                                 {
                                                                                                                                                                                    _loc24_ = §§pop();
                                                                                                                                                                                    loop51:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc27_ || param3)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc20_);
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(int(§§pop()));
                                                                                                                                                                                             loop53:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                _loc22_ = §§pop();
                                                                                                                                                                                                loop54:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc21_);
                                                                                                                                                                                                   loop55:
                                                                                                                                                                                                   while(!_loc26_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                      loop56:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         _loc23_ = §§pop();
                                                                                                                                                                                                         loop13:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            loop14:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               loop15:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc24_);
                                                                                                                                                                                                                  loop16:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(-1);
                                                                                                                                                                                                                     loop17:
                                                                                                                                                                                                                     while(§§pop() != §§pop())
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc22_);
                                                                                                                                                                                                                        if(!_loc26_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(1);
                                                                                                                                                                                                                           if(!(_loc26_ && param1))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc26_ && b2Collision)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                                                                              loop18:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!(_loc26_ && param2))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc27_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc6_);
                                                                                                                                                                                                                                       if(_loc27_ || param2)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop() < §§pop());
                                                                                                                                                                                                                                          if(_loc27_ || param1)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!§§pop())
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(0);
                                                                                                                                                                                                                                                loop19:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc27_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc26_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         break;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      loop20:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(int(§§pop()));
                                                                                                                                                                                                                                                         addr916:
                                                                                                                                                                                                                                                         loop21:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc26_ && param2)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               continue loop53;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            if(!_loc26_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               _loc14_ = §§pop();
                                                                                                                                                                                                                                                               loop22:
                                                                                                                                                                                                                                                               while(_loc27_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  loop23:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(§0!^§(param2,param3,_loc14_,param4,param5));
                                                                                                                                                                                                                                                                     loop24:
                                                                                                                                                                                                                                                                     while(_loc27_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                        loop25:
                                                                                                                                                                                                                                                                        while(!(_loc26_ && b2Collision))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           continue loop10;
                                                                                                                                                                                                                                                                           addr694:
                                                                                                                                                                                                                                                                           if(_loc26_ && b2Collision)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           if(_loc26_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop1;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           if(!(_loc27_ || param2))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop55;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           _loc23_ = §§pop();
                                                                                                                                                                                                                                                                           loop30:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(_loc26_ && b2Collision)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 loop31:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(_loc14_);
                                                                                                                                                                                                                                                                                    if(!(_loc26_ && b2Collision))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       continue loop19;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    addr814:
                                                                                                                                                                                                                                                                                    if(!(_loc27_ || param2))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       break;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    if(_loc26_ && param2)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       break loop30;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    if(!(_loc26_ && b2Collision))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       _loc22_ = §§pop();
                                                                                                                                                                                                                                                                                       loop29:
                                                                                                                                                                                                                                                                                       while(_loc27_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(_loc17_);
                                                                                                                                                                                                                                                                                          if(_loc27_ || b2Collision)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(!(_loc27_ || param3))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                continue loop24;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          loop28:
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(!_loc27_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(_loc27_ || param1)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(_loc23_);
                                                                                                                                                                                                                                                                                                      while(_loc27_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(_loc26_ && param1)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            continue loop2;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         if(§§pop() > §§pop())
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            continue loop31;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         param1[0] = _loc22_;
                                                                                                                                                                                                                                                                                                         if(!(_loc27_ || param2))
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            continue loop30;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         if(!(_loc27_ || param3))
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            continue loop29;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         if(!_loc26_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(_loc23_);
                                                                                                                                                                                                                                                                                                            if(_loc27_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               return §§pop();
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            continue loop28;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         addr1001:
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(_loc26_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               continue loop14;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            if(_loc26_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               break loop23;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            if(!_loc26_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               continue loop23;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr1118);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      continue loop11;
                                                                                                                                                                                                                                                                                                      addr767:
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   continue loop56;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                continue loop56;
                                                                                                                                                                                                                                                                                                addr759:
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr694);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          continue loop25;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       continue loop22;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    continue loop50;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 continue loop21;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              if(!_loc26_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc27_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(!(_loc26_ && param3))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       continue loop15;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    continue loop49;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 addr974:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(_loc22_);
                                                                                                                                                                                                                                                                                    if(!_loc26_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(§§pop() - 1);
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!(_loc26_ && param3))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(int(§§pop()));
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§goto(addr1010);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       addr978:
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    addr986:
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(_loc27_ || param1)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(int(§§pop()));
                                                                                                                                                                                                                                                                                             break loop30;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          addr999:
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§goto(addr887);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1110);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              _loc14_ = §§pop();
                                                                                                                                                                                                                                                                              §§goto(addr1001);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           addr1000:
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(int(§§pop()));
                                                                                                                                                                                                                                                                           if(!_loc26_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§goto(addr999);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1000);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     continue loop18;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(_loc19_);
                                                                                                                                                                                                                                                                     addr1088:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                        addr1089:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           _loc23_ = §§pop();
                                                                                                                                                                                                                                                                           addr1090:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop14;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1111);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1093);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         addr909:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue loop20;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr995:
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr996);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                continue loop16;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc26_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   break loop17;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                if(!(_loc27_ || param3))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   break;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§push(_loc22_);
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(1);
                                                                                                                                                                                                                                                   addr898:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                      continue loop1;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!(_loc27_ || param2))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop13;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                if(_loc27_ || param1)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr1010:
                                                                                                                                                                                                                                                   return _loc17_;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr1109:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(-1);
                                                                                                                                                                                                                                                   addr1110:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      _loc24_ = §§pop();
                                                                                                                                                                                                                                                      addr1111:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(_loc18_);
                                                                                                                                                                                                                                                         addr1093:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(int(§§pop()));
                                                                                                                                                                                                                                                            addr1094:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               _loc22_ = §§pop();
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr889);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr887:
                                                                                                                                                                                                                                             §§goto(addr1095);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          while(!(_loc26_ && param3))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!(_loc26_ && param1))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(§§pop())
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§goto(addr974);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§goto(addr995);
                                                                                                                                                                                                                                                   §§push(_loc6_);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr996);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§goto(addr1117);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1100);
                                                                                                                                                                                                                                          addr959:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§goto(addr959);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr958:
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    while(!_loc26_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!_loc26_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§goto(addr958);
                                                                                                                                                                                                                                          §§push(0);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1088);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1089);
                                                                                                                                                                                                                                    addr953:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr978);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr898);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        else
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr909);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!(_loc27_ || b2Collision))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop54;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        if(!(_loc27_ || param1))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop51;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§push(_loc22_);
                                                                                                                                                                                                                        if(_loc27_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr953);
                                                                                                                                                                                                                           §§push(§§pop() - 1);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1000);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1098);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1090);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1094);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           param1[0] = _loc14_;
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1019);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1099);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1109);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr729);
                                                                                                                                             }
                                                                                                                                             addr625:
                                                                                                                                             §§push(int(§§pop()));
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§push(0);
                                                                                                                                             if(_loc27_)
                                                                                                                                             {
                                                                                                                                                §§goto(addr625);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr626);
                                                                                                                                       }
                                                                                                                                       §§goto(addr618);
                                                                                                                                    }
                                                                                                                                    §§goto(addr617);
                                                                                                                                 }
                                                                                                                                 §§goto(addr625);
                                                                                                                              }
                                                                                                                              §§goto(addr613);
                                                                                                                           }
                                                                                                                           §§goto(addr572);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           addr567:
                                                                                                                           §§push(§§pop() - 1);
                                                                                                                        }
                                                                                                                        §§push(int(§§pop()));
                                                                                                                        if(!_loc26_)
                                                                                                                        {
                                                                                                                           §§goto(addr572);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§push(_loc6_);
                                                                                                                        if(_loc27_ || param3)
                                                                                                                        {
                                                                                                                           §§goto(addr567);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr572);
                                                                                                                  }
                                                                                                                  §§goto(addr555);
                                                                                                               }
                                                                                                               §§goto(addr567);
                                                                                                            }
                                                                                                            §§goto(addr534);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr401);
                                                                                                   }
                                                                                                   §§goto(addr387);
                                                                                                }
                                                                                                §§goto(addr401);
                                                                                             }
                                                                                             §§goto(addr314);
                                                                                          }
                                                                                          §§push(§§pop() + §§pop());
                                                                                          if(_loc27_)
                                                                                          {
                                                                                             addr320:
                                                                                             §§push(§§pop() - §§pop());
                                                                                             if(!_loc26_)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                if(_loc27_)
                                                                                                {
                                                                                                   addr326:
                                                                                                   _loc11_ = §§pop();
                                                                                                   §§push(_loc10_);
                                                                                                   if(!_loc26_)
                                                                                                   {
                                                                                                      §§push(param3.R.col1.x);
                                                                                                      if(!(_loc26_ && param1))
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         if(!_loc26_)
                                                                                                         {
                                                                                                            addr344:
                                                                                                            §§push(_loc11_);
                                                                                                            if(_loc27_)
                                                                                                            {
                                                                                                               addr350:
                                                                                                               §§goto(addr314);
                                                                                                               §§push(param3.R.col1.y);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr314);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr344);
                                                                                             }
                                                                                             §§goto(addr326);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr314);
                                                                                 }
                                                                              }
                                                                              §§goto(addr350);
                                                                           }
                                                                           _loc10_ = §§pop();
                                                                           if(_loc27_)
                                                                           {
                                                                              §§push(_loc11_);
                                                                              if(_loc27_ || param2)
                                                                              {
                                                                                 §§goto(addr277);
                                                                              }
                                                                              §§goto(addr314);
                                                                           }
                                                                           §§goto(addr326);
                                                                        }
                                                                        §§goto(addr320);
                                                                     }
                                                                     §§goto(addr301);
                                                                  }
                                                                  §§goto(addr314);
                                                               }
                                                               §§goto(addr313);
                                                            }
                                                            §§goto(addr311);
                                                         }
                                                      }
                                                      §§goto(addr301);
                                                   }
                                                }
                                                §§goto(addr314);
                                             }
                                             §§goto(addr286);
                                          }
                                          §§goto(addr282);
                                       }
                                    }
                                    §§goto(addr277);
                                 }
                                 §§goto(addr326);
                              }
                              §§goto(addr150);
                           }
                           §§push(§§pop() + §§pop());
                        }
                        §§goto(addr141);
                     }
                     §§goto(addr150);
                  }
                  §§goto(addr90);
               }
               §§goto(addr86);
            }
            §§goto(addr90);
         }
         §§goto(addr93);
      }
      
      public static function §=!e§(param1:Vector.<§6'§>, param2:b2PolygonShape, param3:b2Transform, param4:int, param5:b2PolygonShape, param6:b2Transform) : void
      {
         var _loc24_:Boolean = true;
         var _loc25_:Boolean = false;
         var _loc12_:b2Mat22 = null;
         var _loc13_:b2Vec2 = null;
         var _loc20_:§6'§ = null;
         var _loc23_:* = NaN;
         §§push(param2.§!!=§);
         if(_loc24_)
         {
            §§push(int(§§pop()));
         }
         var _loc7_:* = §§pop();
         var _loc8_:Vector.<b2Vec2> = param2.§+[§;
         §§push(param5.§!!=§);
         if(!(_loc25_ && param1))
         {
            §§push(int(§§pop()));
         }
         var _loc9_:* = §§pop();
         var _loc10_:Vector.<b2Vec2> = param5.§%!]§;
         var _loc11_:Vector.<b2Vec2> = param5.§+[§;
         _loc12_ = param3.R;
         _loc13_ = _loc8_[param4];
         §§push(_loc12_.col1.x);
         if(!(_loc25_ && param2))
         {
            §§push(_loc13_.x);
            if(_loc24_ || param2)
            {
               §§push(§§pop() * §§pop());
               if(!_loc25_)
               {
                  addr87:
                  §§push(_loc12_.col2.x);
                  if(!(_loc25_ && param3))
                  {
                     addr100:
                     §§push(§§pop() + §§pop() * _loc13_.y);
                     if(_loc24_ || param3)
                     {
                        addr108:
                        §§push(Number(§§pop()));
                     }
                     var _loc14_:* = §§pop();
                     §§push(_loc12_.col1.y);
                     if(_loc24_ || b2Collision)
                     {
                        §§push(_loc13_.x);
                        if(_loc24_ || param1)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc24_)
                           {
                              §§push(_loc12_.col2.y);
                              if(!_loc25_)
                              {
                                 addr137:
                                 §§push(§§pop() * _loc13_.y);
                              }
                              §§push(§§pop() + §§pop());
                              if(_loc25_)
                              {
                              }
                              addr144:
                              var _loc15_:* = §§pop();
                              §§push((_loc12_ = param6.R).col1.x);
                              if(_loc24_)
                              {
                                 §§push(_loc14_);
                                 if(!_loc25_)
                                 {
                                    addr180:
                                    §§push(§§pop() * §§pop());
                                    if(!(_loc25_ && param3))
                                    {
                                       §§push(_loc12_.col1.y);
                                       if(_loc24_ || b2Collision)
                                       {
                                          §§push(§§pop() * _loc15_);
                                       }
                                    }
                                    var _loc16_:Number = §§pop();
                                    if(_loc24_ || b2Collision)
                                    {
                                       §§push(_loc12_.col2.x);
                                       if(_loc24_ || param3)
                                       {
                                          §§push(_loc14_);
                                          if(_loc24_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(!(_loc25_ && param3))
                                             {
                                                §§push(_loc12_.col2.y);
                                                if(_loc24_ || param2)
                                                {
                                                   addr220:
                                                   §§push(§§pop() * _loc15_);
                                                }
                                                §§push(§§pop() + §§pop());
                                                if(_loc24_)
                                                {
                                                   addr225:
                                                   §§push(Number(§§pop()));
                                                   if(!(_loc25_ && param2))
                                                   {
                                                      addr233:
                                                      _loc15_ = §§pop();
                                                      if(_loc24_)
                                                      {
                                                         addr236:
                                                         §§push(_loc16_);
                                                         if(_loc24_ || param1)
                                                         {
                                                            addr245:
                                                            _loc14_ = Number(§§pop());
                                                         }
                                                         §§goto(addr245);
                                                      }
                                                      var _loc17_:* = 0;
                                                      var _loc18_:* = Number(Number.MAX_VALUE);
                                                      var _loc19_:int = 0;
                                                      loop0:
                                                      while(true)
                                                      {
                                                         §§push(_loc19_);
                                                         if(!_loc25_)
                                                         {
                                                            §§push(_loc9_);
                                                            if(_loc24_)
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
                                                                  if(_loc24_)
                                                                  {
                                                                     §§push(_loc14_);
                                                                     if(_loc24_)
                                                                     {
                                                                        §§push(_loc13_.x);
                                                                        if(_loc24_ || param1)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(_loc24_)
                                                                           {
                                                                              §§push(_loc15_);
                                                                              if(!_loc25_)
                                                                              {
                                                                                 addr314:
                                                                                 §§push(§§pop() * _loc13_.y);
                                                                                 if(_loc24_ || param1)
                                                                                 {
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(_loc24_ || param2)
                                                                                    {
                                                                                       addr332:
                                                                                       §§push(Number(§§pop()));
                                                                                       if(!_loc24_)
                                                                                       {
                                                                                       }
                                                                                       addr351:
                                                                                       if(§§pop() < _loc18_)
                                                                                       {
                                                                                          loop7:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc23_);
                                                                                             if(!_loc25_)
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                }
                                                                                                addr356:
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                _loc18_ = §§pop();
                                                                                                addr358:
                                                                                                while(true)
                                                                                                {
                                                                                                   addr282:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc19_);
                                                                                                      if(!(_loc25_ && param2))
                                                                                                      {
                                                                                                         §§push(int(§§pop()));
                                                                                                      }
                                                                                                      _loc17_ = §§pop();
                                                                                                      addr293:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc24_)
                                                                                                         {
                                                                                                            continue;
                                                                                                         }
                                                                                                         continue loop7;
                                                                                                      }
                                                                                                      continue loop7;
                                                                                                   }
                                                                                                   continue loop0;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          addr353:
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          _loc19_++;
                                                                                          if(_loc24_ || b2Collision)
                                                                                          {
                                                                                             if(_loc24_ || param3)
                                                                                             {
                                                                                                if(true)
                                                                                                {
                                                                                                   continue loop0;
                                                                                                }
                                                                                                §§goto(addr282);
                                                                                             }
                                                                                             §§goto(addr358);
                                                                                          }
                                                                                          §§goto(addr293);
                                                                                       }
                                                                                    }
                                                                                    §§push(§§pop());
                                                                                    if(_loc24_ || param3)
                                                                                    {
                                                                                       addr343:
                                                                                       _loc23_ = §§pop();
                                                                                       if(!(_loc25_ && b2Collision))
                                                                                       {
                                                                                          §§goto(addr351);
                                                                                       }
                                                                                       §§goto(addr356);
                                                                                    }
                                                                                    §§goto(addr351);
                                                                                 }
                                                                              }
                                                                              §§goto(addr343);
                                                                           }
                                                                           §§goto(addr351);
                                                                        }
                                                                        §§goto(addr314);
                                                                     }
                                                                     §§goto(addr332);
                                                                  }
                                                                  §§goto(addr353);
                                                               }
                                                            }
                                                            var _loc21_:* = §§pop();
                                                            if(!(_loc25_ && param2))
                                                            {
                                                               §§push(1);
                                                               if(!_loc25_)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  if(!_loc25_)
                                                                  {
                                                                     if(§§pop() < _loc9_)
                                                                     {
                                                                        §§push(_loc21_);
                                                                        if(_loc24_ || param1)
                                                                        {
                                                                           addr398:
                                                                           §§push(int(§§pop() + 1));
                                                                           if(!_loc24_)
                                                                           {
                                                                           }
                                                                        }
                                                                        addr410:
                                                                        §§push(int(§§pop()));
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(0);
                                                                        if(!(_loc25_ && b2Collision))
                                                                        {
                                                                           §§goto(addr410);
                                                                        }
                                                                     }
                                                                     var _loc22_:* = §§pop();
                                                                     _loc20_ = param1[0];
                                                                     _loc13_ = _loc10_[_loc21_];
                                                                     _loc12_ = param6.R;
                                                                     if(_loc24_ || param1)
                                                                     {
                                                                        §§push(_loc20_.v);
                                                                        loop8:
                                                                        while(true)
                                                                        {
                                                                           §§push(param6.position);
                                                                           addr612:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().x);
                                                                              if(_loc24_)
                                                                              {
                                                                                 §§push(_loc12_.col1);
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().x);
                                                                                    addr618:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc13_.x);
                                                                                       if(_loc24_ || param2)
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(_loc24_ || param1)
                                                                                          {
                                                                                             §§push(_loc12_.col2);
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop().x);
                                                                                                addr638:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc13_.y);
                                                                                                   addr640:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      addr641:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             addr637:
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() + §§pop());
                                                                                             addr643:
                                                                                             while(true)
                                                                                             {
                                                                                                §§pop().x = §§pop();
                                                                                                continue loop8;
                                                                                             }
                                                                                          }
                                                                                          addr642:
                                                                                       }
                                                                                       §§goto(addr638);
                                                                                    }
                                                                                 }
                                                                                 addr617:
                                                                              }
                                                                              §§goto(addr643);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr520);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr398);
                                                         }
                                                         break;
                                                      }
                                                      §§goto(addr370);
                                                      §§push(int(§§pop()));
                                                   }
                                                }
                                                §§goto(addr245);
                                             }
                                             §§goto(addr233);
                                          }
                                          §§goto(addr220);
                                       }
                                       §§goto(addr225);
                                    }
                                    §§goto(addr236);
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(_loc25_)
                                 {
                                 }
                              }
                              §§goto(addr180);
                           }
                           §§goto(addr144);
                           §§push(Number(§§pop()));
                        }
                        §§goto(addr137);
                     }
                     §§goto(addr144);
                  }
                  §§goto(addr100);
               }
               §§goto(addr108);
            }
            §§goto(addr100);
         }
         §§goto(addr87);
      }
      
      private static function §4F§() : Vector.<§6'§>
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Vector.<§6'§> = new Vector.<§6'§>(2);
         if(_loc2_ || _loc3_)
         {
            _loc1_[0] = new §6'§();
            do
            {
               _loc1_[1] = new §6'§();
            }
            while(!_loc2_);
            
         }
         return _loc1_;
      }
      
      public static function §<!g§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2PolygonShape, param5:b2Transform) : void
      {
         var _loc46_:Boolean = false;
         var _loc47_:Boolean = true;
         var _loc6_:§6'§ = null;
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
         var _loc45_:Number = NaN;
         if(!_loc46_)
         {
            param1.§2V§ = 0;
         }
         var _loc7_:Number = param2.§?!X§ + param4.§?!X§;
         var _loc8_:* = 0;
         if(_loc47_ || param2)
         {
            §5!;§[0] = _loc8_;
         }
         §§push(§,!z§(§5!;§,param2,param3,param4,param5));
         if(!_loc46_)
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         if(!(_loc46_ && param3))
         {
            §§push(int(§5!;§[0]));
            if(_loc47_)
            {
               _loc8_ = §§pop();
               if(_loc47_)
               {
                  addr106:
                  if(_loc9_ > _loc7_)
                  {
                     if(!(_loc46_ && param1))
                     {
                        return;
                     }
                  }
               }
               §§push(0);
            }
            var _loc10_:* = §§pop();
            if(_loc47_)
            {
               §4!0§[0] = _loc10_;
            }
            §§push(§,!z§(§4!0§,param4,param5,param2,param3));
            if(!(_loc46_ && b2Collision))
            {
               §§push(Number(§§pop()));
            }
            var _loc11_:* = §§pop();
            if(!_loc46_)
            {
               _loc10_ = int(§4!0§[0]);
               if(_loc47_)
               {
                  addr150:
                  §§push(_loc11_);
                  if(!_loc46_)
                  {
                     if(§§pop() > _loc7_)
                     {
                        if(_loc47_)
                        {
                           return;
                        }
                        addr158:
                        §§push(0.98);
                        if(!_loc46_)
                        {
                           addr161:
                           §§push(Number(§§pop()));
                        }
                        var _loc18_:* = §§pop();
                        §§push(0.001);
                        if(!_loc46_)
                        {
                           §§push(Number(§§pop()));
                        }
                        var _loc19_:* = §§pop();
                        if(_loc47_)
                        {
                           §§push(_loc11_);
                           §§push(_loc18_);
                           if(!(_loc46_ && b2Collision))
                           {
                              §§push(_loc9_);
                              if(!_loc46_)
                              {
                                 addr187:
                                 §§push(§§pop() * §§pop());
                                 if(!_loc46_)
                                 {
                                    §§push(_loc19_);
                                 }
                                 if(§§pop() > §§pop())
                                 {
                                    addr188:
                                    _loc12_ = param4;
                                    _loc13_ = param2;
                                    _loc14_ = param5;
                                    _loc15_ = param3;
                                    if(_loc47_ || param3)
                                    {
                                       §§push(_loc10_);
                                       if(_loc47_)
                                       {
                                          §§push(int(§§pop()));
                                       }
                                       while(true)
                                       {
                                          _loc16_ = §§pop();
                                          addr225:
                                          §§push(1);
                                          if(_loc46_)
                                          {
                                             continue;
                                          }
                                          _loc17_ = §§pop();
                                          if(!_loc46_)
                                          {
                                             if(false)
                                             {
                                                loop44:
                                                while(true)
                                                {
                                                   param1.§"_§ = b2Manifold.§9!D§;
                                                   addr223:
                                                   addr231:
                                                   while(!_loc46_)
                                                   {
                                                      §§goto(addr225);
                                                   }
                                                   while(true)
                                                   {
                                                      continue loop44;
                                                   }
                                                }
                                             }
                                             addr287:
                                             var _loc21_:Vector.<§6'§> = §"f§;
                                             if(_loc47_ || param1)
                                             {
                                                §=!e§(_loc21_,_loc12_,_loc14_,_loc16_,_loc13_,_loc15_);
                                             }
                                             §§push(_loc12_.§!!=§);
                                             if(_loc47_)
                                             {
                                                §§push(int(§§pop()));
                                             }
                                             var _loc22_:* = §§pop();
                                             var _loc23_:Vector.<b2Vec2>;
                                             var _loc24_:b2Vec2 = (_loc23_ = _loc12_.§%!]§)[_loc16_];
                                             if(_loc47_ || b2Collision)
                                             {
                                                if(_loc16_ + 1 < _loc22_)
                                                {
                                                   addr332:
                                                   _loc25_ = _loc23_[int(_loc16_ + 1)];
                                                }
                                                else
                                                {
                                                   _loc25_ = _loc23_[0];
                                                }
                                                var _loc26_:b2Vec2;
                                                §§push(_loc26_ = §^!t§);
                                                §§push(_loc25_.x);
                                                if(!(_loc46_ && b2Collision))
                                                {
                                                   §§push(_loc24_.x);
                                                   if(_loc47_)
                                                   {
                                                      addr365:
                                                      §§push(§§pop() - §§pop());
                                                      §§push(_loc25_.y);
                                                      if(_loc47_ || b2Collision)
                                                      {
                                                         addr374:
                                                         §§push(§§pop() - _loc24_.y);
                                                      }
                                                      §§pop().Set(§§pop(),§§pop());
                                                      if(_loc47_)
                                                      {
                                                         _loc26_.Normalize();
                                                      }
                                                      var _loc27_:b2Vec2;
                                                      (_loc27_ = §"!F§).x = _loc26_.y;
                                                      if(!(_loc46_ && param1))
                                                      {
                                                         §§push(_loc27_);
                                                         §§push(_loc26_.x);
                                                         if(_loc47_ || param3)
                                                         {
                                                            §§push(-§§pop());
                                                         }
                                                         §§pop().y = §§pop();
                                                      }
                                                      var _loc28_:b2Vec2;
                                                      §§push(_loc28_ = §!!9§);
                                                      §§push(0.5);
                                                      if(_loc47_)
                                                      {
                                                         §§push(_loc24_.x);
                                                         if(!(_loc46_ && param3))
                                                         {
                                                            §§push(_loc25_.x);
                                                            if(_loc47_)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               if(!(_loc46_ && param1))
                                                               {
                                                                  addr437:
                                                                  §§push(§§pop() * §§pop());
                                                                  §§push(0.5);
                                                                  if(_loc47_ || param1)
                                                                  {
                                                                  }
                                                                  addr453:
                                                                  §§pop().Set(§§pop(),§§pop());
                                                                  var _loc29_:b2Vec2 = §0!A§;
                                                                  _loc20_ = _loc14_.R;
                                                                  if(!_loc46_)
                                                                  {
                                                                     §§push(_loc29_);
                                                                     §§push(_loc20_.col1.x);
                                                                     if(_loc47_ || b2Collision)
                                                                     {
                                                                        §§push(_loc26_.x);
                                                                        if(!_loc46_)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(!_loc46_)
                                                                           {
                                                                              addr481:
                                                                              §§push(_loc20_.col2.x);
                                                                              if(_loc47_ || param1)
                                                                              {
                                                                                 addr491:
                                                                                 §§push(§§pop() * _loc26_.y);
                                                                              }
                                                                              §§push(§§pop() + §§pop());
                                                                           }
                                                                           §§pop().x = §§pop();
                                                                           if(!_loc46_)
                                                                           {
                                                                              §§push(_loc29_);
                                                                              §§push(_loc20_.col1.y);
                                                                              if(_loc47_ || b2Collision)
                                                                              {
                                                                                 §§push(_loc26_.x);
                                                                                 if(!_loc46_)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(!_loc46_)
                                                                                    {
                                                                                       addr525:
                                                                                       §§push(_loc20_.col2.y);
                                                                                       if(!_loc46_)
                                                                                       {
                                                                                          addr521:
                                                                                          §§push(§§pop() * _loc26_.y);
                                                                                       }
                                                                                       §§pop().y = §§pop() + §§pop();
                                                                                       addr526:
                                                                                       var _loc30_:b2Vec2;
                                                                                       §§push(_loc30_ = s_tangent2);
                                                                                       §§push(_loc29_.x);
                                                                                       if(_loc47_)
                                                                                       {
                                                                                          §§push(-§§pop());
                                                                                       }
                                                                                       §§pop().x = §§pop();
                                                                                       if(_loc47_ || param3)
                                                                                       {
                                                                                          §§push(_loc30_);
                                                                                          §§push(_loc29_.y);
                                                                                          if(_loc47_)
                                                                                          {
                                                                                             §§push(-§§pop());
                                                                                          }
                                                                                          §§pop().y = §§pop();
                                                                                       }
                                                                                       var _loc31_:b2Vec2;
                                                                                       (_loc31_ = §<Z§).x = _loc29_.y;
                                                                                       if(!(_loc46_ && param2))
                                                                                       {
                                                                                          §§push(_loc31_);
                                                                                          §§push(_loc29_.x);
                                                                                          if(_loc47_)
                                                                                          {
                                                                                             §§push(-§§pop());
                                                                                          }
                                                                                          §§pop().y = §§pop();
                                                                                       }
                                                                                       var _loc32_:b2Vec2 = s_v11;
                                                                                       var _loc33_:b2Vec2 = s_v12;
                                                                                       if(_loc47_)
                                                                                       {
                                                                                          §§push(_loc32_);
                                                                                          §§push(_loc14_.position.x);
                                                                                          if(!(_loc46_ && param3))
                                                                                          {
                                                                                             §§push(_loc20_.col1.x);
                                                                                             if(!_loc46_)
                                                                                             {
                                                                                                §§push(_loc24_.x);
                                                                                                if(_loc47_ || b2Collision)
                                                                                                {
                                                                                                   addr793:
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(!(_loc46_ && param1))
                                                                                                   {
                                                                                                      addr783:
                                                                                                      §§push(_loc20_.col2.x);
                                                                                                      if(!_loc46_)
                                                                                                      {
                                                                                                         addr788:
                                                                                                         §§push(§§pop() * _loc24_.y);
                                                                                                      }
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                   }
                                                                                                   §§pop().x = §§pop() + §§pop();
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc32_);
                                                                                                      §§push(_loc14_.position.y);
                                                                                                      if(_loc47_)
                                                                                                      {
                                                                                                         §§push(_loc20_.col1.y);
                                                                                                         if(!(_loc46_ && param1))
                                                                                                         {
                                                                                                            §§push(_loc24_.x);
                                                                                                            if(!(_loc46_ && param1))
                                                                                                            {
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               if(!(_loc46_ && param1))
                                                                                                               {
                                                                                                                  addr745:
                                                                                                                  §§push(_loc20_.col2.y);
                                                                                                                  if(_loc47_ || param1)
                                                                                                                  {
                                                                                                                     addr741:
                                                                                                                     §§push(§§pop() * _loc24_.y);
                                                                                                                  }
                                                                                                                  §§pop().y = §§pop() + (§§pop() + §§pop());
                                                                                                                  loop7:
                                                                                                                  for(; _loc47_; loop9:
                                                                                                                  while(_loc47_ || param3)
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc33_);
                                                                                                                        §§push(_loc14_.position.y);
                                                                                                                        if(!_loc46_)
                                                                                                                        {
                                                                                                                           §§push(_loc20_.col1.y);
                                                                                                                           if(!(_loc46_ && param3))
                                                                                                                           {
                                                                                                                              §§push(_loc25_.x);
                                                                                                                              if(!(_loc46_ && b2Collision))
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 if(_loc47_)
                                                                                                                                 {
                                                                                                                                    addr623:
                                                                                                                                    §§push(_loc20_.col2.y);
                                                                                                                                    if(_loc47_ || param1)
                                                                                                                                    {
                                                                                                                                       addr619:
                                                                                                                                       §§push(§§pop() * _loc25_.y);
                                                                                                                                    }
                                                                                                                                    §§pop().y = §§pop() + (§§pop() + §§pop());
                                                                                                                                    if(_loc46_)
                                                                                                                                    {
                                                                                                                                       continue loop9;
                                                                                                                                    }
                                                                                                                                    if(true)
                                                                                                                                    {
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    §§goto(addr629);
                                                                                                                                 }
                                                                                                                                 §§goto(addr623);
                                                                                                                              }
                                                                                                                              §§goto(addr619);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr623);
                                                                                                                     }
                                                                                                                     §§push(_loc31_.x);
                                                                                                                     if(!(_loc46_ && param1))
                                                                                                                     {
                                                                                                                        §§push(_loc32_.x);
                                                                                                                        if(_loc47_ || param3)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           if(_loc47_ || param3)
                                                                                                                           {
                                                                                                                              §§push(_loc31_.y);
                                                                                                                              if(_loc47_ || param3)
                                                                                                                              {
                                                                                                                                 addr830:
                                                                                                                                 §§push(§§pop() * _loc32_.y);
                                                                                                                              }
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              if(_loc46_)
                                                                                                                              {
                                                                                                                              }
                                                                                                                              addr837:
                                                                                                                              var _loc34_:* = §§pop();
                                                                                                                              §§push(_loc29_.x);
                                                                                                                              if(_loc47_ || param2)
                                                                                                                              {
                                                                                                                                 §§push(-§§pop());
                                                                                                                                 if(_loc47_ || b2Collision)
                                                                                                                                 {
                                                                                                                                    §§push(_loc32_.x);
                                                                                                                                    if(_loc47_ || param3)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       if(_loc47_ || param3)
                                                                                                                                       {
                                                                                                                                          §§push(_loc29_.y);
                                                                                                                                          if(!(_loc46_ && b2Collision))
                                                                                                                                          {
                                                                                                                                             addr881:
                                                                                                                                             §§push(§§pop() * _loc32_.y);
                                                                                                                                             if(_loc47_ || param2)
                                                                                                                                             {
                                                                                                                                                addr891:
                                                                                                                                                §§push(§§pop() - §§pop());
                                                                                                                                                if(_loc47_)
                                                                                                                                                {
                                                                                                                                                   addr895:
                                                                                                                                                   addr894:
                                                                                                                                                   §§push(§§pop() + _loc7_);
                                                                                                                                                   if(_loc46_ && param3)
                                                                                                                                                   {
                                                                                                                                                   }
                                                                                                                                                   addr904:
                                                                                                                                                   var _loc35_:* = §§pop();
                                                                                                                                                   §§push(_loc29_.x);
                                                                                                                                                   if(!_loc46_)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc33_.x);
                                                                                                                                                      if(!_loc46_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         if(_loc47_)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc29_.y);
                                                                                                                                                            if(_loc47_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() * _loc33_.y);
                                                                                                                                                               if(_loc47_)
                                                                                                                                                               {
                                                                                                                                                                  addr925:
                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                  if(!_loc46_)
                                                                                                                                                                  {
                                                                                                                                                                     addr929:
                                                                                                                                                                     §§push(§§pop() + _loc7_);
                                                                                                                                                                     if(!_loc46_)
                                                                                                                                                                     {
                                                                                                                                                                        addr932:
                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  var _loc36_:* = §§pop();
                                                                                                                                                                  var _loc37_:Vector.<§6'§> = s_clipPoints1;
                                                                                                                                                                  var _loc38_:Vector.<§6'§> = s_clipPoints2;
                                                                                                                                                                  if(!_loc46_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§ !a§(_loc37_,_loc21_,_loc30_,_loc35_));
                                                                                                                                                                     loop11:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(int(§§pop()));
                                                                                                                                                                        loop12:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop());
                                                                                                                                                                           loop13:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              _loc39_ = §§pop();
                                                                                                                                                                              loop14:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(2);
                                                                                                                                                                                 loop15:
                                                                                                                                                                                 while(§§pop() >= §§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    loop16:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§ !a§(_loc38_,_loc37_,_loc29_,_loc36_));
                                                                                                                                                                                       if(_loc47_ || param2)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(int(§§pop()));
                                                                                                                                                                                          if(!(_loc47_ || param1))
                                                                                                                                                                                          {
                                                                                                                                                                                             addr1014:
                                                                                                                                                                                             if(_loc46_ && b2Collision)
                                                                                                                                                                                             {
                                                                                                                                                                                                break;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(2);
                                                                                                                                                                                             if(_loc46_)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop15;
                                                                                                                                                                                             }
                                                                                                                                                                                             if(!(_loc47_ || param1))
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop13;
                                                                                                                                                                                             }
                                                                                                                                                                                             if(§§pop() < §§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc47_ || param3)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc46_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      return;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   break loop15;
                                                                                                                                                                                                }
                                                                                                                                                                                                loop17:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr966:
                                                                                                                                                                                                   loop18:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      param1.§6O§.SetV(_loc27_);
                                                                                                                                                                                                      do
                                                                                                                                                                                                      {
                                                                                                                                                                                                         param1.m_localPoint.SetV(_loc28_);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      while(!_loc47_);
                                                                                                                                                                                                      
                                                                                                                                                                                                      if(_loc46_ && param1)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop17;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      if(!(_loc47_ || b2Collision))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         break;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            var _loc40_:int = 0;
                                                                                                                                                                                                            var _loc41_:int = 0;
                                                                                                                                                                                                            while(_loc41_ < b2Settings.b2_maxManifoldPoints)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               _loc6_ = _loc38_[_loc41_];
                                                                                                                                                                                                               if(_loc46_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§push(_loc31_.x);
                                                                                                                                                                                                               if(_loc47_ || b2Collision)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc6_.v.x);
                                                                                                                                                                                                                  if(_loc47_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                     if(_loc47_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc31_.y);
                                                                                                                                                                                                                        if(_loc47_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop() * _loc6_.v.y);
                                                                                                                                                                                                                           if(_loc47_ || b2Collision)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                                                                              if(_loc47_ || param1)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc34_);
                                                                                                                                                                                                                                 if(!_loc46_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                    if(!(_loc46_ && param1))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr1120:
                                                                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                                                                       if(_loc47_ || param3)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr1128:
                                                                                                                                                                                                                                          §§push(§§pop());
                                                                                                                                                                                                                                          if(!(_loc46_ && b2Collision))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr1136:
                                                                                                                                                                                                                                             _loc42_ = §§pop();
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr1138:
                                                                                                                                                                                                                                          if(§§pop() <= §§pop())
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!_loc47_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             _loc43_ = param1.§4!a§[_loc40_];
                                                                                                                                                                                                                                             _loc20_ = _loc15_.R;
                                                                                                                                                                                                                                             if(!(_loc46_ && b2Collision))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(_loc6_.v);
                                                                                                                                                                                                                                                loop22:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop().x);
                                                                                                                                                                                                                                                   addr1362:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(_loc15_.position);
                                                                                                                                                                                                                                                      addr1364:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(§§pop().x);
                                                                                                                                                                                                                                                         addr1365:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                            addr1366:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                                                                                                                               addr1367:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  _loc44_ = §§pop();
                                                                                                                                                                                                                                                                  continue loop22;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1271);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1369);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1138);
                                                                                                                                                                                                                                    §§push(_loc7_);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1120);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1136);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1120);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1138);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1128);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr1057:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop18;
                                                                                                                                                                                                         if(!(_loc46_ && param2))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            param1.§2V§ = _loc40_;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         return;
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   continue loop16;
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr966);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       if(_loc47_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop11;
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop12;
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop14;
                                                                                                                                                                                 }
                                                                                                                                                                                 return;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr964);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr929);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr925);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr929);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr925);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr932);
                                                                                                                                                }
                                                                                                                                                §§goto(addr904);
                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                             }
                                                                                                                                             §§goto(addr895);
                                                                                                                                          }
                                                                                                                                          §§goto(addr891);
                                                                                                                                       }
                                                                                                                                       §§goto(addr894);
                                                                                                                                    }
                                                                                                                                    §§goto(addr881);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr895);
                                                                                                                           }
                                                                                                                           §§goto(addr837);
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                        }
                                                                                                                        §§goto(addr830);
                                                                                                                     }
                                                                                                                     §§goto(addr837);
                                                                                                                  })
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc33_);
                                                                                                                        §§push(_loc14_.position.x);
                                                                                                                        if(!(_loc46_ && b2Collision))
                                                                                                                        {
                                                                                                                           §§push(_loc20_.col1.x);
                                                                                                                           if(!(_loc46_ && b2Collision))
                                                                                                                           {
                                                                                                                              §§push(_loc25_.x);
                                                                                                                              if(!(_loc46_ && b2Collision))
                                                                                                                              {
                                                                                                                                 addr688:
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 if(_loc47_ || param1)
                                                                                                                                 {
                                                                                                                                    addr668:
                                                                                                                                    §§push(_loc20_.col2.x);
                                                                                                                                    if(_loc47_)
                                                                                                                                    {
                                                                                                                                       addr673:
                                                                                                                                       §§push(§§pop() * _loc25_.y);
                                                                                                                                    }
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                 }
                                                                                                                                 §§pop().x = §§pop() + §§pop();
                                                                                                                                 continue loop7;
                                                                                                                              }
                                                                                                                              §§goto(addr673);
                                                                                                                           }
                                                                                                                           §§goto(addr668);
                                                                                                                        }
                                                                                                                        §§goto(addr688);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  continue;
                                                                                                               }
                                                                                                               §§goto(addr745);
                                                                                                            }
                                                                                                            §§goto(addr741);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr745);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr788);
                                                                                             }
                                                                                             §§goto(addr783);
                                                                                          }
                                                                                          §§goto(addr793);
                                                                                       }
                                                                                       §§goto(addr696);
                                                                                    }
                                                                                    §§goto(addr525);
                                                                                 }
                                                                                 §§goto(addr521);
                                                                              }
                                                                              §§goto(addr525);
                                                                           }
                                                                           §§goto(addr526);
                                                                        }
                                                                        §§goto(addr491);
                                                                     }
                                                                     §§goto(addr481);
                                                                  }
                                                                  §§goto(addr525);
                                                               }
                                                               §§push(_loc24_.y);
                                                               if(!_loc46_)
                                                               {
                                                                  §§push(§§pop() + _loc25_.y);
                                                               }
                                                            }
                                                            §§push(§§pop() * §§pop());
                                                         }
                                                         §§goto(addr453);
                                                      }
                                                      §§goto(addr437);
                                                   }
                                                   §§goto(addr374);
                                                }
                                                §§goto(addr365);
                                             }
                                             §§goto(addr332);
                                          }
                                          §§goto(addr223);
                                       }
                                    }
                                    §§goto(addr231);
                                 }
                                 else
                                 {
                                    _loc12_ = param2;
                                    _loc13_ = param4;
                                    _loc14_ = param3;
                                    _loc15_ = param5;
                                    if(!(_loc46_ && b2Collision))
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
                                                addr275:
                                                while(true)
                                                {
                                                   param1.§"_§ = b2Manifold.§>!r§;
                                                   addr280:
                                                   while(true)
                                                   {
                                                      if(!_loc46_)
                                                      {
                                                         §§push(0);
                                                         if(_loc47_)
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
                                    §§goto(addr273);
                                 }
                              }
                              §§push(§§pop() + §§pop());
                           }
                           §§goto(addr187);
                        }
                        §§goto(addr188);
                     }
                     §§goto(addr158);
                  }
                  §§goto(addr161);
               }
               §§goto(addr158);
            }
            §§goto(addr150);
         }
         §§goto(addr106);
      }
      
      public static function §8A§(param1:b2Manifold, param2:b2CircleShape, param3:b2Transform, param4:b2CircleShape, param5:b2Transform) : void
      {
         var _loc16_:Boolean = true;
         var _loc17_:Boolean = false;
         var _loc6_:b2Mat22 = null;
         var _loc7_:b2Vec2 = null;
         if(!_loc17_)
         {
            param1.§2V§ = 0;
         }
         _loc6_ = param3.R;
         _loc7_ = param2.§^!I§;
         §§push(param3.position.x);
         if(_loc16_)
         {
            §§push(_loc6_.col1.x);
            if(!(_loc17_ && param2))
            {
               §§push(_loc7_.x);
               if(_loc16_)
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc17_)
                  {
                     addr57:
                     §§push(_loc6_.col2.x);
                     if(_loc16_ || param2)
                     {
                        addr67:
                        §§push(§§pop() * _loc7_.y);
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc16_ || b2Collision)
                  {
                     addr79:
                     §§push(Number(§§pop()));
                  }
                  var _loc8_:* = §§pop();
                  §§push(param3.position.y);
                  if(_loc16_ || param3)
                  {
                     §§push(_loc6_.col1.y);
                     if(_loc16_)
                     {
                        §§push(_loc7_.x);
                        if(_loc16_ || param1)
                        {
                           addr127:
                           §§push(§§pop() * §§pop());
                           if(!(_loc17_ && b2Collision))
                           {
                              §§push(_loc6_.col2.y);
                              if(!(_loc17_ && param1))
                              {
                                 §§push(§§pop() * _loc7_.y);
                              }
                           }
                           §§push(§§pop() + §§pop());
                           if(_loc16_ || param1)
                           {
                              addr136:
                              var _loc9_:Number = §§pop();
                              _loc6_ = param5.R;
                              _loc7_ = param4.§^!I§;
                              §§push(param5.position.x);
                              if(_loc16_ || b2Collision)
                              {
                                 §§push(_loc6_.col1.x);
                                 if(!_loc17_)
                                 {
                                    §§push(_loc7_.x);
                                    if(!(_loc17_ && param2))
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(_loc16_)
                                       {
                                          addr172:
                                          §§push(_loc6_.col2.x);
                                          if(!_loc17_)
                                          {
                                             addr177:
                                             §§push(§§pop() * _loc7_.y);
                                          }
                                          §§push(§§pop() + §§pop());
                                       }
                                       §§push(§§pop() + §§pop());
                                       if(_loc16_)
                                       {
                                          addr184:
                                          §§push(Number(§§pop()));
                                       }
                                       var _loc10_:* = §§pop();
                                       §§push(param5.position.y);
                                       if(_loc16_ || param3)
                                       {
                                          §§push(_loc6_.col1.y);
                                          if(!_loc17_)
                                          {
                                             §§push(_loc7_.x);
                                             if(_loc16_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(_loc16_)
                                                {
                                                   addr218:
                                                   §§push(_loc6_.col2.y);
                                                   if(!(_loc17_ && param1))
                                                   {
                                                      addr228:
                                                      §§push(§§pop() * _loc7_.y);
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                }
                                                §§push(§§pop() + §§pop());
                                                if(_loc16_)
                                                {
                                                   addr236:
                                                   var _loc11_:Number = §§pop();
                                                   §§push(_loc10_);
                                                   if(!_loc17_)
                                                   {
                                                      §§push(§§pop() - _loc8_);
                                                      if(!(_loc17_ && param2))
                                                      {
                                                         addr249:
                                                         §§push(Number(§§pop()));
                                                      }
                                                      var _loc12_:* = §§pop();
                                                      §§push(_loc11_);
                                                      if(_loc16_ || param3)
                                                      {
                                                         §§push(§§pop() - _loc9_);
                                                         if(_loc16_)
                                                         {
                                                            §§push(Number(§§pop()));
                                                         }
                                                      }
                                                      var _loc13_:* = §§pop();
                                                      §§push(_loc12_);
                                                      if(_loc16_)
                                                      {
                                                         §§push(_loc12_);
                                                         if(!_loc17_)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(!(_loc17_ && param3))
                                                            {
                                                               addr279:
                                                               §§push(_loc13_);
                                                               if(_loc16_)
                                                               {
                                                                  addr284:
                                                                  §§push(§§pop() + §§pop() * _loc13_);
                                                                  if(!(_loc17_ && param1))
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                               }
                                                               §§goto(addr284);
                                                            }
                                                            var _loc14_:* = §§pop();
                                                            var _loc15_:Number = param2.§?!X§ + param4.§?!X§;
                                                            if(_loc16_ || param2)
                                                            {
                                                               §§push(_loc14_);
                                                               §§push(_loc15_);
                                                               if(_loc16_ || param1)
                                                               {
                                                                  §§push(§§pop() * _loc15_);
                                                               }
                                                               if(§§pop() > §§pop())
                                                               {
                                                                  if(!_loc17_)
                                                                  {
                                                                     §§goto(addr416);
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        loop3:
                                                                        for(; _loc16_ || param3; if(_loc17_ && b2Collision)
                                                                        {
                                                                           continue;
                                                                        },addr335:,if(_loc16_ || param2)
                                                                        {
                                                                           return;
                                                                        },while(true)
                                                                        {
                                                                           param1.m_localPoint.SetV(param2.§^!I§);
                                                                           continue loop3;
                                                                           §§goto(addr335);
                                                                        },addr401:)
                                                                        {
                                                                           param1.§6O§.§&!K§();
                                                                           while(true)
                                                                           {
                                                                              param1.§2V§ = 1;
                                                                              while(_loc16_ || param1)
                                                                              {
                                                                                 param1.§4!a§[0].m_localPoint.SetV(param4.§^!I§);
                                                                                 while(_loc16_)
                                                                                 {
                                                                                    param1.§4!a§[0].m_id.key = 0;
                                                                                    if(!(_loc17_ && param1))
                                                                                    {
                                                                                       continue loop3;
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     addr417:
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  param1.§"_§ = b2Manifold.§6!C§;
                                                                  §§goto(addr401);
                                                                  §§goto(addr417);
                                                               }
                                                            }
                                                            addr416:
                                                            return;
                                                         }
                                                         §§goto(addr284);
                                                      }
                                                      §§goto(addr279);
                                                   }
                                                   §§goto(addr249);
                                                }
                                                §§goto(addr236);
                                             }
                                             §§goto(addr228);
                                          }
                                          §§goto(addr218);
                                       }
                                       §§goto(addr236);
                                    }
                                    §§goto(addr177);
                                 }
                                 §§goto(addr172);
                              }
                              §§goto(addr184);
                           }
                           §§goto(addr136);
                        }
                        §§push(§§pop() + §§pop());
                     }
                     §§goto(addr127);
                  }
                  §§goto(addr136);
               }
               §§goto(addr67);
            }
            §§goto(addr57);
         }
         §§goto(addr79);
      }
      
      public static function §<v§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2CircleShape, param5:b2Transform) : void
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
         var _loc32_:* = NaN;
         var _loc33_:* = NaN;
         if(!_loc34_)
         {
            param1.§2V§ = 0;
         }
         _loc12_ = param5.R;
         _loc11_ = param4.§^!I§;
         §§push(param5.position.x);
         if(_loc35_ || param3)
         {
            §§push(_loc12_.col1.x);
            if(!_loc34_)
            {
               §§push(_loc11_.x);
               if(!(_loc34_ && param2))
               {
                  §§push(§§pop() * §§pop());
                  if(_loc35_)
                  {
                     addr82:
                     §§push(_loc12_.col2.x);
                     if(!(_loc34_ && param1))
                     {
                        addr92:
                        §§push(§§pop() * _loc11_.y);
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc35_ || param2)
                  {
                     addr104:
                     §§push(Number(§§pop()));
                  }
                  var _loc13_:* = §§pop();
                  §§push(param5.position.y);
                  if(!(_loc34_ && b2Collision))
                  {
                     §§push(_loc12_.col1.y);
                     if(!_loc34_)
                     {
                        §§push(_loc11_.x);
                        if(_loc35_)
                        {
                           addr147:
                           §§push(§§pop() * §§pop());
                           if(_loc35_ || param3)
                           {
                              §§push(_loc12_.col2.y);
                              if(!(_loc34_ && param3))
                              {
                                 §§push(§§pop() * _loc11_.y);
                              }
                           }
                           §§push(§§pop() + §§pop());
                           if(!(_loc34_ && param1))
                           {
                              addr156:
                              var _loc14_:Number = §§pop();
                              if(!(_loc34_ && param1))
                              {
                                 §§push(_loc13_);
                                 if(_loc35_ || param2)
                                 {
                                    §§push(param3.position);
                                    if(!_loc34_)
                                    {
                                       §§push(§§pop().x);
                                       if(!_loc34_)
                                       {
                                          §§push(§§pop() - §§pop());
                                          if(_loc35_ || param3)
                                          {
                                             §§push(Number(§§pop()));
                                             if(_loc35_ || param3)
                                             {
                                                addr195:
                                                _loc7_ = §§pop();
                                                addr219:
                                                if(_loc35_)
                                                {
                                                   §§push(_loc14_);
                                                   if(!(_loc34_ && param1))
                                                   {
                                                      addr209:
                                                      §§push(§§pop() - param3.position.y);
                                                      if(!(_loc34_ && param1))
                                                      {
                                                         addr217:
                                                         §§push(Number(§§pop()));
                                                      }
                                                   }
                                                }
                                                _loc12_ = param3.R;
                                                §§push(_loc7_);
                                                if(_loc35_ || param1)
                                                {
                                                   §§push(_loc12_.col1.x);
                                                   if(_loc35_ || param3)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc35_ || param1)
                                                      {
                                                         addr249:
                                                         §§push(_loc8_);
                                                         if(_loc35_ || b2Collision)
                                                         {
                                                            addr261:
                                                            §§push(§§pop() + §§pop() * _loc12_.col1.y);
                                                            if(_loc35_)
                                                            {
                                                               addr264:
                                                               §§push(Number(§§pop()));
                                                            }
                                                            var _loc15_:* = §§pop();
                                                            §§push(_loc7_);
                                                            if(!_loc34_)
                                                            {
                                                               §§push(_loc12_.col2.x);
                                                               if(_loc35_ || param1)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(!_loc34_)
                                                                  {
                                                                     addr282:
                                                                     §§push(_loc8_);
                                                                     if(_loc35_ || b2Collision)
                                                                     {
                                                                        addr294:
                                                                        §§push(§§pop() + §§pop() * _loc12_.col2.y);
                                                                        if(_loc35_)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                     }
                                                                     §§goto(addr294);
                                                                  }
                                                                  var _loc16_:* = §§pop();
                                                                  var _loc18_:* = 0;
                                                                  §§push(-Number.MAX_VALUE);
                                                                  if(!(_loc34_ && param1))
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  var _loc19_:* = §§pop();
                                                                  var _loc20_:Number = param2.§?!X§ + param4.§?!X§;
                                                                  §§push(param2.§!!=§);
                                                                  if(_loc35_ || b2Collision)
                                                                  {
                                                                     §§push(int(§§pop()));
                                                                  }
                                                                  var _loc21_:* = §§pop();
                                                                  var _loc22_:Vector.<b2Vec2> = param2.§%!]§;
                                                                  var _loc23_:Vector.<b2Vec2> = param2.§+[§;
                                                                  var _loc24_:int = 0;
                                                                  loop0:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc24_);
                                                                     if(_loc35_ || b2Collision)
                                                                     {
                                                                        §§push(_loc21_);
                                                                        if(!(_loc34_ && param3))
                                                                        {
                                                                           if(§§pop() >= §§pop())
                                                                           {
                                                                              §§push(_loc18_);
                                                                              if(_loc35_ || param1)
                                                                              {
                                                                                 §§push(int(§§pop()));
                                                                                 break;
                                                                              }
                                                                              break;
                                                                           }
                                                                           _loc11_ = _loc22_[_loc24_];
                                                                           if(_loc35_ || param3)
                                                                           {
                                                                              §§push(_loc15_);
                                                                              if(!(_loc34_ && param2))
                                                                              {
                                                                                 §§push(_loc11_.x);
                                                                                 if(_loc35_)
                                                                                 {
                                                                                    §§push(§§pop() - §§pop());
                                                                                    if(!(_loc34_ && param1))
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                       if(!(_loc34_ && param1))
                                                                                       {
                                                                                          _loc7_ = §§pop();
                                                                                          if(_loc35_)
                                                                                          {
                                                                                             §§push(_loc16_);
                                                                                             if(_loc35_ || param1)
                                                                                             {
                                                                                                addr396:
                                                                                                §§push(§§pop() - _loc11_.y);
                                                                                                if(_loc34_)
                                                                                                {
                                                                                                }
                                                                                                addr400:
                                                                                                _loc8_ = §§pop();
                                                                                                §§push((_loc11_ = _loc23_[_loc24_]).x);
                                                                                                if(_loc35_ || param3)
                                                                                                {
                                                                                                   §§push(_loc7_);
                                                                                                   if(_loc35_)
                                                                                                   {
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      if(!(_loc34_ && b2Collision))
                                                                                                      {
                                                                                                         §§push(_loc11_.y);
                                                                                                         if(_loc35_ || b2Collision)
                                                                                                         {
                                                                                                            §§push(§§pop() * _loc8_);
                                                                                                            if(_loc35_ || param2)
                                                                                                            {
                                                                                                               addr444:
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               if(_loc35_ || param1)
                                                                                                               {
                                                                                                                  addr452:
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  if(!_loc34_)
                                                                                                                  {
                                                                                                                     §§push(§§pop());
                                                                                                                     if(!_loc34_)
                                                                                                                     {
                                                                                                                        addr458:
                                                                                                                        _loc31_ = §§pop();
                                                                                                                        if(_loc35_ || param3)
                                                                                                                        {
                                                                                                                           §§push(_loc20_);
                                                                                                                           if(_loc34_ && b2Collision)
                                                                                                                           {
                                                                                                                           }
                                                                                                                           addr527:
                                                                                                                           if(§§pop() > §§pop())
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc31_);
                                                                                                                                 if(!(_loc34_ && param1))
                                                                                                                                 {
                                                                                                                                    addr537:
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       _loc19_ = §§pop();
                                                                                                                                       addr538:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          addr511:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc24_);
                                                                                                                                             if(!_loc34_)
                                                                                                                                             {
                                                                                                                                                §§push(int(§§pop()));
                                                                                                                                             }
                                                                                                                                             _loc18_ = §§pop();
                                                                                                                                             addr517:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr537:
                                                                                                                                 }
                                                                                                                                 §§goto(addr537);
                                                                                                                                 addr502:
                                                                                                                                 if(!(_loc35_ || param2))
                                                                                                                                 {
                                                                                                                                    continue;
                                                                                                                                 }
                                                                                                                                 if(true)
                                                                                                                                 {
                                                                                                                                    continue loop0;
                                                                                                                                 }
                                                                                                                                 §§goto(addr511);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              _loc24_++;
                                                                                                                              if(_loc34_ && b2Collision)
                                                                                                                              {
                                                                                                                                 continue;
                                                                                                                              }
                                                                                                                              if(_loc35_ || b2Collision)
                                                                                                                              {
                                                                                                                                 §§goto(addr502);
                                                                                                                              }
                                                                                                                              §§goto(addr538);
                                                                                                                           }
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                        §§goto(addr537);
                                                                                                                     }
                                                                                                                     if(§§pop() > §§pop())
                                                                                                                     {
                                                                                                                        if(_loc35_)
                                                                                                                        {
                                                                                                                           return;
                                                                                                                        }
                                                                                                                        §§goto(addr538);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§push(_loc31_);
                                                                                                                        if(_loc35_ || param2)
                                                                                                                        {
                                                                                                                           §§push(_loc19_);
                                                                                                                        }
                                                                                                                        §§goto(addr537);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr537);
                                                                                                            }
                                                                                                            §§goto(addr527);
                                                                                                         }
                                                                                                         §§goto(addr458);
                                                                                                      }
                                                                                                      §§goto(addr537);
                                                                                                   }
                                                                                                   §§goto(addr444);
                                                                                                }
                                                                                                §§goto(addr452);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr400);
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                    §§goto(addr400);
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr396);
                                                                        }
                                                                        addr566:
                                                                        var _loc25_:* = §§pop();
                                                                        if(!_loc34_)
                                                                        {
                                                                           §§push(1);
                                                                           if(!(_loc34_ && b2Collision))
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              if(!(_loc34_ && b2Collision))
                                                                              {
                                                                                 if(§§pop() < _loc21_)
                                                                                 {
                                                                                    §§push(_loc25_);
                                                                                    if(!_loc34_)
                                                                                    {
                                                                                       addr593:
                                                                                       addr592:
                                                                                       addr591:
                                                                                       §§push(int(§§pop() + 1));
                                                                                       if(_loc35_ || param1)
                                                                                       {
                                                                                       }
                                                                                       addr606:
                                                                                       var _loc26_:* = §§pop();
                                                                                       var _loc27_:b2Vec2 = _loc22_[_loc25_];
                                                                                       var _loc28_:b2Vec2 = _loc22_[_loc26_];
                                                                                       if(_loc35_ || param3)
                                                                                       {
                                                                                          §§push(_loc19_);
                                                                                          if(!_loc34_)
                                                                                          {
                                                                                             if(§§pop() < Number.MIN_VALUE)
                                                                                             {
                                                                                                param1.§2V§ = 1;
                                                                                                loop38:
                                                                                                while(true)
                                                                                                {
                                                                                                   param1.§"_§ = b2Manifold.§>!r§;
                                                                                                   param1.§6O§.SetV(_loc23_[_loc18_]);
                                                                                                   loop39:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(param1.m_localPoint);
                                                                                                      loop40:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(0.5);
                                                                                                         loop41:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc27_.x);
                                                                                                            if(_loc35_)
                                                                                                            {
                                                                                                               §§push(_loc28_.x);
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  addr703:
                                                                                                                  §§push(_loc28_.y);
                                                                                                                  if(!(_loc34_ && param1))
                                                                                                                  {
                                                                                                                     addr714:
                                                                                                                     §§push(§§pop() * (§§pop() + §§pop()));
                                                                                                                     if(!_loc34_)
                                                                                                                     {
                                                                                                                        break loop41;
                                                                                                                     }
                                                                                                                     continue loop41;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            addr729:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               addr730:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§pop().x = §§pop();
                                                                                                                  if(!_loc34_)
                                                                                                                  {
                                                                                                                     continue loop40;
                                                                                                                  }
                                                                                                                  continue loop39;
                                                                                                               }
                                                                                                               §§goto(addr714);
                                                                                                            }
                                                                                                         }
                                                                                                         §§pop().y = §§pop();
                                                                                                         addr717:
                                                                                                         param1.§4!a§[0].m_localPoint.SetV(param4.§^!I§);
                                                                                                         continue loop38;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                addr757:
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§push(_loc15_);
                                                                                                if(!(_loc34_ && param1))
                                                                                                {
                                                                                                   §§push(_loc27_.x);
                                                                                                   if(_loc35_ || param3)
                                                                                                   {
                                                                                                      §§push(§§pop() - §§pop());
                                                                                                      if(!_loc34_)
                                                                                                      {
                                                                                                         §§push(_loc28_.x);
                                                                                                         if(_loc35_ || param1)
                                                                                                         {
                                                                                                            §§push(_loc27_.x);
                                                                                                            if(_loc35_ || param3)
                                                                                                            {
                                                                                                               §§push(§§pop() - §§pop());
                                                                                                               if(!(_loc34_ && b2Collision))
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(_loc35_)
                                                                                                                  {
                                                                                                                     addr807:
                                                                                                                     §§push(_loc16_);
                                                                                                                     if(_loc35_ || param2)
                                                                                                                     {
                                                                                                                        addr815:
                                                                                                                        §§push(_loc27_.y);
                                                                                                                        if(_loc35_ || param3)
                                                                                                                        {
                                                                                                                           addr850:
                                                                                                                           §§push(§§pop() - §§pop());
                                                                                                                           if(_loc35_)
                                                                                                                           {
                                                                                                                              §§push(_loc28_.y);
                                                                                                                              if(!(_loc34_ && param2))
                                                                                                                              {
                                                                                                                                 §§push(§§pop() - _loc27_.y);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           if(!_loc34_)
                                                                                                                           {
                                                                                                                              addr853:
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                           }
                                                                                                                           var _loc29_:* = §§pop();
                                                                                                                           §§push(_loc15_);
                                                                                                                           if(_loc35_)
                                                                                                                           {
                                                                                                                              §§push(_loc28_.x);
                                                                                                                              if(!_loc34_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                 if(_loc35_ || param3)
                                                                                                                                 {
                                                                                                                                    §§push(_loc27_.x);
                                                                                                                                    if(_loc35_ || b2Collision)
                                                                                                                                    {
                                                                                                                                       §§push(_loc28_.x);
                                                                                                                                       if(!(_loc34_ && param3))
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                          if(!(_loc34_ && b2Collision))
                                                                                                                                          {
                                                                                                                                             addr896:
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             if(!_loc34_)
                                                                                                                                             {
                                                                                                                                                addr899:
                                                                                                                                                §§push(_loc16_);
                                                                                                                                                if(!_loc34_)
                                                                                                                                                {
                                                                                                                                                   addr902:
                                                                                                                                                   §§push(_loc28_.y);
                                                                                                                                                   if(_loc35_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() - §§pop());
                                                                                                                                                      if(!_loc34_)
                                                                                                                                                      {
                                                                                                                                                         addr909:
                                                                                                                                                         §§push(_loc27_.y);
                                                                                                                                                         if(!(_loc34_ && param3))
                                                                                                                                                         {
                                                                                                                                                            addr921:
                                                                                                                                                            §§push(§§pop() * (§§pop() - _loc28_.y));
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr921);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr921);
                                                                                                                                                }
                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                if(_loc35_)
                                                                                                                                                {
                                                                                                                                                   addr925:
                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                }
                                                                                                                                                var _loc30_:* = §§pop();
                                                                                                                                                if(_loc35_ || param1)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc29_);
                                                                                                                                                   if(!_loc34_)
                                                                                                                                                   {
                                                                                                                                                      §§push(0);
                                                                                                                                                      loop7:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(§§pop() <= §§pop())
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc34_ && b2Collision))
                                                                                                                                                            {
                                                                                                                                                               addr1723:
                                                                                                                                                               §§push(_loc15_ - _loc27_.x);
                                                                                                                                                               §§push(_loc15_);
                                                                                                                                                               if(_loc35_ || param2)
                                                                                                                                                               {
                                                                                                                                                                  addr1713:
                                                                                                                                                                  §§push(§§pop() * (§§pop() - _loc27_.x));
                                                                                                                                                                  §§push(_loc16_ - _loc27_.y);
                                                                                                                                                               }
                                                                                                                                                               if(§§pop() + §§pop() * (_loc16_ - _loc27_.y) > _loc20_ * _loc20_)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr1729);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               addr1730:
                                                                                                                                                            }
                                                                                                                                                            param1.§2V§ = 1;
                                                                                                                                                            do
                                                                                                                                                            {
                                                                                                                                                               param1.§"_§ = b2Manifold.§>!r§;
                                                                                                                                                               §§push(param1.§6O§);
                                                                                                                                                               do
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc15_ - _loc27_.x);
                                                                                                                                                               }
                                                                                                                                                               while(_loc34_);
                                                                                                                                                               
                                                                                                                                                               §§pop().y = _loc16_ - _loc27_.y;
                                                                                                                                                               param1.§6O§.Normalize();
                                                                                                                                                            }
                                                                                                                                                            while(_loc34_);
                                                                                                                                                            
                                                                                                                                                            addr1636:
                                                                                                                                                            param1.m_localPoint.SetV(_loc27_);
                                                                                                                                                            param1.§4!a§[0].m_localPoint.SetV(param4.§^!I§);
                                                                                                                                                            param1.§4!a§[0].m_id.key = 0;
                                                                                                                                                            addr935:
                                                                                                                                                            return;
                                                                                                                                                            addr1638:
                                                                                                                                                            addr1622:
                                                                                                                                                            addr1632:
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc30_);
                                                                                                                                                            loop8:
                                                                                                                                                            while(§§pop() > 0)
                                                                                                                                                            {
                                                                                                                                                               §§push(0.5);
                                                                                                                                                               loop9:
                                                                                                                                                               for(; !(_loc34_ && param2); while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc34_ && b2Collision)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop9;
                                                                                                                                                                  }
                                                                                                                                                                  if(_loc35_)
                                                                                                                                                                  {
                                                                                                                                                                     _loc33_ = §§pop();
                                                                                                                                                                     §§goto(addr1332);
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr1723);
                                                                                                                                                                  }
                                                                                                                                                               },§§goto(addr1723))
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc27_.x);
                                                                                                                                                                  loop10:
                                                                                                                                                                  while(!(_loc34_ && param1))
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc34_ && param1))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc28_.x);
                                                                                                                                                                        loop11:
                                                                                                                                                                        while(_loc35_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                           loop12:
                                                                                                                                                                           while(!_loc34_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                              if(_loc35_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc34_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                    loop13:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       _loc32_ = §§pop();
                                                                                                                                                                                       loop14:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(0.5);
                                                                                                                                                                                          loop15:
                                                                                                                                                                                          for(; !(_loc34_ && param1); if(_loc34_ && param3)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue;
                                                                                                                                                                                          },§§push(§§pop() * _loc23_[_loc25_].x),if(_loc35_ || param3)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr1181);
                                                                                                                                                                                          },§§goto(addr1234))
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc34_)
                                                                                                                                                                                             {
                                                                                                                                                                                                break;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(_loc27_.y);
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc28_.y);
                                                                                                                                                                                                addr1310:
                                                                                                                                                                                                addr1592:
                                                                                                                                                                                                while(!(_loc34_ && param1))
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc35_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                         addr1321:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                                                                            continue loop9;
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr1320:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   else
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr1713);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                addr1592:
                                                                                                                                                                                                if(!(_loc34_ && param3))
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc34_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr1602:
                                                                                                                                                                                                      if(§§pop() <= §§pop() * §§pop())
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr1495:
                                                                                                                                                                                                         param1.§2V§ = 1;
                                                                                                                                                                                                         param1.§"_§ = b2Manifold.§>!r§;
                                                                                                                                                                                                         §§push(param1.§6O§);
                                                                                                                                                                                                         loop33:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc15_);
                                                                                                                                                                                                            if(!_loc34_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc34_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!(_loc34_ && param2))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc28_.x);
                                                                                                                                                                                                                     loop34:
                                                                                                                                                                                                                     for(; !_loc34_; §§push(_loc28_.y),if(_loc34_ && param3)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue;
                                                                                                                                                                                                                     },if(_loc35_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§goto(addr1452);
                                                                                                                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                                                                                                                     },§§goto(addr1655))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                                                                                                                        while(!(_loc34_ && param2))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§pop().x = §§pop();
                                                                                                                                                                                                                           if(!_loc34_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc34_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 break loop8;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§push(param1.§6O§);
                                                                                                                                                                                                                              if(!_loc35_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop33;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§push(_loc16_);
                                                                                                                                                                                                                              if(_loc35_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc35_ || b2Collision)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop34;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1655);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              else
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr1452:
                                                                                                                                                                                                                                 if(!_loc35_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§pop().y = §§pop();
                                                                                                                                                                                                                                 §§push(param1.§6O§);
                                                                                                                                                                                                                                 if(!_loc34_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc35_ || param2)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§pop().Normalize();
                                                                                                                                                                                                                                       addr1408:
                                                                                                                                                                                                                                       param1.m_localPoint.SetV(_loc28_);
                                                                                                                                                                                                                                       param1.§4!a§[0].m_localPoint.SetV(param4.§^!I§);
                                                                                                                                                                                                                                       addr1410:
                                                                                                                                                                                                                                       if(_loc34_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§goto(addr1410);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       param1.§4!a§[0].m_id.key = 0;
                                                                                                                                                                                                                                       addr1392:
                                                                                                                                                                                                                                       addr1424:
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§goto(addr1649);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr935);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1642);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           if(_loc35_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!(_loc34_ && param2))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 return;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1730);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1638);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§pop().x = §§pop();
                                                                                                                                                                                                                        §§goto(addr1649);
                                                                                                                                                                                                                        §§push(param1.§6O§);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1649);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1655);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1476);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr1499:
                                                                                                                                                                                                         addr1494:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1603);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1713);
                                                                                                                                                                                                }
                                                                                                                                                                                                addr1258:
                                                                                                                                                                                                §§goto(addr1723);
                                                                                                                                                                                                addr1258:
                                                                                                                                                                                                if(_loc34_ && param1)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue;
                                                                                                                                                                                                }
                                                                                                                                                                                                if(_loc34_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop10;
                                                                                                                                                                                                }
                                                                                                                                                                                                if(_loc35_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc35_ || param1)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(§§pop() <= §§pop())
                                                                                                                                                                                                      {
                                                                                                                                                                                                         loop22:
                                                                                                                                                                                                         do
                                                                                                                                                                                                         {
                                                                                                                                                                                                            param1.§2V§ = 1;
                                                                                                                                                                                                            loop23:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               param1.§"_§ = b2Manifold.§>!r§;
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!(_loc35_ || param3))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr1277:
                                                                                                                                                                                                                     if(!(_loc34_ && b2Collision))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc35_ || param2)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           return;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1665);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     break;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  if(_loc35_ || param3)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(param1.§6O§);
                                                                                                                                                                                                                     loop25:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc35_ || b2Collision)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§pop().x = _loc23_[_loc25_].x;
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!_loc34_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!(_loc34_ && param3))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!_loc34_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(param1.§6O§);
                                                                                                                                                                                                                                       loop27:
                                                                                                                                                                                                                                       for(; _loc35_ || b2Collision; §§push(param1.§6O§),if(_loc35_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop25;
                                                                                                                                                                                                                                       })
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§pop().y = _loc23_[_loc25_].y;
                                                                                                                                                                                                                                          while(!(_loc34_ && b2Collision))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc35_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop27;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1495);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1484);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1414);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1642);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue loop23;
                                                                                                                                                                                                                              addr956:
                                                                                                                                                                                                                              if(_loc34_ && param1)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              if(!(_loc35_ || param2))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop22;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr970:
                                                                                                                                                                                                                              if(_loc34_ && param2)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!(_loc35_ || param2))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop14;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    if(!_loc34_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc15_);
                                                                                                                                                                                                                                       if(!(_loc34_ && param2))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc34_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop9;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          if(!_loc34_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(_loc32_);
                                                                                                                                                                                                                                             if(!(_loc34_ && param2))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc35_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                   if(!_loc34_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop15;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr1519:
                                                                                                                                                                                                                                                   addr1181:
                                                                                                                                                                                                                                                   addr1181:
                                                                                                                                                                                                                                                   if(_loc35_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(_loc16_);
                                                                                                                                                                                                                                                      if(_loc35_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!_loc35_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue loop12;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         if(!(_loc34_ && b2Collision))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(_loc33_);
                                                                                                                                                                                                                                                            if(!_loc34_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!_loc35_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  continue loop11;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                               if(_loc35_ || param1)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(_loc35_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(§§pop() * _loc23_[_loc25_].y);
                                                                                                                                                                                                                                                                     if(_loc35_ || param2)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr1222:
                                                                                                                                                                                                                                                                        if(!_loc34_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc35_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                              if(_loc35_ || param1)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr1234:
                                                                                                                                                                                                                                                                                 if(_loc35_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                    if(_loc35_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(§§pop());
                                                                                                                                                                                                                                                                                       if(!(_loc34_ && param3))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr1247:
                                                                                                                                                                                                                                                                                          _loc19_ = §§pop();
                                                                                                                                                                                                                                                                                          addr1248:
                                                                                                                                                                                                                                                                                          if(_loc35_ || param1)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(!_loc35_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                continue loop13;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr1258);
                                                                                                                                                                                                                                                                                             §§push(_loc20_);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§goto(addr1321);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1258);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1248);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 addr1586:
                                                                                                                                                                                                                                                                                 if(!_loc34_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr1589:
                                                                                                                                                                                                                                                                                    §§push(_loc20_);
                                                                                                                                                                                                                                                                                    if(!_loc35_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       continue loop7;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1592);
                                                                                                                                                                                                                                                                                    §§push(_loc20_);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1723);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1248);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           addr1562:
                                                                                                                                                                                                                                                                           §§push(_loc16_);
                                                                                                                                                                                                                                                                           if(_loc35_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr1565:
                                                                                                                                                                                                                                                                              §§push(_loc28_.y);
                                                                                                                                                                                                                                                                              if(!(_loc34_ && param3))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                 if(!_loc34_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr1577:
                                                                                                                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                    if(_loc35_ || b2Collision)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§goto(addr1586);
                                                                                                                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1723);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1592);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1723);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1592);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§goto(addr1320);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1247);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1723);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1258);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§goto(addr1310);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1602);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1247);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§push(_loc15_);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                if(_loc35_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc28_.x);
                                                                                                                                                                                                                                                   if(!_loc34_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                      if(_loc35_ || param2)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc35_ || b2Collision)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                            break loop9;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1713);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1602);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1577);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1723);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1222);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1713);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1181);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1455);
                                                                                                                                                                                                                                    §§goto(addr970);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 continue loop10;
                                                                                                                                                                                                                                 addr1332:
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              if(!(_loc34_ && param3))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc35_ || param2)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§goto(addr935);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§goto(addr1671);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              else
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§goto(addr1499);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1655);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1494);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                        if(_loc34_ && param1)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§pop().Normalize();
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!_loc34_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(param1.m_localPoint);
                                                                                                                                                                                                                              if(!_loc34_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc34_ && param3)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    break;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§pop().Set(_loc32_,_loc33_);
                                                                                                                                                                                                                                 continue;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1408);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1392);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1636);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1428);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1410);
                                                                                                                                                                                                                  §§goto(addr1665);
                                                                                                                                                                                                                  if(_loc34_ && param3)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1015);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1642);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         while(_loc35_);
                                                                                                                                                                                                         
                                                                                                                                                                                                         addr1729:
                                                                                                                                                                                                         return;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1277);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1577);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1589);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          break loop10;
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    addr1382:
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1723);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1382);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1723);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1723);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1713);
                                                                                                                                                                  }
                                                                                                                                                                  if(!(_loc34_ && param1))
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr1519);
                                                                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1723);
                                                                                                                                                               }
                                                                                                                                                               §§push(_loc16_);
                                                                                                                                                               if(!_loc34_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc28_.y);
                                                                                                                                                                  if(!(_loc34_ && b2Collision))
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc35_ || b2Collision)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr1562);
                                                                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1723);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1565);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1602);
                                                                                                                                                            }
                                                                                                                                                            while(!_loc34_)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr1509);
                                                                                                                                                               §§push(_loc15_);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1632);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1664);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1723);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1636);
                                                                                                                                             }
                                                                                                                                             §§goto(addr925);
                                                                                                                                          }
                                                                                                                                          §§goto(addr902);
                                                                                                                                       }
                                                                                                                                       §§goto(addr921);
                                                                                                                                    }
                                                                                                                                    §§goto(addr909);
                                                                                                                                 }
                                                                                                                                 §§goto(addr899);
                                                                                                                              }
                                                                                                                              §§goto(addr896);
                                                                                                                           }
                                                                                                                           §§goto(addr899);
                                                                                                                        }
                                                                                                                        §§goto(addr850);
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                     }
                                                                                                                     §§goto(addr850);
                                                                                                                  }
                                                                                                                  §§goto(addr853);
                                                                                                               }
                                                                                                               §§goto(addr815);
                                                                                                            }
                                                                                                            §§goto(addr850);
                                                                                                         }
                                                                                                         §§goto(addr815);
                                                                                                      }
                                                                                                      §§goto(addr853);
                                                                                                   }
                                                                                                   §§goto(addr850);
                                                                                                }
                                                                                                §§goto(addr853);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr807);
                                                                                       }
                                                                                       §§goto(addr757);
                                                                                    }
                                                                                    addr605:
                                                                                    §§push(int(§§pop()));
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push(0);
                                                                                    if(!_loc34_)
                                                                                    {
                                                                                       §§goto(addr605);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr606);
                                                                              }
                                                                              §§goto(addr593);
                                                                           }
                                                                           §§goto(addr592);
                                                                        }
                                                                        §§goto(addr591);
                                                                     }
                                                                     break;
                                                                  }
                                                                  §§goto(addr566);
                                                                  §§push(§§pop());
                                                               }
                                                               §§goto(addr294);
                                                            }
                                                            §§goto(addr282);
                                                         }
                                                         §§goto(addr261);
                                                      }
                                                      §§goto(addr264);
                                                   }
                                                   §§goto(addr261);
                                                }
                                                §§goto(addr249);
                                             }
                                             _loc8_ = §§pop();
                                             §§goto(addr219);
                                          }
                                          §§goto(addr195);
                                       }
                                    }
                                    §§goto(addr209);
                                 }
                                 §§goto(addr217);
                              }
                              §§goto(addr195);
                           }
                           §§goto(addr156);
                        }
                        §§push(§§pop() + §§pop());
                     }
                     §§goto(addr147);
                  }
                  §§goto(addr156);
               }
               §§goto(addr92);
            }
            §§goto(addr82);
         }
         §§goto(addr104);
      }
      
      public static function §3!V§(param1:b2AABB, param2:b2AABB) : Boolean
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc3_:b2Vec2 = param2.§+!`§;
         var _loc4_:b2Vec2 = param1.§"W§;
         §§push(_loc3_.x);
         if(!_loc10_)
         {
            §§push(§§pop() - _loc4_.x);
            if(_loc9_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         §§push(_loc3_.y);
         if(_loc9_)
         {
            §§push(§§pop() - _loc4_.y);
            if(_loc9_ || b2Collision)
            {
               addr49:
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            _loc3_ = param1.§+!`§;
            _loc4_ = param2.§"W§;
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
                  if(!(_loc10_ && _loc3_))
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var _loc8_:* = §§pop();
               if(_loc9_)
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
                                 loop4:
                                 while(true)
                                 {
                                    §§pop();
                                    loop5:
                                    while(true)
                                    {
                                       §§push(_loc6_);
                                       while(_loc9_)
                                       {
                                          §§push(0);
                                          while(true)
                                          {
                                             §§push(§§pop() > §§pop());
                                          }
                                          loop12:
                                          for(; _loc9_ || param2; while(true)
                                          {
                                             §§push(_loc8_);
                                             if(!(_loc9_ || param2))
                                             {
                                                continue loop12;
                                             }
                                             §§push(0);
                                             if(!_loc10_)
                                             {
                                                if(_loc10_)
                                                {
                                                   break;
                                                }
                                                §§push(§§pop() > §§pop());
                                                if(_loc9_)
                                                {
                                                   if(!_loc10_)
                                                   {
                                                      §§goto(addr132);
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(_loc9_)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§goto(addr216);
                                                               }
                                                               addr215:
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr224);
                                                            }
                                                         }
                                                         §§goto(addr164);
                                                      }
                                                      addr212:
                                                   }
                                                   §§goto(addr216);
                                                }
                                                §§goto(addr146);
                                             }
                                             else
                                             {
                                                §§goto(addr174);
                                             }
                                             §§goto(addr136);
                                          },§§goto(addr210))
                                          {
                                             §§push(0);
                                             while(!(_loc10_ && param1))
                                             {
                                                §§push(§§pop() > §§pop());
                                                do
                                                {
                                                   §§push(§§pop());
                                                   if(_loc10_)
                                                   {
                                                      continue loop3;
                                                   }
                                                   if(§§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(_loc9_)
                                                            {
                                                               addr136:
                                                               if(_loc10_ && param1)
                                                               {
                                                                  continue loop12;
                                                               }
                                                               if(!_loc10_)
                                                               {
                                                                  §§push(false);
                                                                  break;
                                                               }
                                                               addr224:
                                                               while(true)
                                                               {
                                                                  addr164:
                                                                  while(true)
                                                                  {
                                                                     continue loop12;
                                                                  }
                                                               }
                                                            }
                                                            else if(!_loc9_)
                                                            {
                                                               continue loop5;
                                                            }
                                                         }
                                                         §§push(true);
                                                         if(!_loc9_)
                                                         {
                                                            break;
                                                         }
                                                         if(!_loc10_)
                                                         {
                                                            return §§pop();
                                                         }
                                                      }
                                                      continue;
                                                      addr132:
                                                   }
                                                   while(true)
                                                   {
                                                      if(_loc10_ && _loc3_)
                                                      {
                                                         while(!(_loc9_ || param2))
                                                         {
                                                            continue loop2;
                                                         }
                                                         return §§pop();
                                                      }
                                                      addr216:
                                                      §§pop();
                                                      continue loop12;
                                                      §§goto(addr98);
                                                   }
                                                }
                                                while(_loc10_ && param2);
                                                
                                                if(_loc9_ || b2Collision)
                                                {
                                                   return §§pop();
                                                }
                                                continue loop4;
                                             }
                                             continue loop1;
                                          }
                                       }
                                       continue loop0;
                                    }
                                 }
                              }
                              while(true)
                              {
                                 §§goto(addr212);
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr215);
            }
            §§goto(addr73);
         }
         §§goto(addr49);
      }
   }
}
