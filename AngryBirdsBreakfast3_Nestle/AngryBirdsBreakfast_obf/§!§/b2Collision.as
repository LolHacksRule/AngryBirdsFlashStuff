package §!§
{
   import §'!_§.*;
   import §=!!§.*;
   import §@!E§.*;
   
   use namespace b2internal;
   
   public class b2Collision
   {
      
      public static const b2_nullFeature:uint = 255;
      
      private static var §>" §:Vector.<§8!b§>;
      
      private static var s_clipPoints1:Vector.<§8!b§>;
      
      private static var s_clipPoints2:Vector.<§8!b§>;
      
      private static var §1J§:Vector.<int>;
      
      private static var §-'§:Vector.<int>;
      
      private static var §<q§:b2Vec2;
      
      private static var §3!P§:b2Vec2;
      
      private static var §'?§:b2Vec2;
      
      private static var §"!5§:b2Vec2;
      
      private static var §?!3§:b2Vec2;
      
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
               §>" § = §6" §();
               loop1:
               while(true)
               {
                  s_clipPoints1 = §6" §();
                  while(true)
                  {
                     s_clipPoints2 = §6" §();
                     while(true)
                     {
                        §1J§ = new Vector.<int>(1);
                        loop4:
                        while(!(_loc2_ && b2Collision))
                        {
                           if(!_loc1_)
                           {
                              continue loop1;
                           }
                           §-'§ = new Vector.<int>(1);
                           while(true)
                           {
                              §<q§ = new b2Vec2();
                              while(!_loc2_)
                              {
                                 §3!P§ = new b2Vec2();
                                 while(!(_loc2_ && _loc1_))
                                 {
                                    while(true)
                                    {
                                       §'?§ = new b2Vec2();
                                       while(true)
                                       {
                                          §"!5§ = new b2Vec2();
                                          addr109:
                                          while(!_loc2_)
                                          {
                                             continue loop0;
                                          }
                                       }
                                    }
                                    if(_loc1_ || _loc1_)
                                    {
                                       return;
                                    }
                                 }
                              }
                           }
                           while(true)
                           {
                              if(_loc1_ || _loc1_)
                              {
                                 continue;
                              }
                              continue loop4;
                           }
                        }
                     }
                     if(_loc2_ && b2Collision)
                     {
                        continue;
                     }
                     s_tangent2 = new b2Vec2();
                     §§goto(addr78);
                  }
               }
            }
         }
         §§goto(addr137);
      }
      
      public function b2Collision()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super();
         }
      }
      
      public static function §6!k§(param1:Vector.<§8!b§>, param2:Vector.<§8!b§>, param3:b2Vec2, param4:Number) : int
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc5_:§8!b§ = null;
         var _loc6_:int = 0;
         var _loc7_:b2Vec2 = null;
         var _loc9_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:b2Vec2 = null;
         var _loc13_:§8!b§ = null;
         if(!_loc14_)
         {
            _loc6_ = 0;
         }
         _loc7_ = (_loc5_ = param2[0]).v;
         var _loc8_:b2Vec2 = (_loc5_ = param2[1]).v;
         if(!_loc14_)
         {
            §§push(param3.x);
            if(_loc15_ || param3)
            {
               §§push(_loc7_.x);
               if(_loc15_ || param1)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc15_ || param2)
                  {
                     §§push(param3.y);
                     if(_loc15_)
                     {
                        §§push(_loc7_.y);
                        if(!_loc14_)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc15_ || param2)
                           {
                              addr101:
                              §§push(§§pop() + §§pop());
                              if(_loc15_ || param2)
                              {
                                 §§push(param4);
                                 if(_loc15_ || param2)
                                 {
                                    §§push(§§pop() - §§pop());
                                    if(_loc15_ || b2Collision)
                                    {
                                       addr125:
                                       §§push(Number(§§pop()));
                                       if(!_loc14_)
                                       {
                                          addr128:
                                          _loc9_ = §§pop();
                                          §§push(param3.x);
                                          if(_loc15_ || param1)
                                          {
                                             §§push(_loc8_.x);
                                             if(!_loc14_)
                                             {
                                                addr142:
                                                §§push(§§pop() * §§pop());
                                                if(_loc15_)
                                                {
                                                   addr145:
                                                   §§push(param3.y);
                                                   if(!_loc14_)
                                                   {
                                                      addr151:
                                                      §§push(§§pop() * _loc8_.y);
                                                      if(_loc15_)
                                                      {
                                                         addr154:
                                                         §§push(§§pop() + §§pop());
                                                         if(!_loc14_)
                                                         {
                                                            §§push(param4);
                                                         }
                                                         var _loc10_:Number = §§pop();
                                                         if(_loc15_ || param3)
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
                                                                        addr306:
                                                                        while(true)
                                                                        {
                                                                        }
                                                                     }
                                                                     addr296:
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
                                                                              if(_loc15_ || param1)
                                                                              {
                                                                                 param1[_loc6_++].Set(param2[1]);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 addr260:
                                                                                 if(_loc14_ && param1)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 addr267:
                                                                                 if(!_loc14_)
                                                                                 {
                                                                                    if(false)
                                                                                    {
                                                                                       continue loop3;
                                                                                    }
                                                                                    §§push(_loc12_ = (_loc5_ = param1[_loc6_]).v);
                                                                                    §§push(_loc7_.x);
                                                                                    if(_loc15_)
                                                                                    {
                                                                                       §§push(_loc11_);
                                                                                       if(!(_loc14_ && b2Collision))
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
                                                                                    if(_loc15_ || param2)
                                                                                    {
                                                                                       §§push(_loc12_);
                                                                                       §§push(_loc7_.y);
                                                                                       if(_loc15_ || param2)
                                                                                       {
                                                                                          §§push(_loc11_);
                                                                                          if(!_loc14_)
                                                                                          {
                                                                                             §§push(_loc8_.y);
                                                                                             if(_loc15_ || param1)
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
                                                                                    if(_loc15_ || b2Collision)
                                                                                    {
                                                                                       if(_loc9_ > 0)
                                                                                       {
                                                                                          §§goto(addr389);
                                                                                       }
                                                                                       _loc13_ = param2[1];
                                                                                       if(_loc15_ || b2Collision)
                                                                                       {
                                                                                          _loc5_.id = _loc13_.id;
                                                                                       }
                                                                                       §§goto(addr434);
                                                                                    }
                                                                                    §§goto(addr389);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr306);
                                                                                 }
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc9_);
                                                                              if(_loc15_ || param1)
                                                                              {
                                                                                 §§push(_loc10_);
                                                                                 if(!_loc14_)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(!(_loc14_ && b2Collision))
                                                                                    {
                                                                                       §§push(0);
                                                                                       if(!_loc14_)
                                                                                       {
                                                                                          §§goto(addr199);
                                                                                       }
                                                                                       §§goto(addr241);
                                                                                    }
                                                                                    §§goto(addr252);
                                                                                 }
                                                                                 addr199:
                                                                                 if(_loc15_ || b2Collision)
                                                                                 {
                                                                                    if(§§pop() < §§pop())
                                                                                    {
                                                                                       if(!(_loc14_ && param1))
                                                                                       {
                                                                                          if(!_loc14_)
                                                                                          {
                                                                                             §§push(_loc9_);
                                                                                             if(_loc15_ || b2Collision)
                                                                                             {
                                                                                                if(_loc14_)
                                                                                                {
                                                                                                   continue loop0;
                                                                                                }
                                                                                                §§push(_loc9_);
                                                                                                if(!_loc14_)
                                                                                                {
                                                                                                   addr241:
                                                                                                   §§push(§§pop() - _loc10_);
                                                                                                   if(_loc14_ && param1)
                                                                                                   {
                                                                                                      continue loop1;
                                                                                                   }
                                                                                                   §§push(§§pop() / §§pop());
                                                                                                   if(!_loc14_)
                                                                                                   {
                                                                                                      addr252:
                                                                                                      §§push(Number(§§pop()));
                                                                                                      if(!(_loc15_ || param2))
                                                                                                      {
                                                                                                         continue loop4;
                                                                                                      }
                                                                                                      _loc11_ = §§pop();
                                                                                                   }
                                                                                                   §§goto(addr252);
                                                                                                }
                                                                                                §§goto(addr241);
                                                                                             }
                                                                                             §§goto(addr252);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr296);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr260);
                                                                                    }
                                                                                    addr389:
                                                                                    _loc13_ = param2[0];
                                                                                 }
                                                                                 continue loop5;
                                                                                 if(_loc15_ || param2)
                                                                                 {
                                                                                    _loc5_.id = _loc13_.id;
                                                                                    if(_loc15_)
                                                                                    {
                                                                                       addr434:
                                                                                       _loc6_++;
                                                                                    }
                                                                                 }
                                                                                 return _loc6_;
                                                                              }
                                                                              §§goto(addr252);
                                                                           }
                                                                           §§goto(addr267);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr306);
                                                      }
                                                   }
                                                }
                                                §§goto(addr154);
                                             }
                                             §§push(§§pop() - §§pop());
                                             if(_loc14_ && param3)
                                             {
                                             }
                                          }
                                       }
                                       §§goto(addr154);
                                    }
                                    §§goto(addr128);
                                 }
                                 §§goto(addr142);
                              }
                              §§goto(addr125);
                           }
                           §§goto(addr154);
                        }
                        §§goto(addr151);
                     }
                     §§goto(addr142);
                  }
                  §§goto(addr145);
               }
               §§goto(addr101);
            }
            §§goto(addr125);
         }
         §§goto(addr128);
      }
      
      public static function §8d§(param1:b2PolygonShape, param2:b2Transform, param3:int, param4:b2PolygonShape, param5:b2Transform) : Number
      {
         var _loc26_:Boolean = true;
         var _loc27_:Boolean = false;
         var _loc11_:b2Mat22 = null;
         var _loc12_:b2Vec2 = null;
         var _loc25_:* = NaN;
         §§push(param1.§"![§);
         if(_loc26_ || param3)
         {
            §§push(int(§§pop()));
         }
         var _loc6_:* = §§pop();
         var _loc7_:Vector.<b2Vec2> = param1.§^v§;
         var _loc8_:Vector.<b2Vec2> = param1.§6"0§;
         §§push(param4.§"![§);
         if(_loc26_ || b2Collision)
         {
            §§push(int(§§pop()));
         }
         var _loc9_:* = §§pop();
         var _loc10_:Vector.<b2Vec2> = param4.§^v§;
         _loc11_ = param2.R;
         _loc12_ = _loc8_[param3];
         §§push(_loc11_.col1.x);
         if(_loc26_)
         {
            §§push(_loc12_.x);
            if(!_loc27_)
            {
               §§push(§§pop() * §§pop());
               if(!_loc27_)
               {
                  addr79:
                  §§push(_loc11_.col2.x);
                  if(!_loc27_)
                  {
                     addr84:
                     §§push(§§pop() * _loc12_.y);
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc26_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var _loc13_:* = §§pop();
               §§push(_loc11_.col1.y);
               if(_loc26_)
               {
                  §§push(_loc12_.x);
                  if(!_loc27_)
                  {
                     §§push(§§pop() * §§pop());
                     if(!(_loc27_ && param3))
                     {
                        §§push(_loc11_.col2.y);
                        if(_loc26_ || param1)
                        {
                           addr119:
                           §§push(§§pop() * _loc12_.y);
                        }
                        §§push(§§pop() + §§pop());
                        if(_loc26_)
                        {
                           addr125:
                           §§push(Number(§§pop()));
                        }
                        var _loc14_:* = §§pop();
                        §§push((_loc11_ = param5.R).col1.x);
                        if(_loc26_ || param1)
                        {
                           §§push(_loc13_);
                           if(_loc26_ || param3)
                           {
                              addr172:
                              §§push(§§pop() * §§pop());
                              if(_loc26_ || param3)
                              {
                                 §§push(_loc11_.col1.y);
                                 if(_loc26_ || b2Collision)
                                 {
                                    §§push(§§pop() * _loc14_);
                                 }
                              }
                              var _loc15_:Number = §§pop();
                              §§push(_loc11_.col2.x);
                              if(_loc26_)
                              {
                                 §§push(_loc13_);
                                 if(!_loc27_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(_loc26_)
                                    {
                                       addr185:
                                       §§push(_loc11_.col2.y);
                                       if(_loc26_ || param1)
                                       {
                                          addr197:
                                          §§push(§§pop() + §§pop() * _loc14_);
                                          if(_loc26_ || param1)
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                       }
                                       §§goto(addr197);
                                    }
                                    var _loc16_:* = §§pop();
                                    var _loc17_:* = 0;
                                    var _loc18_:* = Number(Number.MAX_VALUE);
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
                                             if(_loc26_)
                                             {
                                                §§push(_loc12_.y);
                                                if(_loc26_ || param1)
                                                {
                                                   §§push(§§pop() * _loc16_);
                                                   if(_loc26_)
                                                   {
                                                      addr245:
                                                      §§push(§§pop() + §§pop());
                                                      if(!(_loc27_ && param3))
                                                      {
                                                         §§push(Number(§§pop()));
                                                         if(_loc26_ || param3)
                                                         {
                                                            §§push(§§pop());
                                                            if(!_loc27_)
                                                            {
                                                               addr264:
                                                               _loc25_ = §§pop();
                                                               addr280:
                                                               if(!_loc27_)
                                                               {
                                                                  addr267:
                                                                  §§push(_loc18_);
                                                               }
                                                               _loc18_ = §§pop();
                                                               if(!(_loc27_ && param3))
                                                               {
                                                                  addr288:
                                                                  §§push(_loc19_);
                                                                  if(!_loc27_)
                                                                  {
                                                                     §§push(int(§§pop()));
                                                                  }
                                                                  _loc17_ = §§pop();
                                                                  if(_loc27_ && b2Collision)
                                                                  {
                                                                     continue;
                                                                  }
                                                               }
                                                               _loc19_++;
                                                               continue;
                                                            }
                                                            if(§§pop() < §§pop())
                                                            {
                                                               if(_loc26_ || param2)
                                                               {
                                                                  §§push(_loc25_);
                                                                  if(!_loc27_)
                                                                  {
                                                                     addr279:
                                                                     §§goto(addr280);
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  §§goto(addr280);
                                                               }
                                                               §§goto(addr288);
                                                            }
                                                         }
                                                         §§goto(addr280);
                                                      }
                                                      §§goto(addr267);
                                                   }
                                                   §§goto(addr264);
                                                }
                                                §§goto(addr245);
                                             }
                                             §§goto(addr279);
                                          }
                                          §§goto(addr245);
                                       }
                                       §§goto(addr267);
                                    }
                                    _loc12_ = _loc7_[param3];
                                    _loc11_ = param2.R;
                                    §§push(param2.position.x);
                                    if(_loc26_ || b2Collision)
                                    {
                                       §§push(_loc11_.col1.x);
                                       if(!_loc27_)
                                       {
                                          §§push(_loc12_.x);
                                          if(_loc26_ || param2)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(_loc26_ || b2Collision)
                                             {
                                                addr355:
                                                §§push(_loc11_.col2.x);
                                                if(!(_loc27_ && param2))
                                                {
                                                   addr368:
                                                   §§push(§§pop() + §§pop() * _loc12_.y);
                                                }
                                                §§goto(addr368);
                                             }
                                             §§push(§§pop() + §§pop());
                                             if(_loc26_ || param1)
                                             {
                                                addr377:
                                                §§push(Number(§§pop()));
                                             }
                                             var _loc20_:* = §§pop();
                                             §§push(param2.position.y);
                                             if(_loc26_)
                                             {
                                                §§push(_loc11_.col1.y);
                                                if(_loc26_ || param2)
                                                {
                                                   §§push(_loc12_.x);
                                                   if(!(_loc27_ && param1))
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(!_loc27_)
                                                      {
                                                         addr406:
                                                         §§push(_loc11_.col2.y);
                                                         if(_loc26_)
                                                         {
                                                            addr411:
                                                            §§push(§§pop() * _loc12_.y);
                                                         }
                                                         §§push(§§pop() + §§pop());
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc26_ || param1)
                                                      {
                                                         addr423:
                                                         §§push(Number(§§pop()));
                                                      }
                                                      var _loc21_:* = §§pop();
                                                      _loc12_ = _loc10_[_loc17_];
                                                      _loc11_ = param5.R;
                                                      §§push(param5.position.x);
                                                      if(!(_loc27_ && param1))
                                                      {
                                                         §§push(_loc11_.col1.x);
                                                         if(!(_loc27_ && b2Collision))
                                                         {
                                                            §§push(_loc12_.x);
                                                            if(!(_loc27_ && param2))
                                                            {
                                                               addr480:
                                                               §§push(§§pop() * §§pop());
                                                               if(!_loc27_)
                                                               {
                                                                  §§push(_loc11_.col2.x);
                                                                  if(_loc26_ || param3)
                                                                  {
                                                                     §§push(§§pop() * _loc12_.y);
                                                                  }
                                                               }
                                                               §§push(§§pop() + §§pop());
                                                               if(!_loc27_)
                                                               {
                                                                  addr484:
                                                                  var _loc22_:* = Number(§§pop());
                                                                  §§push(param5.position.y);
                                                                  if(!(_loc27_ && param1))
                                                                  {
                                                                     §§push(_loc11_.col1.y);
                                                                     if(_loc26_)
                                                                     {
                                                                        §§push(_loc12_.x);
                                                                        if(_loc26_ || b2Collision)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(_loc26_)
                                                                           {
                                                                              addr521:
                                                                              §§push(_loc11_.col2.y);
                                                                              if(_loc26_)
                                                                              {
                                                                                 addr517:
                                                                                 §§push(§§pop() * _loc12_.y);
                                                                              }
                                                                              §§push(§§pop() + (§§pop() + §§pop()));
                                                                              if(!_loc27_)
                                                                              {
                                                                                 addr524:
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                              var _loc23_:* = §§pop();
                                                                              if(!(_loc27_ && param1))
                                                                              {
                                                                                 §§push(_loc22_);
                                                                                 if(!(_loc27_ && b2Collision))
                                                                                 {
                                                                                    §§push(_loc20_);
                                                                                    if(!(_loc27_ && b2Collision))
                                                                                    {
                                                                                       §§push(§§pop() - §§pop());
                                                                                       if(_loc26_)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          if(_loc26_ || param2)
                                                                                          {
                                                                                             _loc22_ = §§pop();
                                                                                             if(_loc26_)
                                                                                             {
                                                                                                §§push(_loc23_);
                                                                                                if(_loc26_ || b2Collision)
                                                                                                {
                                                                                                }
                                                                                                §§goto(addr627);
                                                                                             }
                                                                                             addr586:
                                                                                             §§push(_loc22_);
                                                                                             if(!(_loc27_ && param3))
                                                                                             {
                                                                                                §§push(_loc13_);
                                                                                                if(_loc26_)
                                                                                                {
                                                                                                   addr597:
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(_loc26_)
                                                                                                   {
                                                                                                      addr600:
                                                                                                      §§push(_loc23_);
                                                                                                      if(!_loc27_)
                                                                                                      {
                                                                                                         §§push(§§pop() * _loc14_);
                                                                                                         if(!_loc26_)
                                                                                                         {
                                                                                                         }
                                                                                                         §§goto(addr627);
                                                                                                      }
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      if(!(_loc27_ && param2))
                                                                                                      {
                                                                                                         §§goto(addr627);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr627);
                                                                                             }
                                                                                             §§goto(addr600);
                                                                                          }
                                                                                          §§push(_loc21_);
                                                                                          if(_loc26_)
                                                                                          {
                                                                                             §§push(§§pop() - §§pop());
                                                                                             if(_loc26_ || b2Collision)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                if(!_loc27_)
                                                                                                {
                                                                                                   addr585:
                                                                                                   _loc23_ = §§pop();
                                                                                                   §§goto(addr586);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr600);
                                                                                          }
                                                                                          §§goto(addr627);
                                                                                       }
                                                                                       §§goto(addr585);
                                                                                    }
                                                                                    §§goto(addr597);
                                                                                 }
                                                                                 addr627:
                                                                                 return Number(§§pop());
                                                                              }
                                                                              §§goto(addr586);
                                                                           }
                                                                           §§goto(addr521);
                                                                        }
                                                                        §§goto(addr517);
                                                                     }
                                                                     §§goto(addr521);
                                                                  }
                                                                  §§goto(addr524);
                                                               }
                                                               §§goto(addr484);
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                         }
                                                         §§goto(addr480);
                                                      }
                                                      §§goto(addr484);
                                                   }
                                                   §§goto(addr411);
                                                }
                                                §§goto(addr406);
                                             }
                                             §§goto(addr423);
                                          }
                                          §§goto(addr368);
                                       }
                                       §§goto(addr355);
                                    }
                                    §§goto(addr377);
                                 }
                                 §§goto(addr197);
                              }
                              §§goto(addr185);
                           }
                           §§push(§§pop() + §§pop());
                           if(_loc27_)
                           {
                           }
                        }
                        §§goto(addr172);
                     }
                     §§goto(addr125);
                  }
                  §§goto(addr119);
               }
               §§goto(addr125);
            }
            §§goto(addr84);
         }
         §§goto(addr79);
      }
      
      public static function §#!i§(param1:Vector.<int>, param2:b2PolygonShape, param3:b2Transform, param4:b2PolygonShape, param5:b2Transform) : Number
      {
         var _loc26_:Boolean = false;
         var _loc27_:Boolean = true;
         var _loc8_:b2Vec2 = null;
         var _loc9_:b2Mat22 = null;
         var _loc22_:* = 0;
         var _loc23_:* = NaN;
         var _loc24_:* = 0;
         var _loc25_:* = NaN;
         §§push(param2.§"![§);
         if(!(_loc26_ && param1))
         {
            §§push(int(§§pop()));
         }
         var _loc6_:* = §§pop();
         var _loc7_:Vector.<b2Vec2> = param2.§6"0§;
         _loc9_ = param5.R;
         _loc8_ = param4.§,[§;
         §§push(param5.position.x);
         if(!_loc26_)
         {
            §§push(_loc9_.col1.x);
            if(_loc27_ || param2)
            {
               §§push(_loc8_.x);
               if(!(_loc26_ && param1))
               {
                  §§push(§§pop() * §§pop());
                  if(_loc27_ || param1)
                  {
                     addr100:
                     §§push(_loc9_.col2.x);
                     if(!(_loc26_ && param3))
                     {
                        addr96:
                        §§push(§§pop() * _loc8_.y);
                     }
                     §§push(§§pop() + (§§pop() + §§pop()));
                     if(!(_loc26_ && param3))
                     {
                        addr108:
                        §§push(Number(§§pop()));
                     }
                     var _loc10_:* = §§pop();
                     §§push(param5.position.y);
                     if(!_loc26_)
                     {
                        §§push(_loc9_.col1.y);
                        if(_loc27_)
                        {
                           §§push(_loc8_.x);
                           if(_loc27_ || b2Collision)
                           {
                              addr141:
                              §§push(§§pop() * §§pop());
                              if(!_loc26_)
                              {
                                 §§push(_loc9_.col2.y);
                                 if(_loc27_)
                                 {
                                    §§push(§§pop() * _loc8_.y);
                                 }
                              }
                              §§push(§§pop() + §§pop());
                              if(_loc27_ || b2Collision)
                              {
                                 addr150:
                                 var _loc11_:* = Number(§§pop());
                                 _loc9_ = param3.R;
                                 _loc8_ = param2.§,[§;
                                 if(!_loc26_)
                                 {
                                    §§push(_loc10_);
                                    if(_loc27_ || param2)
                                    {
                                       §§push(param3.position);
                                       if(_loc27_ || param3)
                                       {
                                          §§push(§§pop().x);
                                          if(_loc27_)
                                          {
                                             §§push(_loc9_.col1);
                                             if(_loc27_)
                                             {
                                                §§push(§§pop().x);
                                                if(!(_loc26_ && param2))
                                                {
                                                   §§push(_loc8_.x);
                                                   if(!(_loc26_ && param2))
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(!(_loc26_ && param3))
                                                      {
                                                         §§push(_loc9_.col2);
                                                         if(!_loc26_)
                                                         {
                                                            §§push(§§pop().x);
                                                            if(_loc27_ || param1)
                                                            {
                                                               addr222:
                                                               §§push(_loc8_.y);
                                                               if(!_loc26_)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(!(_loc26_ && b2Collision))
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     if(_loc27_ || b2Collision)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        if(_loc27_ || param3)
                                                                        {
                                                                           §§push(§§pop() - §§pop());
                                                                           if(_loc27_ || param1)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              if(!_loc26_)
                                                                              {
                                                                                 _loc10_ = §§pop();
                                                                                 if(_loc27_)
                                                                                 {
                                                                                    §§push(_loc11_);
                                                                                    if(_loc27_)
                                                                                    {
                                                                                       addr269:
                                                                                       §§push(param3.position.y);
                                                                                       if(!_loc26_)
                                                                                       {
                                                                                          §§push(_loc9_.col1);
                                                                                          if(!_loc26_)
                                                                                          {
                                                                                             addr276:
                                                                                             §§push(§§pop().y);
                                                                                             if(_loc27_)
                                                                                             {
                                                                                                addr279:
                                                                                                §§push(_loc8_.x);
                                                                                                if(!(_loc26_ && param2))
                                                                                                {
                                                                                                   addr307:
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(!(_loc26_ && b2Collision))
                                                                                                   {
                                                                                                      addr298:
                                                                                                      §§push(_loc9_.col2.y);
                                                                                                      if(_loc27_)
                                                                                                      {
                                                                                                         addr303:
                                                                                                         §§push(§§pop() * _loc8_.y);
                                                                                                      }
                                                                                                   }
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(!_loc26_)
                                                                                                   {
                                                                                                      §§push(§§pop() - §§pop());
                                                                                                      if(!_loc26_)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                         if(!_loc26_)
                                                                                                         {
                                                                                                            addr316:
                                                                                                            _loc11_ = §§pop();
                                                                                                            addr317:
                                                                                                            §§push(_loc10_);
                                                                                                            if(!(_loc26_ && b2Collision))
                                                                                                            {
                                                                                                               §§push(param3.R.col1.x);
                                                                                                               if(_loc27_)
                                                                                                               {
                                                                                                                  addr331:
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(_loc27_)
                                                                                                                  {
                                                                                                                     addr334:
                                                                                                                     §§push(_loc11_);
                                                                                                                     if(_loc26_ && b2Collision)
                                                                                                                     {
                                                                                                                     }
                                                                                                                     addr347:
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     if(_loc27_)
                                                                                                                     {
                                                                                                                        addr350:
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                     }
                                                                                                                     var _loc12_:* = §§pop();
                                                                                                                     §§push(_loc10_);
                                                                                                                     if(!_loc26_)
                                                                                                                     {
                                                                                                                        §§push(param3.R.col2.x);
                                                                                                                        if(_loc27_ || param1)
                                                                                                                        {
                                                                                                                           addr380:
                                                                                                                           addr381:
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           if(!_loc26_)
                                                                                                                           {
                                                                                                                              §§push(_loc11_);
                                                                                                                              if(!_loc26_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * param3.R.col2.y);
                                                                                                                              }
                                                                                                                           }
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
                                                                                                                                 if(!_loc26_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                    if(_loc27_ || param2)
                                                                                                                                    {
                                                                                                                                       §§push(_loc8_.y);
                                                                                                                                       if(!_loc26_)
                                                                                                                                       {
                                                                                                                                          addr419:
                                                                                                                                          §§push(§§pop() * _loc13_);
                                                                                                                                          if(_loc27_ || b2Collision)
                                                                                                                                          {
                                                                                                                                             addr428:
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                             if(!(_loc26_ && param3))
                                                                                                                                             {
                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                if(!_loc26_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop());
                                                                                                                                                   if(_loc27_ || param1)
                                                                                                                                                   {
                                                                                                                                                      _loc25_ = §§pop();
                                                                                                                                                      addr472:
                                                                                                                                                      addr473:
                                                                                                                                                      if(_loc27_ || param1)
                                                                                                                                                      {
                                                                                                                                                         addr455:
                                                                                                                                                         §§push(_loc15_);
                                                                                                                                                      }
                                                                                                                                                      _loc15_ = Number(§§pop());
                                                                                                                                                      if(_loc27_)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc16_);
                                                                                                                                                         if(!_loc26_)
                                                                                                                                                         {
                                                                                                                                                            §§push(int(§§pop()));
                                                                                                                                                         }
                                                                                                                                                         _loc14_ = §§pop();
                                                                                                                                                         if(_loc26_ && param2)
                                                                                                                                                         {
                                                                                                                                                            continue;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      _loc16_++;
                                                                                                                                                      continue;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr472);
                                                                                                                                             }
                                                                                                                                             §§goto(addr455);
                                                                                                                                          }
                                                                                                                                          if(§§pop() > §§pop())
                                                                                                                                          {
                                                                                                                                             if(!(_loc27_ || param2))
                                                                                                                                             {
                                                                                                                                                continue;
                                                                                                                                             }
                                                                                                                                             §§push(_loc25_);
                                                                                                                                             if(_loc27_ || param3)
                                                                                                                                             {
                                                                                                                                                §§goto(addr472);
                                                                                                                                             }
                                                                                                                                             §§goto(addr473);
                                                                                                                                          }
                                                                                                                                          §§goto(addr472);
                                                                                                                                       }
                                                                                                                                       §§goto(addr428);
                                                                                                                                    }
                                                                                                                                    §§goto(addr472);
                                                                                                                                 }
                                                                                                                                 §§goto(addr419);
                                                                                                                              }
                                                                                                                              §§goto(addr455);
                                                                                                                           }
                                                                                                                           §§push(§8d§(param2,param3,_loc14_,param4,param5));
                                                                                                                           if(_loc27_)
                                                                                                                           {
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                           }
                                                                                                                           var _loc17_:* = §§pop();
                                                                                                                           if(_loc27_)
                                                                                                                           {
                                                                                                                              §§push(_loc14_);
                                                                                                                              if(_loc27_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() - 1);
                                                                                                                                 if(!_loc26_)
                                                                                                                                 {
                                                                                                                                    if(§§pop() >= 0)
                                                                                                                                    {
                                                                                                                                       addr514:
                                                                                                                                       §§push(_loc14_);
                                                                                                                                       if(_loc27_ || param1)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() - 1);
                                                                                                                                          if(!(_loc26_ && param3))
                                                                                                                                          {
                                                                                                                                             addr540:
                                                                                                                                             §§push(int(§§pop()));
                                                                                                                                             if(!_loc26_)
                                                                                                                                             {
                                                                                                                                                addr557:
                                                                                                                                                var _loc18_:int = §§pop();
                                                                                                                                                §§push(§8d§(param2,param3,_loc18_,param4,param5));
                                                                                                                                                if(_loc27_)
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
                                                                                                                                                         if(!_loc26_)
                                                                                                                                                         {
                                                                                                                                                            if(§§pop() < _loc6_)
                                                                                                                                                            {
                                                                                                                                                               addr583:
                                                                                                                                                               §§push(_loc14_);
                                                                                                                                                               if(!_loc26_)
                                                                                                                                                               {
                                                                                                                                                                  addr588:
                                                                                                                                                                  addr587:
                                                                                                                                                                  §§push(int(§§pop() + 1));
                                                                                                                                                                  if(!(_loc26_ && param3))
                                                                                                                                                                  {
                                                                                                                                                                     addr596:
                                                                                                                                                                  }
                                                                                                                                                                  addr600:
                                                                                                                                                                  §§push(int(§§pop()));
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               §§push(0);
                                                                                                                                                               if(!_loc26_)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr600);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            var _loc20_:* = §§pop();
                                                                                                                                                            §§push(§8d§(param2,param3,_loc20_,param4,param5));
                                                                                                                                                            if(_loc27_)
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
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§pop();
                                                                                                                                                                              addr1073:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc19_);
                                                                                                                                                                                 addr1050:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc21_);
                                                                                                                                                                                    addr1051:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() > §§pop());
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           addr1072:
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
                                                                                                                                                                                          loop12:
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
                                                                                                                                                                                                   §§push(_loc20_);
                                                                                                                                                                                                   loop15:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(int(§§pop()));
                                                                                                                                                                                                      loop16:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         _loc22_ = §§pop();
                                                                                                                                                                                                         loop17:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc21_);
                                                                                                                                                                                                            loop18:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc27_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                                                                  loop19:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     _loc23_ = §§pop();
                                                                                                                                                                                                                     loop20:
                                                                                                                                                                                                                     while(!_loc26_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        loop21:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           loop22:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc24_);
                                                                                                                                                                                                                              if(!(_loc26_ && param2))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(-1);
                                                                                                                                                                                                                                 loop23:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(§§pop() != §§pop())
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc22_);
                                                                                                                                                                                                                                       loop24:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(1);
                                                                                                                                                                                                                                          if(!_loc26_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                             loop25:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!(_loc26_ && param1))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc6_);
                                                                                                                                                                                                                                                   if(!_loc26_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop() < §§pop());
                                                                                                                                                                                                                                                      if(!_loc27_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop9;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      if(_loc26_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop3;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      if(§§pop())
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc27_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!(_loc27_ || param1))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               break;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            if(!_loc27_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               continue loop12;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§push(_loc22_);
                                                                                                                                                                                                                                                            if(_loc27_ || b2Collision)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!_loc27_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  loop26:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     _loc14_ = §§pop();
                                                                                                                                                                                                                                                                     loop27:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        loop28:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(§8d§(param2,param3,_loc14_,param4,param5));
                                                                                                                                                                                                                                                                           if(!(_loc26_ && param1))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(_loc27_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc27_ || b2Collision)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                    loop29:
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(!_loc26_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(_loc26_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             continue loop18;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§push(§§pop());
                                                                                                                                                                                                                                                                                          if(_loc27_ || param2)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(!(_loc26_ && b2Collision))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                _loc17_ = §§pop();
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(!_loc26_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      continue loop10;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   addr965:
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(!_loc26_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(int(§§pop()));
                                                                                                                                                                                                                                                                                                         if(_loc26_ && param1)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            continue loop26;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            continue loop26;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§goto(addr1050);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   addr627:
                                                                                                                                                                                                                                                                                                   if(!(_loc26_ && b2Collision))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      continue loop29;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                continue loop10;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             continue loop2;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          addr737:
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(_loc26_ && param1)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                continue loop11;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             if(!(_loc26_ && param3))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(§§pop() > §§pop())
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(_loc27_ || param3)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(!(_loc26_ && b2Collision))
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(!(_loc26_ && b2Collision))
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(_loc14_);
                                                                                                                                                                                                                                                                                                            if(_loc27_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(_loc27_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(!_loc27_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     addr884:
                                                                                                                                                                                                                                                                                                                     while(!(_loc26_ && param2))
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(int(§§pop()));
                                                                                                                                                                                                                                                                                                                           addr892:
                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              _loc14_ = §§pop();
                                                                                                                                                                                                                                                                                                                              addr893:
                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(_loc27_ || b2Collision)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    if(_loc26_ && b2Collision)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       break;
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    continue loop28;
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 addr921:
                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(_loc22_);
                                                                                                                                                                                                                                                                                                                                    if(_loc27_ || param3)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§push(§§pop() - 1);
                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§push(0);
                                                                                                                                                                                                                                                                                                                                          addr931:
                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§push(§§pop() >= §§pop());
                                                                                                                                                                                                                                                                                                                                             continue loop9;
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       addr930:
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§goto(addr975);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     continue loop16;
                                                                                                                                                                                                                                                                                                                     addr884:
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  if(!_loc27_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     continue loop24;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  if(_loc26_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     continue loop26;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  if(_loc26_ && param2)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     continue loop13;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  if(!(_loc26_ && param2))
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     addr799:
                                                                                                                                                                                                                                                                                                                     §§push(int(§§pop()));
                                                                                                                                                                                                                                                                                                                     if(_loc26_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        break loop27;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     _loc22_ = §§pop();
                                                                                                                                                                                                                                                                                                                     addr802:
                                                                                                                                                                                                                                                                                                                     if(_loc27_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(_loc27_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           addr680:
                                                                                                                                                                                                                                                                                                                           _loc23_ = Number(_loc17_);
                                                                                                                                                                                                                                                                                                                           addr679:
                                                                                                                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        continue loop20;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     continue loop27;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     _loc22_ = §§pop();
                                                                                                                                                                                                                                                                                                                     addr1047:
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(_loc19_);
                                                                                                                                                                                                                                                                                                                        addr1026:
                                                                                                                                                                                                                                                                                                                        loop56:
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                           addr1027:
                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              _loc23_ = §§pop();
                                                                                                                                                                                                                                                                                                                              continue loop56;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  addr1046:
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(_loc27_ || param2)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        continue loop21;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr1047);
                                                                                                                                                                                                                                                                                                                     §§goto(addr1027);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr892);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr799);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            loop39:
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(_loc26_ && param3)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  continue loop14;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               if(_loc27_ || param1)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(_loc22_);
                                                                                                                                                                                                                                                                                                                  if(!(_loc27_ || param1))
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     continue loop26;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr965);
                                                                                                                                                                                                                                                                                                                  §§push(§§pop() - 1);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     break loop39;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  addr1054:
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            loop51:
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               _loc24_ = §§pop();
                                                                                                                                                                                                                                                                                                               addr1066:
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(_loc18_);
                                                                                                                                                                                                                                                                                                                  continue loop51;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            addr942:
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr1046);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr893);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   param1[0] = _loc22_;
                                                                                                                                                                                                                                                                                                   if(_loc26_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      break;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   if(_loc27_ || param2)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(!(_loc27_ || b2Collision))
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(_loc17_);
                                                                                                                                                                                                                                                                                                         break loop28;
                                                                                                                                                                                                                                                                                                         addr1000:
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      if(!_loc27_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         continue loop17;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      if(!_loc26_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(_loc23_);
                                                                                                                                                                                                                                                                                                         if(!_loc26_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(_loc27_ || param3)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§goto(addr627);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§goto(addr679);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr680);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§goto(addr1066);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§goto(addr802);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr680);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr802);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          continue loop22;
                                                                                                                                                                                                                                                                                          §§goto(addr1051);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(!_loc27_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                break loop29;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             continue loop1;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          addr863:
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    continue loop19;
                                                                                                                                                                                                                                                                                    addr707:
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              continue loop25;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr707);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        return §§pop();
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     continue loop15;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  continue loop19;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               if(!(_loc26_ && b2Collision))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(1);
                                                                                                                                                                                                                                                                  while(!_loc26_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  continue loop23;
                                                                                                                                                                                                                                                                  addr860:
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr977:
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§§pop() - 1);
                                                                                                                                                                                                                                                                  continue loop19;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr863);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr884);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr893);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(0);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr884);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr931);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr930);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop21;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr992:
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr860);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr921);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr977);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1073);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1027);
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
                                                                                                                                                                                          param1[0] = _loc14_;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1000);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1054);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr992);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr588);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr587);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr596);
                                                                                                                                                }
                                                                                                                                                §§goto(addr583);
                                                                                                                                                addr543:
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                addr547:
                                                                                                                                                §§push(§§pop() - 1);
                                                                                                                                             }
                                                                                                                                             §§goto(addr557);
                                                                                                                                          }
                                                                                                                                          §§push(int(§§pop()));
                                                                                                                                          if(_loc27_ || b2Collision)
                                                                                                                                          {
                                                                                                                                          }
                                                                                                                                          §§goto(addr557);
                                                                                                                                       }
                                                                                                                                       §§goto(addr543);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§push(_loc6_);
                                                                                                                                       if(_loc27_)
                                                                                                                                       {
                                                                                                                                          §§goto(addr547);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr557);
                                                                                                                                 }
                                                                                                                                 §§goto(addr540);
                                                                                                                              }
                                                                                                                              §§goto(addr557);
                                                                                                                           }
                                                                                                                           §§goto(addr514);
                                                                                                                        }
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                        if(!_loc26_)
                                                                                                                        {
                                                                                                                           §§goto(addr380);
                                                                                                                        }
                                                                                                                        §§goto(addr381);
                                                                                                                     }
                                                                                                                     §§goto(addr380);
                                                                                                                  }
                                                                                                                  §§goto(addr350);
                                                                                                               }
                                                                                                               addr346:
                                                                                                               §§goto(addr347);
                                                                                                               §§push(§§pop() * param3.R.col1.y);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr350);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr334);
                                                                                                }
                                                                                                §§push(§§pop() + §§pop());
                                                                                                if(_loc26_)
                                                                                                {
                                                                                                }
                                                                                                §§goto(addr346);
                                                                                             }
                                                                                             §§goto(addr307);
                                                                                          }
                                                                                          §§goto(addr346);
                                                                                       }
                                                                                       §§goto(addr331);
                                                                                    }
                                                                                    §§goto(addr350);
                                                                                 }
                                                                                 §§goto(addr317);
                                                                              }
                                                                           }
                                                                           §§goto(addr316);
                                                                        }
                                                                        §§goto(addr334);
                                                                     }
                                                                     §§goto(addr346);
                                                                  }
                                                                  §§goto(addr307);
                                                               }
                                                               §§goto(addr303);
                                                            }
                                                            §§goto(addr307);
                                                         }
                                                         §§goto(addr298);
                                                      }
                                                      §§goto(addr279);
                                                   }
                                                   §§goto(addr222);
                                                }
                                                §§goto(addr279);
                                             }
                                             §§goto(addr276);
                                          }
                                          §§goto(addr334);
                                       }
                                       §§goto(addr269);
                                    }
                                 }
                                 §§goto(addr316);
                              }
                              §§goto(addr150);
                           }
                           §§push(§§pop() + §§pop());
                        }
                        §§goto(addr141);
                     }
                     §§goto(addr150);
                  }
                  §§goto(addr100);
               }
               §§goto(addr96);
            }
            §§goto(addr100);
         }
         §§goto(addr108);
      }
      
      public static function §<"!§(param1:Vector.<§8!b§>, param2:b2PolygonShape, param3:b2Transform, param4:int, param5:b2PolygonShape, param6:b2Transform) : void
      {
         var _loc24_:Boolean = true;
         var _loc25_:Boolean = false;
         var _loc12_:b2Mat22 = null;
         var _loc13_:b2Vec2 = null;
         var _loc20_:§8!b§ = null;
         var _loc23_:* = NaN;
         §§push(param2.§"![§);
         if(!(_loc25_ && param1))
         {
            §§push(int(§§pop()));
         }
         var _loc7_:* = §§pop();
         var _loc8_:Vector.<b2Vec2> = param2.§6"0§;
         §§push(param5.§"![§);
         if(!_loc25_)
         {
            §§push(int(§§pop()));
         }
         var _loc9_:* = §§pop();
         var _loc10_:Vector.<b2Vec2> = param5.§^v§;
         var _loc11_:Vector.<b2Vec2> = param5.§6"0§;
         _loc12_ = param3.R;
         _loc13_ = _loc8_[param4];
         §§push(_loc12_.col1.x);
         if(!_loc25_)
         {
            §§push(_loc13_.x);
            if(_loc24_ || param3)
            {
               §§push(§§pop() * §§pop());
               if(_loc24_)
               {
                  §§push(_loc12_.col2.x);
                  if(!(_loc25_ && param3))
                  {
                     addr92:
                     §§push(§§pop() * _loc13_.y);
                  }
                  §§push(§§pop() + §§pop());
                  if(!_loc25_)
                  {
                     addr98:
                     §§push(Number(§§pop()));
                  }
               }
               var _loc14_:* = §§pop();
               §§push(_loc12_.col1.y);
               if(!(_loc25_ && b2Collision))
               {
                  §§push(_loc13_.x);
                  if(_loc24_)
                  {
                     §§push(§§pop() * §§pop());
                     if(!_loc25_)
                     {
                        addr117:
                        §§push(_loc12_.col2.y);
                        if(!_loc25_)
                        {
                           addr125:
                           §§push(§§pop() + §§pop() * _loc13_.y);
                           if(_loc24_)
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                        §§goto(addr125);
                     }
                     var _loc15_:* = §§pop();
                     §§push((_loc12_ = param6.R).col1.x);
                     if(_loc24_)
                     {
                        §§push(_loc14_);
                        if(!(_loc25_ && param1))
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc24_ || b2Collision)
                           {
                              addr155:
                              §§push(_loc12_.col1.y);
                              if(!_loc25_)
                              {
                                 addr160:
                                 §§push(§§pop() * _loc15_);
                              }
                              §§push(§§pop() + §§pop());
                              if(!_loc25_)
                              {
                                 addr165:
                                 §§push(Number(§§pop()));
                              }
                              var _loc16_:* = §§pop();
                              if(_loc24_)
                              {
                                 §§push(_loc12_.col2.x);
                                 if(_loc24_ || param1)
                                 {
                                    §§push(_loc14_);
                                    if(_loc24_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(!_loc25_)
                                       {
                                          §§push(_loc12_.col2.y);
                                          if(!(_loc25_ && b2Collision))
                                          {
                                             addr197:
                                             §§push(§§pop() + §§pop() * _loc15_);
                                             if(_loc24_ || param3)
                                             {
                                             }
                                             addr225:
                                             _loc14_ = Number(§§pop());
                                             addr226:
                                             var _loc17_:* = 0;
                                             var _loc18_:* = Number(Number.MAX_VALUE);
                                             var _loc19_:int = 0;
                                             while(true)
                                             {
                                                §§push(_loc19_);
                                                if(_loc24_ || param1)
                                                {
                                                   §§push(_loc9_);
                                                   if(_loc24_ || b2Collision)
                                                   {
                                                      if(§§pop() >= §§pop())
                                                      {
                                                         §§push(_loc17_);
                                                         if(!_loc25_)
                                                         {
                                                            §§push(int(§§pop()));
                                                            break;
                                                         }
                                                         break;
                                                      }
                                                      _loc13_ = _loc11_[_loc19_];
                                                      if(!_loc25_)
                                                      {
                                                         §§push(_loc14_);
                                                         if(!_loc25_)
                                                         {
                                                            §§push(_loc13_.x);
                                                            if(_loc24_ || param2)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(_loc24_)
                                                               {
                                                                  §§push(_loc15_);
                                                                  if(_loc24_ || param3)
                                                                  {
                                                                     addr294:
                                                                     §§push(§§pop() * _loc13_.y);
                                                                     if(_loc24_)
                                                                     {
                                                                        addr299:
                                                                        §§push(§§pop() + §§pop());
                                                                        if(!_loc25_)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           if(_loc24_)
                                                                           {
                                                                              addr305:
                                                                              §§push(§§pop());
                                                                              if(_loc24_)
                                                                              {
                                                                                 _loc23_ = §§pop();
                                                                                 if(_loc24_ || param3)
                                                                                 {
                                                                                    addr317:
                                                                                    if(§§pop() < _loc18_)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc23_);
                                                                                          if(!_loc25_)
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                             }
                                                                                             addr321:
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             _loc18_ = §§pop();
                                                                                             addr323:
                                                                                             loop7:
                                                                                             while(true)
                                                                                             {
                                                                                                addr257:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc19_);
                                                                                                   if(!(_loc25_ && param1))
                                                                                                   {
                                                                                                      §§push(int(§§pop()));
                                                                                                   }
                                                                                                   _loc17_ = §§pop();
                                                                                                   addr268:
                                                                                                   addr270:
                                                                                                   while(!_loc24_)
                                                                                                   {
                                                                                                      continue loop7;
                                                                                                   }
                                                                                                   continue loop7;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       addr318:
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       _loc19_++;
                                                                                       if(_loc24_)
                                                                                       {
                                                                                          if(!(_loc25_ && b2Collision))
                                                                                          {
                                                                                             if(true)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             §§goto(addr257);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr318);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr268);
                                                                                       §§goto(addr270);
                                                                                    }
                                                                                    continue;
                                                                                 }
                                                                              }
                                                                              §§goto(addr317);
                                                                           }
                                                                        }
                                                                        §§goto(addr321);
                                                                     }
                                                                     §§goto(addr317);
                                                                  }
                                                                  §§goto(addr299);
                                                               }
                                                               §§goto(addr305);
                                                            }
                                                            §§goto(addr294);
                                                         }
                                                         §§goto(addr317);
                                                      }
                                                      §§goto(addr323);
                                                   }
                                                   addr346:
                                                   var _loc21_:* = §§pop();
                                                   if(!_loc25_)
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
                                                               if(_loc24_ || param2)
                                                               {
                                                                  addr368:
                                                                  §§push(int(§§pop() + 1));
                                                                  if(_loc24_ || b2Collision)
                                                                  {
                                                                  }
                                                               }
                                                               addr380:
                                                               §§push(int(§§pop()));
                                                            }
                                                            else
                                                            {
                                                               §§push(0);
                                                               if(!_loc25_)
                                                               {
                                                                  §§goto(addr380);
                                                               }
                                                            }
                                                            var _loc22_:* = §§pop();
                                                            _loc20_ = param1[0];
                                                            _loc13_ = _loc10_[_loc21_];
                                                            _loc12_ = param6.R;
                                                            if(_loc24_ || param2)
                                                            {
                                                               §§push(_loc20_.v);
                                                               loop8:
                                                               while(true)
                                                               {
                                                                  §§push(param6.position);
                                                                  addr569:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().x);
                                                                     if(_loc24_)
                                                                     {
                                                                        §§push(_loc12_.col1);
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop().x);
                                                                           addr575:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc13_.x);
                                                                              if(!(_loc25_ && param2))
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc12_.col2);
                                                                                    addr587:
                                                                                    addr551:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().x);
                                                                                    }
                                                                                    addr551:
                                                                                    if(_loc25_ && param2)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(!_loc25_)
                                                                                    {
                                                                                       §§pop().y = §§pop();
                                                                                       loop20:
                                                                                       while(_loc24_)
                                                                                       {
                                                                                          §§push(_loc20_.id);
                                                                                          loop21:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop().§;!m§);
                                                                                             loop22:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(param4);
                                                                                                loop23:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop().§]u§ = §§pop();
                                                                                                   loop24:
                                                                                                   while(!_loc25_)
                                                                                                   {
                                                                                                      loop25:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc20_.id);
                                                                                                         loop26:
                                                                                                         while(_loc24_)
                                                                                                         {
                                                                                                            §§push(§§pop().§;!m§);
                                                                                                            loop27:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc21_);
                                                                                                               loop28:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§pop().§@!q§ = §§pop();
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc24_ || param1)
                                                                                                                     {
                                                                                                                        §§push(_loc20_.id);
                                                                                                                        if(!(_loc25_ && param1))
                                                                                                                        {
                                                                                                                           §§push(§§pop().§;!m§);
                                                                                                                           if(!_loc25_)
                                                                                                                           {
                                                                                                                              if(!(_loc25_ && b2Collision))
                                                                                                                              {
                                                                                                                                 §§push(0);
                                                                                                                                 if(!_loc25_)
                                                                                                                                 {
                                                                                                                                    if(!_loc25_)
                                                                                                                                    {
                                                                                                                                       §§pop().§]"0§ = §§pop();
                                                                                                                                       if(_loc24_ || param2)
                                                                                                                                       {
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       continue;
                                                                                                                                    }
                                                                                                                                    continue loop23;
                                                                                                                                 }
                                                                                                                                 continue loop28;
                                                                                                                              }
                                                                                                                              continue loop22;
                                                                                                                           }
                                                                                                                           continue loop27;
                                                                                                                        }
                                                                                                                        continue loop26;
                                                                                                                     }
                                                                                                                     continue loop24;
                                                                                                                  }
                                                                                                                  addr447:
                                                                                                                  while(false)
                                                                                                                  {
                                                                                                                     continue loop25;
                                                                                                                  }
                                                                                                                  _loc20_ = param1[1];
                                                                                                                  _loc13_ = _loc10_[_loc22_];
                                                                                                                  _loc12_ = param6.R;
                                                                                                                  if(_loc24_ || param3)
                                                                                                                  {
                                                                                                                     §§push(_loc20_.v);
                                                                                                                     loop31:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(param6.position);
                                                                                                                        addr791:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop().x);
                                                                                                                           if(_loc24_)
                                                                                                                           {
                                                                                                                              §§push(_loc12_.col1);
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop().x);
                                                                                                                                 addr797:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc13_.x);
                                                                                                                                    if(_loc24_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       if(_loc24_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc12_.col2);
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop().x);
                                                                                                                                             if(_loc24_)
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc13_.y);
                                                                                                                                                   addr821:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                addr819:
                                                                                                                                             }
                                                                                                                                             addr822:
                                                                                                                                             addr759:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                             }
                                                                                                                                             §§push(_loc12_.col2);
                                                                                                                                             if(_loc25_ && param3)
                                                                                                                                             {
                                                                                                                                                continue;
                                                                                                                                             }
                                                                                                                                             §§push(§§pop().y);
                                                                                                                                             if(!_loc25_)
                                                                                                                                             {
                                                                                                                                                addr771:
                                                                                                                                                §§push(_loc13_.y);
                                                                                                                                                if(!(_loc25_ && param1))
                                                                                                                                                {
                                                                                                                                                   addr781:
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                   if(_loc24_)
                                                                                                                                                   {
                                                                                                                                                      addr785:
                                                                                                                                                      §§pop().y = §§pop() + (§§pop() + §§pop());
                                                                                                                                                      addr784:
                                                                                                                                                      loop42:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc20_.id);
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop().§;!m§);
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(param4);
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§pop().§]u§ = §§pop();
                                                                                                                                                                  loop46:
                                                                                                                                                                  while(!(_loc25_ && b2Collision))
                                                                                                                                                                  {
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc20_.id);
                                                                                                                                                                        loop48:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop().§;!m§);
                                                                                                                                                                           addr666:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc22_);
                                                                                                                                                                              addr667:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§pop().§@!q§ = §§pop();
                                                                                                                                                                                 addr668:
                                                                                                                                                                                 while(!(_loc25_ && param3))
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc24_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop48;
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop42;
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop46;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  continue loop31;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§goto(addr821);
                                                                                                                                                }
                                                                                                                                                §§goto(addr822);
                                                                                                                                             }
                                                                                                                                             §§goto(addr781);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                          addr824:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§pop().x = §§pop();
                                                                                                                                             continue loop31;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr823:
                                                                                                                                    }
                                                                                                                                    §§goto(addr819);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr796:
                                                                                                                           }
                                                                                                                           §§goto(addr824);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr691);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         continue loop21;
                                                                                                      }
                                                                                                   }
                                                                                                   continue loop20;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       continue loop8;
                                                                                    }
                                                                                    addr593:
                                                                                    addr593:
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop().x = §§pop();
                                                                                       continue loop8;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              addr588:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc13_.y);
                                                                                 addr590:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    addr591:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() + §§pop());
                                                                                       addr592:
                                                                                       while(true)
                                                                                       {
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        addr574:
                                                                     }
                                                                     §§goto(addr593);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr447);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr368);
                                                }
                                                break;
                                             }
                                             §§goto(addr346);
                                             §§push(§§pop());
                                             addr224:
                                          }
                                          §§goto(addr197);
                                       }
                                       §§push(Number(§§pop()));
                                       if(!_loc25_)
                                       {
                                          _loc15_ = §§pop();
                                          if(!(_loc25_ && param2))
                                          {
                                             §§push(_loc16_);
                                             if(_loc24_ || param1)
                                             {
                                                §§goto(addr224);
                                             }
                                             §§goto(addr225);
                                          }
                                          §§goto(addr226);
                                       }
                                    }
                                 }
                              }
                              §§goto(addr197);
                           }
                           §§goto(addr165);
                        }
                        §§goto(addr160);
                     }
                     §§goto(addr155);
                  }
                  §§goto(addr125);
               }
               §§goto(addr117);
            }
            §§goto(addr92);
         }
         §§goto(addr98);
      }
      
      private static function §6" §() : Vector.<§8!b§>
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Vector.<§8!b§> = new Vector.<§8!b§>(2);
         if(!_loc3_)
         {
            _loc1_[0] = new §8!b§();
         }
         do
         {
            _loc1_[1] = new §8!b§();
         }
         while(!(_loc2_ || _loc1_));
         
         return _loc1_;
      }
      
      public static function §6!u§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2PolygonShape, param5:b2Transform) : void
      {
         var _loc46_:Boolean = false;
         var _loc47_:Boolean = true;
         var _loc6_:§8!b§ = null;
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
         if(!_loc46_)
         {
            param1.§4!5§ = 0;
         }
         var _loc7_:Number = param2.§>!M§ + param4.§>!M§;
         var _loc8_:* = 0;
         if(!(_loc46_ && param2))
         {
            §1J§[0] = _loc8_;
         }
         §§push(§#!i§(§1J§,param2,param3,param4,param5));
         if(!(_loc46_ && param2))
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         if(_loc47_)
         {
            §§push(int(§1J§[0]));
            if(!(_loc46_ && param3))
            {
               _loc8_ = §§pop();
               if(_loc47_)
               {
                  if(_loc9_ > _loc7_)
                  {
                     if(_loc47_ || param3)
                     {
                        return;
                     }
                     addr122:
                     §§push(0);
                  }
               }
               §§goto(addr122);
            }
            var _loc10_:* = §§pop();
            if(!(_loc46_ && b2Collision))
            {
               §-'§[0] = _loc10_;
            }
            §§push(§#!i§(§-'§,param4,param5,param2,param3));
            if(_loc47_ || param3)
            {
               §§push(Number(§§pop()));
            }
            var _loc11_:* = §§pop();
            if(_loc47_ || param3)
            {
               _loc10_ = int(§-'§[0]);
               if(_loc47_ || param1)
               {
                  §§push(_loc11_);
                  if(!_loc46_)
                  {
                     if(§§pop() > _loc7_)
                     {
                        if(_loc47_ || param3)
                        {
                           §§goto(addr182);
                        }
                     }
                     §§push(0.98);
                     if(_loc47_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  var _loc18_:* = §§pop();
                  §§push(0.001);
                  if(!_loc46_)
                  {
                     §§push(Number(§§pop()));
                  }
                  var _loc19_:* = §§pop();
                  if(_loc47_ || b2Collision)
                  {
                     §§push(_loc11_);
                     §§push(_loc18_);
                     if(_loc47_)
                     {
                        §§push(_loc9_);
                        if(_loc47_)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc47_)
                           {
                              addr211:
                              §§push(§§pop() + _loc19_);
                           }
                           if(§§pop() > §§pop())
                           {
                              addr213:
                              _loc12_ = param4;
                              _loc13_ = param2;
                              _loc14_ = param5;
                              _loc15_ = param3;
                              if(!(_loc46_ && param2))
                              {
                                 §§push(_loc10_);
                                 if(!(_loc46_ && param1))
                                 {
                                    §§push(int(§§pop()));
                                 }
                                 loop19:
                                 while(true)
                                 {
                                    _loc16_ = §§pop();
                                    addr276:
                                    loop20:
                                    while(true)
                                    {
                                       addr253:
                                       while(true)
                                       {
                                          param1.§5Q§ = b2Manifold.§!F§;
                                          addr258:
                                          while(_loc47_ || param3)
                                          {
                                             continue loop19;
                                          }
                                          continue loop20;
                                       }
                                    }
                                 }
                                 addr275:
                              }
                              while(true)
                              {
                                 §§push(1);
                                 if(_loc47_ || param1)
                                 {
                                    _loc17_ = §§pop();
                                    if(!(_loc46_ && param2))
                                    {
                                       if(true)
                                       {
                                          break;
                                       }
                                       §§goto(addr253);
                                    }
                                    §§goto(addr258);
                                 }
                                 else
                                 {
                                    §§goto(addr275);
                                 }
                              }
                           }
                           else
                           {
                              _loc12_ = param2;
                              _loc13_ = param4;
                              _loc14_ = param3;
                              _loc15_ = param5;
                              if(!_loc46_)
                              {
                                 §§push(_loc8_);
                                 while(true)
                                 {
                                    §§push(int(§§pop()));
                                    addr315:
                                    while(true)
                                    {
                                       _loc16_ = §§pop();
                                       addr316:
                                       loop2:
                                       while(true)
                                       {
                                          addr305:
                                          while(true)
                                          {
                                             param1.§5Q§ = b2Manifold.§'h§;
                                             addr310:
                                             while(_loc47_)
                                             {
                                             }
                                             continue loop2;
                                          }
                                       }
                                    }
                                 }
                                 addr314:
                              }
                              while(true)
                              {
                                 §§push(0);
                                 if(_loc47_)
                                 {
                                    if(_loc47_)
                                    {
                                       _loc17_ = §§pop();
                                       if(_loc47_)
                                       {
                                          if(true)
                                          {
                                             break;
                                          }
                                          §§goto(addr305);
                                       }
                                       §§goto(addr310);
                                    }
                                    else
                                    {
                                       §§goto(addr314);
                                    }
                                 }
                                 §§goto(addr315);
                              }
                           }
                           var _loc21_:Vector.<§8!b§> = §>" §;
                           if(_loc47_ || param2)
                           {
                              §<"!§(_loc21_,_loc12_,_loc14_,_loc16_,_loc13_,_loc15_);
                           }
                           §§push(_loc12_.§"![§);
                           if(!_loc46_)
                           {
                              §§push(int(§§pop()));
                           }
                           var _loc22_:* = §§pop();
                           var _loc23_:Vector.<b2Vec2>;
                           var _loc24_:b2Vec2 = (_loc23_ = _loc12_.§^v§)[_loc16_];
                           if(!_loc46_)
                           {
                              if(_loc16_ + 1 < _loc22_)
                              {
                                 addr357:
                                 _loc25_ = _loc23_[int(_loc16_ + 1)];
                              }
                              else
                              {
                                 _loc25_ = _loc23_[0];
                              }
                              var _loc26_:b2Vec2;
                              §§push(_loc26_ = §<q§);
                              §§push(_loc25_.x);
                              if(_loc47_)
                              {
                                 §§push(_loc24_.x);
                                 if(!(_loc46_ && b2Collision))
                                 {
                                    addr390:
                                    §§push(§§pop() - §§pop());
                                    §§push(_loc25_.y);
                                    if(_loc47_)
                                    {
                                       §§push(§§pop() - _loc24_.y);
                                    }
                                 }
                                 §§pop().Set(§§pop(),§§pop());
                                 if(_loc47_)
                                 {
                                    _loc26_.Normalize();
                                 }
                                 var _loc27_:b2Vec2;
                                 (_loc27_ = §3!P§).x = _loc26_.y;
                                 if(!(_loc46_ && param3))
                                 {
                                    §§push(_loc27_);
                                    §§push(_loc26_.x);
                                    if(_loc47_)
                                    {
                                       §§push(-§§pop());
                                    }
                                    §§pop().y = §§pop();
                                 }
                                 var _loc28_:b2Vec2;
                                 §§push(_loc28_ = §'?§);
                                 §§push(0.5);
                                 if(!_loc46_)
                                 {
                                    §§push(_loc24_.x);
                                    if(!_loc46_)
                                    {
                                       §§push(_loc25_.x);
                                       if(!_loc46_)
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(_loc47_ || param1)
                                          {
                                             addr447:
                                             §§push(§§pop() * §§pop());
                                             §§push(0.5);
                                             if(!_loc46_)
                                             {
                                                addr450:
                                                §§push(_loc24_.y);
                                                if(!(_loc46_ && b2Collision))
                                                {
                                                   addr459:
                                                   §§push(§§pop() + _loc25_.y);
                                                }
                                                §§push(§§pop() * §§pop());
                                             }
                                             §§pop().Set(§§pop(),§§pop());
                                             var _loc29_:b2Vec2 = §?!3§;
                                             _loc20_ = _loc14_.R;
                                             if(_loc47_ || param1)
                                             {
                                                §§push(_loc29_);
                                                §§push(_loc20_.col1.x);
                                                if(!_loc46_)
                                                {
                                                   §§push(_loc26_.x);
                                                   if(_loc47_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(!(_loc46_ && param3))
                                                      {
                                                         addr510:
                                                         §§push(_loc20_.col2.x);
                                                         if(!(_loc46_ && b2Collision))
                                                         {
                                                            addr506:
                                                            §§push(§§pop() * _loc26_.y);
                                                         }
                                                         §§pop().x = §§pop() + §§pop();
                                                         if(!_loc46_)
                                                         {
                                                            addr513:
                                                            §§push(_loc29_);
                                                            §§push(_loc20_.col1.y);
                                                            if(_loc47_ || b2Collision)
                                                            {
                                                               §§push(_loc26_.x);
                                                               if(!_loc46_)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(_loc47_ || b2Collision)
                                                                  {
                                                                     addr536:
                                                                     §§push(_loc20_.col2.y);
                                                                     if(!(_loc46_ && b2Collision))
                                                                     {
                                                                        addr546:
                                                                        §§push(§§pop() * _loc26_.y);
                                                                     }
                                                                     §§push(§§pop() + §§pop());
                                                                  }
                                                                  §§pop().y = §§pop();
                                                                  addr551:
                                                                  var _loc30_:b2Vec2;
                                                                  §§push(_loc30_ = s_tangent2);
                                                                  §§push(_loc29_.x);
                                                                  if(!_loc46_)
                                                                  {
                                                                     §§push(-§§pop());
                                                                  }
                                                                  §§pop().x = §§pop();
                                                                  if(!(_loc46_ && param1))
                                                                  {
                                                                     §§push(_loc30_);
                                                                     §§push(_loc29_.y);
                                                                     if(!_loc46_)
                                                                     {
                                                                        §§push(-§§pop());
                                                                     }
                                                                     §§pop().y = §§pop();
                                                                  }
                                                                  var _loc31_:b2Vec2;
                                                                  (_loc31_ = §"!5§).x = _loc29_.y;
                                                                  if(_loc47_)
                                                                  {
                                                                     §§push(_loc31_);
                                                                     §§push(_loc29_.x);
                                                                     if(!_loc46_)
                                                                     {
                                                                        §§push(-§§pop());
                                                                     }
                                                                     §§pop().y = §§pop();
                                                                  }
                                                                  var _loc32_:b2Vec2 = s_v11;
                                                                  var _loc33_:b2Vec2 = s_v12;
                                                                  if(!_loc46_)
                                                                  {
                                                                     §§push(_loc32_);
                                                                     §§push(_loc14_.position.x);
                                                                     if(!(_loc46_ && param3))
                                                                     {
                                                                        §§push(_loc20_.col1.x);
                                                                        if(_loc47_ || param3)
                                                                        {
                                                                           §§push(_loc24_.x);
                                                                           if(_loc47_)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              if(!_loc46_)
                                                                              {
                                                                                 addr802:
                                                                                 §§push(_loc20_.col2.x);
                                                                                 if(!(_loc46_ && param2))
                                                                                 {
                                                                                    addr798:
                                                                                    §§push(§§pop() * _loc24_.y);
                                                                                 }
                                                                                 §§pop().x = §§pop() + (§§pop() + §§pop());
                                                                                 loop6:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc32_);
                                                                                    §§push(_loc14_.position.y);
                                                                                    if(_loc47_ || b2Collision)
                                                                                    {
                                                                                       §§push(_loc20_.col1.y);
                                                                                       if(_loc47_ || param1)
                                                                                       {
                                                                                          §§push(_loc24_.x);
                                                                                          if(!_loc46_)
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(_loc47_)
                                                                                             {
                                                                                                addr743:
                                                                                                §§push(_loc20_.col2.y);
                                                                                                if(!(_loc46_ && param3))
                                                                                                {
                                                                                                   addr756:
                                                                                                   §§push(§§pop() + §§pop() * _loc24_.y);
                                                                                                }
                                                                                                §§goto(addr756);
                                                                                             }
                                                                                             addr758:
                                                                                             §§pop().y = §§pop() + §§pop();
                                                                                             while(true)
                                                                                             {
                                                                                                addr668:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc33_);
                                                                                                   §§push(_loc14_.position.x);
                                                                                                   if(_loc47_ || param2)
                                                                                                   {
                                                                                                      §§push(_loc20_.col1.x);
                                                                                                      if(!_loc46_)
                                                                                                      {
                                                                                                         §§push(_loc25_.x);
                                                                                                         if(!(_loc46_ && param2))
                                                                                                         {
                                                                                                            addr712:
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            if(_loc47_ || param2)
                                                                                                            {
                                                                                                               addr702:
                                                                                                               §§push(_loc20_.col2.x);
                                                                                                               if(_loc47_)
                                                                                                               {
                                                                                                                  addr707:
                                                                                                                  §§push(§§pop() * _loc25_.y);
                                                                                                               }
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                            }
                                                                                                            §§pop().x = §§pop() + §§pop();
                                                                                                            do
                                                                                                            {
                                                                                                               §§push(_loc33_);
                                                                                                               §§push(_loc14_.position.y);
                                                                                                               if(_loc46_)
                                                                                                               {
                                                                                                                  continue;
                                                                                                               }
                                                                                                               §§push(_loc20_.col1.y);
                                                                                                               if(_loc47_ || param3)
                                                                                                               {
                                                                                                                  §§push(_loc25_.x);
                                                                                                                  if(_loc47_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     if(!(_loc46_ && param1))
                                                                                                                     {
                                                                                                                        addr629:
                                                                                                                        §§push(_loc20_.col2.y);
                                                                                                                        if(!_loc46_)
                                                                                                                        {
                                                                                                                           addr637:
                                                                                                                           §§push(§§pop() + §§pop() * _loc25_.y);
                                                                                                                        }
                                                                                                                        §§goto(addr637);
                                                                                                                     }
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  §§goto(addr637);
                                                                                                               }
                                                                                                               §§goto(addr629);
                                                                                                            }
                                                                                                            while(§§pop().y = §§pop(), !(_loc47_ || param3));
                                                                                                            
                                                                                                            if(!_loc47_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            continue loop6;
                                                                                                         }
                                                                                                         §§goto(addr707);
                                                                                                      }
                                                                                                      §§goto(addr702);
                                                                                                   }
                                                                                                   §§goto(addr712);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr756);
                                                                                       }
                                                                                       §§goto(addr743);
                                                                                    }
                                                                                    §§goto(addr758);
                                                                                 }
                                                                              }
                                                                              §§goto(addr802);
                                                                           }
                                                                           §§goto(addr798);
                                                                        }
                                                                     }
                                                                     §§goto(addr802);
                                                                  }
                                                                  §§goto(addr656);
                                                               }
                                                               §§goto(addr546);
                                                            }
                                                            §§goto(addr536);
                                                         }
                                                         §§goto(addr551);
                                                      }
                                                      §§goto(addr510);
                                                   }
                                                   §§goto(addr506);
                                                }
                                                §§goto(addr510);
                                             }
                                             §§goto(addr513);
                                          }
                                          §§goto(addr450);
                                       }
                                       §§goto(addr459);
                                    }
                                    §§goto(addr450);
                                 }
                                 §§goto(addr447);
                              }
                              §§goto(addr390);
                           }
                           §§goto(addr357);
                        }
                     }
                     §§goto(addr211);
                  }
                  §§goto(addr213);
               }
            }
            addr182:
            return;
         }
         §§goto(addr122);
      }
      
      public static function §+!n§(param1:b2Manifold, param2:b2CircleShape, param3:b2Transform, param4:b2CircleShape, param5:b2Transform) : void
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         var _loc6_:b2Mat22 = null;
         var _loc7_:b2Vec2 = null;
         if(!_loc16_)
         {
            param1.§4!5§ = 0;
         }
         _loc6_ = param3.R;
         _loc7_ = param2.§[N§;
         §§push(param3.position.x);
         if(!(_loc16_ && param1))
         {
            §§push(_loc6_.col1.x);
            if(_loc17_)
            {
               §§push(_loc7_.x);
               if(_loc17_ || param1)
               {
                  addr82:
                  §§push(§§pop() * §§pop());
                  if(!(_loc16_ && param1))
                  {
                     §§push(_loc6_.col2.x);
                     if(!(_loc16_ && b2Collision))
                     {
                        §§push(§§pop() * _loc7_.y);
                     }
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc17_)
                  {
                     addr86:
                     var _loc8_:Number = §§pop();
                     §§push(param3.position.y);
                     if(!_loc16_)
                     {
                        §§push(_loc6_.col1.y);
                        if(!_loc16_)
                        {
                           §§push(_loc7_.x);
                           if(_loc17_ || b2Collision)
                           {
                              addr123:
                              §§push(§§pop() * §§pop());
                              if(_loc17_)
                              {
                                 §§push(_loc6_.col2.y);
                                 if(_loc17_ || param2)
                                 {
                                    §§push(§§pop() * _loc7_.y);
                                 }
                              }
                              §§push(§§pop() + §§pop());
                              if(_loc17_ || param1)
                              {
                                 addr131:
                                 §§push(Number(§§pop()));
                              }
                              var _loc9_:* = §§pop();
                              _loc6_ = param5.R;
                              _loc7_ = param4.§[N§;
                              §§push(param5.position.x);
                              if(_loc17_ || param2)
                              {
                                 §§push(_loc6_.col1.x);
                                 if(!(_loc16_ && b2Collision))
                                 {
                                    §§push(_loc7_.x);
                                    if(_loc17_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(_loc17_ || param1)
                                       {
                                          addr182:
                                          §§push(_loc6_.col2.x);
                                          if(_loc17_)
                                          {
                                             addr178:
                                             §§push(§§pop() * _loc7_.y);
                                          }
                                          §§push(§§pop() + (§§pop() + §§pop()));
                                          if(_loc17_ || param2)
                                          {
                                             addr201:
                                             var _loc10_:Number = §§pop();
                                             §§push(param5.position.y);
                                             if(_loc17_)
                                             {
                                                §§push(_loc6_.col1.y);
                                                if(!_loc16_)
                                                {
                                                   §§push(_loc7_.x);
                                                   if(!(_loc16_ && param3))
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(!_loc16_)
                                                      {
                                                         addr238:
                                                         §§push(_loc6_.col2.y);
                                                         if(_loc17_ || param1)
                                                         {
                                                            addr234:
                                                            §§push(§§pop() * _loc7_.y);
                                                         }
                                                         §§push(§§pop() + (§§pop() + §§pop()));
                                                         if(_loc17_)
                                                         {
                                                            addr242:
                                                            var _loc11_:Number = §§pop();
                                                            §§push(_loc10_);
                                                            if(!(_loc16_ && param2))
                                                            {
                                                               §§push(§§pop() - _loc8_);
                                                               if(!_loc16_)
                                                               {
                                                                  addr255:
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               var _loc12_:* = §§pop();
                                                               §§push(_loc11_);
                                                               if(!_loc16_)
                                                               {
                                                                  §§push(§§pop() - _loc9_);
                                                                  if(!_loc16_)
                                                                  {
                                                                     addr264:
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  var _loc13_:* = §§pop();
                                                                  §§push(_loc12_);
                                                                  if(_loc17_ || param3)
                                                                  {
                                                                     §§push(_loc12_);
                                                                     if(_loc17_)
                                                                     {
                                                                        addr288:
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
                                                                        var _loc15_:Number = param2.§>!M§ + param4.§>!M§;
                                                                        if(!_loc16_)
                                                                        {
                                                                           §§push(_loc14_);
                                                                           §§push(_loc15_);
                                                                           if(!(_loc16_ && b2Collision))
                                                                           {
                                                                              §§push(§§pop() * _loc15_);
                                                                           }
                                                                           if(§§pop() > §§pop())
                                                                           {
                                                                              if(_loc17_ || param3)
                                                                              {
                                                                                 return;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 addr365:
                                                                                 loop2:
                                                                                 for(; _loc17_ || param3; if(_loc16_ && param3)
                                                                                 {
                                                                                    continue;
                                                                                 },§§goto(addr333))
                                                                                 {
                                                                                    param1.m_localPoint.SetV(param2.§[N§);
                                                                                    loop3:
                                                                                    while(true)
                                                                                    {
                                                                                       param1.§4!D§.§>![§();
                                                                                       addr352:
                                                                                       loop4:
                                                                                       while(true)
                                                                                       {
                                                                                          param1.§4!5§ = 1;
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc17_ || param3)
                                                                                             {
                                                                                                if(_loc16_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                param1.§`9§[0].m_localPoint.SetV(param4.§[N§);
                                                                                                while(_loc17_)
                                                                                                {
                                                                                                   continue loop2;
                                                                                                   param1.§`9§[0].m_id.key = 0;
                                                                                                   if(_loc17_)
                                                                                                   {
                                                                                                      return;
                                                                                                   }
                                                                                                }
                                                                                                continue;
                                                                                             }
                                                                                             continue loop4;
                                                                                          }
                                                                                          continue loop3;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              addr403:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              param1.§5Q§ = b2Manifold.§9!+§;
                                                                              §§goto(addr365);
                                                                              §§goto(addr403);
                                                                           }
                                                                        }
                                                                        §§goto(addr352);
                                                                     }
                                                                     §§push(§§pop() + §§pop());
                                                                     if(_loc16_)
                                                                     {
                                                                     }
                                                                  }
                                                                  §§goto(addr288);
                                                               }
                                                               §§goto(addr264);
                                                            }
                                                            §§goto(addr255);
                                                         }
                                                         §§goto(addr242);
                                                      }
                                                      §§goto(addr238);
                                                   }
                                                   §§goto(addr234);
                                                }
                                                §§goto(addr238);
                                             }
                                             §§goto(addr242);
                                          }
                                          §§goto(addr201);
                                       }
                                       §§goto(addr182);
                                    }
                                    §§goto(addr178);
                                 }
                                 §§goto(addr182);
                              }
                              §§goto(addr201);
                           }
                           §§push(§§pop() + §§pop());
                        }
                        §§goto(addr123);
                     }
                     §§goto(addr131);
                  }
                  §§goto(addr86);
               }
               §§push(§§pop() + §§pop());
            }
            §§goto(addr82);
         }
         §§goto(addr86);
      }
      
      public static function §94§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2CircleShape, param5:b2Transform) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfuscation" for better results.
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public static function §4I§(param1:b2AABB, param2:b2AABB) : Boolean
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc3_:b2Vec2 = param2.§&1§;
         var _loc4_:b2Vec2 = param1.§3!E§;
         §§push(_loc3_.x);
         if(!_loc9_)
         {
            §§push(§§pop() - _loc4_.x);
            if(!(_loc9_ && param2))
            {
               addr39:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            §§push(_loc3_.y);
            if(_loc10_)
            {
               §§push(§§pop() - _loc4_.y);
               if(!_loc9_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc6_:* = §§pop();
            _loc3_ = param1.§&1§;
            _loc4_ = param2.§3!E§;
            §§push(_loc3_.x);
            if(!(_loc9_ && _loc3_))
            {
               §§push(§§pop() - _loc4_.x);
               if(!_loc9_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc7_:* = §§pop();
            §§push(_loc3_.y);
            if(_loc10_ || _loc3_)
            {
               §§push(§§pop() - _loc4_.y);
               if(_loc10_ || b2Collision)
               {
                  §§push(Number(§§pop()));
               }
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
                                    while(true)
                                    {
                                       §§push(0);
                                       addr212:
                                       while(!(_loc9_ && param2))
                                       {
                                          §§push(§§pop() > §§pop());
                                          while(_loc10_ || param1)
                                          {
                                          }
                                          continue loop2;
                                       }
                                       addr145:
                                       continue loop1;
                                       if(!(_loc10_ || param1))
                                       {
                                          continue;
                                       }
                                       if(_loc9_)
                                       {
                                          continue loop0;
                                       }
                                       §§push(0);
                                       if(!(_loc9_ && param1))
                                       {
                                          §§push(§§pop() > §§pop());
                                          loop17:
                                          while(true)
                                          {
                                             if(!_loc9_)
                                             {
                                                loop18:
                                                while(true)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      addr105:
                                                      §§push(true);
                                                      if(!(_loc9_ && param1))
                                                      {
                                                         if(_loc10_)
                                                         {
                                                            break;
                                                         }
                                                         continue loop17;
                                                      }
                                                   }
                                                   if(!_loc9_)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(false);
                                                         §§goto(addr170);
                                                      }
                                                      addr169:
                                                   }
                                                   else if(!_loc9_)
                                                   {
                                                      addr182:
                                                      if(!(_loc9_ && param2))
                                                      {
                                                         §§goto(addr105);
                                                      }
                                                      loop10:
                                                      while(true)
                                                      {
                                                         addr190:
                                                         while(true)
                                                         {
                                                            §§push(_loc7_);
                                                            while(true)
                                                            {
                                                               §§push(0);
                                                               addr193:
                                                               while(_loc10_ || b2Collision)
                                                               {
                                                                  §§push(§§pop() > §§pop());
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(!_loc9_)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           continue loop18;
                                                                        }
                                                                        §§goto(addr205);
                                                                     }
                                                                     continue loop3;
                                                                  }
                                                                  §§goto(addr177);
                                                               }
                                                               §§goto(addr212);
                                                               addr208:
                                                               §§push(_loc8_);
                                                               if(_loc9_ && b2Collision)
                                                               {
                                                                  continue;
                                                               }
                                                               §§goto(addr145);
                                                            }
                                                            continue loop10;
                                                         }
                                                      }
                                                      addr255:
                                                   }
                                                   while(_loc10_)
                                                   {
                                                      §§goto(addr208);
                                                   }
                                                   continue loop5;
                                                   addr170:
                                                   loop20:
                                                   while(true)
                                                   {
                                                      if(!(_loc9_ && param2))
                                                      {
                                                         addr177:
                                                         if(_loc10_)
                                                         {
                                                            break;
                                                         }
                                                         break loop17;
                                                      }
                                                      addr205:
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         continue loop20;
                                                      }
                                                   }
                                                   return §§pop();
                                                }
                                                if(_loc9_ && param2)
                                                {
                                                   §§goto(addr201);
                                                }
                                                return §§pop();
                                             }
                                             addr237:
                                             if(_loc10_ || param2)
                                             {
                                                return §§pop();
                                                addr244:
                                             }
                                             continue loop4;
                                          }
                                          §§goto(addr220);
                                       }
                                       §§goto(addr193);
                                    }
                                 }
                              }
                           }
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(_loc10_ || b2Collision)
                                 {
                                    §§goto(addr237);
                                    §§push(false);
                                 }
                                 else
                                 {
                                    §§goto(addr255);
                                 }
                                 §§goto(addr212);
                              }
                              §§goto(addr190);
                           }
                           §§goto(addr244);
                        }
                     }
                  }
               }
            }
            §§goto(addr169);
         }
         §§goto(addr39);
      }
   }
}
