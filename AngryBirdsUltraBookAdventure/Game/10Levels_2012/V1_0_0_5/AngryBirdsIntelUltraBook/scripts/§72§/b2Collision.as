package §72§
{
   import §2!+§.*;
   import §7!u§.*;
   import §>H§.*;
   
   use namespace b2internal;
   
   public class b2Collision
   {
      
      public static const b2_nullFeature:uint = 255;
      
      private static var §0!p§:Vector.<§=8§>;
      
      private static var s_clipPoints1:Vector.<§=8§>;
      
      private static var s_clipPoints2:Vector.<§=8§>;
      
      private static var §<!P§:Vector.<int>;
      
      private static var §?!N§:Vector.<int>;
      
      private static var §3!0§:b2Vec2;
      
      private static var §@!w§:b2Vec2;
      
      private static var §5%§:b2Vec2;
      
      private static var §@!a§:b2Vec2;
      
      private static var §7S§:b2Vec2;
      
      private static var s_tangent2:b2Vec2;
      
      private static var s_v11:b2Vec2;
      
      private static var s_v12:b2Vec2;
      
      private static var b2CollidePolyTempVec:b2Vec2;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            b2_nullFeature = 255;
         }
         while(true)
         {
            §0!p§ = §!!8§();
            while(true)
            {
               s_clipPoints1 = §!!8§();
               loop2:
               while(true)
               {
                  s_clipPoints2 = §!!8§();
                  addr198:
                  while(true)
                  {
                     §<!P§ = new Vector.<int>(1);
                     continue loop2;
                  }
               }
               while(!(_loc2_ && _loc2_))
               {
                  §5%§ = new b2Vec2();
                  §§goto(addr129);
               }
            }
            while(!(_loc2_ && b2Collision))
            {
               §7S§ = new b2Vec2();
               §§goto(addr110);
               §§goto(addr60);
            }
         }
      }
      
      public function b2Collision()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super();
         }
      }
      
      public static function §,!,§(param1:Vector.<§=8§>, param2:Vector.<§=8§>, param3:b2Vec2, param4:Number) : int
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc5_:§=8§ = null;
         var _loc6_:int = 0;
         var _loc7_:b2Vec2 = null;
         var _loc9_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:b2Vec2 = null;
         var _loc13_:§=8§ = null;
         if(_loc15_)
         {
            _loc6_ = 0;
         }
         _loc7_ = (_loc5_ = param2[0]).v;
         var _loc8_:b2Vec2 = (_loc5_ = param2[1]).v;
         if(!(_loc14_ && param1))
         {
            §§push(param3.x);
            if(!_loc14_)
            {
               §§push(_loc7_.x);
               if(!(_loc14_ && param3))
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc14_)
                  {
                     §§push(param3.y);
                     if(!(_loc14_ && param3))
                     {
                        §§push(_loc7_.y);
                        if(!_loc14_)
                        {
                           §§push(§§pop() * §§pop());
                           if(!(_loc14_ && param2))
                           {
                              §§push(§§pop() + §§pop());
                              if(_loc15_ || param2)
                              {
                                 addr109:
                                 §§push(param4);
                                 if(_loc15_)
                                 {
                                    addr112:
                                    §§push(§§pop() - §§pop());
                                    if(!_loc14_)
                                    {
                                       §§push(Number(§§pop()));
                                       if(_loc15_)
                                       {
                                          addr118:
                                          _loc9_ = §§pop();
                                          §§push(param3.x);
                                          if(_loc15_)
                                          {
                                             addr123:
                                             §§push(_loc8_.x);
                                             if(_loc15_ || param2)
                                             {
                                                addr132:
                                                §§push(§§pop() * §§pop());
                                                if(_loc15_)
                                                {
                                                   §§push(param3.y);
                                                   if(_loc15_)
                                                   {
                                                      addr139:
                                                      addr141:
                                                      §§push(§§pop() * _loc8_.y);
                                                      if(_loc15_ || param3)
                                                      {
                                                      }
                                                      addr158:
                                                      §§push(§§pop() - §§pop());
                                                      if(_loc15_ || param2)
                                                      {
                                                         addr167:
                                                         var _loc10_:Number = §§pop();
                                                         if(!(_loc14_ && param2))
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
                                                                                 addr293:
                                                                                 while(_loc15_ || param2)
                                                                                 {
                                                                                    if(_loc14_)
                                                                                    {
                                                                                       §§goto(addr306);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr316);
                                                                              }
                                                                              addr283:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc9_);
                                                                              if(!(_loc14_ && b2Collision))
                                                                              {
                                                                                 §§push(_loc10_);
                                                                                 if(!_loc14_)
                                                                                 {
                                                                                    if(!(_loc15_ || param2))
                                                                                    {
                                                                                       continue loop5;
                                                                                    }
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(_loc15_ || b2Collision)
                                                                                    {
                                                                                       addr203:
                                                                                       if(_loc14_ && b2Collision)
                                                                                       {
                                                                                          continue loop4;
                                                                                       }
                                                                                       if(_loc14_)
                                                                                       {
                                                                                          continue loop0;
                                                                                       }
                                                                                       §§push(0);
                                                                                       if(_loc15_ || param3)
                                                                                       {
                                                                                          if(§§pop() < §§pop())
                                                                                          {
                                                                                             if(!(_loc14_ && b2Collision))
                                                                                             {
                                                                                                if(!(_loc14_ && param2))
                                                                                                {
                                                                                                   §§push(_loc9_);
                                                                                                   if(!(_loc14_ && b2Collision))
                                                                                                   {
                                                                                                      addr253:
                                                                                                      §§push(_loc9_);
                                                                                                      if(!(_loc14_ && param1))
                                                                                                      {
                                                                                                         addr261:
                                                                                                         if(!_loc15_)
                                                                                                         {
                                                                                                            continue loop1;
                                                                                                         }
                                                                                                         addr265:
                                                                                                         §§push(§§pop() / (§§pop() - _loc10_));
                                                                                                         if(_loc15_)
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr265);
                                                                                                   }
                                                                                                   _loc11_ = §§pop();
                                                                                                   addr270:
                                                                                                   if(_loc15_ || param3)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   §§goto(addr283);
                                                                                                }
                                                                                                §§goto(addr293);
                                                                                             }
                                                                                             §§goto(addr270);
                                                                                          }
                                                                                          §§goto(addr435);
                                                                                       }
                                                                                       §§goto(addr265);
                                                                                    }
                                                                                    §§goto(addr253);
                                                                                 }
                                                                                 §§goto(addr261);
                                                                              }
                                                                              §§goto(addr203);
                                                                           }
                                                                           if(true)
                                                                           {
                                                                              §§push(_loc12_ = (_loc5_ = param1[_loc6_]).v);
                                                                              §§push(_loc7_.x);
                                                                              if(_loc15_)
                                                                              {
                                                                                 §§push(_loc11_);
                                                                                 if(_loc15_)
                                                                                 {
                                                                                    §§push(_loc8_.x);
                                                                                    if(!(_loc14_ && param2))
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
                                                                                 if(!(_loc14_ && param3))
                                                                                 {
                                                                                    §§push(_loc11_);
                                                                                    if(_loc15_)
                                                                                    {
                                                                                       §§push(_loc8_.y);
                                                                                       if(!(_loc14_ && param3))
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
                                                                                    §§goto(addr389);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    _loc13_ = param2[1];
                                                                                    if(_loc15_ || param3)
                                                                                    {
                                                                                       _loc5_.id = _loc13_.id;
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr434);
                                                                              }
                                                                           }
                                                                           continue loop3;
                                                                           addr389:
                                                                           _loc13_ = param2[0];
                                                                           if(_loc15_)
                                                                           {
                                                                              _loc5_.id = _loc13_.id;
                                                                              if(!(_loc14_ && param3))
                                                                              {
                                                                                 addr434:
                                                                                 _loc6_++;
                                                                              }
                                                                           }
                                                                           addr435:
                                                                           return _loc6_;
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr316);
                                                      }
                                                      §§goto(addr167);
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                   if(!(_loc14_ && param3))
                                                   {
                                                      §§goto(addr158);
                                                      §§push(param4);
                                                   }
                                                }
                                                §§goto(addr167);
                                             }
                                             §§goto(addr139);
                                          }
                                          §§goto(addr167);
                                       }
                                    }
                                    §§goto(addr167);
                                 }
                                 §§goto(addr132);
                              }
                              §§goto(addr123);
                           }
                           §§goto(addr112);
                        }
                        §§goto(addr141);
                     }
                     §§goto(addr132);
                  }
                  §§goto(addr118);
               }
               §§goto(addr139);
            }
            §§goto(addr109);
         }
         §§goto(addr118);
      }
      
      public static function §?z§(param1:b2PolygonShape, param2:b2Transform, param3:int, param4:b2PolygonShape, param5:b2Transform) : Number
      {
         var _loc26_:Boolean = false;
         var _loc27_:Boolean = true;
         var _loc11_:b2Mat22 = null;
         var _loc12_:b2Vec2 = null;
         var _loc25_:* = NaN;
         §§push(param1.§,L§);
         if(_loc27_)
         {
            §§push(int(§§pop()));
         }
         var _loc6_:* = §§pop();
         var _loc7_:Vector.<b2Vec2> = param1.§#!w§;
         var _loc8_:Vector.<b2Vec2> = param1.§2!-§;
         §§push(param4.§,L§);
         if(!(_loc26_ && param1))
         {
            §§push(int(§§pop()));
         }
         var _loc9_:* = §§pop();
         var _loc10_:Vector.<b2Vec2> = param4.§#!w§;
         _loc11_ = param2.R;
         _loc12_ = _loc8_[param3];
         §§push(_loc11_.col1.x);
         if(!(_loc26_ && b2Collision))
         {
            §§push(_loc12_.x);
            if(!_loc26_)
            {
               addr97:
               §§push(§§pop() * §§pop());
               if(!(_loc26_ && param2))
               {
                  §§push(_loc11_.col2.x);
                  if(!_loc26_)
                  {
                     §§push(§§pop() * _loc12_.y);
                  }
               }
               var _loc13_:* = §§pop();
               §§push(_loc11_.col1.y);
               if(_loc27_ || b2Collision)
               {
                  §§push(_loc12_.x);
                  if(_loc27_ || param3)
                  {
                     §§push(§§pop() * §§pop());
                     if(_loc27_)
                     {
                        §§push(_loc11_.col2.y);
                        if(!_loc26_)
                        {
                           addr125:
                           §§push(§§pop() * _loc12_.y);
                        }
                        §§push(§§pop() + §§pop());
                        if(_loc27_ || param2)
                        {
                           addr136:
                           §§push(Number(§§pop()));
                        }
                     }
                     var _loc14_:* = §§pop();
                     §§push((_loc11_ = param5.R).col1.x);
                     if(_loc27_)
                     {
                        §§push(_loc13_);
                        if(_loc27_)
                        {
                           §§push(§§pop() * §§pop());
                           if(!_loc26_)
                           {
                              addr153:
                              §§push(_loc11_.col1.y);
                              if(_loc27_)
                              {
                                 addr160:
                                 §§push(§§pop() + §§pop() * _loc14_);
                                 if(!_loc26_)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                              }
                              §§goto(addr160);
                           }
                           var _loc15_:* = §§pop();
                           §§push(_loc11_.col2.x);
                           if(_loc27_ || b2Collision)
                           {
                              §§push(_loc13_);
                              if(!_loc26_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(_loc27_)
                                 {
                                    §§push(_loc11_.col2.y);
                                    if(_loc27_)
                                    {
                                       addr188:
                                       §§push(§§pop() + §§pop() * _loc14_);
                                       if(!_loc26_)
                                       {
                                          addr191:
                                          §§push(Number(§§pop()));
                                       }
                                    }
                                    §§goto(addr188);
                                 }
                                 var _loc16_:* = §§pop();
                                 var _loc17_:* = 0;
                                 var _loc18_:Number = Number.MAX_VALUE;
                                 var _loc19_:int = 0;
                                 while(_loc19_ < _loc9_)
                                 {
                                    §§push((_loc12_ = _loc10_[_loc19_]).x);
                                    if(!(_loc26_ && param1))
                                    {
                                       §§push(_loc15_);
                                       if(_loc27_)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(_loc27_)
                                          {
                                             §§push(_loc12_.y);
                                             if(_loc27_)
                                             {
                                                §§push(§§pop() * _loc16_);
                                                if(!_loc26_)
                                                {
                                                   addr231:
                                                   §§push(§§pop() + §§pop());
                                                   if(!(_loc26_ && param2))
                                                   {
                                                      addr239:
                                                      §§push(Number(§§pop()));
                                                      if(!_loc26_)
                                                      {
                                                         §§push(§§pop());
                                                         if(_loc27_ || param3)
                                                         {
                                                            addr250:
                                                            _loc25_ = §§pop();
                                                            if(!(_loc26_ && b2Collision))
                                                            {
                                                               addr259:
                                                               if(§§pop() < _loc18_)
                                                               {
                                                                  if(_loc26_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  §§push(_loc25_);
                                                                  if(_loc27_)
                                                                  {
                                                                     addr266:
                                                                     _loc18_ = §§pop();
                                                                     if(_loc27_)
                                                                     {
                                                                        §§push(_loc19_);
                                                                        if(_loc27_ || param3)
                                                                        {
                                                                           §§push(int(§§pop()));
                                                                        }
                                                                        _loc17_ = §§pop();
                                                                        if(_loc26_ && param2)
                                                                        {
                                                                           continue;
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr266);
                                                               }
                                                               _loc19_++;
                                                               continue;
                                                            }
                                                            §§goto(addr266);
                                                         }
                                                         §§goto(addr259);
                                                      }
                                                   }
                                                   §§goto(addr266);
                                                }
                                                §§goto(addr259);
                                             }
                                             §§goto(addr250);
                                          }
                                          §§goto(addr239);
                                       }
                                       §§goto(addr231);
                                    }
                                    §§goto(addr239);
                                 }
                                 _loc12_ = _loc7_[param3];
                                 _loc11_ = param2.R;
                                 §§push(param2.position.x);
                                 if(_loc27_ || param1)
                                 {
                                    §§push(_loc11_.col1.x);
                                    if(!_loc26_)
                                    {
                                       §§push(_loc12_.x);
                                       if(!(_loc26_ && param1))
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(_loc27_)
                                          {
                                             addr336:
                                             §§push(_loc11_.col2.x);
                                             if(_loc27_)
                                             {
                                                addr341:
                                                §§push(§§pop() * _loc12_.y);
                                             }
                                             §§push(§§pop() + §§pop());
                                          }
                                          §§push(§§pop() + §§pop());
                                          if(_loc27_)
                                          {
                                             addr348:
                                             §§push(Number(§§pop()));
                                          }
                                          var _loc20_:* = §§pop();
                                          §§push(param2.position.y);
                                          if(_loc27_ || param1)
                                          {
                                             §§push(_loc11_.col1.y);
                                             if(!_loc26_)
                                             {
                                                §§push(_loc12_.x);
                                                if(_loc27_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(!_loc26_)
                                                   {
                                                      addr381:
                                                      §§push(_loc11_.col2.y);
                                                      if(_loc27_)
                                                      {
                                                         addr377:
                                                         §§push(§§pop() * _loc12_.y);
                                                      }
                                                      §§push(§§pop() + (§§pop() + §§pop()));
                                                      if(_loc27_ || param2)
                                                      {
                                                         addr390:
                                                         var _loc21_:Number = §§pop();
                                                         _loc12_ = _loc10_[_loc17_];
                                                         _loc11_ = param5.R;
                                                         §§push(param5.position.x);
                                                         if(!(_loc26_ && param3))
                                                         {
                                                            §§push(_loc11_.col1.x);
                                                            if(_loc27_ || param2)
                                                            {
                                                               §§push(_loc12_.x);
                                                               if(!(_loc26_ && param3))
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(!(_loc26_ && param3))
                                                                  {
                                                                     addr437:
                                                                     §§push(_loc11_.col2.x);
                                                                     if(!_loc26_)
                                                                     {
                                                                        addr445:
                                                                        §§push(§§pop() + §§pop() * _loc12_.y);
                                                                     }
                                                                     §§goto(addr445);
                                                                  }
                                                                  §§push(§§pop() + §§pop());
                                                                  if(_loc27_ || param2)
                                                                  {
                                                                     addr454:
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  var _loc22_:* = §§pop();
                                                                  §§push(param5.position.y);
                                                                  if(_loc27_ || param1)
                                                                  {
                                                                     §§push(_loc11_.col1.y);
                                                                     if(_loc27_)
                                                                     {
                                                                        §§push(_loc12_.x);
                                                                        if(_loc27_ || param1)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(!(_loc26_ && param2))
                                                                           {
                                                                              addr488:
                                                                              §§push(_loc11_.col2.y);
                                                                              if(!(_loc26_ && b2Collision))
                                                                              {
                                                                                 addr501:
                                                                                 §§push(§§pop() + §§pop() * _loc12_.y);
                                                                              }
                                                                              §§goto(addr501);
                                                                           }
                                                                           §§push(§§pop() + §§pop());
                                                                           if(_loc27_ || b2Collision)
                                                                           {
                                                                              addr510:
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                           var _loc23_:* = §§pop();
                                                                           if(_loc27_)
                                                                           {
                                                                              §§push(_loc22_);
                                                                              if(_loc27_ || param3)
                                                                              {
                                                                                 §§push(_loc20_);
                                                                                 if(_loc27_ || param1)
                                                                                 {
                                                                                    §§push(§§pop() - §§pop());
                                                                                    if(_loc27_)
                                                                                    {
                                                                                       §§goto(addr533);
                                                                                    }
                                                                                    §§goto(addr556);
                                                                                 }
                                                                                 §§goto(addr593);
                                                                              }
                                                                              addr533:
                                                                              §§push(Number(§§pop()));
                                                                              if(_loc27_)
                                                                              {
                                                                                 _loc22_ = §§pop();
                                                                                 if(!_loc26_)
                                                                                 {
                                                                                    addr539:
                                                                                    §§push(_loc23_);
                                                                                    if(_loc27_)
                                                                                    {
                                                                                       §§goto(addr542);
                                                                                    }
                                                                                    §§goto(addr553);
                                                                                 }
                                                                                 §§goto(addr556);
                                                                              }
                                                                              addr542:
                                                                              §§push(_loc21_);
                                                                              if(_loc27_ || b2Collision)
                                                                              {
                                                                                 §§push(§§pop() - §§pop());
                                                                                 if(!_loc26_)
                                                                                 {
                                                                                    addr553:
                                                                                    §§push(Number(§§pop()));
                                                                                    if(!_loc26_)
                                                                                    {
                                                                                       addr556:
                                                                                       _loc23_ = §§pop();
                                                                                       §§push(_loc22_);
                                                                                       if(_loc27_)
                                                                                       {
                                                                                          addr560:
                                                                                          §§push(_loc13_);
                                                                                          if(!(_loc26_ && param3))
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(_loc27_ || param1)
                                                                                             {
                                                                                                §§push(_loc23_);
                                                                                                if(!_loc26_)
                                                                                                {
                                                                                                   §§goto(addr589);
                                                                                                }
                                                                                                §§goto(addr593);
                                                                                             }
                                                                                             §§goto(addr597);
                                                                                          }
                                                                                          §§goto(addr593);
                                                                                       }
                                                                                       §§goto(addr597);
                                                                                    }
                                                                                    §§goto(addr560);
                                                                                 }
                                                                                 §§goto(addr556);
                                                                              }
                                                                              addr589:
                                                                              §§push(§§pop() * _loc14_);
                                                                              if(!_loc26_)
                                                                              {
                                                                                 addr593:
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(_loc27_)
                                                                                 {
                                                                                    addr597:
                                                                                    §§push(Number(§§pop()));
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                                 §§goto(addr597);
                                                                              }
                                                                              var _loc24_:* = §§pop();
                                                                              return §§pop();
                                                                           }
                                                                           §§goto(addr539);
                                                                        }
                                                                        §§goto(addr501);
                                                                     }
                                                                     §§goto(addr488);
                                                                  }
                                                                  §§goto(addr510);
                                                               }
                                                               §§goto(addr445);
                                                            }
                                                            §§goto(addr437);
                                                         }
                                                         §§goto(addr454);
                                                      }
                                                      §§goto(addr390);
                                                   }
                                                   §§goto(addr381);
                                                }
                                                §§goto(addr377);
                                             }
                                             §§goto(addr381);
                                          }
                                          §§goto(addr390);
                                       }
                                       §§goto(addr341);
                                    }
                                    §§goto(addr336);
                                 }
                                 §§goto(addr348);
                              }
                              §§goto(addr188);
                           }
                           §§goto(addr191);
                        }
                        §§goto(addr160);
                     }
                     §§goto(addr153);
                  }
                  §§goto(addr125);
               }
               §§goto(addr136);
            }
            §§push(§§pop() + §§pop());
            if(!_loc26_)
            {
               §§push(Number(§§pop()));
            }
         }
         §§goto(addr97);
      }
      
      public static function § !g§(param1:Vector.<int>, param2:b2PolygonShape, param3:b2Transform, param4:b2PolygonShape, param5:b2Transform) : Number
      {
         var _loc26_:Boolean = false;
         var _loc27_:Boolean = true;
         var _loc8_:b2Vec2 = null;
         var _loc9_:b2Mat22 = null;
         var _loc22_:* = 0;
         var _loc23_:* = NaN;
         var _loc24_:* = 0;
         var _loc25_:* = NaN;
         §§push(param2.§,L§);
         if(_loc27_ || b2Collision)
         {
            §§push(int(§§pop()));
         }
         var _loc6_:* = §§pop();
         var _loc7_:Vector.<b2Vec2> = param2.§2!-§;
         _loc9_ = param5.R;
         _loc8_ = param4.§#X§;
         §§push(param5.position.x);
         if(!(_loc26_ && b2Collision))
         {
            §§push(_loc9_.col1.x);
            if(!(_loc26_ && param1))
            {
               §§push(_loc8_.x);
               if(_loc27_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc27_ || param1)
                  {
                     addr100:
                     §§push(_loc9_.col2.x);
                     if(!(_loc26_ && b2Collision))
                     {
                        addr96:
                        §§push(§§pop() * _loc8_.y);
                     }
                     §§push(§§pop() + (§§pop() + §§pop()));
                     if(!_loc26_)
                     {
                        addr103:
                        §§push(Number(§§pop()));
                     }
                     var _loc10_:* = §§pop();
                     §§push(param5.position.y);
                     if(!(_loc26_ && param2))
                     {
                        §§push(_loc9_.col1.y);
                        if(_loc27_ || param3)
                        {
                           §§push(_loc8_.x);
                           if(!(_loc26_ && param3))
                           {
                              §§push(§§pop() * §§pop());
                              if(!_loc26_)
                              {
                                 addr137:
                                 §§push(_loc9_.col2.y);
                                 if(!(_loc26_ && param1))
                                 {
                                    addr147:
                                    §§push(§§pop() * _loc8_.y);
                                 }
                                 §§push(§§pop() + §§pop());
                              }
                              §§push(§§pop() + §§pop());
                              if(!(_loc26_ && param2))
                              {
                                 addr159:
                                 §§push(Number(§§pop()));
                              }
                              var _loc11_:* = §§pop();
                              _loc9_ = param3.R;
                              _loc8_ = param2.§#X§;
                              if(_loc27_ || b2Collision)
                              {
                                 §§push(_loc10_);
                                 if(!(_loc26_ && b2Collision))
                                 {
                                    §§push(param3.position);
                                    if(_loc27_)
                                    {
                                       §§push(§§pop().x);
                                       if(_loc27_ || b2Collision)
                                       {
                                          §§push(_loc9_.col1);
                                          if(_loc27_ || param2)
                                          {
                                             §§push(§§pop().x);
                                             if(!(_loc26_ && param3))
                                             {
                                                §§push(_loc8_.x);
                                                if(!(_loc26_ && param1))
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc27_ || b2Collision)
                                                   {
                                                      §§push(_loc9_.col2);
                                                      if(_loc27_ || b2Collision)
                                                      {
                                                         §§push(§§pop().x);
                                                         if(!_loc26_)
                                                         {
                                                            §§push(_loc8_.y);
                                                            if(!_loc26_)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(!(_loc26_ && param2))
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  if(!(_loc26_ && param1))
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     if(!(_loc26_ && param1))
                                                                     {
                                                                        §§push(§§pop() - §§pop());
                                                                        if(!(_loc26_ && param1))
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           if(_loc27_)
                                                                           {
                                                                              _loc10_ = §§pop();
                                                                              if(_loc27_ || b2Collision)
                                                                              {
                                                                                 §§push(_loc11_);
                                                                                 if(!(_loc26_ && param3))
                                                                                 {
                                                                                    addr297:
                                                                                    §§push(param3.position.y);
                                                                                    if(_loc27_)
                                                                                    {
                                                                                       §§push(_loc9_.col1);
                                                                                       if(_loc27_)
                                                                                       {
                                                                                          addr306:
                                                                                          §§push(§§pop().y);
                                                                                          if(_loc27_)
                                                                                          {
                                                                                             addr309:
                                                                                             §§push(_loc8_.x);
                                                                                             if(_loc27_ || b2Collision)
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(_loc27_ || param1)
                                                                                                {
                                                                                                   addr328:
                                                                                                   §§push(_loc9_.col2.y);
                                                                                                   if(!(_loc26_ && param3))
                                                                                                   {
                                                                                                      addr339:
                                                                                                      §§push(§§pop() + §§pop() * _loc8_.y);
                                                                                                      if(_loc27_)
                                                                                                      {
                                                                                                         addr342:
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         if(!_loc26_)
                                                                                                         {
                                                                                                            addr345:
                                                                                                            §§push(§§pop() - §§pop());
                                                                                                            if(!(_loc26_ && param3))
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                               if(!_loc27_)
                                                                                                               {
                                                                                                               }
                                                                                                               addr396:
                                                                                                               var _loc12_:Number = §§pop();
                                                                                                               addr395:
                                                                                                               §§push(_loc10_);
                                                                                                               if(_loc27_ || param3)
                                                                                                               {
                                                                                                                  §§push(param3.R.col2.x);
                                                                                                                  if(!(_loc26_ && param3))
                                                                                                                  {
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     if(!_loc26_)
                                                                                                                     {
                                                                                                                        §§push(_loc11_);
                                                                                                                        if(!(_loc26_ && param1))
                                                                                                                        {
                                                                                                                           addr427:
                                                                                                                           §§push(§§pop() * param3.R.col2.y);
                                                                                                                        }
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                        if(_loc26_)
                                                                                                                        {
                                                                                                                        }
                                                                                                                        addr436:
                                                                                                                        var _loc13_:* = §§pop();
                                                                                                                        var _loc14_:* = 0;
                                                                                                                        §§push(-Number.MAX_VALUE);
                                                                                                                        if(!(_loc26_ && param3))
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                        }
                                                                                                                        var _loc15_:* = §§pop();
                                                                                                                        var _loc16_:int = 0;
                                                                                                                        while(_loc16_ < _loc6_)
                                                                                                                        {
                                                                                                                           §§push((_loc8_ = _loc7_[_loc16_]).x);
                                                                                                                           if(_loc27_ || param3)
                                                                                                                           {
                                                                                                                              §§push(_loc12_);
                                                                                                                              if(!(_loc26_ && b2Collision))
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 if(!(_loc26_ && param2))
                                                                                                                                 {
                                                                                                                                    §§push(_loc8_.y);
                                                                                                                                    if(_loc27_ || param3)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * _loc13_);
                                                                                                                                       if(_loc26_)
                                                                                                                                       {
                                                                                                                                       }
                                                                                                                                       addr526:
                                                                                                                                       if(§§pop() > §§pop())
                                                                                                                                       {
                                                                                                                                          if(_loc27_)
                                                                                                                                          {
                                                                                                                                             addr538:
                                                                                                                                             §§push(_loc25_);
                                                                                                                                             if(_loc27_ || param3)
                                                                                                                                             {
                                                                                                                                                addr537:
                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                             }
                                                                                                                                             _loc15_ = §§pop();
                                                                                                                                             if(_loc26_)
                                                                                                                                             {
                                                                                                                                                continue;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§push(_loc16_);
                                                                                                                                          if(_loc27_)
                                                                                                                                          {
                                                                                                                                             §§push(int(§§pop()));
                                                                                                                                          }
                                                                                                                                          _loc14_ = §§pop();
                                                                                                                                          if(!_loc27_)
                                                                                                                                          {
                                                                                                                                             continue;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       _loc16_++;
                                                                                                                                       continue;
                                                                                                                                    }
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    if(!(_loc26_ && param1))
                                                                                                                                    {
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                       if(_loc27_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop());
                                                                                                                                          if(_loc27_ || param1)
                                                                                                                                          {
                                                                                                                                             _loc25_ = §§pop();
                                                                                                                                             if(!(_loc26_ && param3))
                                                                                                                                             {
                                                                                                                                                addr525:
                                                                                                                                                §§goto(addr526);
                                                                                                                                                §§push(_loc15_);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr526);
                                                                                                                                       }
                                                                                                                                       §§goto(addr525);
                                                                                                                                    }
                                                                                                                                    §§goto(addr538);
                                                                                                                                 }
                                                                                                                                 §§goto(addr525);
                                                                                                                              }
                                                                                                                              §§goto(addr526);
                                                                                                                           }
                                                                                                                           §§goto(addr537);
                                                                                                                        }
                                                                                                                        §§push(§?z§(param2,param3,_loc14_,param4,param5));
                                                                                                                        if(_loc27_)
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
                                                                                                                              if(_loc27_)
                                                                                                                              {
                                                                                                                                 if(§§pop() >= 0)
                                                                                                                                 {
                                                                                                                                    addr594:
                                                                                                                                    §§push(_loc14_);
                                                                                                                                    if(_loc27_ || param2)
                                                                                                                                    {
                                                                                                                                       addr602:
                                                                                                                                       §§push(§§pop() - 1);
                                                                                                                                       if(_loc27_ || param2)
                                                                                                                                       {
                                                                                                                                          §§push(int(§§pop()));
                                                                                                                                          if(_loc27_)
                                                                                                                                          {
                                                                                                                                             addr626:
                                                                                                                                             §§push(int(§§pop()));
                                                                                                                                          }
                                                                                                                                          §§goto(addr626);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          addr623:
                                                                                                                                          §§push(int(§§pop()));
                                                                                                                                          if(_loc27_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr626);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    var _loc18_:* = §§pop();
                                                                                                                                    §§push(§?z§(param2,param3,_loc18_,param4,param5));
                                                                                                                                    if(!(_loc26_ && b2Collision))
                                                                                                                                    {
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                    }
                                                                                                                                    var _loc19_:* = §§pop();
                                                                                                                                    if(!(_loc26_ && param1))
                                                                                                                                    {
                                                                                                                                       §§push(_loc14_);
                                                                                                                                       if(_loc27_ || param2)
                                                                                                                                       {
                                                                                                                                          §§push(1);
                                                                                                                                          if(!_loc26_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                             if(!(_loc26_ && param1))
                                                                                                                                             {
                                                                                                                                                if(§§pop() < _loc6_)
                                                                                                                                                {
                                                                                                                                                   addr673:
                                                                                                                                                   §§push(_loc14_);
                                                                                                                                                   if(_loc27_)
                                                                                                                                                   {
                                                                                                                                                      addr678:
                                                                                                                                                      §§push(int(§§pop() + 1));
                                                                                                                                                      if(!_loc26_)
                                                                                                                                                      {
                                                                                                                                                         addr685:
                                                                                                                                                         §§push(int(§§pop()));
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr685);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§push(0);
                                                                                                                                                   if(_loc27_)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr685);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                var _loc20_:* = §§pop();
                                                                                                                                                §§push(§?z§(param2,param3,_loc20_,param4,param5));
                                                                                                                                                if(_loc27_ || param2)
                                                                                                                                                {
                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                }
                                                                                                                                                var _loc21_:* = §§pop();
                                                                                                                                                if(!(_loc26_ && param3))
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
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc19_);
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc21_);
                                                                                                                                                                        addr1159:
                                                                                                                                                                        addr1118:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() > §§pop());
                                                                                                                                                                           addr1160:
                                                                                                                                                                           while(_loc27_ || param2)
                                                                                                                                                                           {
                                                                                                                                                                           }
                                                                                                                                                                           continue loop4;
                                                                                                                                                                        }
                                                                                                                                                                        loop15:
                                                                                                                                                                        while(_loc27_ || b2Collision)
                                                                                                                                                                        {
                                                                                                                                                                           _loc23_ = §§pop();
                                                                                                                                                                           loop16:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              loop17:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc24_);
                                                                                                                                                                                    loop19:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(-1);
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(§§pop() != §§pop())
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc22_);
                                                                                                                                                                                             loop21:
                                                                                                                                                                                             while(_loc27_ || b2Collision)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(1);
                                                                                                                                                                                                if(_loc27_ || param3)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                   if(_loc27_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc6_);
                                                                                                                                                                                                      if(!_loc26_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() < §§pop());
                                                                                                                                                                                                         if(_loc27_ || param1)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!(_loc26_ && b2Collision))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc26_ && param1)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop3;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(!§§pop())
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(0);
                                                                                                                                                                                                                  if(!_loc26_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(int(§§pop()));
                                                                                                                                                                                                                        addr980:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  loop23:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!_loc26_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!(_loc26_ && param2))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc26_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              break;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           if(!_loc26_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              _loc14_ = §§pop();
                                                                                                                                                                                                                              loop24:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!_loc26_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§?z§(param2,param3,_loc14_,param4,param5));
                                                                                                                                                                                                                                       loop26:
                                                                                                                                                                                                                                       while(!(_loc26_ && param3))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!(_loc27_ || param1))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop1;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                                                                          loop27:
                                                                                                                                                                                                                                          for(; _loc27_; if(_loc26_ && b2Collision)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue;
                                                                                                                                                                                                                                          },if(!(_loc27_ || param2))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop26;
                                                                                                                                                                                                                                          },if(!_loc27_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop15;
                                                                                                                                                                                                                                          },§§goto(addr773),§§push(Number(§§pop())))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc27_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!(_loc26_ && param1))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop());
                                                                                                                                                                                                                                                   if(_loc27_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      _loc17_ = §§pop();
                                                                                                                                                                                                                                                      while(_loc27_ || param3)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(_loc23_);
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!_loc26_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc26_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  break;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               if(!(_loc27_ || param1))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  continue loop2;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               if(§§pop() > §§pop())
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(_loc27_ || param1)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(_loc14_);
                                                                                                                                                                                                                                                                     if(_loc27_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!(_loc26_ && param2))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr881:
                                                                                                                                                                                                                                                                           §§push(int(§§pop()));
                                                                                                                                                                                                                                                                           if(_loc26_ && param3)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop23;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           if(_loc26_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop21;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           if(!_loc26_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(_loc27_ || param2)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 _loc22_ = §§pop();
                                                                                                                                                                                                                                                                                 loop30:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(_loc27_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(_loc17_);
                                                                                                                                                                                                                                                                                       if(_loc27_ || param1)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          continue loop27;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       addr773:
                                                                                                                                                                                                                                                                                       addr773:
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!(_loc27_ || b2Collision))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             break loop30;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          addr780:
                                                                                                                                                                                                                                                                                          if(!(_loc26_ && param3))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             _loc23_ = §§pop();
                                                                                                                                                                                                                                                                                             continue loop30;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          addr1103:
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(_loc17_);
                                                                                                                                                                                                                                                                                             addr1104:
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(§§pop() > §§pop())
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      break loop21;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   addr1105:
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   param1[0] = _loc14_;
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(!_loc26_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§goto(addr1068);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      loop13:
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(!(_loc26_ && param2))
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(_loc19_);
                                                                                                                                                                                                                                                                                                            continue loop1;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         addr1169:
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(-1);
                                                                                                                                                                                                                                                                                                            addr1170:
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               _loc24_ = §§pop();
                                                                                                                                                                                                                                                                                                               addr1171:
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(_loc18_);
                                                                                                                                                                                                                                                                                                                  if(!(_loc26_ && param1))
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(int(§§pop()));
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  addr1137:
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     _loc22_ = §§pop();
                                                                                                                                                                                                                                                                                                                     continue loop13;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   addr1084:
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr780);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    addr1107:
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(_loc20_);
                                                                                                                                                                                                                                                                                       addr1096:
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(int(§§pop()));
                                                                                                                                                                                                                                                                                          addr1097:
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             _loc22_ = §§pop();
                                                                                                                                                                                                                                                                                             addr1098:
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(_loc21_);
                                                                                                                                                                                                                                                                                                if(!_loc26_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                   break loop26;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                break loop26;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(int(§§pop()));
                                                                                                                                                                                                                                                                                    addr973:
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(!(_loc26_ && param2))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§goto(addr980);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          while(_loc27_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(§§pop() - 1);
                                                                                                                                                                                                                                                                                             break loop27;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1097);
                                                                                                                                                                                                                                                                                          addr1050:
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 addr900:
                                                                                                                                                                                                                                                                                 addr972:
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(§§pop() - 1);
                                                                                                                                                                                                                                                                                    addr1047:
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 addr1046:
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1048);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1057);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr973);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr881);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr900);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  param1[0] = _loc22_;
                                                                                                                                                                                                                                                                  if(!_loc26_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     continue loop24;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr788);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1104);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1159);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(0);
                                                                                                                                                                                                                                                         addr1025:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(§§pop() >= §§pop());
                                                                                                                                                                                                                                                            addr1026:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(§§pop())
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc26_ && param2)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(_loc26_ && param3)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        continue loop17;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     if(!_loc26_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!_loc26_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           continue loop16;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1105);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§goto(addr1084);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     continue loop17;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr1093:
                                                                                                                                                                                                                                                                  addr1027:
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§goto(addr1050);
                                                                                                                                                                                                                                                                  §§push(_loc6_);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr843:
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr851);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr1068:
                                                                                                                                                                                                                                                return _loc17_;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1047);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(int(§§pop()));
                                                                                                                                                                                                                                             addr1054:
                                                                                                                                                                                                                                             while(!_loc26_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§goto(addr1056);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1137);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          _loc23_ = §§pop();
                                                                                                                                                                                                                                          §§goto(addr1093);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1058);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1170);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1016);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1054);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop19;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr951);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1160);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1026);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1025);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr972);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr969);
                                                                                                                                                                                             }
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                _loc24_ = §§pop();
                                                                                                                                                                                                §§goto(addr1107);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1008);
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
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(!§§pop())
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr1103);
                                                                                                                                                                  §§push(_loc21_);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1169);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr746);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr678);
                                                                                                                                       }
                                                                                                                                       §§goto(addr685);
                                                                                                                                    }
                                                                                                                                    §§goto(addr673);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§push(_loc6_);
                                                                                                                                    if(_loc27_ || b2Collision)
                                                                                                                                    {
                                                                                                                                       §§goto(addr623);
                                                                                                                                       §§push(§§pop() - 1);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr626);
                                                                                                                              }
                                                                                                                              §§goto(addr623);
                                                                                                                           }
                                                                                                                           §§goto(addr602);
                                                                                                                        }
                                                                                                                        §§goto(addr594);
                                                                                                                     }
                                                                                                                     §§goto(addr436);
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                  }
                                                                                                                  §§goto(addr427);
                                                                                                               }
                                                                                                               §§goto(addr436);
                                                                                                            }
                                                                                                            _loc11_ = §§pop();
                                                                                                            §§push(_loc10_);
                                                                                                            if(!_loc26_)
                                                                                                            {
                                                                                                               §§push(param3.R.col1.x);
                                                                                                               if(!(_loc26_ && param3))
                                                                                                               {
                                                                                                                  addr371:
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(_loc27_ || param1)
                                                                                                                  {
                                                                                                                     addr379:
                                                                                                                     §§push(_loc11_);
                                                                                                                     if(_loc27_)
                                                                                                                     {
                                                                                                                        addr382:
                                                                                                                        §§push(§§pop() * param3.R.col1.y);
                                                                                                                     }
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     if(_loc27_ || b2Collision)
                                                                                                                     {
                                                                                                                        §§goto(addr395);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr396);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr396);
                                                                                                         }
                                                                                                         §§goto(addr382);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr339);
                                                                                                }
                                                                                                §§goto(addr342);
                                                                                             }
                                                                                             §§goto(addr339);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr382);
                                                                                    }
                                                                                    §§goto(addr345);
                                                                                 }
                                                                                 §§goto(addr396);
                                                                              }
                                                                              §§goto(addr345);
                                                                           }
                                                                           §§goto(addr297);
                                                                        }
                                                                        §§goto(addr379);
                                                                     }
                                                                     §§goto(addr371);
                                                                  }
                                                                  §§goto(addr309);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr339);
                                                      }
                                                      §§goto(addr328);
                                                   }
                                                   §§goto(addr342);
                                                }
                                                §§goto(addr339);
                                             }
                                             §§goto(addr309);
                                          }
                                          §§goto(addr306);
                                       }
                                       §§goto(addr345);
                                    }
                                    §§goto(addr297);
                                 }
                                 §§goto(addr396);
                              }
                              §§goto(addr345);
                           }
                           §§goto(addr147);
                        }
                        §§goto(addr137);
                     }
                     §§goto(addr159);
                  }
                  §§goto(addr100);
               }
               §§goto(addr96);
            }
            §§goto(addr100);
         }
         §§goto(addr103);
      }
      
      public static function §'!+§(param1:Vector.<§=8§>, param2:b2PolygonShape, param3:b2Transform, param4:int, param5:b2PolygonShape, param6:b2Transform) : void
      {
         var _loc24_:Boolean = true;
         var _loc25_:Boolean = false;
         var _loc12_:b2Mat22 = null;
         var _loc13_:b2Vec2 = null;
         var _loc20_:§=8§ = null;
         var _loc23_:* = NaN;
         §§push(param2.§,L§);
         if(!_loc25_)
         {
            §§push(int(§§pop()));
         }
         var _loc7_:* = §§pop();
         var _loc8_:Vector.<b2Vec2> = param2.§2!-§;
         §§push(param5.§,L§);
         if(_loc24_)
         {
            §§push(int(§§pop()));
         }
         var _loc9_:* = §§pop();
         var _loc10_:Vector.<b2Vec2> = param5.§#!w§;
         var _loc11_:Vector.<b2Vec2> = param5.§2!-§;
         _loc12_ = param3.R;
         _loc13_ = _loc8_[param4];
         §§push(_loc12_.col1.x);
         if(_loc24_ || b2Collision)
         {
            §§push(_loc13_.x);
            if(_loc24_)
            {
               §§push(§§pop() * §§pop());
               if(!(_loc25_ && param1))
               {
                  §§push(_loc12_.col2.x);
                  if(!_loc25_)
                  {
                     addr87:
                     §§push(§§pop() * _loc13_.y);
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc24_)
                  {
                     addr94:
                     var _loc14_:Number = §§pop();
                     §§push(_loc12_.col1.y);
                     if(!_loc25_)
                     {
                        §§push(_loc13_.x);
                        if(_loc24_)
                        {
                           §§push(§§pop() * §§pop());
                           if(!_loc25_)
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
                           if(!(_loc25_ && b2Collision))
                           {
                              §§push(_loc14_);
                              if(_loc24_ || param1)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(!_loc25_)
                                 {
                                    addr150:
                                    §§push(_loc12_.col1.y);
                                    if(_loc24_ || b2Collision)
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
                                    if(!(_loc25_ && param3))
                                    {
                                       §§push(_loc12_.col2.x);
                                       if(_loc24_ || param1)
                                       {
                                          §§push(_loc14_);
                                          if(!(_loc25_ && param3))
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(_loc24_)
                                             {
                                                addr195:
                                                §§push(_loc12_.col2.y);
                                                if(!_loc25_)
                                                {
                                                   addr202:
                                                   §§push(§§pop() + §§pop() * _loc15_);
                                                   if(_loc24_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      if(_loc24_ || b2Collision)
                                                      {
                                                      }
                                                      addr230:
                                                      _loc14_ = §§pop();
                                                      addr231:
                                                      var _loc17_:* = 0;
                                                      var _loc18_:* = Number(Number.MAX_VALUE);
                                                      var _loc19_:int = 0;
                                                      loop0:
                                                      while(true)
                                                      {
                                                         §§push(_loc19_);
                                                         if(!(_loc25_ && param2))
                                                         {
                                                            §§push(_loc9_);
                                                            if(!(_loc25_ && param2))
                                                            {
                                                               if(§§pop() >= §§pop())
                                                               {
                                                                  §§push(_loc17_);
                                                                  if(!(_loc25_ && param2))
                                                                  {
                                                                     break;
                                                                  }
                                                                  addr370:
                                                                  §§push(§§pop());
                                                               }
                                                               else
                                                               {
                                                                  _loc13_ = _loc11_[_loc19_];
                                                                  if(!(_loc25_ && param1))
                                                                  {
                                                                     §§push(_loc14_);
                                                                     if(!_loc25_)
                                                                     {
                                                                        §§push(_loc13_.x);
                                                                        if(_loc24_ || b2Collision)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(!_loc25_)
                                                                           {
                                                                              §§push(_loc15_);
                                                                              if(_loc24_)
                                                                              {
                                                                                 §§push(§§pop() * _loc13_.y);
                                                                                 if(!(_loc25_ && b2Collision))
                                                                                 {
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(!_loc25_)
                                                                                    {
                                                                                       addr307:
                                                                                       §§push(Number(§§pop()));
                                                                                       if(!(_loc25_ && param3))
                                                                                       {
                                                                                          §§push(§§pop());
                                                                                          if(!(_loc25_ && param3))
                                                                                          {
                                                                                             addr323:
                                                                                             _loc23_ = §§pop();
                                                                                             if(_loc25_ && param2)
                                                                                             {
                                                                                             }
                                                                                             loop5:
                                                                                             while(true)
                                                                                             {
                                                                                                _loc18_ = §§pop();
                                                                                                loop6:
                                                                                                while(true)
                                                                                                {
                                                                                                   loop3:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc19_);
                                                                                                      if(_loc24_)
                                                                                                      {
                                                                                                         §§push(int(§§pop()));
                                                                                                      }
                                                                                                      _loc17_ = §§pop();
                                                                                                      addr266:
                                                                                                      addr275:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc25_ && param2)
                                                                                                         {
                                                                                                            continue loop6;
                                                                                                         }
                                                                                                         if(!_loc25_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         addr333:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc23_);
                                                                                                            if(_loc24_ || param1)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                            }
                                                                                                            continue loop5;
                                                                                                         }
                                                                                                      }
                                                                                                      loop7:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         addr254:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc19_++;
                                                                                                            if(_loc24_)
                                                                                                            {
                                                                                                               if(true)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               continue loop3;
                                                                                                            }
                                                                                                            §§goto(addr266);
                                                                                                            continue loop7;
                                                                                                         }
                                                                                                         continue loop0;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             addr342:
                                                                                          }
                                                                                          addr332:
                                                                                          if(§§pop() < §§pop())
                                                                                          {
                                                                                             §§goto(addr333);
                                                                                          }
                                                                                          §§goto(addr254);
                                                                                       }
                                                                                       §§push(_loc18_);
                                                                                    }
                                                                                    §§goto(addr342);
                                                                                 }
                                                                                 §§goto(addr332);
                                                                              }
                                                                              §§goto(addr323);
                                                                           }
                                                                           §§goto(addr307);
                                                                        }
                                                                     }
                                                                     §§goto(addr323);
                                                                  }
                                                                  §§goto(addr275);
                                                               }
                                                            }
                                                            var _loc21_:* = §§pop();
                                                            if(_loc24_ || param1)
                                                            {
                                                               §§push(1);
                                                               if(_loc24_ || b2Collision)
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
                                                                           §§push(int(§§pop() + 1));
                                                                           if(_loc24_ || param2)
                                                                           {
                                                                           }
                                                                        }
                                                                        addr411:
                                                                        var _loc22_:int = §§pop();
                                                                        _loc20_ = param1[0];
                                                                        _loc13_ = _loc10_[_loc21_];
                                                                        _loc12_ = param6.R;
                                                                        if(_loc24_)
                                                                        {
                                                                           §§push(_loc20_.v);
                                                                           loop8:
                                                                           while(true)
                                                                           {
                                                                              §§push(param6.position);
                                                                              addr626:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().x);
                                                                                 addr627:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc12_.col1);
                                                                                    addr629:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().x);
                                                                                       addr630:
                                                                                       loop12:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc13_.x);
                                                                                          if(!_loc25_)
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc12_.col2);
                                                                                                addr637:
                                                                                                addr545:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop().x);
                                                                                                }
                                                                                                if(_loc25_ && param3)
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                §§push(_loc13_.x);
                                                                                                if(_loc24_)
                                                                                                {
                                                                                                   if(_loc24_ || param1)
                                                                                                   {
                                                                                                      if(_loc24_ || param3)
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         if(!(_loc25_ && param1))
                                                                                                         {
                                                                                                            addr578:
                                                                                                            if(_loc24_ || param1)
                                                                                                            {
                                                                                                               if(_loc25_)
                                                                                                               {
                                                                                                                  continue loop12;
                                                                                                               }
                                                                                                               §§push(_loc12_.col2);
                                                                                                               if(!(_loc25_ && b2Collision))
                                                                                                               {
                                                                                                                  §§push(§§pop().y);
                                                                                                                  if(!(_loc25_ && param2))
                                                                                                                  {
                                                                                                                     §§push(_loc13_.y);
                                                                                                                     if(_loc24_)
                                                                                                                     {
                                                                                                                        addr609:
                                                                                                                        §§push(§§pop() + (§§pop() + §§pop() * §§pop()));
                                                                                                                        if(_loc24_ || param1)
                                                                                                                        {
                                                                                                                           §§pop().y = §§pop();
                                                                                                                           loop21:
                                                                                                                           while(_loc24_)
                                                                                                                           {
                                                                                                                              §§push(_loc20_.id);
                                                                                                                              loop22:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop().§]G§);
                                                                                                                                 loop23:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(param4);
                                                                                                                                    loop24:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§pop().§]p§ = §§pop();
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          loop26:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc20_.id);
                                                                                                                                             loop27:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop().§]G§);
                                                                                                                                                addr483:
                                                                                                                                                while(_loc24_ || b2Collision)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc21_);
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(_loc25_ && param3)
                                                                                                                                                      {
                                                                                                                                                         break;
                                                                                                                                                         addr499:
                                                                                                                                                      }
                                                                                                                                                      §§pop().§"!o§ = §§pop();
                                                                                                                                                      while(_loc24_)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc20_.id);
                                                                                                                                                         if(_loc24_ || b2Collision)
                                                                                                                                                         {
                                                                                                                                                            continue loop22;
                                                                                                                                                         }
                                                                                                                                                         continue loop27;
                                                                                                                                                      }
                                                                                                                                                      §§push(0);
                                                                                                                                                      addr459:
                                                                                                                                                      continue loop21;
                                                                                                                                                      if(!(_loc24_ || param1))
                                                                                                                                                      {
                                                                                                                                                         continue;
                                                                                                                                                      }
                                                                                                                                                      §§pop().§8!"§ = §§pop();
                                                                                                                                                      if(_loc24_)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc24_ || b2Collision))
                                                                                                                                                         {
                                                                                                                                                            break loop26;
                                                                                                                                                         }
                                                                                                                                                         if(false)
                                                                                                                                                         {
                                                                                                                                                            continue loop26;
                                                                                                                                                         }
                                                                                                                                                         _loc20_ = param1[1];
                                                                                                                                                         _loc13_ = _loc10_[_loc22_];
                                                                                                                                                         _loc12_ = param6.R;
                                                                                                                                                         if(!_loc25_)
                                                                                                                                                         {
                                                                                                                                                            addr869:
                                                                                                                                                            addr830:
                                                                                                                                                            addr828:
                                                                                                                                                            §§push(_loc20_.v);
                                                                                                                                                            §§push(param6.position.x);
                                                                                                                                                            if(!(_loc25_ && param3))
                                                                                                                                                            {
                                                                                                                                                               addr868:
                                                                                                                                                               §§push(_loc12_.col1.x * _loc13_.x);
                                                                                                                                                               if(_loc24_ || param1)
                                                                                                                                                               {
                                                                                                                                                                  addr866:
                                                                                                                                                                  §§push(§§pop() + _loc12_.col2.x * _loc13_.y);
                                                                                                                                                               }
                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                            }
                                                                                                                                                            §§pop().x = §§pop();
                                                                                                                                                            addr870:
                                                                                                                                                            §§push(_loc20_.v);
                                                                                                                                                            if(!_loc25_)
                                                                                                                                                            {
                                                                                                                                                               §§push(param6.position);
                                                                                                                                                               if(!_loc25_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop().y);
                                                                                                                                                                  if(_loc24_ || param1)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc12_.col1);
                                                                                                                                                                     if(_loc24_ || b2Collision)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop().y);
                                                                                                                                                                        if(!_loc25_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc13_.x);
                                                                                                                                                                           if(_loc24_ || param2)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                              if(!_loc25_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc24_ || b2Collision)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc12_.col2);
                                                                                                                                                                                    if(_loc24_ || param3)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop().y);
                                                                                                                                                                                       if(_loc24_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc25_ && param1))
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc24_ || param1)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc13_.y);
                                                                                                                                                                                                if(_loc24_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr804:
                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                   if(_loc24_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr807:
                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                      if(!(_loc25_ && param2))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr815:
                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                         if(_loc24_ || param1)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§pop().y = §§pop();
                                                                                                                                                                                                            addr823:
                                                                                                                                                                                                            if(_loc24_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr721:
                                                                                                                                                                                                               _loc20_.id.§]G§.§]p§ = param4;
                                                                                                                                                                                                               addr722:
                                                                                                                                                                                                               addr720:
                                                                                                                                                                                                               addr719:
                                                                                                                                                                                                               if(!_loc25_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr703:
                                                                                                                                                                                                                  §§push(_loc20_.id);
                                                                                                                                                                                                                  if(_loc24_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr706:
                                                                                                                                                                                                                     §§push(§§pop().§]G§);
                                                                                                                                                                                                                     if(_loc24_ || param1)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr714:
                                                                                                                                                                                                                        §§pop().§"!o§ = _loc22_;
                                                                                                                                                                                                                        addr715:
                                                                                                                                                                                                                        §§push(_loc20_.id);
                                                                                                                                                                                                                        if(!_loc25_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop().§]G§);
                                                                                                                                                                                                                           if(!_loc25_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(1);
                                                                                                                                                                                                                              if(!(_loc25_ && param3))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc24_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§pop().§8!"§ = §§pop();
                                                                                                                                                                                                                                    if(_loc24_ || param3)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!(_loc24_ || param3))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§goto(addr722);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       return;
                                                                                                                                                                                                                                       addr699:
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr715);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr721);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr714);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr706);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr703);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr720);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr719);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr823);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr870);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr869);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr868);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr866);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr804);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr866);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr868);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr807);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr804);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr807);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr868);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr815);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr830);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr828);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr699);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr499);
                                                                                                                                                      }
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
                                                                                                                           continue loop8;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr640:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           addr641:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              addr642:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr640:
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§pop().x = §§pop();
                                                                                                                        continue loop8;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr609);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr637);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr642);
                                                                                                         }
                                                                                                         §§goto(addr609);
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§goto(addr640);
                                                                                                      }
                                                                                                      addr638:
                                                                                                   }
                                                                                                   §§goto(addr641);
                                                                                                }
                                                                                                §§goto(addr609);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr638);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           addr624:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc20_.v);
                                                                           if(!_loc25_)
                                                                           {
                                                                              §§push(param6.position);
                                                                              if(!_loc25_)
                                                                              {
                                                                                 §§push(§§pop().y);
                                                                                 if(!(_loc25_ && param3))
                                                                                 {
                                                                                    if(!(_loc25_ && b2Collision))
                                                                                    {
                                                                                       §§push(_loc12_.col1);
                                                                                       if(!_loc25_)
                                                                                       {
                                                                                          §§push(§§pop().y);
                                                                                          if(_loc24_ || param3)
                                                                                          {
                                                                                             §§goto(addr545);
                                                                                          }
                                                                                          §§goto(addr578);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr629);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr627);
                                                                                    }
                                                                                    §§goto(addr629);
                                                                                 }
                                                                                 §§goto(addr609);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr626);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr624);
                                                                           }
                                                                           §§goto(addr626);
                                                                        }
                                                                        addr410:
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(0);
                                                                        if(_loc24_)
                                                                        {
                                                                           §§goto(addr410);
                                                                        }
                                                                        §§goto(addr411);
                                                                     }
                                                                     §§goto(addr411);
                                                                  }
                                                               }
                                                               §§goto(addr398);
                                                            }
                                                            §§goto(addr411);
                                                         }
                                                         break;
                                                      }
                                                      §§goto(addr370);
                                                      §§push(int(§§pop()));
                                                      addr229:
                                                   }
                                                   _loc15_ = §§pop();
                                                   if(_loc24_ || param2)
                                                   {
                                                      addr221:
                                                      §§push(_loc16_);
                                                      if(_loc24_ || b2Collision)
                                                      {
                                                         §§goto(addr229);
                                                      }
                                                      §§goto(addr230);
                                                   }
                                                   §§goto(addr231);
                                                }
                                                §§goto(addr202);
                                             }
                                             §§goto(addr230);
                                          }
                                          §§goto(addr202);
                                       }
                                       §§goto(addr195);
                                    }
                                    §§goto(addr221);
                                 }
                                 §§goto(addr165);
                              }
                              §§goto(addr160);
                           }
                           §§goto(addr150);
                        }
                        §§goto(addr112);
                     }
                     §§goto(addr107);
                  }
               }
               §§goto(addr94);
            }
            §§goto(addr87);
         }
         §§goto(addr94);
      }
      
      private static function §!!8§() : Vector.<§=8§>
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Vector.<§=8§> = new Vector.<§=8§>(2);
         if(_loc2_)
         {
            _loc1_[0] = new §=8§();
         }
         do
         {
            _loc1_[1] = new §=8§();
         }
         while(!(_loc2_ || _loc1_));
         
         return _loc1_;
      }
      
      public static function §%!8§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2PolygonShape, param5:b2Transform) : void
      {
         var _loc46_:Boolean = false;
         var _loc47_:Boolean = true;
         var _loc6_:§=8§ = null;
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
         var _loc44_:Number = NaN;
         var _loc45_:* = NaN;
         if(_loc47_)
         {
            param1.§63§ = 0;
         }
         var _loc7_:Number = param2.§9!A§ + param4.§9!A§;
         var _loc8_:* = 0;
         if(!(_loc46_ && param2))
         {
            §<!P§[0] = _loc8_;
         }
         §§push(§ !g§(§<!P§,param2,param3,param4,param5));
         if(_loc47_)
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         if(!_loc46_)
         {
            §§push(int(§<!P§[0]));
            if(!(_loc46_ && param2))
            {
               _loc8_ = §§pop();
               if(_loc47_ || param3)
               {
                  addr111:
                  if(_loc9_ > _loc7_)
                  {
                     if(!_loc46_)
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
               §?!N§[0] = _loc10_;
            }
            §§push(§ !g§(§?!N§,param4,param5,param2,param3));
            if(!_loc46_)
            {
               §§push(Number(§§pop()));
            }
            var _loc11_:* = §§pop();
            if(!(_loc46_ && param2))
            {
               _loc10_ = int(§?!N§[0]);
               if(!_loc46_)
               {
                  §§push(_loc11_);
                  if(!(_loc46_ && param3))
                  {
                     if(§§pop() > _loc7_)
                     {
                        if(!_loc46_)
                        {
                           §§goto(addr162);
                        }
                     }
                     §§push(0.98);
                     if(!(_loc46_ && b2Collision))
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  var _loc18_:* = §§pop();
                  §§push(0.001);
                  if(!(_loc46_ && param1))
                  {
                     §§push(Number(§§pop()));
                  }
                  var _loc19_:* = §§pop();
                  if(_loc47_)
                  {
                     §§push(_loc11_);
                     §§push(_loc18_);
                     if(_loc47_ || b2Collision)
                     {
                        §§push(_loc9_);
                        if(!_loc46_)
                        {
                           §§push(§§pop() * §§pop());
                           if(!_loc46_)
                           {
                              addr201:
                              §§push(§§pop() + _loc19_);
                           }
                           if(§§pop() > §§pop())
                           {
                              addr203:
                              _loc12_ = param4;
                              _loc13_ = param2;
                              _loc14_ = param5;
                              _loc15_ = param3;
                              if(!_loc46_)
                              {
                                 §§push(_loc10_);
                                 if(!(_loc46_ && param1))
                                 {
                                    §§push(int(§§pop()));
                                 }
                                 while(true)
                                 {
                                    _loc16_ = §§pop();
                                    addr235:
                                    §§push(1);
                                    if(!_loc47_)
                                    {
                                       continue;
                                    }
                                    _loc17_ = §§pop();
                                    if(_loc47_)
                                    {
                                       if(false)
                                       {
                                          loop20:
                                          while(true)
                                          {
                                             param1.§+!?§ = b2Manifold.§6!X§;
                                             addr233:
                                             addr246:
                                             while(!_loc46_)
                                             {
                                                §§goto(addr235);
                                             }
                                             while(true)
                                             {
                                                continue loop20;
                                             }
                                          }
                                       }
                                       addr302:
                                       var _loc21_:Vector.<§=8§> = §0!p§;
                                       if(!_loc46_)
                                       {
                                          §'!+§(_loc21_,_loc12_,_loc14_,_loc16_,_loc13_,_loc15_);
                                       }
                                       §§push(_loc12_.§,L§);
                                       if(_loc47_ || param2)
                                       {
                                          §§push(int(§§pop()));
                                       }
                                       var _loc22_:* = §§pop();
                                       var _loc23_:Vector.<b2Vec2>;
                                       var _loc24_:b2Vec2 = (_loc23_ = _loc12_.§#!w§)[_loc16_];
                                       if(!(_loc46_ && param1))
                                       {
                                          if(_loc16_ + 1 < _loc22_)
                                          {
                                             addr347:
                                             _loc25_ = _loc23_[int(_loc16_ + 1)];
                                          }
                                          else
                                          {
                                             _loc25_ = _loc23_[0];
                                          }
                                          var _loc26_:b2Vec2;
                                          §§push(_loc26_ = §3!0§);
                                          §§push(_loc25_.x);
                                          if(!_loc46_)
                                          {
                                             §§push(_loc24_.x);
                                             if(_loc47_ || b2Collision)
                                             {
                                                addr380:
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
                                             (_loc27_ = §@!w§).x = _loc26_.y;
                                             if(!(_loc46_ && param1))
                                             {
                                                §§push(_loc27_);
                                                §§push(_loc26_.x);
                                                if(!(_loc46_ && b2Collision))
                                                {
                                                   §§push(-§§pop());
                                                }
                                                §§pop().y = §§pop();
                                             }
                                             var _loc28_:b2Vec2;
                                             §§push(_loc28_ = §5%§);
                                             §§push(0.5);
                                             if(!_loc46_)
                                             {
                                                §§push(_loc24_.x);
                                                if(_loc47_ || param3)
                                                {
                                                   §§push(_loc25_.x);
                                                   if(_loc47_)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc47_)
                                                      {
                                                         addr442:
                                                         §§push(§§pop() * §§pop());
                                                         §§push(0.5);
                                                         if(_loc47_ || param2)
                                                         {
                                                         }
                                                         addr458:
                                                         §§pop().Set(§§pop(),§§pop());
                                                         var _loc29_:b2Vec2 = §7S§;
                                                         _loc20_ = _loc14_.R;
                                                         if(_loc47_)
                                                         {
                                                            §§push(_loc29_);
                                                            §§push(_loc20_.col1.x);
                                                            if(!_loc46_)
                                                            {
                                                               §§push(_loc26_.x);
                                                               if(!(_loc46_ && param1))
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(_loc47_)
                                                                  {
                                                                     addr495:
                                                                     §§push(_loc20_.col2.x);
                                                                     if(_loc47_)
                                                                     {
                                                                        addr491:
                                                                        §§push(§§pop() * _loc26_.y);
                                                                     }
                                                                     §§pop().x = §§pop() + §§pop();
                                                                     if(!(_loc46_ && param3))
                                                                     {
                                                                        §§push(_loc29_);
                                                                        §§push(_loc20_.col1.y);
                                                                        if(!(_loc46_ && param1))
                                                                        {
                                                                           §§push(_loc26_.x);
                                                                           if(!(_loc46_ && param2))
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              if(_loc47_ || param2)
                                                                              {
                                                                                 addr531:
                                                                                 §§push(_loc20_.col2.y);
                                                                                 if(!_loc46_)
                                                                                 {
                                                                                    addr536:
                                                                                    §§push(§§pop() * _loc26_.y);
                                                                                 }
                                                                                 §§push(§§pop() + §§pop());
                                                                              }
                                                                              §§pop().y = §§pop();
                                                                              addr541:
                                                                              var _loc30_:b2Vec2;
                                                                              §§push(_loc30_ = s_tangent2);
                                                                              §§push(_loc29_.x);
                                                                              if(!(_loc46_ && param2))
                                                                              {
                                                                                 §§push(-§§pop());
                                                                              }
                                                                              §§pop().x = §§pop();
                                                                              if(!_loc46_)
                                                                              {
                                                                                 §§push(_loc30_);
                                                                                 §§push(_loc29_.y);
                                                                                 if(!(_loc46_ && param2))
                                                                                 {
                                                                                    §§push(-§§pop());
                                                                                 }
                                                                                 §§pop().y = §§pop();
                                                                              }
                                                                              var _loc31_:b2Vec2;
                                                                              (_loc31_ = §@!a§).x = _loc29_.y;
                                                                              if(!_loc46_)
                                                                              {
                                                                                 §§push(_loc31_);
                                                                                 §§push(_loc29_.x);
                                                                                 if(_loc47_ || param1)
                                                                                 {
                                                                                    §§push(-§§pop());
                                                                                 }
                                                                                 §§pop().y = §§pop();
                                                                              }
                                                                              var _loc32_:b2Vec2 = s_v11;
                                                                              var _loc33_:b2Vec2 = s_v12;
                                                                              if(!(_loc46_ && b2Collision))
                                                                              {
                                                                                 §§push(_loc32_);
                                                                                 §§push(_loc14_.position.x);
                                                                                 if(!(_loc46_ && param2))
                                                                                 {
                                                                                    §§push(_loc20_.col1.x);
                                                                                    if(_loc47_ || param1)
                                                                                    {
                                                                                       §§push(_loc24_.x);
                                                                                       if(_loc47_)
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(!(_loc46_ && param2))
                                                                                          {
                                                                                             addr807:
                                                                                             §§push(_loc20_.col2.x);
                                                                                             if(!(_loc46_ && param3))
                                                                                             {
                                                                                                addr803:
                                                                                                §§push(§§pop() * _loc24_.y);
                                                                                             }
                                                                                             §§pop().x = §§pop() + (§§pop() + §§pop());
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc32_);
                                                                                                §§push(_loc14_.position.y);
                                                                                                if(_loc47_)
                                                                                                {
                                                                                                   §§push(_loc20_.col1.y);
                                                                                                   if(!_loc46_)
                                                                                                   {
                                                                                                      §§push(_loc24_.x);
                                                                                                      if(!(_loc46_ && b2Collision))
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         if(!_loc46_)
                                                                                                         {
                                                                                                            addr755:
                                                                                                            §§push(_loc20_.col2.y);
                                                                                                            if(_loc47_ || param1)
                                                                                                            {
                                                                                                               addr751:
                                                                                                               §§push(§§pop() * _loc24_.y);
                                                                                                            }
                                                                                                            §§pop().y = §§pop() + (§§pop() + §§pop());
                                                                                                            loop6:
                                                                                                            for(; !_loc46_; do
                                                                                                            {
                                                                                                               if(!(_loc47_ || param1))
                                                                                                               {
                                                                                                                  continue loop6;
                                                                                                               }
                                                                                                               §§push(_loc33_);
                                                                                                               §§push(_loc14_.position.y);
                                                                                                               if(_loc46_ && param3)
                                                                                                               {
                                                                                                                  continue;
                                                                                                               }
                                                                                                               §§push(_loc20_.col1.y);
                                                                                                               if(!_loc46_)
                                                                                                               {
                                                                                                                  §§push(_loc25_.x);
                                                                                                                  if(_loc47_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     if(!(_loc46_ && param1))
                                                                                                                     {
                                                                                                                        addr643:
                                                                                                                        §§push(_loc20_.col2.y);
                                                                                                                        if(_loc47_)
                                                                                                                        {
                                                                                                                           addr639:
                                                                                                                           §§push(§§pop() * _loc25_.y);
                                                                                                                        }
                                                                                                                        §§push(§§pop() + (§§pop() + §§pop()));
                                                                                                                        continue;
                                                                                                                     }
                                                                                                                     §§goto(addr643);
                                                                                                                  }
                                                                                                                  §§goto(addr639);
                                                                                                               }
                                                                                                               §§goto(addr643);
                                                                                                            }
                                                                                                            while(§§pop().y = §§pop(), _loc46_ && param2);
                                                                                                            ,while(false)
                                                                                                            {
                                                                                                               §§goto(addr654);
                                                                                                            },§§push(_loc31_.x),if(!(_loc46_ && b2Collision))
                                                                                                            {
                                                                                                               §§push(_loc32_.x);
                                                                                                               if(!(_loc46_ && param2))
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(!(_loc46_ && b2Collision))
                                                                                                                  {
                                                                                                                     §§push(_loc31_.y);
                                                                                                                     if(_loc47_ || param1)
                                                                                                                     {
                                                                                                                        addr845:
                                                                                                                        §§push(§§pop() * _loc32_.y);
                                                                                                                     }
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     if(_loc47_ || param3)
                                                                                                                     {
                                                                                                                        addr857:
                                                                                                                        var _loc34_:Number = §§pop();
                                                                                                                        §§push(_loc29_.x);
                                                                                                                        if(!_loc46_)
                                                                                                                        {
                                                                                                                           §§push(-§§pop());
                                                                                                                           if(!_loc46_)
                                                                                                                           {
                                                                                                                              addr865:
                                                                                                                              §§push(_loc32_.x);
                                                                                                                              if(_loc47_ || param2)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 if(!(_loc46_ && param3))
                                                                                                                                 {
                                                                                                                                    §§push(_loc29_.y);
                                                                                                                                    if(_loc47_ || param2)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * _loc32_.y);
                                                                                                                                       if(!_loc46_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                          if(_loc47_)
                                                                                                                                          {
                                                                                                                                             addr900:
                                                                                                                                             §§push(§§pop() + _loc7_);
                                                                                                                                             if(_loc47_ || b2Collision)
                                                                                                                                             {
                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr900);
                                                                                                                                 }
                                                                                                                                 var _loc35_:* = §§pop();
                                                                                                                                 §§push(_loc29_.x);
                                                                                                                                 if(_loc47_ || param3)
                                                                                                                                 {
                                                                                                                                    §§push(_loc33_.x);
                                                                                                                                    if(!(_loc46_ && b2Collision))
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       if(_loc47_ || param3)
                                                                                                                                       {
                                                                                                                                          §§push(_loc29_.y);
                                                                                                                                          if(!(_loc46_ && param1))
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * _loc33_.y);
                                                                                                                                             if(_loc47_)
                                                                                                                                             {
                                                                                                                                                addr963:
                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                if(!_loc46_)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc7_);
                                                                                                                                                }
                                                                                                                                                var _loc36_:* = §§pop();
                                                                                                                                                var _loc37_:Vector.<§=8§> = s_clipPoints1;
                                                                                                                                                var _loc38_:Vector.<§=8§> = s_clipPoints2;
                                                                                                                                                if(!(_loc46_ && b2Collision))
                                                                                                                                                {
                                                                                                                                                   §§push(§,!,§(_loc37_,_loc21_,_loc30_,_loc35_));
                                                                                                                                                   loop10:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(int(§§pop()));
                                                                                                                                                      if(!_loc46_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop());
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            _loc39_ = §§pop();
                                                                                                                                                            loop12:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(2);
                                                                                                                                                               addr1073:
                                                                                                                                                               loop13:
                                                                                                                                                               while(§§pop() >= §§pop())
                                                                                                                                                               {
                                                                                                                                                                  loop14:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§,!,§(_loc38_,_loc37_,_loc29_,_loc36_));
                                                                                                                                                                     if(!(_loc46_ && param1))
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc46_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(int(§§pop()));
                                                                                                                                                                           if(_loc46_)
                                                                                                                                                                           {
                                                                                                                                                                              if(§§pop() >= 2)
                                                                                                                                                                              {
                                                                                                                                                                                 loop15:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    param1.§=i§.SetV(_loc27_);
                                                                                                                                                                                    while(!_loc46_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc47_)
                                                                                                                                                                                       {
                                                                                                                                                                                          param1.m_localPoint.SetV(_loc28_);
                                                                                                                                                                                          if(_loc47_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                break loop14;
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop15;
                                                                                                                                                                                          }
                                                                                                                                                                                          continue;
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    if(_loc46_)
                                                                                                                                                                                    {
                                                                                                                                                                                       break;
                                                                                                                                                                                    }
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop15;
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 continue;
                                                                                                                                                                              }
                                                                                                                                                                              if(_loc47_ || param1)
                                                                                                                                                                              {
                                                                                                                                                                                 return;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              addr1048:
                                                                                                                                                                              addr1049:
                                                                                                                                                                           }
                                                                                                                                                                           continue loop10;
                                                                                                                                                                           break loop13;
                                                                                                                                                                        }
                                                                                                                                                                        continue loop12;
                                                                                                                                                                     }
                                                                                                                                                                     continue loop10;
                                                                                                                                                                  }
                                                                                                                                                                  var _loc40_:* = §§pop();
                                                                                                                                                                  var _loc41_:int = 0;
                                                                                                                                                                  addr1360:
                                                                                                                                                                  if(_loc41_ < b2Settings.b2_maxManifoldPoints)
                                                                                                                                                                  {
                                                                                                                                                                     _loc6_ = _loc38_[_loc41_];
                                                                                                                                                                     if(_loc47_ || param2)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc31_.x);
                                                                                                                                                                        if(_loc47_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc6_.v.x);
                                                                                                                                                                           if(_loc47_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                              if(!_loc46_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr1106:
                                                                                                                                                                                 §§push(_loc31_.y);
                                                                                                                                                                                 if(_loc47_ || b2Collision)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() * _loc6_.v.y);
                                                                                                                                                                                    if(!_loc47_)
                                                                                                                                                                                    {
                                                                                                                                                                                    }
                                                                                                                                                                                    addr1153:
                                                                                                                                                                                    if(§§pop() <= §§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc46_)
                                                                                                                                                                                       {
                                                                                                                                                                                          _loc43_ = param1.§,!f§[_loc40_];
                                                                                                                                                                                          _loc20_ = _loc15_.R;
                                                                                                                                                                                          if(!(_loc46_ && b2Collision))
                                                                                                                                                                                          {
                                                                                                                                                                                             addr1357:
                                                                                                                                                                                             _loc44_ = _loc6_.v.x - _loc15_.position.x;
                                                                                                                                                                                             addr1358:
                                                                                                                                                                                             addr1356:
                                                                                                                                                                                             addr1355:
                                                                                                                                                                                             addr1354:
                                                                                                                                                                                             addr1352:
                                                                                                                                                                                             §§push(_loc6_.v);
                                                                                                                                                                                             if(!_loc46_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop().y);
                                                                                                                                                                                                if(!_loc46_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc46_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc15_.position);
                                                                                                                                                                                                      if(!_loc46_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop().y);
                                                                                                                                                                                                         if(_loc47_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() - §§pop());
                                                                                                                                                                                                            if(!_loc46_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr1322:
                                                                                                                                                                                                               if(_loc47_ || b2Collision)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr1330:
                                                                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                                                                  if(_loc47_ || param1)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     _loc45_ = §§pop();
                                                                                                                                                                                                                     addr1289:
                                                                                                                                                                                                                     addr1286:
                                                                                                                                                                                                                     addr1298:
                                                                                                                                                                                                                     addr1297:
                                                                                                                                                                                                                     addr1290:
                                                                                                                                                                                                                     addr1285:
                                                                                                                                                                                                                     §§push(_loc43_.m_localPoint);
                                                                                                                                                                                                                     §§push(_loc44_ * _loc20_.col1.x);
                                                                                                                                                                                                                     §§push(_loc45_);
                                                                                                                                                                                                                     if(!_loc46_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr1296:
                                                                                                                                                                                                                        §§push(§§pop() * _loc20_.col1.y);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§pop().x = §§pop() + §§pop();
                                                                                                                                                                                                                     addr1299:
                                                                                                                                                                                                                     addr1348:
                                                                                                                                                                                                                     if(!_loc46_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc43_.m_localPoint);
                                                                                                                                                                                                                        if(_loc47_ || param3)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(_loc44_);
                                                                                                                                                                                                                           if(_loc47_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!(_loc46_ && param2))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc20_.col2.x);
                                                                                                                                                                                                                                 if(!_loc46_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!(_loc46_ && param3))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                       if(_loc47_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc47_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc47_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(_loc45_);
                                                                                                                                                                                                                                                if(!(_loc46_ && param1))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr1254:
                                                                                                                                                                                                                                                   §§push(_loc20_.col2.y);
                                                                                                                                                                                                                                                   if(_loc47_ || b2Collision)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr1265:
                                                                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                      if(_loc47_ || param3)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr1273:
                                                                                                                                                                                                                                                         §§pop().y = §§pop() + §§pop();
                                                                                                                                                                                                                                                         addr1274:
                                                                                                                                                                                                                                                         if(_loc47_ || param2)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr1203:
                                                                                                                                                                                                                                                            _loc43_.m_id.Set(_loc6_.id);
                                                                                                                                                                                                                                                            addr1191:
                                                                                                                                                                                                                                                            addr1206:
                                                                                                                                                                                                                                                            §§push(_loc43_.m_id);
                                                                                                                                                                                                                                                            if(!_loc46_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§pop().§]G§.§7!i§ = _loc17_;
                                                                                                                                                                                                                                                               _loc40_++;
                                                                                                                                                                                                                                                               addr1199:
                                                                                                                                                                                                                                                               if(_loc47_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!_loc46_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc47_ || param3)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(_loc47_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(false)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§goto(addr1191);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           addr1359:
                                                                                                                                                                                                                                                                           _loc41_++;
                                                                                                                                                                                                                                                                           §§goto(addr1360);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1299);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1274);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1206);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               addr1199:
                                                                                                                                                                                                                                                               §§goto(addr1199);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1203);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1348);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1289);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1296);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1265);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1286);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1298);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1273);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1297);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1254);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1290);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1273);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1285);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1358);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1356);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1357);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1330);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1355);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1354);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1352);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1322);
                                                                                                                                                                                             }
                                                                                                                                                                                             addr1351:
                                                                                                                                                                                             §§goto(addr1351);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1199);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1360);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1359);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                 if(!_loc46_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc34_);
                                                                                                                                                                                    if(!(_loc46_ && param1))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                                                                       if(!_loc46_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr1135:
                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                          if(!(_loc46_ && b2Collision))
                                                                                                                                                                                          {
                                                                                                                                                                                             addr1143:
                                                                                                                                                                                             §§push(§§pop());
                                                                                                                                                                                             if(_loc47_ || param3)
                                                                                                                                                                                             {
                                                                                                                                                                                                _loc42_ = §§pop();
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1153);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1153);
                                                                                                                                                                                       §§push(_loc7_);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1153);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1143);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1135);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1153);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1106);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1360);
                                                                                                                                                                  }
                                                                                                                                                                  if(_loc47_)
                                                                                                                                                                  {
                                                                                                                                                                     param1.§63§ = _loc40_;
                                                                                                                                                                  }
                                                                                                                                                                  return;
                                                                                                                                                               }
                                                                                                                                                               return;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         addr1071:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1077);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr1060);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                          if(_loc47_ || param3)
                                                                                                                                          {
                                                                                                                                             §§goto(addr963);
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr963);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr900);
                                                                                                                        }
                                                                                                                        §§goto(addr865);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr857);
                                                                                                               }
                                                                                                               §§goto(addr845);
                                                                                                            },§§goto(addr857))
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc33_);
                                                                                                                  §§push(_loc14_.position.x);
                                                                                                                  if(!(_loc46_ && param2))
                                                                                                                  {
                                                                                                                     §§push(_loc20_.col1.x);
                                                                                                                     if(_loc47_)
                                                                                                                     {
                                                                                                                        §§push(_loc25_.x);
                                                                                                                        if(!_loc46_)
                                                                                                                        {
                                                                                                                           addr708:
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           if(_loc47_ || param1)
                                                                                                                           {
                                                                                                                              addr693:
                                                                                                                              §§push(_loc20_.col2.x);
                                                                                                                              if(!(_loc46_ && param3))
                                                                                                                              {
                                                                                                                                 addr703:
                                                                                                                                 §§push(§§pop() * _loc25_.y);
                                                                                                                              }
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                           }
                                                                                                                           §§pop().x = §§pop() + §§pop();
                                                                                                                           continue loop6;
                                                                                                                        }
                                                                                                                        §§goto(addr703);
                                                                                                                     }
                                                                                                                     §§goto(addr693);
                                                                                                                  }
                                                                                                                  §§goto(addr708);
                                                                                                               }
                                                                                                            }
                                                                                                            continue;
                                                                                                         }
                                                                                                         §§goto(addr755);
                                                                                                      }
                                                                                                      §§goto(addr751);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr755);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr807);
                                                                                       }
                                                                                       §§goto(addr803);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr807);
                                                                              }
                                                                              §§goto(addr652);
                                                                           }
                                                                           §§goto(addr536);
                                                                        }
                                                                        §§goto(addr531);
                                                                     }
                                                                     §§goto(addr541);
                                                                  }
                                                                  §§goto(addr495);
                                                               }
                                                               §§goto(addr491);
                                                            }
                                                            §§goto(addr495);
                                                         }
                                                         §§goto(addr541);
                                                      }
                                                      §§push(_loc24_.y);
                                                      if(!_loc46_)
                                                      {
                                                         §§push(§§pop() + _loc25_.y);
                                                      }
                                                   }
                                                   §§push(§§pop() * §§pop());
                                                }
                                                §§goto(addr458);
                                             }
                                             §§goto(addr442);
                                          }
                                          §§goto(addr380);
                                       }
                                       §§goto(addr347);
                                    }
                                    §§goto(addr233);
                                 }
                              }
                              §§goto(addr246);
                           }
                           else
                           {
                              _loc12_ = param2;
                              _loc13_ = param4;
                              _loc14_ = param3;
                              _loc15_ = param5;
                              if(!(_loc46_ && param1))
                              {
                                 §§push(_loc8_);
                                 if(_loc47_)
                                 {
                                    §§push(int(§§pop()));
                                 }
                                 loop0:
                                 while(true)
                                 {
                                    _loc16_ = §§pop();
                                    addr301:
                                    while(true)
                                    {
                                       addr290:
                                       while(true)
                                       {
                                          param1.§+!?§ = b2Manifold.§+!M§;
                                          continue loop0;
                                       }
                                    }
                                 }
                              }
                              §§goto(addr288);
                           }
                        }
                     }
                     §§goto(addr201);
                  }
                  §§goto(addr203);
               }
            }
            addr162:
            return;
         }
         §§goto(addr111);
      }
      
      public static function §-`§(param1:b2Manifold, param2:b2CircleShape, param3:b2Transform, param4:b2CircleShape, param5:b2Transform) : void
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         var _loc6_:b2Mat22 = null;
         var _loc7_:b2Vec2 = null;
         if(!_loc16_)
         {
            param1.§63§ = 0;
         }
         _loc6_ = param3.R;
         _loc7_ = param2.§]x§;
         §§push(param3.position.x);
         if(!(_loc16_ && param1))
         {
            §§push(_loc6_.col1.x);
            if(_loc17_ || param1)
            {
               §§push(_loc7_.x);
               if(!(_loc16_ && b2Collision))
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc16_ && b2Collision))
                  {
                     addr87:
                     §§push(_loc6_.col2.x);
                     if(_loc17_ || param1)
                     {
                        addr83:
                        §§push(§§pop() * _loc7_.y);
                     }
                     §§push(§§pop() + (§§pop() + §§pop()));
                     if(!(_loc16_ && param1))
                     {
                        addr95:
                        §§push(Number(§§pop()));
                     }
                     var _loc8_:* = §§pop();
                     §§push(param3.position.y);
                     if(!(_loc16_ && b2Collision))
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
                                 addr124:
                                 §§push(_loc6_.col2.y);
                                 if(!(_loc16_ && b2Collision))
                                 {
                                    addr134:
                                    §§push(§§pop() * _loc7_.y);
                                 }
                                 §§push(§§pop() + §§pop());
                              }
                              §§push(§§pop() + §§pop());
                              if(_loc17_)
                              {
                                 addr141:
                                 §§push(Number(§§pop()));
                              }
                              var _loc9_:* = §§pop();
                              _loc6_ = param5.R;
                              _loc7_ = param4.§]x§;
                              §§push(param5.position.x);
                              if(_loc17_ || param1)
                              {
                                 §§push(_loc6_.col1.x);
                                 if(_loc17_ || param3)
                                 {
                                    §§push(_loc7_.x);
                                    if(_loc17_ || param3)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(!_loc16_)
                                       {
                                          addr183:
                                          §§push(_loc6_.col2.x);
                                          if(_loc17_ || param3)
                                          {
                                             addr193:
                                             §§push(§§pop() * _loc7_.y);
                                          }
                                          §§push(§§pop() + §§pop());
                                       }
                                       §§push(§§pop() + §§pop());
                                       if(!(_loc16_ && param1))
                                       {
                                          addr216:
                                          var _loc10_:Number = §§pop();
                                          §§push(param5.position.y);
                                          if(_loc17_ || param2)
                                          {
                                             §§push(_loc6_.col1.y);
                                             if(_loc17_ || param3)
                                             {
                                                §§push(_loc7_.x);
                                                if(!(_loc16_ && param3))
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc17_)
                                                   {
                                                      addr249:
                                                      §§push(_loc6_.col2.y);
                                                      if(_loc17_ || param3)
                                                      {
                                                         addr262:
                                                         §§push(§§pop() + §§pop() * _loc7_.y);
                                                      }
                                                      §§goto(addr262);
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                   if(_loc17_ || b2Collision)
                                                   {
                                                      addr271:
                                                      §§push(Number(§§pop()));
                                                   }
                                                   var _loc11_:* = §§pop();
                                                   §§push(_loc10_);
                                                   if(!(_loc16_ && b2Collision))
                                                   {
                                                      §§push(§§pop() - _loc8_);
                                                      if(_loc17_ || param2)
                                                      {
                                                         addr290:
                                                         §§push(Number(§§pop()));
                                                      }
                                                      var _loc12_:* = §§pop();
                                                      §§push(_loc11_);
                                                      if(!_loc16_)
                                                      {
                                                         §§push(§§pop() - _loc9_);
                                                         if(_loc17_)
                                                         {
                                                            §§push(Number(§§pop()));
                                                         }
                                                      }
                                                      var _loc13_:* = §§pop();
                                                      §§push(_loc12_);
                                                      if(!_loc16_)
                                                      {
                                                         §§push(_loc12_);
                                                         if(_loc17_)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(!_loc16_)
                                                            {
                                                               addr310:
                                                               §§push(_loc13_);
                                                               if(_loc17_)
                                                               {
                                                                  addr313:
                                                                  §§push(§§pop() * _loc13_);
                                                               }
                                                               §§push(§§pop() + §§pop());
                                                               if(!_loc16_)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                               }
                                                            }
                                                            var _loc14_:* = §§pop();
                                                            var _loc15_:Number = param2.§9!A§ + param4.§9!A§;
                                                            if(!_loc16_)
                                                            {
                                                               §§push(_loc14_);
                                                               §§push(_loc15_);
                                                               if(!(_loc16_ && param3))
                                                               {
                                                                  §§push(§§pop() * _loc15_);
                                                               }
                                                               if(§§pop() <= §§pop())
                                                               {
                                                                  loop0:
                                                                  while(true)
                                                                  {
                                                                     param1.§+!?§ = b2Manifold.§"^§;
                                                                     addr419:
                                                                     loop1:
                                                                     while(true)
                                                                     {
                                                                        param1.m_localPoint.SetV(param2.§]x§);
                                                                        do
                                                                        {
                                                                           param1.§=i§.§`!5§();
                                                                           loop3:
                                                                           do
                                                                           {
                                                                              if(_loc17_ || param3)
                                                                              {
                                                                                 param1.§63§ = 1;
                                                                                 for(; _loc17_ || b2Collision; while(!(_loc16_ && param2))
                                                                                 {
                                                                                    param1.§,!f§[0].m_id.key = 0;
                                                                                    if(_loc17_)
                                                                                    {
                                                                                       continue loop3;
                                                                                    }
                                                                                 })
                                                                                 {
                                                                                    if(!_loc16_)
                                                                                    {
                                                                                       param1.§,!f§[0].m_localPoint.SetV(param4.§]x§);
                                                                                       continue;
                                                                                    }
                                                                                 }
                                                                                 continue loop0;
                                                                              }
                                                                              continue loop1;
                                                                           }
                                                                           while(!_loc17_);
                                                                           
                                                                        }
                                                                        while(_loc16_ && param1);
                                                                        
                                                                        return;
                                                                     }
                                                                  }
                                                               }
                                                               return;
                                                            }
                                                            §§goto(addr419);
                                                         }
                                                         §§goto(addr313);
                                                      }
                                                      §§goto(addr310);
                                                   }
                                                   §§goto(addr290);
                                                }
                                                §§goto(addr262);
                                             }
                                             §§goto(addr249);
                                          }
                                          §§goto(addr271);
                                       }
                                       §§goto(addr216);
                                    }
                                    §§goto(addr193);
                                 }
                                 §§goto(addr183);
                              }
                              §§goto(addr216);
                           }
                           §§goto(addr134);
                        }
                        §§goto(addr124);
                     }
                     §§goto(addr141);
                  }
                  §§goto(addr87);
               }
               §§goto(addr83);
            }
            §§goto(addr87);
         }
         §§goto(addr95);
      }
      
      public static function § case§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2CircleShape, param5:b2Transform) : void
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
         if(_loc34_ || param2)
         {
            param1.§63§ = 0;
         }
         _loc12_ = param5.R;
         _loc11_ = param4.§]x§;
         §§push(param5.position.x);
         if(_loc34_)
         {
            §§push(_loc12_.col1.x);
            if(_loc34_)
            {
               §§push(_loc11_.x);
               if(_loc34_ || param3)
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc35_)
                  {
                     addr81:
                     §§push(_loc12_.col2.x);
                     if(!(_loc35_ && param2))
                     {
                        addr91:
                        §§push(§§pop() * _loc11_.y);
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§push(§§pop() + §§pop());
                  if(!_loc35_)
                  {
                     addr98:
                     §§push(Number(§§pop()));
                  }
                  var _loc13_:* = §§pop();
                  §§push(param5.position.y);
                  if(!(_loc35_ && param1))
                  {
                     §§push(_loc12_.col1.y);
                     if(!(_loc35_ && b2Collision))
                     {
                        §§push(_loc11_.x);
                        if(!(_loc35_ && param1))
                        {
                           §§push(§§pop() * §§pop());
                           if(!_loc35_)
                           {
                              addr132:
                              §§push(_loc12_.col2.y);
                              if(_loc34_ || param1)
                              {
                                 addr145:
                                 §§push(§§pop() + §§pop() * _loc11_.y);
                              }
                              §§goto(addr145);
                           }
                           §§push(§§pop() + §§pop());
                           if(!_loc35_)
                           {
                              addr150:
                              var _loc14_:Number = §§pop();
                              if(!(_loc35_ && param3))
                              {
                                 §§push(_loc13_);
                                 if(!_loc35_)
                                 {
                                    §§push(param3.position);
                                    if(_loc34_ || param1)
                                    {
                                       §§push(§§pop().x);
                                       if(!(_loc35_ && b2Collision))
                                       {
                                          §§push(§§pop() - §§pop());
                                          if(!(_loc35_ && b2Collision))
                                          {
                                             §§push(Number(§§pop()));
                                             if(_loc34_)
                                             {
                                                addr189:
                                                _loc7_ = §§pop();
                                                if(!_loc35_)
                                                {
                                                   §§push(_loc14_);
                                                   if(_loc34_ || b2Collision)
                                                   {
                                                      addr200:
                                                      addr203:
                                                      addr202:
                                                      §§push(§§pop() - param3.position.y);
                                                      if(!_loc34_)
                                                      {
                                                      }
                                                      addr207:
                                                      _loc8_ = §§pop();
                                                      _loc12_ = param3.R;
                                                      §§push(_loc7_);
                                                      if(!_loc35_)
                                                      {
                                                         §§push(_loc12_.col1.x);
                                                         if(!(_loc35_ && b2Collision))
                                                         {
                                                            addr243:
                                                            §§push(§§pop() * §§pop());
                                                            if(!(_loc35_ && param3))
                                                            {
                                                               §§push(_loc8_);
                                                               if(_loc34_)
                                                               {
                                                                  §§push(§§pop() * _loc12_.col1.y);
                                                               }
                                                            }
                                                            var _loc15_:Number = §§pop();
                                                            §§push(_loc7_);
                                                            if(!(_loc35_ && param2))
                                                            {
                                                               §§push(_loc12_.col2.x);
                                                               if(_loc34_)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(!(_loc35_ && param1))
                                                                  {
                                                                     §§push(_loc8_);
                                                                     if(!(_loc35_ && param2))
                                                                     {
                                                                        addr274:
                                                                        §§push(§§pop() * _loc12_.col2.y);
                                                                     }
                                                                     §§push(§§pop() + §§pop());
                                                                     if(_loc35_)
                                                                     {
                                                                     }
                                                                     §§goto(addr282);
                                                                  }
                                                                  addr282:
                                                                  var _loc16_:* = §§pop();
                                                                  var _loc18_:* = 0;
                                                                  §§push(-Number.MAX_VALUE);
                                                                  if(!_loc35_)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  var _loc19_:* = §§pop();
                                                                  var _loc20_:Number = param2.§9!A§ + param4.§9!A§;
                                                                  §§push(param2.§,L§);
                                                                  if(!(_loc35_ && param3))
                                                                  {
                                                                     §§push(int(§§pop()));
                                                                  }
                                                                  var _loc21_:* = §§pop();
                                                                  var _loc22_:Vector.<b2Vec2> = param2.§#!w§;
                                                                  var _loc23_:Vector.<b2Vec2> = param2.§2!-§;
                                                                  var _loc24_:int = 0;
                                                                  loop0:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc24_);
                                                                     if(!(_loc35_ && param1))
                                                                     {
                                                                        §§push(_loc21_);
                                                                        if(_loc34_)
                                                                        {
                                                                           if(§§pop() >= §§pop())
                                                                           {
                                                                              §§push(_loc18_);
                                                                              if(_loc34_ || b2Collision)
                                                                              {
                                                                                 addr533:
                                                                                 §§push(int(§§pop()));
                                                                              }
                                                                              §§push(§§pop());
                                                                           }
                                                                           else
                                                                           {
                                                                              _loc11_ = _loc22_[_loc24_];
                                                                              if(_loc34_ || param2)
                                                                              {
                                                                                 §§push(_loc15_);
                                                                                 if(_loc34_)
                                                                                 {
                                                                                    §§push(_loc11_.x);
                                                                                    if(!(_loc35_ && param1))
                                                                                    {
                                                                                       §§push(§§pop() - §§pop());
                                                                                       if(_loc34_ || param2)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          if(_loc34_ || param1)
                                                                                          {
                                                                                             _loc7_ = §§pop();
                                                                                             if(!(_loc35_ && param3))
                                                                                             {
                                                                                                addr370:
                                                                                                §§push(_loc16_);
                                                                                                if(!_loc35_)
                                                                                                {
                                                                                                   addr375:
                                                                                                   §§push(§§pop() - _loc11_.y);
                                                                                                   if(!_loc35_)
                                                                                                   {
                                                                                                      addr378:
                                                                                                      §§push(Number(§§pop()));
                                                                                                   }
                                                                                                   _loc8_ = §§pop();
                                                                                                }
                                                                                                §§goto(addr378);
                                                                                             }
                                                                                             §§push((_loc11_ = _loc23_[_loc24_]).x);
                                                                                             if(!_loc35_)
                                                                                             {
                                                                                                §§push(_loc7_);
                                                                                                if(_loc34_ || param1)
                                                                                                {
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(!(_loc35_ && b2Collision))
                                                                                                   {
                                                                                                      addr405:
                                                                                                      §§push(_loc11_.y);
                                                                                                      if(!(_loc35_ && param3))
                                                                                                      {
                                                                                                         addr414:
                                                                                                         §§push(§§pop() * _loc8_);
                                                                                                         if(!_loc35_)
                                                                                                         {
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            if(!_loc35_)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                               if(_loc35_ && b2Collision)
                                                                                                               {
                                                                                                               }
                                                                                                               addr505:
                                                                                                               if(§§pop() > _loc19_)
                                                                                                               {
                                                                                                                  loop1:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc31_);
                                                                                                                     if(_loc34_)
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                        }
                                                                                                                        addr510:
                                                                                                                     }
                                                                                                                     addr511:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        _loc19_ = §§pop();
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           addr478:
                                                                                                                           addr469:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc24_);
                                                                                                                              if(_loc34_ || param1)
                                                                                                                              {
                                                                                                                                 §§push(int(§§pop()));
                                                                                                                              }
                                                                                                                              _loc18_ = §§pop();
                                                                                                                              continue loop1;
                                                                                                                           }
                                                                                                                           if(_loc35_ && b2Collision)
                                                                                                                           {
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                           if(true)
                                                                                                                           {
                                                                                                                              continue loop0;
                                                                                                                           }
                                                                                                                           §§goto(addr478);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc24_++;
                                                                                                                  if(!(_loc35_ && b2Collision))
                                                                                                                  {
                                                                                                                     §§goto(addr469);
                                                                                                                  }
                                                                                                                  §§goto(addr489);
                                                                                                               }
                                                                                                               continue;
                                                                                                            }
                                                                                                            §§push(§§pop());
                                                                                                            if(_loc34_)
                                                                                                            {
                                                                                                               addr432:
                                                                                                               _loc31_ = §§pop();
                                                                                                               if(!_loc35_)
                                                                                                               {
                                                                                                                  §§push(_loc20_);
                                                                                                                  if(_loc34_ || b2Collision)
                                                                                                                  {
                                                                                                                     addr443:
                                                                                                                     if(§§pop() > §§pop())
                                                                                                                     {
                                                                                                                        if(!(_loc35_ && param3))
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        §§goto(addr496);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§push(_loc31_);
                                                                                                                        if(_loc34_ || param2)
                                                                                                                        {
                                                                                                                           §§goto(addr505);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr510);
                                                                                                                  }
                                                                                                                  §§goto(addr505);
                                                                                                               }
                                                                                                               §§goto(addr511);
                                                                                                            }
                                                                                                            §§goto(addr505);
                                                                                                         }
                                                                                                         §§goto(addr432);
                                                                                                      }
                                                                                                      §§goto(addr443);
                                                                                                   }
                                                                                                   §§goto(addr505);
                                                                                                }
                                                                                                §§goto(addr414);
                                                                                             }
                                                                                             §§goto(addr405);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr378);
                                                                                    }
                                                                                    §§goto(addr375);
                                                                                 }
                                                                                 §§goto(addr378);
                                                                              }
                                                                              §§goto(addr370);
                                                                           }
                                                                        }
                                                                        var _loc25_:* = §§pop();
                                                                        if(!_loc35_)
                                                                        {
                                                                           §§push(1);
                                                                           if(_loc34_ || param3)
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              if(_loc34_)
                                                                              {
                                                                                 if(§§pop() < _loc21_)
                                                                                 {
                                                                                    §§push(_loc25_);
                                                                                    if(_loc34_)
                                                                                    {
                                                                                       addr557:
                                                                                       §§push(int(§§pop() + 1));
                                                                                       if(_loc35_ && param2)
                                                                                       {
                                                                                       }
                                                                                    }
                                                                                    addr569:
                                                                                    §§push(int(§§pop()));
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push(0);
                                                                                    if(!_loc35_)
                                                                                    {
                                                                                       §§goto(addr569);
                                                                                    }
                                                                                 }
                                                                                 var _loc26_:* = §§pop();
                                                                                 var _loc27_:b2Vec2 = _loc22_[_loc25_];
                                                                                 var _loc28_:b2Vec2 = _loc22_[_loc26_];
                                                                                 if(!(_loc35_ && param1))
                                                                                 {
                                                                                    §§push(_loc19_);
                                                                                    if(_loc34_ || param1)
                                                                                    {
                                                                                       if(§§pop() < Number.MIN_VALUE)
                                                                                       {
                                                                                          addr728:
                                                                                          param1.§63§ = 1;
                                                                                          param1.§+!?§ = b2Manifold.§+!M§;
                                                                                          param1.§=i§.SetV(_loc23_[_loc18_]);
                                                                                          addr708:
                                                                                          addr716:
                                                                                          addr731:
                                                                                          if(_loc34_)
                                                                                          {
                                                                                             addr699:
                                                                                             param1.m_localPoint.x = 0.5 * (_loc27_.x + _loc28_.x);
                                                                                             addr700:
                                                                                             addr693:
                                                                                             addr695:
                                                                                             addr697:
                                                                                             addr698:
                                                                                             §§push(param1.m_localPoint);
                                                                                             if(_loc34_ || param2)
                                                                                             {
                                                                                                §§push(0.5);
                                                                                                if(_loc34_)
                                                                                                {
                                                                                                   §§push(_loc27_.y);
                                                                                                   if(_loc34_ || b2Collision)
                                                                                                   {
                                                                                                      if(!_loc35_)
                                                                                                      {
                                                                                                         §§push(_loc28_.y);
                                                                                                         if(_loc34_ || param2)
                                                                                                         {
                                                                                                            addr668:
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            if(_loc34_)
                                                                                                            {
                                                                                                               addr671:
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               if(!(_loc35_ && param3))
                                                                                                               {
                                                                                                                  if(_loc34_ || param2)
                                                                                                                  {
                                                                                                                     §§pop().y = §§pop();
                                                                                                                     addr686:
                                                                                                                     if(!_loc35_)
                                                                                                                     {
                                                                                                                        param1.§,!f§[0].m_localPoint.SetV(param4.§]x§);
                                                                                                                        if(_loc34_)
                                                                                                                        {
                                                                                                                           if(!_loc35_)
                                                                                                                           {
                                                                                                                              param1.§,!f§[0].m_id.key = 0;
                                                                                                                              if(_loc34_)
                                                                                                                              {
                                                                                                                                 if(!(_loc34_ || param2))
                                                                                                                                 {
                                                                                                                                    §§goto(addr708);
                                                                                                                                 }
                                                                                                                                 return;
                                                                                                                              }
                                                                                                                              §§goto(addr700);
                                                                                                                           }
                                                                                                                           §§goto(addr716);
                                                                                                                        }
                                                                                                                        §§goto(addr686);
                                                                                                                        addr688:
                                                                                                                     }
                                                                                                                     §§goto(addr731);
                                                                                                                  }
                                                                                                                  §§goto(addr693);
                                                                                                               }
                                                                                                               §§goto(addr699);
                                                                                                            }
                                                                                                            §§goto(addr695);
                                                                                                         }
                                                                                                         §§goto(addr697);
                                                                                                      }
                                                                                                      §§goto(addr698);
                                                                                                   }
                                                                                                   §§goto(addr668);
                                                                                                }
                                                                                                §§goto(addr671);
                                                                                             }
                                                                                             addr692:
                                                                                             §§goto(addr692);
                                                                                          }
                                                                                          §§goto(addr728);
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
                                                                                                if(_loc34_ || param1)
                                                                                                {
                                                                                                   §§push(_loc28_.x);
                                                                                                   if(!(_loc35_ && param1))
                                                                                                   {
                                                                                                      addr761:
                                                                                                      §§push(_loc27_.x);
                                                                                                      if(_loc34_ || b2Collision)
                                                                                                      {
                                                                                                         §§push(§§pop() - §§pop());
                                                                                                         if(_loc34_ || param2)
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            if(_loc34_ || param3)
                                                                                                            {
                                                                                                               addr786:
                                                                                                               §§push(_loc16_);
                                                                                                               if(_loc35_)
                                                                                                               {
                                                                                                               }
                                                                                                               addr806:
                                                                                                               §§push(_loc28_.y);
                                                                                                               if(_loc34_ || param1)
                                                                                                               {
                                                                                                                  addr815:
                                                                                                                  §§push(§§pop() - _loc27_.y);
                                                                                                               }
                                                                                                               §§push(§§pop() + §§pop() * §§pop());
                                                                                                               if(!(_loc35_ && param3))
                                                                                                               {
                                                                                                                  addr828:
                                                                                                                  var _loc29_:Number = §§pop();
                                                                                                                  §§push(_loc15_);
                                                                                                                  if(_loc34_ || param2)
                                                                                                                  {
                                                                                                                     §§push(_loc28_.x);
                                                                                                                     if(_loc34_ || param3)
                                                                                                                     {
                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                        if(!_loc35_)
                                                                                                                        {
                                                                                                                           §§push(_loc27_.x);
                                                                                                                           if(_loc34_)
                                                                                                                           {
                                                                                                                              §§push(_loc28_.x);
                                                                                                                              if(_loc34_ || param3)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                 if(_loc34_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                    if(_loc34_)
                                                                                                                                    {
                                                                                                                                       addr878:
                                                                                                                                       §§push(_loc16_);
                                                                                                                                       if(!(_loc35_ && param1))
                                                                                                                                       {
                                                                                                                                          addr886:
                                                                                                                                          §§push(_loc28_.y);
                                                                                                                                          if(_loc34_)
                                                                                                                                          {
                                                                                                                                             addr911:
                                                                                                                                             §§push(§§pop() - §§pop());
                                                                                                                                             if(!(_loc35_ && b2Collision))
                                                                                                                                             {
                                                                                                                                                addr898:
                                                                                                                                                §§push(_loc27_.y);
                                                                                                                                                if(_loc34_ || param1)
                                                                                                                                                {
                                                                                                                                                   addr907:
                                                                                                                                                   §§push(§§pop() - _loc28_.y);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                             if(_loc34_ || param2)
                                                                                                                                             {
                                                                                                                                                addr920:
                                                                                                                                                var _loc30_:Number = §§pop();
                                                                                                                                                if(_loc34_ || param3)
                                                                                                                                                {
                                                                                                                                                   addr1724:
                                                                                                                                                   if(_loc29_ > 0)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc30_);
                                                                                                                                                      if(!(_loc35_ && param2))
                                                                                                                                                      {
                                                                                                                                                         if(§§pop() <= 0)
                                                                                                                                                         {
                                                                                                                                                            addr1554:
                                                                                                                                                            §§push(_loc15_);
                                                                                                                                                            §§push(_loc28_.x);
                                                                                                                                                            if(!_loc35_)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc35_ && param3))
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc35_)
                                                                                                                                                                  {
                                                                                                                                                                     addr1569:
                                                                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                                                                     §§push(_loc15_);
                                                                                                                                                                     §§push(_loc28_.x);
                                                                                                                                                                     if(!_loc35_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc34_)
                                                                                                                                                                        {
                                                                                                                                                                           addr1579:
                                                                                                                                                                           §§push(§§pop() * (§§pop() - §§pop()));
                                                                                                                                                                           §§push(_loc16_);
                                                                                                                                                                           if(_loc34_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc28_.y);
                                                                                                                                                                              if(!_loc35_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!(_loc35_ && param3))
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc35_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                                                                       if(_loc34_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr1598:
                                                                                                                                                                                          §§push(_loc16_);
                                                                                                                                                                                          §§push(_loc28_.y);
                                                                                                                                                                                          if(!_loc35_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() - §§pop());
                                                                                                                                                                                             if(!_loc35_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc35_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr1608:
                                                                                                                                                                                                   §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                                                                   §§push(_loc20_);
                                                                                                                                                                                                   if(!(_loc35_ && b2Collision))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr1619:
                                                                                                                                                                                                      §§push(§§pop() * _loc20_);
                                                                                                                                                                                                      if(!(_loc35_ && param1))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!_loc35_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(§§pop() > §§pop())
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!(_loc34_ || param2))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr1529:
                                                                                                                                                                                                                  param1.§63§ = 1;
                                                                                                                                                                                                                  addr1533:
                                                                                                                                                                                                                  if(_loc34_ || param1)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     param1.§+!?§ = b2Manifold.§+!M§;
                                                                                                                                                                                                                     addr1526:
                                                                                                                                                                                                                     if(!_loc35_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr1496:
                                                                                                                                                                                                                        §§push(param1.§=i§);
                                                                                                                                                                                                                        §§push(_loc15_);
                                                                                                                                                                                                                        if(!_loc35_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr1500:
                                                                                                                                                                                                                           §§push(_loc28_.x);
                                                                                                                                                                                                                           if(_loc34_ || param3)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc34_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr1510:
                                                                                                                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                 if(_loc34_ || param1)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§pop().x = §§pop();
                                                                                                                                                                                                                                    addr1518:
                                                                                                                                                                                                                                    if(_loc34_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr1452:
                                                                                                                                                                                                                                       §§push(param1.§=i§);
                                                                                                                                                                                                                                       if(_loc34_ || b2Collision)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(_loc16_);
                                                                                                                                                                                                                                          if(!(_loc35_ && param3))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc34_ || param1)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc34_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc28_.y);
                                                                                                                                                                                                                                                   if(_loc34_ || param1)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr1486:
                                                                                                                                                                                                                                                      §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                      if(_loc34_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§pop().y = §§pop();
                                                                                                                                                                                                                                                         addr1489:
                                                                                                                                                                                                                                                         if(_loc34_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr1438:
                                                                                                                                                                                                                                                            §§push(param1.§=i§);
                                                                                                                                                                                                                                                            if(!(_loc35_ && param3))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc34_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§pop().Normalize();
                                                                                                                                                                                                                                                                  addr1418:
                                                                                                                                                                                                                                                                  §§push(param1.m_localPoint);
                                                                                                                                                                                                                                                                  if(!(_loc35_ && param2))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§pop().SetV(_loc28_);
                                                                                                                                                                                                                                                                     addr1427:
                                                                                                                                                                                                                                                                     if(!(_loc35_ && param1))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        param1.§,!f§[0].m_localPoint.SetV(param4.§]x§);
                                                                                                                                                                                                                                                                        param1.§,!f§[0].m_id.key = 0;
                                                                                                                                                                                                                                                                        addr1388:
                                                                                                                                                                                                                                                                        if(_loc34_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!(_loc34_ || b2Collision))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§goto(addr1554);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           if(_loc35_ && param2)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr1658:
                                                                                                                                                                                                                                                                              if(!_loc34_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr1698:
                                                                                                                                                                                                                                                                                 if(!_loc35_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr1683:
                                                                                                                                                                                                                                                                                    §§push(param1.§=i§);
                                                                                                                                                                                                                                                                                    §§push(_loc16_);
                                                                                                                                                                                                                                                                                    if(_loc34_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr1688:
                                                                                                                                                                                                                                                                                       §§pop().y = §§pop() - _loc27_.y;
                                                                                                                                                                                                                                                                                       addr1677:
                                                                                                                                                                                                                                                                                       param1.§=i§.Normalize();
                                                                                                                                                                                                                                                                                       addr1664:
                                                                                                                                                                                                                                                                                       param1.m_localPoint.SetV(_loc27_);
                                                                                                                                                                                                                                                                                       addr1666:
                                                                                                                                                                                                                                                                                       if(_loc34_ || param2)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          param1.§,!f§[0].m_localPoint.SetV(param4.§]x§);
                                                                                                                                                                                                                                                                                          §§goto(addr1658);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§push(param1.§=i§);
                                                                                                                                                                                                                                                                                       §§push(_loc15_);
                                                                                                                                                                                                                                                                                       addr1706:
                                                                                                                                                                                                                                                                                       addr1687:
                                                                                                                                                                                                                                                                                       addr1689:
                                                                                                                                                                                                                                                                                       addr1678:
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§pop().x = §§pop() - _loc27_.x;
                                                                                                                                                                                                                                                                                    §§goto(addr1698);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 addr1707:
                                                                                                                                                                                                                                                                                 param1.§63§ = 1;
                                                                                                                                                                                                                                                                                 param1.§+!?§ = b2Manifold.§+!M§;
                                                                                                                                                                                                                                                                                 §§goto(addr1706);
                                                                                                                                                                                                                                                                                 addr1721:
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              param1.§,!f§[0].m_id.key = 0;
                                                                                                                                                                                                                                                                              addr1648:
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr929);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1526);
                                                                                                                                                                                                                                                                        addr1414:
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     addr1735:
                                                                                                                                                                                                                                                                     if((_loc15_ - _loc27_.x) * (_loc15_ - _loc27_.x) + (_loc16_ - _loc27_.y) * (_loc16_ - _loc27_.y) > _loc20_ * _loc20_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§goto(addr1748);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1707);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1664);
                                                                                                                                                                                                                                                                  addr1448:
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1664);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1452);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1533);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1496);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1500);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1688);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1510);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1486);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1496);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1721);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1683);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1687);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1683);
                                                                                                                                                                                                                        addr1528:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1689);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr1639:
                                                                                                                                                                                                                  §§goto(addr1639);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(_loc34_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  return;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1678);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1529);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1735);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1619);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1735);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1619);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1735);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1619);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1735);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1598);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1724);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1735);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1619);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1735);
                                                                                                                                                         }
                                                                                                                                                         §§push(0.5);
                                                                                                                                                         if(_loc34_)
                                                                                                                                                         {
                                                                                                                                                            addr1357:
                                                                                                                                                            §§push(_loc27_.x);
                                                                                                                                                            if(!(_loc35_ && param1))
                                                                                                                                                            {
                                                                                                                                                               if(!_loc35_)
                                                                                                                                                               {
                                                                                                                                                                  addr1369:
                                                                                                                                                                  §§push(§§pop() * (§§pop() + _loc28_.x));
                                                                                                                                                                  if(_loc34_ || param3)
                                                                                                                                                                  {
                                                                                                                                                                     addr1378:
                                                                                                                                                                     _loc32_ = §§pop();
                                                                                                                                                                     addr1379:
                                                                                                                                                                     §§push(0.5);
                                                                                                                                                                     if(_loc34_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc34_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc35_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc34_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr1293:
                                                                                                                                                                                 §§push(_loc27_.y);
                                                                                                                                                                                 if(_loc34_ || b2Collision)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr1302:
                                                                                                                                                                                    §§push(_loc28_.y);
                                                                                                                                                                                    if(_loc34_ || param3)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc34_ || param3)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc35_ && b2Collision))
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc34_ || param2)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr1331:
                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                if(!(_loc35_ && param3))
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc35_ && param2))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr1347:
                                                                                                                                                                                                      _loc33_ = §§pop() * §§pop();
                                                                                                                                                                                                      addr1348:
                                                                                                                                                                                                      addr1346:
                                                                                                                                                                                                      §§push(_loc15_);
                                                                                                                                                                                                      if(_loc34_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!(_loc35_ && b2Collision))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc34_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc32_);
                                                                                                                                                                                                               if(_loc34_ || param3)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                                                                                                                  if(!(_loc35_ && param2))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc34_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc34_ || param1)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop() * _loc23_[_loc25_].x);
                                                                                                                                                                                                                           if(!(_loc35_ && b2Collision))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr1146:
                                                                                                                                                                                                                              if(_loc34_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc34_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc16_);
                                                                                                                                                                                                                                    if(_loc34_ || b2Collision)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc34_ || b2Collision)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(_loc33_);
                                                                                                                                                                                                                                          if(_loc34_ || b2Collision)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                             if(!(_loc35_ && param2))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr1181:
                                                                                                                                                                                                                                                if(_loc34_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop() * _loc23_[_loc25_].y);
                                                                                                                                                                                                                                                   if(_loc34_ || param3)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr1195:
                                                                                                                                                                                                                                                      if(!(_loc35_ && param3))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!(_loc35_ && param2))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                            if(!(_loc35_ && param1))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr1217:
                                                                                                                                                                                                                                                               if(!_loc35_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                  if(!(_loc35_ && param1))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr1227:
                                                                                                                                                                                                                                                                     if(_loc34_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(_loc34_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(§§pop());
                                                                                                                                                                                                                                                                           if(!(_loc35_ && param3))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(_loc34_ || param3)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(!(_loc35_ && param2))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    _loc19_ = §§pop();
                                                                                                                                                                                                                                                                                    addr1255:
                                                                                                                                                                                                                                                                                    §§push(_loc20_);
                                                                                                                                                                                                                                                                                    if(_loc34_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(_loc34_ || b2Collision)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(§§pop() <= §§pop())
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr1089:
                                                                                                                                                                                                                                                                                             param1.§63§ = 1;
                                                                                                                                                                                                                                                                                             addr1093:
                                                                                                                                                                                                                                                                                             if(_loc34_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                param1.§+!?§ = b2Manifold.§+!M§;
                                                                                                                                                                                                                                                                                                addr1070:
                                                                                                                                                                                                                                                                                                if(_loc34_ || b2Collision)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(_loc34_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(_loc34_ || param3)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(!_loc35_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            addr1059:
                                                                                                                                                                                                                                                                                                            param1.§=i§.x = _loc23_[_loc25_].x;
                                                                                                                                                                                                                                                                                                            addr1064:
                                                                                                                                                                                                                                                                                                            §§push(param1.§=i§);
                                                                                                                                                                                                                                                                                                            if(_loc34_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(!(_loc35_ && param3))
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(_loc34_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§pop().y = _loc23_[_loc25_].y;
                                                                                                                                                                                                                                                                                                                     addr1053:
                                                                                                                                                                                                                                                                                                                     if(!_loc35_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(param1.§=i§);
                                                                                                                                                                                                                                                                                                                        if(_loc34_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(!_loc35_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§pop().Normalize();
                                                                                                                                                                                                                                                                                                                              addr1019:
                                                                                                                                                                                                                                                                                                                              if(_loc34_ || b2Collision)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(_loc34_ || param2)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(param1.m_localPoint);
                                                                                                                                                                                                                                                                                                                                    if(_loc34_ || param2)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§pop().Set(_loc32_,_loc33_);
                                                                                                                                                                                                                                                                                                                                       addr1001:
                                                                                                                                                                                                                                                                                                                                       if(!_loc35_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          if(_loc34_ || b2Collision)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             param1.§,!f§[0].m_localPoint.SetV(param4.§]x§);
                                                                                                                                                                                                                                                                                                                                             addr973:
                                                                                                                                                                                                                                                                                                                                             if(!(_loc35_ && b2Collision))
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                if(_loc34_ || param1)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   param1.§,!f§[0].m_id.key = 0;
                                                                                                                                                                                                                                                                                                                                                   if(_loc34_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      if(_loc34_ || b2Collision)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         if(_loc34_ || param3)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            if(_loc34_)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               if(_loc34_)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  if(!_loc34_)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1427);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  addr929:
                                                                                                                                                                                                                                                                                                                                                                  return;
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1414);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1348);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1019);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1001);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr973);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr1448);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr1064);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr1388);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr1053);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr1418);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr1489);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr1070);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr1683);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr1064);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr1518);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr1677);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr1438);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr1059);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         addr1748:
                                                                                                                                                                                                                                                                                                         return;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1379);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   addr1265:
                                                                                                                                                                                                                                                                                                   if(!(_loc35_ && param3))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(_loc34_ || param1)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         return;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1666);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1648);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1093);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr1089);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1265);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1293);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1331);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1554);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1369);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1255);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1379);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1347);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1255);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1569);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1227);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1579);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1608);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1255);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1619);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1195);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1302);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1427);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1181);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1427);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1378);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1217);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1427);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1217);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1181);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1724);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1346);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1146);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1427);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1569);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1427);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1598);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1619);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1369);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1357);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1427);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1554);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1579);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1369);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1608);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1427);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1579);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1378);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1554);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1427);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1528);
                                                                                                                                             }
                                                                                                                                             §§goto(addr920);
                                                                                                                                          }
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                       }
                                                                                                                                       §§goto(addr911);
                                                                                                                                    }
                                                                                                                                    §§goto(addr920);
                                                                                                                                 }
                                                                                                                                 §§goto(addr898);
                                                                                                                              }
                                                                                                                              §§goto(addr907);
                                                                                                                           }
                                                                                                                           §§goto(addr886);
                                                                                                                        }
                                                                                                                        §§goto(addr878);
                                                                                                                     }
                                                                                                                     §§goto(addr898);
                                                                                                                  }
                                                                                                                  §§goto(addr878);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr828);
                                                                                                         }
                                                                                                         §§push(_loc27_.y);
                                                                                                         if(_loc34_ || param2)
                                                                                                         {
                                                                                                            addr798:
                                                                                                            §§push(§§pop() - §§pop());
                                                                                                            if(_loc35_ && b2Collision)
                                                                                                            {
                                                                                                            }
                                                                                                            §§goto(addr806);
                                                                                                         }
                                                                                                         §§goto(addr815);
                                                                                                      }
                                                                                                      §§goto(addr798);
                                                                                                   }
                                                                                                   §§goto(addr806);
                                                                                                }
                                                                                                §§goto(addr828);
                                                                                             }
                                                                                             §§goto(addr761);
                                                                                          }
                                                                                          §§goto(addr828);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr786);
                                                                                 }
                                                                                 §§goto(addr688);
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr557);
                                                                     }
                                                                     §§goto(addr533);
                                                                  }
                                                                  return;
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               §§goto(addr274);
                                                            }
                                                            §§goto(addr282);
                                                         }
                                                         §§push(§§pop() + §§pop());
                                                         if(!_loc34_)
                                                         {
                                                         }
                                                      }
                                                      §§goto(addr243);
                                                   }
                                                   §§goto(addr207);
                                                   §§push(Number(§§pop()));
                                                }
                                                §§goto(addr207);
                                             }
                                             §§goto(addr200);
                                          }
                                          §§goto(addr189);
                                       }
                                       §§goto(addr203);
                                    }
                                    §§goto(addr202);
                                 }
                              }
                              §§goto(addr200);
                           }
                           §§goto(addr150);
                        }
                        §§goto(addr145);
                     }
                     §§goto(addr132);
                  }
                  §§goto(addr150);
               }
               §§goto(addr91);
            }
            §§goto(addr81);
         }
         §§goto(addr98);
      }
      
      public static function §7l§(param1:b2AABB, param2:b2AABB) : Boolean
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc3_:b2Vec2 = param2.§>!6§;
         var _loc4_:b2Vec2 = param1.§8!X§;
         §§push(_loc3_.x);
         if(!(_loc10_ && _loc3_))
         {
            §§push(§§pop() - _loc4_.x);
            if(!(_loc10_ && param1))
            {
               addr43:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            §§push(_loc3_.y);
            if(!(_loc10_ && param1))
            {
               §§push(§§pop() - _loc4_.y);
               if(_loc9_)
               {
                  addr59:
                  §§push(Number(§§pop()));
               }
               var _loc6_:* = §§pop();
               _loc3_ = param1.§>!6§;
               _loc4_ = param2.§8!X§;
               §§push(_loc3_.x);
               if(!_loc10_)
               {
                  §§push(§§pop() - _loc4_.x);
                  if(!_loc10_)
                  {
                     addr78:
                     §§push(Number(§§pop()));
                  }
                  var _loc7_:* = §§pop();
                  §§push(_loc3_.y);
                  if(_loc9_)
                  {
                     §§push(§§pop() - _loc4_.y);
                     if(!_loc10_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  var _loc8_:* = §§pop();
                  if(_loc9_ || b2Collision)
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
                                          loop6:
                                          for(; _loc9_; if(!(_loc9_ || param2))
                                          {
                                             continue;
                                          },§§push(0),if(_loc9_)
                                          {
                                             §§goto(addr135);
                                          },§§goto(addr183))
                                          {
                                             §§push(0);
                                             while(true)
                                             {
                                                §§push(§§pop() > §§pop());
                                                addr135:
                                                if(_loc10_ && param1)
                                                {
                                                   continue;
                                                }
                                                §§push(§§pop() > §§pop());
                                                if(!_loc10_)
                                                {
                                                   addr145:
                                                   if(_loc9_ || param1)
                                                   {
                                                      loop14:
                                                      while(§§pop())
                                                      {
                                                         if(_loc9_)
                                                         {
                                                            addr157:
                                                            §§push(false);
                                                            if(!(_loc10_ && b2Collision))
                                                            {
                                                               return §§pop();
                                                            }
                                                            continue loop4;
                                                         }
                                                         if(!(_loc10_ && param1))
                                                         {
                                                            addr172:
                                                            if(_loc9_ || _loc3_)
                                                            {
                                                               break;
                                                            }
                                                            loop10:
                                                            while(true)
                                                            {
                                                               loop11:
                                                               while(true)
                                                               {
                                                                  §§push(_loc7_);
                                                                  addr182:
                                                                  loop12:
                                                                  while(true)
                                                                  {
                                                                     §§push(0);
                                                                     addr183:
                                                                     while(!(_loc10_ && b2Collision))
                                                                     {
                                                                        §§push(§§pop() > §§pop());
                                                                        if(!(_loc10_ && b2Collision))
                                                                        {
                                                                           if(!(_loc9_ || param1))
                                                                           {
                                                                              continue loop2;
                                                                           }
                                                                           §§push(§§pop());
                                                                           if(_loc10_ && b2Collision)
                                                                           {
                                                                              continue loop3;
                                                                           }
                                                                           if(§§pop())
                                                                           {
                                                                              §§goto(addr145);
                                                                              continue loop14;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc9_ || param1))
                                                                              {
                                                                                 return §§pop();
                                                                                 addr221:
                                                                              }
                                                                              addr253:
                                                                              if(_loc10_ && param2)
                                                                              {
                                                                                 addr238:
                                                                                 break;
                                                                              }
                                                                              §§pop();
                                                                              continue loop12;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(!§§pop())
                                                                              {
                                                                                 continue loop11;
                                                                              }
                                                                              if(_loc10_)
                                                                              {
                                                                                 continue loop10;
                                                                              }
                                                                              if(_loc10_)
                                                                              {
                                                                                 continue loop5;
                                                                              }
                                                                              §§goto(addr253);
                                                                              §§push(false);
                                                                              §§goto(addr221);
                                                                           }
                                                                           addr214:
                                                                        }
                                                                        §§goto(addr214);
                                                                     }
                                                                     continue loop1;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(_loc8_);
                                                            if(!(_loc10_ && param1))
                                                            {
                                                               continue loop6;
                                                            }
                                                            §§goto(addr182);
                                                            §§goto(addr238);
                                                         }
                                                         continue loop6;
                                                      }
                                                      §§push(true);
                                                      if(_loc9_)
                                                      {
                                                         return §§pop();
                                                      }
                                                      §§goto(addr157);
                                                   }
                                                   §§goto(addr214);
                                                }
                                                §§goto(addr157);
                                             }
                                          }
                                          continue loop0;
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    §§goto(addr247);
                                 }
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr252);
               }
               §§goto(addr78);
            }
            §§goto(addr59);
         }
         §§goto(addr43);
      }
   }
}
