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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            b2_nullFeature = 255;
            loop0:
            while(true)
            {
               §?!d§ = §^3§();
               addr190:
               while(true)
               {
                  s_clipPoints1 = §^3§();
                  addr184:
                  while(true)
                  {
                     s_clipPoints2 = §^3§();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr165);
      }
      
      public function b2Collision()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
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
         if(!_loc15_)
         {
            _loc6_ = 0;
         }
         _loc7_ = (_loc5_ = param2[0]).v;
         var _loc8_:b2Vec2 = (_loc5_ = param2[1]).v;
         if(_loc14_ || b2Collision)
         {
            §§push(param3.x);
            if(!(_loc15_ && b2Collision))
            {
               §§push(_loc7_.x);
               if(!_loc15_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc14_)
                  {
                     §§push(param3.y);
                     if(_loc14_ || param2)
                     {
                        §§push(_loc7_.y);
                        if(_loc14_)
                        {
                           §§push(§§pop() * §§pop());
                           if(!(_loc15_ && b2Collision))
                           {
                              addr100:
                              §§push(§§pop() + §§pop());
                              if(_loc14_ || b2Collision)
                              {
                                 §§push(param4);
                                 if(_loc14_ || param3)
                                 {
                                    addr116:
                                    §§push(§§pop() - §§pop());
                                    if(!_loc15_)
                                    {
                                       §§push(Number(§§pop()));
                                       if(!_loc14_)
                                       {
                                       }
                                       addr144:
                                       §§push(param3.y);
                                       if(!(_loc15_ && param2))
                                       {
                                          addr155:
                                          §§push(§§pop() * _loc8_.y);
                                          if(!(_loc15_ && param1))
                                          {
                                             addr176:
                                             §§push(§§pop() + §§pop());
                                             if(_loc14_ || param1)
                                             {
                                                addr172:
                                                §§push(§§pop() - param4);
                                                if(!_loc15_)
                                                {
                                                   addr175:
                                                   §§push(Number(§§pop()));
                                                }
                                             }
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
                                                            addr305:
                                                            while(true)
                                                            {
                                                            }
                                                         }
                                                         addr295:
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
                                                                  if(_loc14_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        param1[_loc6_++].Set(param2[1]);
                                                                     }
                                                                     addr274:
                                                                  }
                                                                  loop7:
                                                                  while(!(_loc15_ && param3))
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc9_);
                                                                        if(!_loc14_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§push(_loc10_);
                                                                        if(!_loc14_)
                                                                        {
                                                                           addr222:
                                                                           if(§§pop() < §§pop())
                                                                           {
                                                                              if(_loc14_ || param1)
                                                                              {
                                                                                 if(!_loc15_)
                                                                                 {
                                                                                    §§push(_loc9_);
                                                                                    if(_loc14_)
                                                                                    {
                                                                                       §§push(_loc9_);
                                                                                       if(_loc14_)
                                                                                       {
                                                                                          addr240:
                                                                                          §§push(§§pop() / (§§pop() - _loc10_));
                                                                                          if(_loc14_ || param1)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          if(!(_loc15_ && param2))
                                                                                          {
                                                                                             break loop5;
                                                                                          }
                                                                                          continue loop5;
                                                                                       }
                                                                                       §§goto(addr240);
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 continue loop7;
                                                                              }
                                                                              addr259:
                                                                              if(!(_loc15_ && param2))
                                                                              {
                                                                                 if(false)
                                                                                 {
                                                                                    continue loop4;
                                                                                 }
                                                                                 §§push(_loc12_ = (_loc5_ = param1[_loc6_]).v);
                                                                                 §§push(_loc7_.x);
                                                                                 if(_loc14_)
                                                                                 {
                                                                                    §§push(_loc11_);
                                                                                    if(!(_loc15_ && param1))
                                                                                    {
                                                                                       §§push(_loc8_.x);
                                                                                       if(_loc14_)
                                                                                       {
                                                                                          §§push(§§pop() - _loc7_.x);
                                                                                       }
                                                                                       §§push(§§pop() * §§pop());
                                                                                    }
                                                                                    §§push(§§pop() + §§pop());
                                                                                 }
                                                                                 §§pop().x = §§pop();
                                                                                 if(_loc14_ || param2)
                                                                                 {
                                                                                    §§push(_loc12_);
                                                                                    §§push(_loc7_.y);
                                                                                    if(_loc14_)
                                                                                    {
                                                                                       §§push(_loc11_);
                                                                                       if(_loc14_)
                                                                                       {
                                                                                          §§push(_loc8_.y);
                                                                                          if(!(_loc15_ && b2Collision))
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
                                                                                 if(_loc14_ || param3)
                                                                                 {
                                                                                    if(_loc9_ > 0)
                                                                                    {
                                                                                       addr383:
                                                                                       _loc13_ = param2[0];
                                                                                       if(!(_loc15_ && param1))
                                                                                       {
                                                                                          _loc5_.id = _loc13_.id;
                                                                                          if(!_loc14_)
                                                                                          {
                                                                                          }
                                                                                          §§goto(addr429);
                                                                                       }
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
                                                                                    §§goto(addr429);
                                                                                 }
                                                                                 §§goto(addr383);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr295);
                                                                              }
                                                                           }
                                                                           addr429:
                                                                        }
                                                                        if(_loc15_)
                                                                        {
                                                                           continue loop6;
                                                                           return _loc6_;
                                                                        }
                                                                        if(!(_loc15_ && param1))
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(!(_loc15_ && param1))
                                                                           {
                                                                              §§push(0);
                                                                              if(_loc14_)
                                                                              {
                                                                                 §§goto(addr222);
                                                                              }
                                                                              §§goto(addr240);
                                                                           }
                                                                           break;
                                                                        }
                                                                        continue loop1;
                                                                     }
                                                                     §§goto(addr240);
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  §§goto(addr305);
                                                               }
                                                               §§goto(addr185);
                                                            }
                                                         }
                                                         if(!_loc14_)
                                                         {
                                                            break;
                                                         }
                                                         _loc11_ = §§pop();
                                                         §§goto(addr259);
                                                      }
                                                      continue loop0;
                                                   }
                                                }
                                             }
                                             §§goto(addr274);
                                          }
                                       }
                                       §§goto(addr172);
                                    }
                                    _loc9_ = §§pop();
                                    §§push(param3.x);
                                    if(!_loc15_)
                                    {
                                       addr127:
                                       §§push(_loc8_.x);
                                       if(_loc14_ || param1)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(_loc14_ || param3)
                                          {
                                             §§goto(addr144);
                                          }
                                          §§goto(addr176);
                                       }
                                    }
                                    §§goto(addr144);
                                 }
                                 §§goto(addr176);
                              }
                              §§goto(addr144);
                           }
                           §§goto(addr116);
                        }
                     }
                     §§goto(addr155);
                  }
                  §§goto(addr127);
               }
               §§goto(addr100);
            }
            §§goto(addr175);
         }
         §§goto(addr116);
      }
      
      public static function §=R§(param1:b2PolygonShape, param2:b2Transform, param3:int, param4:b2PolygonShape, param5:b2Transform) : Number
      {
         var _loc26_:Boolean = true;
         var _loc27_:Boolean = false;
         var _loc11_:b2Mat22 = null;
         var _loc12_:b2Vec2 = null;
         var _loc25_:* = NaN;
         §§push(param1.§]D§);
         if(!_loc27_)
         {
            §§push(int(§§pop()));
         }
         var _loc6_:* = §§pop();
         var _loc7_:Vector.<b2Vec2> = param1.§0!k§;
         var _loc8_:Vector.<b2Vec2> = param1.§0!%§;
         §§push(param4.§]D§);
         if(_loc26_ || param3)
         {
            §§push(int(§§pop()));
         }
         var _loc9_:* = §§pop();
         var _loc10_:Vector.<b2Vec2> = param4.§0!k§;
         _loc11_ = param2.R;
         _loc12_ = _loc8_[param3];
         §§push(_loc11_.col1.x);
         if(!(_loc27_ && param3))
         {
            §§push(_loc12_.x);
            if(_loc26_ || param3)
            {
               §§push(§§pop() * §§pop());
               if(_loc26_ || b2Collision)
               {
                  §§push(_loc11_.col2.x);
                  if(!(_loc27_ && param3))
                  {
                     addr99:
                     §§push(§§pop() * _loc12_.y);
                  }
                  §§push(§§pop() + §§pop());
                  if(!(_loc27_ && param2))
                  {
                     addr110:
                     §§push(Number(§§pop()));
                  }
               }
               var _loc13_:* = §§pop();
               §§push(_loc11_.col1.y);
               if(_loc26_ || param2)
               {
                  §§push(_loc12_.x);
                  if(_loc26_ || b2Collision)
                  {
                     §§push(§§pop() * §§pop());
                     if(!_loc27_)
                     {
                        §§push(_loc11_.col2.y);
                        if(!_loc27_)
                        {
                           addr139:
                           §§push(§§pop() * _loc12_.y);
                        }
                        §§push(§§pop() + §§pop());
                        if(!(_loc27_ && b2Collision))
                        {
                           addr150:
                           §§push(Number(§§pop()));
                        }
                        var _loc14_:* = §§pop();
                        §§push((_loc11_ = param5.R).col1.x);
                        if(_loc26_)
                        {
                           §§push(_loc13_);
                           if(_loc26_)
                           {
                              §§push(§§pop() * §§pop());
                              if(!(_loc27_ && param3))
                              {
                                 §§push(_loc11_.col1.y);
                                 if(!(_loc27_ && b2Collision))
                                 {
                                    addr182:
                                    §§push(§§pop() * _loc14_);
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(_loc26_ || param2)
                                 {
                                    addr192:
                                    §§push(Number(§§pop()));
                                 }
                                 var _loc15_:* = §§pop();
                                 §§push(_loc11_.col2.x);
                                 if(!(_loc27_ && param3))
                                 {
                                    §§push(_loc13_);
                                    if(!(_loc27_ && param3))
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(!_loc27_)
                                       {
                                          addr215:
                                          §§push(_loc11_.col2.y);
                                          if(_loc26_ || param2)
                                          {
                                             addr227:
                                             §§push(§§pop() + §§pop() * _loc14_);
                                             if(_loc26_)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                          }
                                          §§goto(addr227);
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
                                                if(_loc26_)
                                                {
                                                   §§push(_loc12_.y);
                                                   if(_loc26_)
                                                   {
                                                      §§push(§§pop() * _loc16_);
                                                      if(!(_loc27_ && param1))
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(!_loc27_)
                                                         {
                                                            addr278:
                                                            §§push(Number(§§pop()));
                                                            if(_loc26_)
                                                            {
                                                               addr281:
                                                               §§push(§§pop());
                                                               if(!_loc27_)
                                                               {
                                                                  _loc25_ = §§pop();
                                                                  if(_loc26_ || param3)
                                                                  {
                                                                  }
                                                                  addr305:
                                                                  _loc18_ = §§pop();
                                                                  addr304:
                                                                  if(_loc26_ || param3)
                                                                  {
                                                                     §§push(_loc19_);
                                                                     if(_loc26_ || param3)
                                                                     {
                                                                        §§push(int(§§pop()));
                                                                     }
                                                                     _loc17_ = §§pop();
                                                                     if(_loc27_ && param2)
                                                                     {
                                                                        continue;
                                                                     }
                                                                  }
                                                                  _loc19_++;
                                                                  continue;
                                                               }
                                                               addr293:
                                                               if(§§pop() < §§pop())
                                                               {
                                                                  if(_loc26_)
                                                                  {
                                                                     §§push(_loc25_);
                                                                     if(_loc26_ || param3)
                                                                     {
                                                                        §§goto(addr304);
                                                                     }
                                                                     §§goto(addr305);
                                                                  }
                                                               }
                                                               §§goto(addr305);
                                                            }
                                                            §§goto(addr293);
                                                            §§push(_loc18_);
                                                         }
                                                         §§goto(addr305);
                                                      }
                                                   }
                                                   §§goto(addr293);
                                                }
                                                §§goto(addr278);
                                             }
                                             §§goto(addr293);
                                          }
                                          §§goto(addr281);
                                       }
                                       _loc12_ = _loc7_[param3];
                                       _loc11_ = param2.R;
                                       §§push(param2.position.x);
                                       if(!_loc27_)
                                       {
                                          §§push(_loc11_.col1.x);
                                          if(!(_loc27_ && param3))
                                          {
                                             §§push(_loc12_.x);
                                             if(_loc26_ || param3)
                                             {
                                                addr389:
                                                §§push(§§pop() * §§pop());
                                                if(!_loc27_)
                                                {
                                                   §§push(_loc11_.col2.x);
                                                   if(_loc26_)
                                                   {
                                                      §§push(§§pop() * _loc12_.y);
                                                   }
                                                }
                                                §§push(§§pop() + §§pop());
                                                if(!_loc27_)
                                                {
                                                   addr393:
                                                   var _loc20_:Number = §§pop();
                                                   §§push(param2.position.y);
                                                   if(!(_loc27_ && param2))
                                                   {
                                                      §§push(_loc11_.col1.y);
                                                      if(_loc26_ || param2)
                                                      {
                                                         §§push(_loc12_.x);
                                                         if(_loc26_ || param2)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc26_ || b2Collision)
                                                            {
                                                               addr431:
                                                               §§push(_loc11_.col2.y);
                                                               if(_loc26_ || b2Collision)
                                                               {
                                                                  addr441:
                                                                  §§push(§§pop() * _loc12_.y);
                                                               }
                                                               §§push(§§pop() + §§pop());
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                            if(!_loc27_)
                                                            {
                                                               addr448:
                                                               §§push(Number(§§pop()));
                                                            }
                                                            var _loc21_:* = §§pop();
                                                            _loc12_ = _loc10_[_loc17_];
                                                            _loc11_ = param5.R;
                                                            §§push(param5.position.x);
                                                            if(_loc26_)
                                                            {
                                                               §§push(_loc11_.col1.x);
                                                               if(_loc26_)
                                                               {
                                                                  §§push(_loc12_.x);
                                                                  if(!(_loc27_ && param3))
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(!_loc27_)
                                                                     {
                                                                        addr481:
                                                                        §§push(_loc11_.col2.x);
                                                                        if(_loc26_ || param2)
                                                                        {
                                                                           addr491:
                                                                           §§push(§§pop() * _loc12_.y);
                                                                        }
                                                                        §§push(§§pop() + §§pop());
                                                                     }
                                                                     §§push(§§pop() + §§pop());
                                                                     if(_loc26_)
                                                                     {
                                                                        addr499:
                                                                        var _loc22_:* = Number(§§pop());
                                                                        §§push(param5.position.y);
                                                                        if(!(_loc27_ && param1))
                                                                        {
                                                                           §§push(_loc11_.col1.y);
                                                                           if(_loc26_ || param2)
                                                                           {
                                                                              §§push(_loc12_.x);
                                                                              if(!(_loc27_ && param2))
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(!(_loc27_ && param1))
                                                                                 {
                                                                                    addr537:
                                                                                    §§push(_loc11_.col2.y);
                                                                                    if(_loc26_)
                                                                                    {
                                                                                       addr542:
                                                                                       §§push(§§pop() * _loc12_.y);
                                                                                    }
                                                                                    §§push(§§pop() + §§pop());
                                                                                 }
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(!_loc27_)
                                                                                 {
                                                                                    addr550:
                                                                                    var _loc23_:* = Number(§§pop());
                                                                                    if(_loc26_)
                                                                                    {
                                                                                       §§push(_loc22_);
                                                                                       if(_loc26_)
                                                                                       {
                                                                                          §§push(_loc20_);
                                                                                          if(_loc26_ || param2)
                                                                                          {
                                                                                             §§push(§§pop() - §§pop());
                                                                                             if(!(_loc27_ && b2Collision))
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                if(!_loc27_)
                                                                                                {
                                                                                                   addr575:
                                                                                                   _loc22_ = §§pop();
                                                                                                   if(_loc26_ || b2Collision)
                                                                                                   {
                                                                                                      addr583:
                                                                                                      §§push(_loc23_);
                                                                                                      if(_loc26_ || param2)
                                                                                                      {
                                                                                                         addr591:
                                                                                                         §§push(_loc21_);
                                                                                                         if(!_loc27_)
                                                                                                         {
                                                                                                            §§push(§§pop() - §§pop());
                                                                                                            if(!(_loc27_ && param2))
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                               if(_loc26_ || param2)
                                                                                                               {
                                                                                                                  _loc23_ = §§pop();
                                                                                                                  addr621:
                                                                                                                  §§push(_loc22_);
                                                                                                                  if(!_loc26_)
                                                                                                                  {
                                                                                                                  }
                                                                                                                  addr647:
                                                                                                                  return Number(§§pop());
                                                                                                                  addr645:
                                                                                                               }
                                                                                                               §§push(_loc13_);
                                                                                                               if(_loc26_)
                                                                                                               {
                                                                                                                  addr627:
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(_loc26_)
                                                                                                                  {
                                                                                                                     addr630:
                                                                                                                     §§push(_loc23_);
                                                                                                                     if(_loc26_ || param3)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * _loc14_);
                                                                                                                        if(_loc26_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           if(_loc26_)
                                                                                                                           {
                                                                                                                              §§goto(addr645);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr647);
                                                                                                            }
                                                                                                            §§goto(addr630);
                                                                                                         }
                                                                                                         §§goto(addr627);
                                                                                                      }
                                                                                                      §§goto(addr647);
                                                                                                   }
                                                                                                   §§goto(addr621);
                                                                                                }
                                                                                                §§goto(addr591);
                                                                                             }
                                                                                             §§goto(addr630);
                                                                                          }
                                                                                          §§goto(addr627);
                                                                                       }
                                                                                       §§goto(addr575);
                                                                                    }
                                                                                    §§goto(addr583);
                                                                                 }
                                                                                 §§goto(addr550);
                                                                              }
                                                                              §§goto(addr542);
                                                                           }
                                                                           §§goto(addr537);
                                                                        }
                                                                        §§goto(addr550);
                                                                     }
                                                                     §§goto(addr499);
                                                                  }
                                                                  §§goto(addr491);
                                                               }
                                                               §§goto(addr481);
                                                            }
                                                            §§goto(addr499);
                                                         }
                                                         §§goto(addr441);
                                                      }
                                                      §§goto(addr431);
                                                   }
                                                   §§goto(addr448);
                                                }
                                                §§goto(addr393);
                                             }
                                             §§push(§§pop() + §§pop());
                                          }
                                          §§goto(addr389);
                                       }
                                       §§goto(addr393);
                                    }
                                    §§goto(addr227);
                                 }
                                 §§goto(addr215);
                              }
                              §§goto(addr192);
                           }
                           §§goto(addr182);
                        }
                        §§goto(addr192);
                     }
                     §§goto(addr150);
                  }
                  §§goto(addr139);
               }
               §§goto(addr150);
            }
            §§goto(addr99);
         }
         §§goto(addr110);
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
         if(_loc27_ || param2)
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
            if(_loc27_)
            {
               §§push(_loc8_.x);
               if(_loc27_ || param1)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc27_ || param2)
                  {
                     addr90:
                     §§push(_loc9_.col2.x);
                     if(!_loc26_)
                     {
                        addr86:
                        §§push(§§pop() * _loc8_.y);
                     }
                     §§push(§§pop() + (§§pop() + §§pop()));
                     if(!_loc26_)
                     {
                        addr94:
                        var _loc10_:* = Number(§§pop());
                        §§push(param5.position.y);
                        if(!(_loc26_ && param1))
                        {
                           §§push(_loc9_.col1.y);
                           if(_loc27_)
                           {
                              §§push(_loc8_.x);
                              if(_loc27_)
                              {
                                 addr131:
                                 §§push(§§pop() * §§pop());
                                 if(_loc27_)
                                 {
                                    §§push(_loc9_.col2.y);
                                    if(!(_loc26_ && param3))
                                    {
                                       §§push(§§pop() * _loc8_.y);
                                    }
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(!_loc26_)
                                 {
                                    addr134:
                                    §§push(Number(§§pop()));
                                 }
                                 var _loc11_:* = §§pop();
                                 _loc9_ = param3.R;
                                 _loc8_ = param2.§=!S§;
                                 if(!_loc26_)
                                 {
                                    §§push(_loc10_);
                                    if(_loc27_ || b2Collision)
                                    {
                                       §§push(param3.position);
                                       if(_loc27_ || b2Collision)
                                       {
                                          §§push(§§pop().x);
                                          if(_loc27_ || param2)
                                          {
                                             §§push(_loc9_.col1);
                                             if(!_loc26_)
                                             {
                                                §§push(§§pop().x);
                                                if(_loc27_)
                                                {
                                                   §§push(_loc8_.x);
                                                   if(_loc27_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(!_loc26_)
                                                      {
                                                         §§push(_loc9_.col2);
                                                         if(_loc27_)
                                                         {
                                                            §§push(§§pop().x);
                                                            if(!(_loc26_ && b2Collision))
                                                            {
                                                               §§push(_loc8_.y);
                                                               if(_loc27_)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(_loc27_ || param3)
                                                                  {
                                                                     addr209:
                                                                     §§push(§§pop() + §§pop());
                                                                     if(!_loc26_)
                                                                     {
                                                                        addr212:
                                                                        §§push(§§pop() + §§pop());
                                                                        if(!(_loc26_ && param1))
                                                                        {
                                                                           §§push(§§pop() - §§pop());
                                                                           if(_loc27_)
                                                                           {
                                                                              addr223:
                                                                              §§push(Number(§§pop()));
                                                                              if(_loc27_ || param2)
                                                                              {
                                                                                 _loc10_ = §§pop();
                                                                                 if(_loc27_)
                                                                                 {
                                                                                    addr234:
                                                                                    §§push(_loc11_);
                                                                                    if(_loc27_ || param3)
                                                                                    {
                                                                                       addr244:
                                                                                       §§push(param3.position.y);
                                                                                       if(_loc27_ || param1)
                                                                                       {
                                                                                          §§push(_loc9_.col1);
                                                                                          if(!(_loc26_ && param1))
                                                                                          {
                                                                                             addr261:
                                                                                             §§push(§§pop().y);
                                                                                             if(_loc27_)
                                                                                             {
                                                                                                addr264:
                                                                                                §§push(_loc8_.x);
                                                                                                if(_loc27_)
                                                                                                {
                                                                                                   addr268:
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(!_loc26_)
                                                                                                   {
                                                                                                      addr273:
                                                                                                      §§push(_loc9_.col2.y);
                                                                                                      if(!(_loc26_ && param3))
                                                                                                      {
                                                                                                         addr281:
                                                                                                         §§push(§§pop() * _loc8_.y);
                                                                                                      }
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      if(!_loc26_)
                                                                                                      {
                                                                                                         addr287:
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         if(_loc27_)
                                                                                                         {
                                                                                                            §§push(§§pop() - §§pop());
                                                                                                            if(!(_loc26_ && param2))
                                                                                                            {
                                                                                                               addr298:
                                                                                                               §§push(Number(§§pop()));
                                                                                                               if(_loc27_ || param2)
                                                                                                               {
                                                                                                                  _loc11_ = §§pop();
                                                                                                                  addr307:
                                                                                                                  §§push(_loc10_);
                                                                                                                  if(!_loc26_)
                                                                                                                  {
                                                                                                                     addr310:
                                                                                                                     §§push(param3.R.col1.x);
                                                                                                                     if(!_loc26_)
                                                                                                                     {
                                                                                                                        addr316:
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        if(!_loc26_)
                                                                                                                        {
                                                                                                                           addr319:
                                                                                                                           §§push(_loc11_);
                                                                                                                           if(!(_loc26_ && param1))
                                                                                                                           {
                                                                                                                              addr332:
                                                                                                                              addr327:
                                                                                                                              addr331:
                                                                                                                              addr330:
                                                                                                                              §§push(§§pop() + §§pop() * param3.R.col1.y);
                                                                                                                              if(_loc27_ || param1)
                                                                                                                              {
                                                                                                                              }
                                                                                                                              var _loc12_:* = §§pop();
                                                                                                                              §§push(_loc10_);
                                                                                                                              if(_loc27_)
                                                                                                                              {
                                                                                                                                 §§push(param3.R.col2.x);
                                                                                                                                 if(!_loc26_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                    if(_loc27_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc11_);
                                                                                                                                       if(_loc27_)
                                                                                                                                       {
                                                                                                                                          addr357:
                                                                                                                                          §§push(§§pop() * param3.R.col2.y);
                                                                                                                                       }
                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                       if(!_loc26_)
                                                                                                                                       {
                                                                                                                                          addr366:
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
                                                                                                                                             if(_loc27_ || param3)
                                                                                                                                             {
                                                                                                                                                §§push(_loc12_);
                                                                                                                                                if(!_loc26_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                   if(!(_loc26_ && param1))
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc8_.y);
                                                                                                                                                      if(!(_loc26_ && param2))
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() * _loc13_);
                                                                                                                                                         if(_loc27_)
                                                                                                                                                         {
                                                                                                                                                            addr418:
                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                            if(!_loc26_)
                                                                                                                                                            {
                                                                                                                                                               addr421:
                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                               if(_loc27_)
                                                                                                                                                               {
                                                                                                                                                                  addr424:
                                                                                                                                                                  §§push(§§pop());
                                                                                                                                                                  if(!_loc26_)
                                                                                                                                                                  {
                                                                                                                                                                     _loc25_ = §§pop();
                                                                                                                                                                     if(!_loc27_)
                                                                                                                                                                     {
                                                                                                                                                                     }
                                                                                                                                                                     addr448:
                                                                                                                                                                     _loc15_ = §§pop();
                                                                                                                                                                     if(!(_loc26_ && b2Collision))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc16_);
                                                                                                                                                                        if(!(_loc26_ && param3))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(int(§§pop()));
                                                                                                                                                                        }
                                                                                                                                                                        _loc14_ = §§pop();
                                                                                                                                                                        if(_loc27_)
                                                                                                                                                                        {
                                                                                                                                                                           addr468:
                                                                                                                                                                           _loc16_++;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     continue;
                                                                                                                                                                  }
                                                                                                                                                                  addr431:
                                                                                                                                                                  if(§§pop() > §§pop())
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc27_ || param1))
                                                                                                                                                                     {
                                                                                                                                                                        continue;
                                                                                                                                                                     }
                                                                                                                                                                     §§push(_loc25_);
                                                                                                                                                                     if(!(_loc26_ && param3))
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr448);
                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr448);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr468);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr431);
                                                                                                                                                               §§push(_loc15_);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr448);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr431);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr418);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr424);
                                                                                                                                                }
                                                                                                                                                §§goto(addr418);
                                                                                                                                             }
                                                                                                                                             §§goto(addr421);
                                                                                                                                          }
                                                                                                                                          §§push(§=R§(param2,param3,_loc14_,param4,param5));
                                                                                                                                          if(!(_loc26_ && param3))
                                                                                                                                          {
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                          }
                                                                                                                                          var _loc17_:* = §§pop();
                                                                                                                                          if(!_loc26_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc14_);
                                                                                                                                             if(_loc27_ || param1)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() - 1);
                                                                                                                                                if(!_loc26_)
                                                                                                                                                {
                                                                                                                                                   if(§§pop() >= 0)
                                                                                                                                                   {
                                                                                                                                                      addr514:
                                                                                                                                                      §§push(_loc14_);
                                                                                                                                                      if(!_loc26_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() - 1);
                                                                                                                                                         if(!_loc26_)
                                                                                                                                                         {
                                                                                                                                                            addr520:
                                                                                                                                                            §§push(int(§§pop()));
                                                                                                                                                            if(!_loc26_)
                                                                                                                                                            {
                                                                                                                                                               addr537:
                                                                                                                                                               var _loc18_:int = §§pop();
                                                                                                                                                               §§push(§=R§(param2,param3,_loc18_,param4,param5));
                                                                                                                                                               if(_loc27_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                               }
                                                                                                                                                               var _loc19_:* = §§pop();
                                                                                                                                                               if(!_loc26_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc14_);
                                                                                                                                                                  if(!(_loc26_ && param3))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(1);
                                                                                                                                                                     if(!(_loc26_ && param2))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                        if(!_loc26_)
                                                                                                                                                                        {
                                                                                                                                                                           if(§§pop() < _loc6_)
                                                                                                                                                                           {
                                                                                                                                                                              addr573:
                                                                                                                                                                              §§push(_loc14_);
                                                                                                                                                                              if(_loc27_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr578:
                                                                                                                                                                                 addr577:
                                                                                                                                                                                 addr576:
                                                                                                                                                                                 §§push(int(§§pop() + 1));
                                                                                                                                                                                 if(_loc27_ || param2)
                                                                                                                                                                                 {
                                                                                                                                                                                 }
                                                                                                                                                                                 addr596:
                                                                                                                                                                                 var _loc20_:* = §§pop();
                                                                                                                                                                                 §§push(§=R§(param2,param3,_loc20_,param4,param5));
                                                                                                                                                                                 if(!(_loc26_ && param3))
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
                                                                                                                                                                                       addr1039:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() > §§pop());
                                                                                                                                                                                          addr1040:
                                                                                                                                                                                          loop3:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(§§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§pop();
                                                                                                                                                                                                   addr1043:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc19_);
                                                                                                                                                                                                      addr1026:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc21_);
                                                                                                                                                                                                         addr1027:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() > §§pop());
                                                                                                                                                                                                            addr1028:
                                                                                                                                                                                                            while(_loc27_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop3;
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                addr1042:
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
                                                                                                                                                                                                      addr989:
                                                                                                                                                                                                      while(_loc27_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(§§pop() > §§pop())
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!(_loc26_ && param2))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(1);
                                                                                                                                                                                                               loop12:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  _loc24_ = §§pop();
                                                                                                                                                                                                                  addr1011:
                                                                                                                                                                                                                  loop55:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc20_);
                                                                                                                                                                                                                     loop56:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc27_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(int(§§pop()));
                                                                                                                                                                                                                           loop57:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              _loc22_ = §§pop();
                                                                                                                                                                                                                              loop58:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc21_);
                                                                                                                                                                                                                                 loop59:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc27_ || param2)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr974:
                                                                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                                                                       loop15:
                                                                                                                                                                                                                                       while(true)
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
                                                                                                                                                                                                                                                   if(_loc26_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop12;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§push(-1);
                                                                                                                                                                                                                                                   loop19:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(§§pop() == §§pop())
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         while(_loc27_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!_loc26_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(_loc22_);
                                                                                                                                                                                                                                                               continue loop12;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr1032:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(-1);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         continue loop16;
                                                                                                                                                                                                                                                         addr900:
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§push(_loc22_);
                                                                                                                                                                                                                                                      if(!(_loc26_ && param1))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc27_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(1);
                                                                                                                                                                                                                                                            if(_loc27_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(_loc27_ || param1)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(_loc6_);
                                                                                                                                                                                                                                                                     if(!(_loc26_ && param1))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(§§pop() < §§pop());
                                                                                                                                                                                                                                                                        if(!(_loc26_ && param2))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc27_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(§§pop())
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(!_loc26_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(_loc27_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(_loc22_);
                                                                                                                                                                                                                                                                                          if(!(_loc26_ && param1))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(_loc27_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(!_loc26_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(!(_loc26_ && b2Collision))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(1);
                                                                                                                                                                                                                                                                                                      while(!_loc26_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(_loc26_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               addr913:
                                                                                                                                                                                                                                                                                                               while(!_loc26_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(0);
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(§§pop() >= §§pop());
                                                                                                                                                                                                                                                                                                                     addr917:
                                                                                                                                                                                                                                                                                                                     while(_loc27_ || b2Collision)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(§§pop())
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§goto(addr926);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           addr925:
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(_loc6_);
                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§goto(addr933);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           addr932:
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr933);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr1028);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               continue loop10;
                                                                                                                                                                                                                                                                                                               addr913:
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§push(int(§§pop()));
                                                                                                                                                                                                                                                                                                            if(!(_loc26_ && param1))
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(_loc27_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(_loc27_ || param1)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(int(§§pop()));
                                                                                                                                                                                                                                                                                                                        addr888:
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           _loc14_ = §§pop();
                                                                                                                                                                                                                                                                                                                           addr889:
                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              if(!_loc27_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 continue loop58;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(§=R§(param2,param3,_loc14_,param4,param5));
                                                                                                                                                                                                                                                                                                                                 while(!(_loc26_ && param3))
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    if(!_loc27_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       while(!(_loc27_ || param2))
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          continue loop15;
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       return §§pop();
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    addr946:
                                                                                                                                                                                                                                                                                                                                    if(_loc27_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       continue loop1;
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    continue loop59;
                                                                                                                                                                                                                                                                                                                                    if(!(_loc27_ || b2Collision))
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       continue;
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    if(_loc27_ || param3)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       return §§pop();
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    addr1014:
                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                       addr1015:
                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          _loc23_ = §§pop();
                                                                                                                                                                                                                                                                                                                                          addr1016:
                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             continue loop17;
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 addr933:
                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(int(§§pop()));
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           continue loop58;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     addr887:
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     while(!_loc26_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(§§pop() - 1);
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(int(§§pop()));
                                                                                                                                                                                                                                                                                                                           addr930:
                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        _loc24_ = §§pop();
                                                                                                                                                                                                                                                                                                                        addr1034:
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(_loc27_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§push(_loc18_);
                                                                                                                                                                                                                                                                                                                              if(!_loc26_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 addr1022:
                                                                                                                                                                                                                                                                                                                                 §§push(int(§§pop()));
                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    _loc22_ = §§pop();
                                                                                                                                                                                                                                                                                                                                    addr1023:
                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§goto(addr1014);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 addr1022:
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr1022);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§goto(addr1043);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     addr926:
                                                                                                                                                                                                                                                                                                                     addr1033:
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(int(§§pop()));
                                                                                                                                                                                                                                                                                                                  addr935:
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     _loc14_ = §§pop();
                                                                                                                                                                                                                                                                                                                     addr936:
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(!(_loc27_ || param3))
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           continue loop55;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr705);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     continue loop55;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               addr934:
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               addr883:
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(!_loc26_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(_loc26_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        continue loop12;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr887);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§goto(addr930);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               addr883:
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr930);
                                                                                                                                                                                                                                                                                                            §§goto(addr933);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      continue loop19;
                                                                                                                                                                                                                                                                                                      addr859:
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   continue loop56;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                continue loop57;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr935);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr888);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       else if(!_loc26_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          continue loop17;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1023);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr936);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 addr835:
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§goto(addr883);
                                                                                                                                                                                                                                                                                 §§push(0);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr883);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§goto(addr1042);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr917);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr916);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr929);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               addr809:
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr859);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr932);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr883);
                                                                                                                                                                                                                                                      §§goto(addr1033);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr704:
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1015);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1022);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1011);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            param1[0] = _loc14_;
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr695:
                                                                                                                                                                                                               §§push(_loc17_);
                                                                                                                                                                                                               if(!(_loc27_ || param2))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(_loc27_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr704);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1016);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr946);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1027);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1032);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1011);
                                                                                                                                                                              }
                                                                                                                                                                              addr595:
                                                                                                                                                                              §§push(int(§§pop()));
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              §§push(0);
                                                                                                                                                                              if(_loc27_ || param3)
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr595);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr596);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr578);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr577);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr576);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr573);
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               addr527:
                                                                                                                                                               §§push(§§pop() - 1);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr537);
                                                                                                                                                         }
                                                                                                                                                         §§push(int(§§pop()));
                                                                                                                                                         if(_loc27_ || param2)
                                                                                                                                                         {
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr537);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr527);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc6_);
                                                                                                                                                      if(!_loc26_)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr527);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr537);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr520);
                                                                                                                                             }
                                                                                                                                             §§goto(addr537);
                                                                                                                                          }
                                                                                                                                          §§goto(addr514);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr366);
                                                                                                                                 }
                                                                                                                                 §§goto(addr357);
                                                                                                                              }
                                                                                                                              §§goto(addr366);
                                                                                                                           }
                                                                                                                           §§goto(addr332);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr327);
                                                                                                                  }
                                                                                                                  §§push(Number(§§pop()));
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr332);
                                                                                                         }
                                                                                                         §§goto(addr316);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr281);
                                                                                             }
                                                                                             §§goto(addr331);
                                                                                          }
                                                                                          §§goto(addr330);
                                                                                       }
                                                                                       §§goto(addr332);
                                                                                    }
                                                                                    §§goto(addr298);
                                                                                 }
                                                                                 §§goto(addr307);
                                                                              }
                                                                              §§goto(addr310);
                                                                           }
                                                                           §§goto(addr319);
                                                                        }
                                                                        §§goto(addr316);
                                                                     }
                                                                     §§goto(addr287);
                                                                  }
                                                               }
                                                               §§goto(addr281);
                                                            }
                                                            §§goto(addr209);
                                                         }
                                                         §§goto(addr273);
                                                      }
                                                      §§goto(addr212);
                                                   }
                                                   §§goto(addr268);
                                                }
                                                §§goto(addr264);
                                             }
                                             §§goto(addr261);
                                          }
                                          §§goto(addr332);
                                       }
                                       §§goto(addr244);
                                    }
                                    §§goto(addr223);
                                 }
                                 §§goto(addr234);
                              }
                              §§push(§§pop() + §§pop());
                           }
                           §§goto(addr131);
                        }
                        §§goto(addr134);
                     }
                     §§goto(addr94);
                  }
                  §§goto(addr90);
               }
               §§goto(addr86);
            }
            §§goto(addr90);
         }
         §§goto(addr94);
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
         if(_loc25_)
         {
            §§push(int(§§pop()));
         }
         var _loc7_:* = §§pop();
         var _loc8_:Vector.<b2Vec2> = param2.§0!%§;
         §§push(param5.§]D§);
         if(!_loc24_)
         {
            §§push(int(§§pop()));
         }
         var _loc9_:* = §§pop();
         var _loc10_:Vector.<b2Vec2> = param5.§0!k§;
         var _loc11_:Vector.<b2Vec2> = param5.§0!%§;
         _loc12_ = param3.R;
         _loc13_ = _loc8_[param4];
         §§push(_loc12_.col1.x);
         if(_loc25_)
         {
            §§push(_loc13_.x);
            if(_loc25_)
            {
               §§push(§§pop() * §§pop());
               if(_loc25_)
               {
                  §§push(_loc12_.col2.x);
                  if(!(_loc24_ && b2Collision))
                  {
                     addr83:
                     §§push(§§pop() * _loc13_.y);
                  }
                  §§push(§§pop() + §§pop());
                  if(!_loc24_)
                  {
                     addr90:
                     var _loc14_:Number = §§pop();
                     §§push(_loc12_.col1.y);
                     if(_loc25_ || param2)
                     {
                        §§push(_loc13_.x);
                        if(!(_loc24_ && param1))
                        {
                           §§push(§§pop() * §§pop());
                           if(!(_loc24_ && param3))
                           {
                              addr118:
                              §§push(_loc12_.col2.y);
                              if(_loc25_ || param2)
                              {
                                 addr131:
                                 §§push(§§pop() + §§pop() * _loc13_.y);
                                 if(_loc25_)
                                 {
                                    addr134:
                                    §§push(Number(§§pop()));
                                 }
                                 var _loc15_:* = §§pop();
                                 §§push((_loc12_ = param6.R).col1.x);
                                 if(!_loc24_)
                                 {
                                    §§push(_loc14_);
                                    if(_loc25_ || param1)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(_loc25_ || param2)
                                       {
                                          addr161:
                                          §§push(_loc12_.col1.y);
                                          if(!(_loc24_ && param3))
                                          {
                                             addr171:
                                             §§push(§§pop() * _loc15_);
                                          }
                                          §§push(§§pop() + §§pop());
                                          if(_loc25_)
                                          {
                                             addr176:
                                             §§push(Number(§§pop()));
                                          }
                                          var _loc16_:* = §§pop();
                                          if(!_loc24_)
                                          {
                                             §§push(_loc12_.col2.x);
                                             if(_loc25_ || param3)
                                             {
                                                §§push(_loc14_);
                                                if(_loc25_ || param3)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc25_ || param1)
                                                   {
                                                      §§push(_loc12_.col2.y);
                                                      if(_loc25_)
                                                      {
                                                         addr211:
                                                         §§push(§§pop() * _loc15_);
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                      if(!_loc24_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         if(_loc25_ || b2Collision)
                                                         {
                                                         }
                                                         addr241:
                                                         _loc14_ = §§pop();
                                                         addr242:
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
                                                               if(!_loc24_)
                                                               {
                                                                  if(§§pop() >= §§pop())
                                                                  {
                                                                     §§push(_loc17_);
                                                                     if(!_loc24_)
                                                                     {
                                                                        §§push(int(§§pop()));
                                                                        break;
                                                                     }
                                                                     break;
                                                                  }
                                                                  _loc13_ = _loc11_[_loc19_];
                                                                  if(_loc25_)
                                                                  {
                                                                     §§push(_loc14_);
                                                                     if(!_loc24_)
                                                                     {
                                                                        §§push(_loc13_.x);
                                                                        if(!_loc24_)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(_loc25_ || param3)
                                                                           {
                                                                              §§push(_loc15_);
                                                                              if(!_loc24_)
                                                                              {
                                                                                 §§push(§§pop() * _loc13_.y);
                                                                                 if(_loc25_)
                                                                                 {
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(!(_loc24_ && b2Collision))
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                       if(_loc24_)
                                                                                       {
                                                                                       }
                                                                                       loop5:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          addr333:
                                                                                          loop1:
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
                                                                                                   if(!_loc24_)
                                                                                                   {
                                                                                                      §§push(int(§§pop()));
                                                                                                   }
                                                                                                   _loc17_ = §§pop();
                                                                                                   loop4:
                                                                                                   for(; !_loc24_; while(true)
                                                                                                   {
                                                                                                      _loc19_++;
                                                                                                      if(!(_loc24_ && param3))
                                                                                                      {
                                                                                                         if(true)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         continue loop3;
                                                                                                      }
                                                                                                      continue loop4;
                                                                                                   },continue loop0)
                                                                                                   {
                                                                                                      if(!_loc24_)
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            continue loop4;
                                                                                                         }
                                                                                                         addr281:
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc23_);
                                                                                                            if(!(_loc24_ && param2))
                                                                                                            {
                                                                                                               continue loop5;
                                                                                                            }
                                                                                                            continue loop1;
                                                                                                         }
                                                                                                         addr324:
                                                                                                      }
                                                                                                   }
                                                                                                   continue loop2;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       addr332:
                                                                                    }
                                                                                    §§push(§§pop());
                                                                                    if(_loc24_)
                                                                                    {
                                                                                    }
                                                                                    addr323:
                                                                                    if(§§pop() < §§pop())
                                                                                    {
                                                                                       §§goto(addr324);
                                                                                    }
                                                                                    §§goto(addr260);
                                                                                 }
                                                                              }
                                                                              _loc23_ = §§pop();
                                                                              if(_loc25_)
                                                                              {
                                                                                 addr322:
                                                                                 §§goto(addr323);
                                                                                 §§push(_loc18_);
                                                                              }
                                                                              §§goto(addr333);
                                                                           }
                                                                           §§goto(addr332);
                                                                        }
                                                                        §§goto(addr323);
                                                                     }
                                                                     §§goto(addr322);
                                                                  }
                                                                  §§goto(addr281);
                                                               }
                                                               addr347:
                                                               var _loc21_:* = §§pop();
                                                               if(_loc25_ || param3)
                                                               {
                                                                  §§push(1);
                                                                  if(!_loc24_)
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     if(_loc25_)
                                                                     {
                                                                        if(§§pop() < _loc9_)
                                                                        {
                                                                           §§push(_loc21_);
                                                                           if(!_loc24_)
                                                                           {
                                                                              addr369:
                                                                              addr368:
                                                                              §§push(int(§§pop() + 1));
                                                                              if(!(_loc24_ && b2Collision))
                                                                              {
                                                                                 addr377:
                                                                              }
                                                                              addr381:
                                                                              §§push(int(§§pop()));
                                                                           }
                                                                           §§goto(addr377);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(0);
                                                                           if(_loc25_)
                                                                           {
                                                                              §§goto(addr381);
                                                                           }
                                                                        }
                                                                        var _loc22_:* = §§pop();
                                                                        _loc20_ = param1[0];
                                                                        _loc13_ = _loc10_[_loc21_];
                                                                        _loc12_ = param6.R;
                                                                        if(!(_loc24_ && param3))
                                                                        {
                                                                           §§push(_loc20_.v);
                                                                           loop9:
                                                                           while(true)
                                                                           {
                                                                              §§push(param6.position);
                                                                              addr578:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().x);
                                                                                 if(_loc25_ || param1)
                                                                                 {
                                                                                    §§push(_loc12_.col1);
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().x);
                                                                                       addr589:
                                                                                       addr501:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc13_.x);
                                                                                          if(!(_loc24_ && param2))
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(!(_loc24_ && param2))
                                                                                             {
                                                                                                §§push(_loc12_.col2);
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop().x);
                                                                                                   addr609:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc13_.y);
                                                                                                      addr611:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         addr612:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                addr608:
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() + §§pop());
                                                                                                addr614:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop().x = §§pop();
                                                                                                   continue loop9;
                                                                                                }
                                                                                             }
                                                                                             addr613:
                                                                                          }
                                                                                          §§goto(addr609);
                                                                                       }
                                                                                       §§push(_loc12_.col1);
                                                                                       if(_loc24_ && b2Collision)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       §§push(§§pop().y);
                                                                                       if(_loc25_ || b2Collision)
                                                                                       {
                                                                                          §§push(_loc13_.x);
                                                                                          if(_loc25_ || b2Collision)
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(!(_loc24_ && b2Collision))
                                                                                             {
                                                                                                if(_loc25_)
                                                                                                {
                                                                                                   §§push(_loc12_.col2);
                                                                                                   if(!_loc24_)
                                                                                                   {
                                                                                                      §§push(§§pop().y);
                                                                                                      if(!_loc24_)
                                                                                                      {
                                                                                                         if(_loc25_ || param3)
                                                                                                         {
                                                                                                            §§push(_loc13_.y);
                                                                                                            if(_loc25_)
                                                                                                            {
                                                                                                               addr556:
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               if(_loc25_ || b2Collision)
                                                                                                               {
                                                                                                                  addr564:
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  if(!(_loc24_ && param3))
                                                                                                                  {
                                                                                                                     addr572:
                                                                                                                     §§pop().y = §§pop() + §§pop();
                                                                                                                     loop20:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc20_.id);
                                                                                                                        loop21:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop().§?!O§);
                                                                                                                           loop22:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(param4);
                                                                                                                              loop23:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§pop().§<!y§ = §§pop();
                                                                                                                                 loop24:
                                                                                                                                 while(!_loc24_)
                                                                                                                                 {
                                                                                                                                    if(_loc24_ && param2)
                                                                                                                                    {
                                                                                                                                       continue loop9;
                                                                                                                                    }
                                                                                                                                    loop25:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc20_.id);
                                                                                                                                       loop26:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop().§?!O§);
                                                                                                                                          loop27:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc21_);
                                                                                                                                             loop28:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§pop().§?! § = §§pop();
                                                                                                                                                addr455:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc20_.id);
                                                                                                                                                   if(_loc25_ || param2)
                                                                                                                                                   {
                                                                                                                                                      if(_loc25_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop().§?!O§);
                                                                                                                                                         if(_loc25_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc25_)
                                                                                                                                                            {
                                                                                                                                                               §§push(0);
                                                                                                                                                               if(!(_loc24_ && param3))
                                                                                                                                                               {
                                                                                                                                                                  if(_loc25_)
                                                                                                                                                                  {
                                                                                                                                                                     §§pop().§'!c§ = §§pop();
                                                                                                                                                                     if(!_loc24_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc25_)
                                                                                                                                                                        {
                                                                                                                                                                           if(true)
                                                                                                                                                                           {
                                                                                                                                                                              break;
                                                                                                                                                                           }
                                                                                                                                                                           continue loop25;
                                                                                                                                                                        }
                                                                                                                                                                        continue loop24;
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
                                                                                                                                                      continue loop21;
                                                                                                                                                   }
                                                                                                                                                   continue loop26;
                                                                                                                                                }
                                                                                                                                                _loc20_ = param1[1];
                                                                                                                                                _loc13_ = _loc10_[_loc22_];
                                                                                                                                                _loc12_ = param6.R;
                                                                                                                                                if(!_loc24_)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc20_.v);
                                                                                                                                                   loop30:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(param6.position);
                                                                                                                                                      addr810:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop().x);
                                                                                                                                                         addr811:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc12_.col1);
                                                                                                                                                            addr813:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop().x);
                                                                                                                                                               addr814:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc13_.x);
                                                                                                                                                                  addr816:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                     addr817:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc12_.col2);
                                                                                                                                                                        addr819:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop().x);
                                                                                                                                                                           addr820:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc13_.y);
                                                                                                                                                                              addr822:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                 addr823:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                    addr824:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                       addr825:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§pop().x = §§pop();
                                                                                                                                                                                          continue loop30;
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
                                                                                                                                                   addr808:
                                                                                                                                                }
                                                                                                                                                loop43:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc20_.v);
                                                                                                                                                   if(_loc25_ || param2)
                                                                                                                                                   {
                                                                                                                                                      §§push(param6.position);
                                                                                                                                                      if(_loc25_ || b2Collision)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop().y);
                                                                                                                                                         if(_loc25_ || param2)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc24_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc12_.col1);
                                                                                                                                                               if(!(_loc24_ && param1))
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop().y);
                                                                                                                                                                  if(!(_loc24_ && param2))
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc25_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc13_.x);
                                                                                                                                                                        if(!_loc24_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc24_ && param1))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                              if(_loc25_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc24_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc12_.col2);
                                                                                                                                                                                    if(!_loc24_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop().y);
                                                                                                                                                                                       if(_loc25_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc24_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc13_.y);
                                                                                                                                                                                             if(!_loc24_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr781:
                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                if(!_loc24_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr784:
                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                   if(!(_loc24_ && param1))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr802:
                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                      if(!_loc24_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§pop().y = §§pop();
                                                                                                                                                                                                         loop44:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc20_.id);
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop().§?!O§);
                                                                                                                                                                                                               loop46:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(param4);
                                                                                                                                                                                                                  loop47:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§pop().§<!y§ = §§pop();
                                                                                                                                                                                                                     loop48:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc20_.id);
                                                                                                                                                                                                                        loop49:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop().§?!O§);
                                                                                                                                                                                                                           addr682:
                                                                                                                                                                                                                           while(!(_loc24_ && param3))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc22_);
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§pop().§?! § = §§pop();
                                                                                                                                                                                                                                 addr691:
                                                                                                                                                                                                                                 while(!_loc24_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc25_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop49;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    continue loop44;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr652:
                                                                                                                                                                                                                                 continue loop48;
                                                                                                                                                                                                                                 if(_loc24_ && param3)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 if(_loc24_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop47;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§pop().§'!c§ = §§pop();
                                                                                                                                                                                                                                 if(_loc25_ || param3)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!(_loc24_ && param1))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       return;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    continue loop43;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr691);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop46;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(!(_loc25_ || param2))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§push(§§pop().§?!O§);
                                                                                                                                                                                                               if(!_loc24_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr652);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr682);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr811);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr824);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr820);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr822);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr823);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr781);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr819);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr817);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr784);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr816);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr781);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr814);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr784);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr813);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr825);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr802);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr810);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr808);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr810);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 continue loop20;
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr589);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr609);
                                                                                                            }
                                                                                                            §§goto(addr611);
                                                                                                         }
                                                                                                         §§goto(addr612);
                                                                                                      }
                                                                                                      §§goto(addr556);
                                                                                                   }
                                                                                                   §§goto(addr608);
                                                                                                }
                                                                                                §§goto(addr613);
                                                                                             }
                                                                                             §§goto(addr564);
                                                                                          }
                                                                                          §§goto(addr556);
                                                                                       }
                                                                                       §§goto(addr564);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr614);
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr455);
                                                                     }
                                                                     §§goto(addr369);
                                                                  }
                                                                  §§goto(addr368);
                                                               }
                                                               §§goto(addr377);
                                                            }
                                                            break;
                                                         }
                                                         addr240:
                                                         §§goto(addr347);
                                                         §§push(§§pop());
                                                         addr240:
                                                      }
                                                      §§goto(addr240);
                                                   }
                                                   _loc15_ = §§pop();
                                                   if(!(_loc24_ && param1))
                                                   {
                                                      §§push(_loc16_);
                                                      if(_loc25_ || param2)
                                                      {
                                                         §§goto(addr240);
                                                      }
                                                      §§goto(addr241);
                                                   }
                                                   §§goto(addr242);
                                                }
                                                §§goto(addr211);
                                             }
                                          }
                                          §§goto(addr241);
                                       }
                                       §§goto(addr176);
                                    }
                                    §§goto(addr171);
                                 }
                                 §§goto(addr161);
                              }
                              §§goto(addr131);
                           }
                           §§goto(addr134);
                        }
                        §§goto(addr131);
                     }
                     §§goto(addr118);
                  }
               }
               §§goto(addr90);
            }
            §§goto(addr83);
         }
         §§goto(addr90);
      }
      
      private static function §^3§() : Vector.<§"h§>
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Vector.<§"h§> = new Vector.<§"h§>(2);
         if(!_loc3_)
         {
            _loc1_[0] = new §"h§();
            do
            {
               _loc1_[1] = new §"h§();
            }
            while(!(_loc2_ || _loc1_));
            
         }
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
         if(_loc46_ || b2Collision)
         {
            §[!w§[0] = _loc8_;
         }
         §§push(§var§(§[!w§,param2,param3,param4,param5));
         if(!_loc47_)
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         if(_loc46_ || param2)
         {
            §§push(int(§[!w§[0]));
            if(!(_loc47_ && param2))
            {
               _loc8_ = §§pop();
               if(!(_loc47_ && param2))
               {
                  if(_loc9_ > _loc7_)
                  {
                     if(_loc46_)
                     {
                        return;
                     }
                     addr121:
                     §§push(0);
                  }
               }
               §§goto(addr121);
            }
            var _loc10_:* = §§pop();
            if(!_loc47_)
            {
               §!!T§[0] = _loc10_;
            }
            §§push(§var§(§!!T§,param4,param5,param2,param3));
            if(!(_loc47_ && param2))
            {
               §§push(Number(§§pop()));
            }
            var _loc11_:* = §§pop();
            if(_loc46_ || param1)
            {
               _loc10_ = int(§!!T§[0]);
               if(!(_loc47_ && param1))
               {
                  addr164:
                  §§push(_loc11_);
                  if(_loc46_)
                  {
                     if(§§pop() > _loc7_)
                     {
                        if(_loc46_ || param2)
                        {
                           §§goto(addr176);
                        }
                     }
                     §§push(0.98);
                     if(!(_loc47_ && b2Collision))
                     {
                        addr185:
                        §§push(Number(§§pop()));
                     }
                     var _loc18_:* = §§pop();
                     §§push(0.001);
                     if(_loc46_)
                     {
                        §§push(Number(§§pop()));
                     }
                     var _loc19_:* = §§pop();
                     if(_loc46_ || b2Collision)
                     {
                        §§push(_loc11_);
                        §§push(_loc18_);
                        if(_loc46_)
                        {
                           §§push(_loc9_);
                           if(_loc46_ || param3)
                           {
                              addr216:
                              §§push(§§pop() * §§pop());
                              if(_loc46_)
                              {
                                 §§push(_loc19_);
                              }
                              if(§§pop() > §§pop())
                              {
                                 addr217:
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
                                       loop19:
                                       while(true)
                                       {
                                          §§push(1);
                                          if(!_loc46_)
                                          {
                                             break;
                                          }
                                          _loc17_ = §§pop();
                                          if(!(_loc46_ || param1))
                                          {
                                             continue;
                                          }
                                          if(!_loc47_)
                                          {
                                             if(false)
                                             {
                                                while(true)
                                                {
                                                   param1.§3r§ = b2Manifold.§3!J§;
                                                   continue loop19;
                                                }
                                                addr261:
                                                addr249:
                                             }
                                             else
                                             {
                                                §§goto(addr261);
                                             }
                                             addr316:
                                             var _loc21_:Vector.<§"h§> = §?!d§;
                                             if(!_loc47_)
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
                                             if(_loc46_)
                                             {
                                                if(_loc16_ + 1 < _loc22_)
                                                {
                                                   addr351:
                                                   _loc25_ = _loc23_[int(_loc16_ + 1)];
                                                }
                                                else
                                                {
                                                   _loc25_ = _loc23_[0];
                                                }
                                                var _loc26_:b2Vec2;
                                                §§push(_loc26_ = §do§);
                                                §§push(_loc25_.x);
                                                if(!(_loc47_ && param3))
                                                {
                                                   §§push(_loc24_.x);
                                                   if(_loc46_ || param2)
                                                   {
                                                      addr389:
                                                      §§push(§§pop() - §§pop());
                                                      §§push(_loc25_.y);
                                                      if(!(_loc47_ && param2))
                                                      {
                                                         addr398:
                                                         §§push(§§pop() - _loc24_.y);
                                                      }
                                                      §§pop().Set(§§pop(),§§pop());
                                                      if(_loc46_ || param2)
                                                      {
                                                         _loc26_.Normalize();
                                                      }
                                                      var _loc27_:b2Vec2;
                                                      (_loc27_ = §'V§).x = _loc26_.y;
                                                      if(!(_loc47_ && param3))
                                                      {
                                                         §§push(_loc27_);
                                                         §§push(_loc26_.x);
                                                         if(!(_loc47_ && b2Collision))
                                                         {
                                                            §§push(-§§pop());
                                                         }
                                                         §§pop().y = §§pop();
                                                      }
                                                      var _loc28_:b2Vec2;
                                                      §§push(_loc28_ = §=k§);
                                                      §§push(0.5);
                                                      if(_loc46_)
                                                      {
                                                         §§push(_loc24_.x);
                                                         if(!_loc47_)
                                                         {
                                                            §§push(_loc25_.x);
                                                            if(!(_loc47_ && param1))
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               if(_loc46_ || param1)
                                                               {
                                                                  addr465:
                                                                  §§push(§§pop() * §§pop());
                                                                  §§push(0.5);
                                                                  if(!_loc47_)
                                                                  {
                                                                     addr469:
                                                                     §§push(_loc24_.y);
                                                                     if(!(_loc47_ && param2))
                                                                     {
                                                                        addr478:
                                                                        §§push(§§pop() + _loc25_.y);
                                                                     }
                                                                     §§push(§§pop() * §§pop());
                                                                  }
                                                                  §§pop().Set(§§pop(),§§pop());
                                                                  var _loc29_:b2Vec2 = §7!G§;
                                                                  _loc20_ = _loc14_.R;
                                                                  if(!(_loc47_ && param1))
                                                                  {
                                                                     §§push(_loc29_);
                                                                     §§push(_loc20_.col1.x);
                                                                     if(!(_loc47_ && b2Collision))
                                                                     {
                                                                        §§push(_loc26_.x);
                                                                        if(!(_loc47_ && b2Collision))
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(!_loc47_)
                                                                           {
                                                                              addr534:
                                                                              §§push(_loc20_.col2.x);
                                                                              if(_loc46_ || b2Collision)
                                                                              {
                                                                                 addr530:
                                                                                 §§push(§§pop() * _loc26_.y);
                                                                              }
                                                                              §§pop().x = §§pop() + §§pop();
                                                                              if(!_loc47_)
                                                                              {
                                                                                 addr537:
                                                                                 §§push(_loc29_);
                                                                                 §§push(_loc20_.col1.y);
                                                                                 if(_loc46_)
                                                                                 {
                                                                                    §§push(_loc26_.x);
                                                                                    if(_loc46_ || param3)
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(_loc46_)
                                                                                       {
                                                                                          addr555:
                                                                                          §§push(_loc20_.col2.y);
                                                                                          if(_loc46_)
                                                                                          {
                                                                                             addr563:
                                                                                             §§push(§§pop() + §§pop() * _loc26_.y);
                                                                                          }
                                                                                          §§goto(addr563);
                                                                                       }
                                                                                       §§pop().y = §§pop();
                                                                                       addr565:
                                                                                       var _loc30_:b2Vec2;
                                                                                       §§push(_loc30_ = s_tangent2);
                                                                                       §§push(_loc29_.x);
                                                                                       if(_loc46_ || param1)
                                                                                       {
                                                                                          §§push(-§§pop());
                                                                                       }
                                                                                       §§pop().x = §§pop();
                                                                                       if(_loc46_ || param1)
                                                                                       {
                                                                                          §§push(_loc30_);
                                                                                          §§push(_loc29_.y);
                                                                                          if(_loc46_)
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
                                                                                          if(!_loc47_)
                                                                                          {
                                                                                             §§push(-§§pop());
                                                                                          }
                                                                                          §§pop().y = §§pop();
                                                                                       }
                                                                                       var _loc32_:b2Vec2 = s_v11;
                                                                                       var _loc33_:b2Vec2 = s_v12;
                                                                                       if(_loc46_ || param1)
                                                                                       {
                                                                                          §§push(_loc32_);
                                                                                          §§push(_loc14_.position.x);
                                                                                          if(!_loc47_)
                                                                                          {
                                                                                             §§push(_loc20_.col1.x);
                                                                                             if(_loc46_ || param3)
                                                                                             {
                                                                                                §§push(_loc24_.x);
                                                                                                if(!_loc47_)
                                                                                                {
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(!(_loc47_ && param1))
                                                                                                   {
                                                                                                      addr827:
                                                                                                      §§push(_loc20_.col2.x);
                                                                                                      if(_loc46_ || param2)
                                                                                                      {
                                                                                                         addr840:
                                                                                                         §§push(§§pop() + §§pop() * _loc24_.y);
                                                                                                      }
                                                                                                      §§goto(addr840);
                                                                                                   }
                                                                                                   addr842:
                                                                                                   §§pop().x = §§pop() + §§pop();
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc32_);
                                                                                                      §§push(_loc14_.position.y);
                                                                                                      if(_loc46_ || param2)
                                                                                                      {
                                                                                                         §§push(_loc20_.col1.y);
                                                                                                         if(!(_loc47_ && param1))
                                                                                                         {
                                                                                                            §§push(_loc24_.x);
                                                                                                            if(!(_loc47_ && param2))
                                                                                                            {
                                                                                                               addr797:
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               if(!(_loc47_ && param3))
                                                                                                               {
                                                                                                                  addr782:
                                                                                                                  §§push(_loc20_.col2.y);
                                                                                                                  if(_loc46_ || b2Collision)
                                                                                                                  {
                                                                                                                     addr792:
                                                                                                                     §§push(§§pop() * _loc24_.y);
                                                                                                                  }
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                               }
                                                                                                               §§pop().y = §§pop() + §§pop();
                                                                                                               loop6:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  addr673:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc33_);
                                                                                                                     §§push(_loc14_.position.x);
                                                                                                                     if(!(_loc47_ && param1))
                                                                                                                     {
                                                                                                                        §§push(_loc20_.col1.x);
                                                                                                                        if(_loc46_)
                                                                                                                        {
                                                                                                                           §§push(_loc25_.x);
                                                                                                                           if(!(_loc47_ && b2Collision))
                                                                                                                           {
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              if(!(_loc47_ && param3))
                                                                                                                              {
                                                                                                                                 addr731:
                                                                                                                                 §§push(_loc20_.col2.x);
                                                                                                                                 if(!(_loc47_ && param2))
                                                                                                                                 {
                                                                                                                                    addr727:
                                                                                                                                    §§push(§§pop() * _loc25_.y);
                                                                                                                                 }
                                                                                                                                 §§pop().x = §§pop() + (§§pop() + §§pop());
                                                                                                                                 continue loop6;
                                                                                                                              }
                                                                                                                              §§goto(addr731);
                                                                                                                           }
                                                                                                                           §§goto(addr727);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr731);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr792);
                                                                                                         }
                                                                                                         §§goto(addr782);
                                                                                                      }
                                                                                                      §§goto(addr797);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr840);
                                                                                             }
                                                                                             §§goto(addr827);
                                                                                          }
                                                                                          §§goto(addr842);
                                                                                       }
                                                                                       §§goto(addr742);
                                                                                    }
                                                                                    §§goto(addr563);
                                                                                 }
                                                                                 §§goto(addr555);
                                                                              }
                                                                              §§goto(addr565);
                                                                           }
                                                                           §§goto(addr534);
                                                                        }
                                                                        §§goto(addr530);
                                                                     }
                                                                     §§goto(addr534);
                                                                  }
                                                                  §§goto(addr537);
                                                               }
                                                               §§goto(addr469);
                                                            }
                                                            §§goto(addr478);
                                                         }
                                                      }
                                                      §§goto(addr465);
                                                   }
                                                   §§goto(addr398);
                                                }
                                                §§goto(addr389);
                                             }
                                             §§goto(addr351);
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                             }
                                             addr260:
                                          }
                                          §§goto(addr249);
                                       }
                                    }
                                 }
                                 §§goto(addr260);
                              }
                              else
                              {
                                 _loc12_ = param2;
                                 _loc13_ = param4;
                                 _loc14_ = param3;
                                 _loc15_ = param5;
                                 if(!(_loc47_ && param2))
                                 {
                                    §§push(_loc8_);
                                    while(true)
                                    {
                                       §§push(int(§§pop()));
                                       addr314:
                                       while(true)
                                       {
                                          _loc16_ = §§pop();
                                          addr315:
                                          while(true)
                                          {
                                             addr306:
                                             while(true)
                                             {
                                                param1.§3r§ = b2Manifold.§-!-§;
                                             }
                                          }
                                       }
                                    }
                                    addr313:
                                 }
                                 while(true)
                                 {
                                    §§push(0);
                                    if(_loc46_ || param1)
                                    {
                                       if(_loc46_)
                                       {
                                          _loc17_ = §§pop();
                                          if(!_loc46_)
                                          {
                                             continue;
                                          }
                                          if(!(_loc47_ && param2))
                                          {
                                             if(true)
                                             {
                                                break;
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr315);
                                          }
                                          §§goto(addr306);
                                       }
                                       else
                                       {
                                          §§goto(addr313);
                                       }
                                    }
                                    §§goto(addr314);
                                 }
                              }
                              §§goto(addr316);
                           }
                           §§push(§§pop() + §§pop());
                        }
                        §§goto(addr216);
                     }
                     §§goto(addr217);
                  }
                  §§goto(addr185);
               }
               addr176:
               return;
            }
            §§goto(addr164);
         }
         §§goto(addr121);
      }
      
      public static function §,!C§(param1:b2Manifold, param2:b2CircleShape, param3:b2Transform, param4:b2CircleShape, param5:b2Transform) : void
      {
         var _loc16_:Boolean = true;
         var _loc17_:Boolean = false;
         var _loc6_:b2Mat22 = null;
         var _loc7_:b2Vec2 = null;
         if(_loc16_)
         {
            param1.§&!h§ = 0;
         }
         _loc6_ = param3.R;
         _loc7_ = param2.§`3§;
         §§push(param3.position.x);
         if(_loc16_ || param3)
         {
            §§push(_loc6_.col1.x);
            if(!(_loc17_ && param3))
            {
               §§push(_loc7_.x);
               if(_loc16_ || param1)
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc17_ && param3))
                  {
                     addr86:
                     §§push(_loc6_.col2.x);
                     if(_loc16_ || b2Collision)
                     {
                        addr82:
                        §§push(§§pop() * _loc7_.y);
                     }
                     §§push(§§pop() + (§§pop() + §§pop()));
                     if(!(_loc17_ && param3))
                     {
                        addr95:
                        var _loc8_:Number = §§pop();
                        §§push(param3.position.y);
                        if(!_loc17_)
                        {
                           §§push(_loc6_.col1.y);
                           if(_loc16_ || param2)
                           {
                              §§push(_loc7_.x);
                              if(!_loc17_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(_loc16_)
                                 {
                                    addr118:
                                    §§push(_loc6_.col2.y);
                                    if(_loc16_ || b2Collision)
                                    {
                                       addr128:
                                       §§push(§§pop() * _loc7_.y);
                                    }
                                    §§push(§§pop() + §§pop());
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(_loc16_)
                                 {
                                    addr136:
                                    var _loc9_:Number = §§pop();
                                    _loc6_ = param5.R;
                                    _loc7_ = param4.§`3§;
                                    §§push(param5.position.x);
                                    if(!_loc17_)
                                    {
                                       §§push(_loc6_.col1.x);
                                       if(_loc16_)
                                       {
                                          §§push(_loc7_.x);
                                          if(_loc16_ || param2)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(!(_loc17_ && param1))
                                             {
                                                addr191:
                                                §§push(_loc6_.col2.x);
                                                if(_loc16_)
                                                {
                                                   addr187:
                                                   §§push(§§pop() * _loc7_.y);
                                                }
                                                §§push(§§pop() + (§§pop() + §§pop()));
                                                if(!(_loc17_ && param1))
                                                {
                                                   addr200:
                                                   var _loc10_:Number = §§pop();
                                                   §§push(param5.position.y);
                                                   if(_loc16_)
                                                   {
                                                      §§push(_loc6_.col1.y);
                                                      if(_loc16_)
                                                      {
                                                         §§push(_loc7_.x);
                                                         if(!_loc17_)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc16_)
                                                            {
                                                               addr218:
                                                               §§push(_loc6_.col2.y);
                                                               if(_loc16_)
                                                               {
                                                                  addr223:
                                                                  §§push(§§pop() * _loc7_.y);
                                                               }
                                                               §§push(§§pop() + §§pop());
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                            if(!_loc17_)
                                                            {
                                                               addr230:
                                                               §§push(Number(§§pop()));
                                                            }
                                                            var _loc11_:* = §§pop();
                                                            §§push(_loc10_);
                                                            if(_loc16_)
                                                            {
                                                               §§push(§§pop() - _loc8_);
                                                               if(!_loc17_)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                               }
                                                            }
                                                            var _loc12_:* = §§pop();
                                                            §§push(_loc11_);
                                                            if(_loc16_)
                                                            {
                                                               §§push(§§pop() - _loc9_);
                                                               if(_loc16_ || param3)
                                                               {
                                                                  addr253:
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               var _loc13_:* = §§pop();
                                                               §§push(_loc12_);
                                                               if(!_loc17_)
                                                               {
                                                                  §§push(_loc12_);
                                                                  if(_loc16_)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(_loc16_)
                                                                     {
                                                                        §§push(_loc13_);
                                                                        if(!_loc17_)
                                                                        {
                                                                           addr267:
                                                                           §§push(§§pop() * _loc13_);
                                                                        }
                                                                        §§push(§§pop() + §§pop());
                                                                        if(_loc16_ || b2Collision)
                                                                        {
                                                                           addr278:
                                                                           var _loc14_:Number = §§pop();
                                                                           var _loc15_:Number = param2.§ !c§ + param4.§ !c§;
                                                                           if(_loc16_ || b2Collision)
                                                                           {
                                                                              §§push(_loc14_);
                                                                              §§push(_loc15_);
                                                                              if(_loc16_)
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
                                                                                       while(_loc16_ || b2Collision)
                                                                                       {
                                                                                          if(!_loc17_)
                                                                                          {
                                                                                             param1.§1!§.§+J§();
                                                                                             loop3:
                                                                                             do
                                                                                             {
                                                                                                param1.§&!h§ = 1;
                                                                                                loop4:
                                                                                                while(_loc16_)
                                                                                                {
                                                                                                   param1.§ !C§[0].m_localPoint.SetV(param4.§`3§);
                                                                                                   while(!(_loc17_ && param2))
                                                                                                   {
                                                                                                      param1.§ !C§[0].m_id.key = 0;
                                                                                                      if(!_loc17_)
                                                                                                      {
                                                                                                         if(!_loc17_)
                                                                                                         {
                                                                                                            continue loop3;
                                                                                                         }
                                                                                                         continue loop4;
                                                                                                      }
                                                                                                   }
                                                                                                   continue loop1;
                                                                                                }
                                                                                                continue loop2;
                                                                                             }
                                                                                             while(_loc17_ && b2Collision);
                                                                                             
                                                                                             return;
                                                                                             addr346:
                                                                                          }
                                                                                       }
                                                                                       continue loop0;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              return;
                                                                           }
                                                                           §§goto(addr346);
                                                                        }
                                                                     }
                                                                     §§goto(addr278);
                                                                  }
                                                                  §§goto(addr267);
                                                               }
                                                               §§goto(addr278);
                                                            }
                                                            §§goto(addr253);
                                                         }
                                                         §§goto(addr223);
                                                      }
                                                      §§goto(addr218);
                                                   }
                                                   §§goto(addr230);
                                                }
                                                §§goto(addr200);
                                             }
                                             §§goto(addr191);
                                          }
                                          §§goto(addr187);
                                       }
                                       §§goto(addr191);
                                    }
                                    §§goto(addr200);
                                 }
                                 §§goto(addr136);
                              }
                              §§goto(addr128);
                           }
                           §§goto(addr118);
                        }
                        §§goto(addr136);
                     }
                     §§goto(addr95);
                  }
                  §§goto(addr86);
               }
               §§goto(addr82);
            }
            §§goto(addr86);
         }
         §§goto(addr95);
      }
      
      public static function §;R§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2CircleShape, param5:b2Transform) : void
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
         if(!_loc35_)
         {
            param1.§&!h§ = 0;
         }
         _loc12_ = param5.R;
         _loc11_ = param4.§`3§;
         §§push(param5.position.x);
         if(_loc34_)
         {
            §§push(_loc12_.col1.x);
            if(_loc34_)
            {
               §§push(_loc11_.x);
               if(!_loc35_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc34_)
                  {
                     addr71:
                     §§push(_loc12_.col2.x);
                     if(_loc34_ || param2)
                     {
                        addr81:
                        §§push(§§pop() * _loc11_.y);
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§push(§§pop() + §§pop());
                  if(!(_loc35_ && param2))
                  {
                     addr93:
                     §§push(Number(§§pop()));
                  }
                  var _loc13_:* = §§pop();
                  §§push(param5.position.y);
                  if(_loc34_)
                  {
                     §§push(_loc12_.col1.y);
                     if(!_loc35_)
                     {
                        §§push(_loc11_.x);
                        if(!(_loc35_ && b2Collision))
                        {
                           §§push(§§pop() * §§pop());
                           if(!(_loc35_ && b2Collision))
                           {
                              addr122:
                              §§push(_loc12_.col2.y);
                              if(!(_loc35_ && param3))
                              {
                                 addr135:
                                 §§push(§§pop() + §§pop() * _loc11_.y);
                              }
                              §§goto(addr135);
                           }
                           §§push(§§pop() + §§pop());
                           if(!_loc35_)
                           {
                              addr140:
                              var _loc14_:Number = §§pop();
                              if(_loc34_)
                              {
                                 §§push(_loc13_);
                                 if(_loc34_ || param1)
                                 {
                                    §§push(param3.position);
                                    if(_loc34_ || param2)
                                    {
                                       §§push(§§pop().x);
                                       if(!(_loc35_ && b2Collision))
                                       {
                                          §§push(§§pop() - §§pop());
                                          if(_loc34_ || param1)
                                          {
                                             §§push(Number(§§pop()));
                                             if(!(_loc35_ && b2Collision))
                                             {
                                                _loc7_ = §§pop();
                                                if(!_loc35_)
                                                {
                                                   addr187:
                                                   §§push(_loc14_);
                                                   if(_loc34_)
                                                   {
                                                      addr190:
                                                      addr193:
                                                      addr192:
                                                      §§push(§§pop() - param3.position.y);
                                                      if(!_loc34_)
                                                      {
                                                      }
                                                      addr197:
                                                      _loc8_ = §§pop();
                                                      _loc12_ = param3.R;
                                                      §§push(_loc7_);
                                                      if(!(_loc35_ && param2))
                                                      {
                                                         §§push(_loc12_.col1.x);
                                                         if(!(_loc35_ && param1))
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc34_)
                                                            {
                                                               §§push(_loc8_);
                                                               if(_loc34_ || param2)
                                                               {
                                                                  addr235:
                                                                  §§push(§§pop() + §§pop() * _loc12_.col1.y);
                                                                  if(!_loc35_)
                                                                  {
                                                                     addr238:
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                               }
                                                               §§goto(addr235);
                                                            }
                                                            var _loc15_:* = §§pop();
                                                            §§push(_loc7_);
                                                            if(!(_loc35_ && b2Collision))
                                                            {
                                                               §§push(_loc12_.col2.x);
                                                               if(_loc34_)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(_loc34_)
                                                                  {
                                                                     §§push(_loc8_);
                                                                     if(!(_loc35_ && b2Collision))
                                                                     {
                                                                        addr264:
                                                                        §§push(§§pop() * _loc12_.col2.y);
                                                                     }
                                                                     §§push(§§pop() + §§pop());
                                                                     if(_loc35_)
                                                                     {
                                                                     }
                                                                     addr272:
                                                                     var _loc16_:* = §§pop();
                                                                     var _loc18_:* = 0;
                                                                     §§push(-Number.MAX_VALUE);
                                                                     if(_loc34_ || param2)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                     var _loc19_:* = §§pop();
                                                                     var _loc20_:Number = param2.§ !c§ + param4.§ !c§;
                                                                     §§push(param2.§]D§);
                                                                     if(!_loc35_)
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
                                                                        if(!(_loc35_ && param2))
                                                                        {
                                                                           §§push(_loc21_);
                                                                           if(!_loc35_)
                                                                           {
                                                                              if(§§pop() >= §§pop())
                                                                              {
                                                                                 §§push(_loc18_);
                                                                                 if(_loc34_ || param3)
                                                                                 {
                                                                                    §§push(int(§§pop()));
                                                                                    break;
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              _loc11_ = _loc22_[_loc24_];
                                                                              if(!(_loc35_ && b2Collision))
                                                                              {
                                                                                 §§push(_loc15_);
                                                                                 if(_loc34_ || b2Collision)
                                                                                 {
                                                                                    §§push(_loc11_.x);
                                                                                    if(!_loc35_)
                                                                                    {
                                                                                       §§push(§§pop() - §§pop());
                                                                                       if(_loc34_)
                                                                                       {
                                                                                          addr339:
                                                                                          §§push(Number(§§pop()));
                                                                                          if(_loc34_)
                                                                                          {
                                                                                             addr342:
                                                                                             _loc7_ = §§pop();
                                                                                             addr355:
                                                                                             if(!_loc35_)
                                                                                             {
                                                                                                §§push(_loc16_);
                                                                                                if(!_loc35_)
                                                                                                {
                                                                                                   addr350:
                                                                                                   §§push(§§pop() - _loc11_.y);
                                                                                                   if(_loc34_)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§push((_loc11_ = _loc23_[_loc24_]).x);
                                                                                             if(!(_loc35_ && b2Collision))
                                                                                             {
                                                                                                §§push(_loc7_);
                                                                                                if(!(_loc35_ && param1))
                                                                                                {
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(_loc34_ || b2Collision)
                                                                                                   {
                                                                                                      §§push(_loc11_.y);
                                                                                                      if(_loc34_)
                                                                                                      {
                                                                                                         §§push(§§pop() * _loc8_);
                                                                                                         if(_loc34_ || param2)
                                                                                                         {
                                                                                                            addr398:
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            if(_loc34_ || param3)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                               if(!_loc35_)
                                                                                                               {
                                                                                                                  §§push(§§pop());
                                                                                                                  if(!_loc35_)
                                                                                                                  {
                                                                                                                     addr412:
                                                                                                                     _loc31_ = §§pop();
                                                                                                                     if(!(_loc35_ && b2Collision))
                                                                                                                     {
                                                                                                                        addr420:
                                                                                                                        §§push(_loc20_);
                                                                                                                        if(!(_loc35_ && param2))
                                                                                                                        {
                                                                                                                           if(§§pop() > §§pop())
                                                                                                                           {
                                                                                                                              if(_loc34_)
                                                                                                                              {
                                                                                                                                 return;
                                                                                                                              }
                                                                                                                              loop1:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc31_);
                                                                                                                                 if(_loc34_ || param2)
                                                                                                                                 {
                                                                                                                                    addr480:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                       addr481:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          _loc19_ = §§pop();
                                                                                                                                          loop6:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             loop3:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc24_);
                                                                                                                                                if(!_loc35_)
                                                                                                                                                {
                                                                                                                                                   §§push(int(§§pop()));
                                                                                                                                                }
                                                                                                                                                _loc18_ = §§pop();
                                                                                                                                                addr452:
                                                                                                                                                addr461:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(_loc34_)
                                                                                                                                                   {
                                                                                                                                                      continue loop1;
                                                                                                                                                   }
                                                                                                                                                   continue loop6;
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   _loc24_++;
                                                                                                                                                   if(_loc34_)
                                                                                                                                                   {
                                                                                                                                                      if(true)
                                                                                                                                                      {
                                                                                                                                                         break;
                                                                                                                                                      }
                                                                                                                                                      continue loop3;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr452);
                                                                                                                                                   §§goto(addr461);
                                                                                                                                                }
                                                                                                                                                continue loop0;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr480:
                                                                                                                                 }
                                                                                                                                 §§goto(addr481);
                                                                                                                              }
                                                                                                                              addr472:
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§push(_loc31_);
                                                                                                                              if(_loc34_ || param2)
                                                                                                                              {
                                                                                                                                 addr470:
                                                                                                                                 §§push(_loc19_);
                                                                                                                              }
                                                                                                                              §§goto(addr480);
                                                                                                                           }
                                                                                                                           §§goto(addr480);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr481);
                                                                                                                  }
                                                                                                                  if(§§pop() > §§pop())
                                                                                                                  {
                                                                                                                     §§goto(addr472);
                                                                                                                  }
                                                                                                                  §§goto(addr461);
                                                                                                               }
                                                                                                               §§goto(addr420);
                                                                                                            }
                                                                                                            §§goto(addr481);
                                                                                                         }
                                                                                                         §§goto(addr412);
                                                                                                      }
                                                                                                      §§goto(addr398);
                                                                                                   }
                                                                                                   §§goto(addr480);
                                                                                                }
                                                                                                §§goto(addr398);
                                                                                             }
                                                                                             §§goto(addr470);
                                                                                          }
                                                                                          _loc8_ = §§pop();
                                                                                          §§goto(addr355);
                                                                                       }
                                                                                       §§goto(addr342);
                                                                                    }
                                                                                    §§goto(addr350);
                                                                                 }
                                                                                 §§goto(addr339);
                                                                              }
                                                                              §§goto(addr342);
                                                                           }
                                                                           addr505:
                                                                           var _loc25_:* = §§pop();
                                                                           if(_loc34_)
                                                                           {
                                                                              §§push(1);
                                                                              if(!_loc35_)
                                                                              {
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(_loc34_ || param1)
                                                                                 {
                                                                                    if(§§pop() < _loc21_)
                                                                                    {
                                                                                       §§push(_loc25_);
                                                                                       if(_loc34_ || param1)
                                                                                       {
                                                                                          addr532:
                                                                                          §§push(int(§§pop() + 1));
                                                                                          if(_loc34_)
                                                                                          {
                                                                                             addr544:
                                                                                             §§push(int(§§pop()));
                                                                                          }
                                                                                          §§goto(addr544);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push(0);
                                                                                       if(_loc34_ || param1)
                                                                                       {
                                                                                          §§goto(addr544);
                                                                                       }
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
                                                                                             param1.§&!h§ = 1;
                                                                                             param1.§3r§ = b2Manifold.§-!-§;
                                                                                             while(true)
                                                                                             {
                                                                                                param1.§1!§.SetV(_loc23_[_loc18_]);
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(param1.m_localPoint);
                                                                                                   loop10:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(0.5);
                                                                                                      addr680:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc27_.x);
                                                                                                         addr682:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc28_.x);
                                                                                                            addr684:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               addr685:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  addr686:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§pop().x = §§pop();
                                                                                                                     continue loop10;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   addr620:
                                                                                                   param1.§ !C§[0].m_id.key = 0;
                                                                                                   if(_loc35_)
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   §§goto(addr603);
                                                                                                }
                                                                                                param1.§ !C§[0].m_localPoint.SetV(param4.§`3§);
                                                                                                if(!(_loc34_ || param3))
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                §§goto(addr620);
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§push(_loc15_);
                                                                                             if(!_loc35_)
                                                                                             {
                                                                                                §§push(_loc27_.x);
                                                                                                if(!(_loc35_ && param2))
                                                                                                {
                                                                                                   §§push(§§pop() - §§pop());
                                                                                                   if(_loc34_)
                                                                                                   {
                                                                                                      §§push(_loc28_.x);
                                                                                                      if(!(_loc35_ && param2))
                                                                                                      {
                                                                                                         §§push(_loc27_.x);
                                                                                                         if(_loc34_)
                                                                                                         {
                                                                                                            §§push(§§pop() - §§pop());
                                                                                                            if(_loc34_ || param2)
                                                                                                            {
                                                                                                               addr748:
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               if(_loc34_ || param1)
                                                                                                               {
                                                                                                                  §§push(_loc16_);
                                                                                                                  if(!_loc35_)
                                                                                                                  {
                                                                                                                     §§push(_loc27_.y);
                                                                                                                     if(!(_loc35_ && b2Collision))
                                                                                                                     {
                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                        if(!_loc35_)
                                                                                                                        {
                                                                                                                           addr771:
                                                                                                                           §§push(_loc28_.y);
                                                                                                                           if(!_loc35_)
                                                                                                                           {
                                                                                                                              addr778:
                                                                                                                              §§push(§§pop() * (§§pop() - _loc27_.y));
                                                                                                                           }
                                                                                                                           §§goto(addr778);
                                                                                                                        }
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                        if(!(_loc35_ && b2Collision))
                                                                                                                        {
                                                                                                                           addr788:
                                                                                                                           var _loc29_:Number = §§pop();
                                                                                                                           §§push(_loc15_);
                                                                                                                           if(!_loc35_)
                                                                                                                           {
                                                                                                                              §§push(_loc28_.x);
                                                                                                                              if(!(_loc35_ && param1))
                                                                                                                              {
                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                 if(_loc34_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc27_.x);
                                                                                                                                    if(!(_loc35_ && param1))
                                                                                                                                    {
                                                                                                                                       addr813:
                                                                                                                                       §§push(_loc28_.x);
                                                                                                                                       if(!_loc35_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                          if(_loc34_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             if(_loc34_ || param2)
                                                                                                                                             {
                                                                                                                                                addr838:
                                                                                                                                                §§push(_loc16_);
                                                                                                                                                if(_loc34_ || b2Collision)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc28_.y);
                                                                                                                                                   if(!(_loc35_ && param1))
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() - §§pop());
                                                                                                                                                      if(!(_loc35_ && b2Collision))
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc27_.y);
                                                                                                                                                         if(!_loc34_)
                                                                                                                                                         {
                                                                                                                                                         }
                                                                                                                                                         addr871:
                                                                                                                                                         §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                         if(!_loc35_)
                                                                                                                                                         {
                                                                                                                                                            addr875:
                                                                                                                                                            var _loc30_:Number = §§pop();
                                                                                                                                                            if(!(_loc35_ && b2Collision))
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc29_);
                                                                                                                                                               loop16:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(0);
                                                                                                                                                                  loop17:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(§§pop() > §§pop())
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc30_);
                                                                                                                                                                        loop18:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(§§pop() <= 0)
                                                                                                                                                                           {
                                                                                                                                                                              addr1500:
                                                                                                                                                                              if(_loc34_ || param1)
                                                                                                                                                                              {
                                                                                                                                                                                 addr1508:
                                                                                                                                                                                 §§push(_loc15_);
                                                                                                                                                                                 §§push(_loc28_.x);
                                                                                                                                                                                 if(!_loc35_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr1513:
                                                                                                                                                                                    §§push(§§pop() - §§pop());
                                                                                                                                                                                    if(!_loc35_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc15_);
                                                                                                                                                                                       if(!_loc35_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc28_.x);
                                                                                                                                                                                          if(!_loc35_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() - §§pop());
                                                                                                                                                                                             if(_loc34_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr1525:
                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                §§push(_loc16_);
                                                                                                                                                                                                if(!(_loc35_ && param3))
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr1540:
                                                                                                                                                                                                   §§push(_loc28_.y);
                                                                                                                                                                                                   if(!_loc35_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr1538:
                                                                                                                                                                                                      §§push(§§pop() - §§pop());
                                                                                                                                                                                                      §§push(_loc16_);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§push(_loc28_.y);
                                                                                                                                                                                                   if(!(_loc35_ && param3))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr1550:
                                                                                                                                                                                                      §§push(§§pop() - §§pop());
                                                                                                                                                                                                      if(_loc34_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr1553:
                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                         if(!(_loc34_ || param2))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop17;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr1561:
                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                         if(_loc35_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop16;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr1564:
                                                                                                                                                                                                         §§push(_loc20_);
                                                                                                                                                                                                         §§push(_loc20_);
                                                                                                                                                                                                         if(_loc34_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr1568);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr1680:
                                                                                                                                                                                                            §§push(§§pop() - §§pop());
                                                                                                                                                                                                            §§push(_loc16_ - _loc27_.y);
                                                                                                                                                                                                            if(!_loc35_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr1690:
                                                                                                                                                                                                               §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                                                                               §§push(_loc20_);
                                                                                                                                                                                                               §§push(_loc20_);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(§§pop() > §§pop() * §§pop())
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr1693);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr1643:
                                                                                                                                                                                                            param1.§&!h§ = 1;
                                                                                                                                                                                                            param1.§3r§ = b2Manifold.§-!-§;
                                                                                                                                                                                                            addr1647:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1642);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr1675:
                                                                                                                                                                                                         §§push(§§pop() * (§§pop() - §§pop()));
                                                                                                                                                                                                         §§push(_loc16_);
                                                                                                                                                                                                         §§push(_loc27_.y);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1680);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1564);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1538);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1525);
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       addr1652:
                                                                                                                                                                                       §§push(_loc27_.x);
                                                                                                                                                                                       if(!(_loc35_ && param2))
                                                                                                                                                                                       {
                                                                                                                                                                                          addr1672:
                                                                                                                                                                                          §§goto(addr1675);
                                                                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                                                                          §§push(_loc15_);
                                                                                                                                                                                          §§push(_loc27_.x);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1675);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1538);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1609);
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              §§push(0.5);
                                                                                                                                                                              if(_loc34_ || param2)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc34_ || param2)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc35_ && param2))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc27_.x);
                                                                                                                                                                                       loop19:
                                                                                                                                                                                       for(; !_loc35_; if(!(_loc34_ || param3))
                                                                                                                                                                                       {
                                                                                                                                                                                          continue;
                                                                                                                                                                                       },if(!_loc35_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc33_);
                                                                                                                                                                                          if(!_loc35_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc34_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc34_ || b2Collision)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc35_ && b2Collision))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() - §§pop());
                                                                                                                                                                                                      if(!_loc35_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc34_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc34_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc35_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() * _loc23_[_loc25_].y);
                                                                                                                                                                                                                  if(!(_loc35_ && b2Collision))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc34_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                                                                        if(!(_loc35_ && param2))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr1193);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1203);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1675);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1203);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1525);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr1568:
                                                                                                                                                                                                            if(§§pop() <= §§pop() * §§pop())
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr1489:
                                                                                                                                                                                                               param1.§&!h§ = 1;
                                                                                                                                                                                                               param1.§3r§ = b2Manifold.§-!-§;
                                                                                                                                                                                                               addr1481:
                                                                                                                                                                                                               if(!(_loc35_ && b2Collision))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr1453:
                                                                                                                                                                                                                  §§push(param1.§1!§);
                                                                                                                                                                                                                  §§push(_loc15_);
                                                                                                                                                                                                                  if(_loc34_ || param2)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr1462:
                                                                                                                                                                                                                     §§push(_loc28_.x);
                                                                                                                                                                                                                     if(_loc34_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr1465:
                                                                                                                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                                                                                                                        if(!(_loc35_ && b2Collision))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!_loc35_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§pop().x = §§pop();
                                                                                                                                                                                                                              addr1475:
                                                                                                                                                                                                                              §§push(param1.§1!§);
                                                                                                                                                                                                                              §§push(_loc16_);
                                                                                                                                                                                                                              if(!(_loc35_ && param2))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc34_ || b2Collision)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc28_.y);
                                                                                                                                                                                                                                    if(!(_loc35_ && param1))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr1440:
                                                                                                                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                       if(_loc34_ || param1)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§pop().y = §§pop();
                                                                                                                                                                                                                                          addr1401:
                                                                                                                                                                                                                                          §§push(param1.§1!§);
                                                                                                                                                                                                                                          if(!_loc35_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§pop().Normalize();
                                                                                                                                                                                                                                             addr1404:
                                                                                                                                                                                                                                             if(_loc34_ || b2Collision)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr1395:
                                                                                                                                                                                                                                                param1.m_localPoint.SetV(_loc28_);
                                                                                                                                                                                                                                                param1.§ !C§[0].m_localPoint.SetV(param4.§`3§);
                                                                                                                                                                                                                                                addr1397:
                                                                                                                                                                                                                                                if(_loc34_ || param1)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!(_loc35_ && param1))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      param1.§ !C§[0].m_id.key = 0;
                                                                                                                                                                                                                                                      addr1354:
                                                                                                                                                                                                                                                      if(!_loc35_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!_loc34_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§goto(addr1397);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         if(_loc34_ || param3)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!_loc34_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr1635:
                                                                                                                                                                                                                                                               param1.§1!§.x = _loc15_ - _loc27_.x;
                                                                                                                                                                                                                                                               addr1636:
                                                                                                                                                                                                                                                               addr1634:
                                                                                                                                                                                                                                                               §§push(param1.§1!§);
                                                                                                                                                                                                                                                               §§push(_loc16_);
                                                                                                                                                                                                                                                               if(!_loc35_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr1618:
                                                                                                                                                                                                                                                                  §§push(_loc27_.y);
                                                                                                                                                                                                                                                                  if(_loc34_ || param3)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr1626:
                                                                                                                                                                                                                                                                     §§pop().y = §§pop() - §§pop();
                                                                                                                                                                                                                                                                     addr1606:
                                                                                                                                                                                                                                                                     §§push(param1.§1!§);
                                                                                                                                                                                                                                                                     if(_loc34_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§pop().Normalize();
                                                                                                                                                                                                                                                                        addr1593:
                                                                                                                                                                                                                                                                        param1.m_localPoint.SetV(_loc27_);
                                                                                                                                                                                                                                                                        addr1595:
                                                                                                                                                                                                                                                                        if(!(_loc34_ || param3))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§goto(addr1636);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        param1.§ !C§[0].m_localPoint.SetV(param4.§`3§);
                                                                                                                                                                                                                                                                        param1.§ !C§[0].m_id.key = 0;
                                                                                                                                                                                                                                                                        addr884:
                                                                                                                                                                                                                                                                        return;
                                                                                                                                                                                                                                                                        addr1579:
                                                                                                                                                                                                                                                                        addr1609:
                                                                                                                                                                                                                                                                        addr1589:
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1636);
                                                                                                                                                                                                                                                                     addr1627:
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1634);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1635);
                                                                                                                                                                                                                                                               addr1632:
                                                                                                                                                                                                                                                               addr1642:
                                                                                                                                                                                                                                                               addr1631:
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr1367:
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr884);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1579);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1397);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1569);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1481);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1475);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1606);
                                                                                                                                                                                                                                          addr1448:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1465);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1462);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1453);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1440);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1635);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1626);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1618);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1632);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr1493:
                                                                                                                                                                                                               §§goto(addr1493);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr1569:
                                                                                                                                                                                                            return;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1230);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1200);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1540);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1564);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1309);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1239);
                                                                                                                                                                                       },§§goto(addr1690))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc28_.x);
                                                                                                                                                                                          while(!(_loc35_ && param3))
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!(_loc35_ && param3))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                while(_loc34_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                   while(_loc34_ || param3)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop18;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1525);
                                                                                                                                                                                                   while(!(_loc35_ && param3))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc28_.y);
                                                                                                                                                                                                      while(!_loc35_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                         loop28:
                                                                                                                                                                                                         while(!_loc35_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc34_ || param1)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                               if(!(_loc35_ && b2Collision))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc34_ || b2Collision)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                                                                     loop29:
                                                                                                                                                                                                                     while(_loc34_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        _loc33_ = §§pop();
                                                                                                                                                                                                                        loop30:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!(_loc35_ && param2))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc15_);
                                                                                                                                                                                                                              if(!_loc35_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc32_);
                                                                                                                                                                                                                                 if(_loc34_ || b2Collision)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc34_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc34_ || b2Collision)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                          if(!_loc35_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!(_loc34_ || param1))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop29;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§push(§§pop() * _loc23_[_loc25_].x);
                                                                                                                                                                                                                                             if(_loc34_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!_loc35_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!(_loc35_ && param1))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(_loc16_);
                                                                                                                                                                                                                                                      if(_loc34_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop19;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1203);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1513);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1228);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1193);
                                                                                                                                                                                                                                             continue loop29;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr1193:
                                                                                                                                                                                                                                          addr1193:
                                                                                                                                                                                                                                          if(_loc34_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc34_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                                                                                                                if(!_loc35_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr1200:
                                                                                                                                                                                                                                                   §§push(§§pop());
                                                                                                                                                                                                                                                   if(_loc34_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr1203:
                                                                                                                                                                                                                                                      _loc19_ = §§pop();
                                                                                                                                                                                                                                                      addr1204:
                                                                                                                                                                                                                                                      §§push(_loc20_);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   if(_loc35_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      break;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   if(!(_loc35_ && param3))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(§§pop() <= §§pop())
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            param1.§&!h§ = 1;
                                                                                                                                                                                                                                                            loop32:
                                                                                                                                                                                                                                                            while(!(_loc35_ && param2))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc34_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  param1.§3r§ = b2Manifold.§-!-§;
                                                                                                                                                                                                                                                                  loop33:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc35_ && param1)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        continue loop32;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     if(!_loc34_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§goto(addr1215);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     if(_loc35_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§push(param1.§1!§);
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(_loc34_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!(_loc35_ && param3))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(_loc34_ || b2Collision)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§pop().x = _loc23_[_loc25_].x;
                                                                                                                                                                                                                                                                                 continue loop30;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1453);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1475);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                                                                        addr985:
                                                                                                                                                                                                                                                                        if(!(_loc34_ || param1))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           continue;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        if(!_loc35_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§pop().Normalize();
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(param1.m_localPoint);
                                                                                                                                                                                                                                                                              if(!(_loc34_ || param2))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              if(!(_loc35_ && param3))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§pop().Set(_loc32_,_loc33_);
                                                                                                                                                                                                                                                                                 continue;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1593);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1395);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1631);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1401);
                                                                                                                                                                                                                                                                     loop37:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!(_loc34_ || param2))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           continue loop33;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        if(_loc34_ || param3)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr1018:
                                                                                                                                                                                                                                                                           §§push(param1.§1!§);
                                                                                                                                                                                                                                                                           if(_loc34_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§goto(addr985);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§pop().y = _loc23_[_loc25_].y;
                                                                                                                                                                                                                                                                                 continue loop37;
                                                                                                                                                                                                                                                                                 §§goto(addr1018);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              addr999:
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§goto(addr1489);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1489);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr1693:
                                                                                                                                                                                                                                                                  return;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1448);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1354);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr1215:
                                                                                                                                                                                                                                                      return;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1675);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1204);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§goto(addr1672);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             while(!_loc35_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                _loc32_ = §§pop();
                                                                                                                                                                                                                                                §§goto(addr1345);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1561);
                                                                                                                                                                                                                                             addr1342:
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1680);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§goto(addr1553);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1203);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1200);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           else
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr1500);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        continue loop28;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1327);
                                                                                                                                                                                                                     addr1267:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1675);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1267);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1690);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1564);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1680);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1672);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1680);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1550);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1538);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1690);
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr1508);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1327);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1651);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1367);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr875);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr871);
                                                                                                                                                   }
                                                                                                                                                   §§push(§§pop() - _loc28_.y);
                                                                                                                                                }
                                                                                                                                                §§goto(addr871);
                                                                                                                                             }
                                                                                                                                             §§goto(addr875);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr871);
                                                                                                                                 }
                                                                                                                                 §§goto(addr875);
                                                                                                                              }
                                                                                                                              §§goto(addr813);
                                                                                                                           }
                                                                                                                           §§goto(addr838);
                                                                                                                        }
                                                                                                                        §§goto(addr788);
                                                                                                                     }
                                                                                                                     §§goto(addr778);
                                                                                                                  }
                                                                                                                  §§goto(addr771);
                                                                                                               }
                                                                                                               §§goto(addr788);
                                                                                                            }
                                                                                                            §§goto(addr771);
                                                                                                         }
                                                                                                         §§goto(addr778);
                                                                                                      }
                                                                                                      §§goto(addr771);
                                                                                                   }
                                                                                                   §§goto(addr788);
                                                                                                }
                                                                                                §§goto(addr748);
                                                                                             }
                                                                                             §§goto(addr788);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr788);
                                                                                    }
                                                                                    §§goto(addr687);
                                                                                 }
                                                                              }
                                                                              §§goto(addr532);
                                                                           }
                                                                           §§goto(addr544);
                                                                        }
                                                                        break;
                                                                     }
                                                                     §§goto(addr505);
                                                                     §§push(§§pop());
                                                                  }
                                                                  §§goto(addr272);
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               §§goto(addr264);
                                                            }
                                                            §§goto(addr272);
                                                         }
                                                         §§goto(addr235);
                                                      }
                                                      §§goto(addr238);
                                                   }
                                                   §§goto(addr197);
                                                   §§push(Number(§§pop()));
                                                }
                                                §§goto(addr197);
                                             }
                                          }
                                          §§goto(addr190);
                                       }
                                       §§goto(addr193);
                                    }
                                    §§goto(addr192);
                                 }
                                 §§goto(addr190);
                              }
                              §§goto(addr187);
                           }
                           §§goto(addr140);
                        }
                        §§goto(addr135);
                     }
                     §§goto(addr122);
                  }
                  §§goto(addr140);
               }
               §§goto(addr81);
            }
            §§goto(addr71);
         }
         §§goto(addr93);
      }
      
      public static function §]I§(param1:b2AABB, param2:b2AABB) : Boolean
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc3_:b2Vec2 = param2.§>h§;
         var _loc4_:b2Vec2 = param1.§^!z§;
         §§push(_loc3_.x);
         if(!_loc9_)
         {
            §§push(§§pop() - _loc4_.x);
            if(_loc10_ || param1)
            {
               addr39:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            §§push(_loc3_.y);
            if(!_loc9_)
            {
               §§push(§§pop() - _loc4_.y);
               if(_loc10_)
               {
                  addr50:
                  §§push(Number(§§pop()));
               }
               var _loc6_:* = §§pop();
               _loc3_ = param1.§>h§;
               _loc4_ = param2.§^!z§;
               §§push(_loc3_.x);
               if(_loc10_ || b2Collision)
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
                  if(!(_loc9_ && param2))
                  {
                     addr95:
                     §§push(Number(§§pop()));
                  }
                  var _loc8_:* = §§pop();
                  if(!_loc9_)
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
                                    loop9:
                                    while(!§§pop())
                                    {
                                       loop10:
                                       while(true)
                                       {
                                          §§push(_loc7_);
                                          addr180:
                                          loop11:
                                          while(_loc10_ || param2)
                                          {
                                             §§push(0);
                                             loop12:
                                             while(!(_loc9_ && param1))
                                             {
                                                if(!_loc9_)
                                                {
                                                   §§push(§§pop() > §§pop());
                                                   loop13:
                                                   do
                                                   {
                                                      §§push(§§pop());
                                                      if(_loc10_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(!(_loc9_ && param1))
                                                                  {
                                                                     if(!_loc9_)
                                                                     {
                                                                        §§push(false);
                                                                        continue loop13;
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     if(!(_loc9_ && param1))
                                                                     {
                                                                        if(_loc9_)
                                                                        {
                                                                           break loop9;
                                                                        }
                                                                        addr100:
                                                                        §§push(true);
                                                                        if(!_loc9_)
                                                                        {
                                                                           if(_loc10_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           addr237:
                                                                           §§goto(addr202);
                                                                        }
                                                                        continue loop13;
                                                                     }
                                                                     if(!_loc9_)
                                                                     {
                                                                        continue loop10;
                                                                     }
                                                                     addr247:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc6_);
                                                                        break loop11;
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc8_);
                                                                     if(_loc9_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§push(0);
                                                                     if(_loc9_ && param1)
                                                                     {
                                                                        continue loop12;
                                                                     }
                                                                     §§push(§§pop() > §§pop());
                                                                     if(!(_loc9_ && param2))
                                                                     {
                                                                        §§goto(addr148);
                                                                     }
                                                                     §§goto(addr160);
                                                                     continue loop12;
                                                                  }
                                                                  continue loop11;
                                                               }
                                                               §§goto(addr100);
                                                            }
                                                            if(_loc9_)
                                                            {
                                                               while(!_loc9_)
                                                               {
                                                                  continue loop9;
                                                               }
                                                               continue loop2;
                                                               addr232:
                                                            }
                                                            if(!(_loc9_ && param1))
                                                            {
                                                               return §§pop();
                                                            }
                                                            addr246:
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               §§goto(addr247);
                                                            }
                                                            addr148:
                                                         }
                                                         addr202:
                                                         while(_loc10_ || param2)
                                                         {
                                                            §§pop();
                                                         }
                                                      }
                                                      continue loop3;
                                                      return §§pop();
                                                   }
                                                   while(_loc9_ && _loc3_);
                                                   
                                                   return §§pop();
                                                }
                                                continue loop1;
                                             }
                                             while(true)
                                             {
                                                §§goto(addr232);
                                                §§goto(addr188);
                                             }
                                             addr188:
                                          }
                                          continue loop0;
                                       }
                                    }
                                    addr236:
                                    §§goto(addr237);
                                    §§push(false);
                                 }
                                 §§goto(addr246);
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr236);
               }
               §§goto(addr95);
            }
            §§goto(addr50);
         }
         §§goto(addr39);
      }
   }
}
