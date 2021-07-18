package §3"5§
{
   import §4!$§.*;
   import §5"i§.*;
   import §[R§.*;
   
   use namespace b2internal;
   
   public class b2Collision
   {
      
      public static const b2_nullFeature:uint = 255;
      
      private static var §3!"§:Vector.<§]R§>;
      
      private static var s_clipPoints1:Vector.<§]R§>;
      
      private static var s_clipPoints2:Vector.<§]R§>;
      
      private static var §;#6§:Vector.<int>;
      
      private static var §7#[§:Vector.<int>;
      
      private static var §0!T§:b2Vec2;
      
      private static var §^!]§:b2Vec2;
      
      private static var §>!H§:b2Vec2;
      
      private static var §6!F§:b2Vec2;
      
      private static var §!!P§:b2Vec2;
      
      private static var s_tangent2:b2Vec2;
      
      private static var s_v11:b2Vec2;
      
      private static var s_v12:b2Vec2;
      
      private static var b2CollidePolyTempVec:b2Vec2;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && b2Collision))
         {
            b2_nullFeature = 255;
            while(true)
            {
               §3!"§ = §;"f§();
               loop1:
               while(true)
               {
                  s_clipPoints1 = §;"f§();
                  loop2:
                  while(true)
                  {
                     s_clipPoints2 = §;"f§();
                     addr188:
                     while(true)
                     {
                        §;#6§ = new Vector.<int>(1);
                        addr182:
                        while(true)
                        {
                           §7#[§ = new Vector.<int>(1);
                           addr173:
                           while(true)
                           {
                              §0!T§ = new b2Vec2();
                              continue loop1;
                           }
                           addr115:
                           if(!(_loc2_ && b2Collision))
                           {
                              continue loop2;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr141);
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
      
      public static function §7#$§(param1:Vector.<§]R§>, param2:Vector.<§]R§>, param3:b2Vec2, param4:Number) : int
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc5_:§]R§ = null;
         var _loc6_:int = 0;
         var _loc7_:b2Vec2 = null;
         var _loc9_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:b2Vec2 = null;
         var _loc13_:§]R§ = null;
         if(!(_loc15_ && b2Collision))
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
               if(_loc14_)
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc15_ && param3))
                  {
                     §§push(param3.y);
                     if(!(_loc15_ && param3))
                     {
                        addr88:
                        §§push(_loc7_.y);
                        if(_loc14_)
                        {
                           §§push(§§pop() * §§pop());
                           if(!_loc15_)
                           {
                              §§push(§§pop() + §§pop());
                              if(!(_loc15_ && b2Collision))
                              {
                                 §§push(param4);
                                 if(!(_loc15_ && b2Collision))
                                 {
                                    §§push(§§pop() - §§pop());
                                    if(_loc14_ || param2)
                                    {
                                       addr119:
                                       §§push(Number(§§pop()));
                                       if(_loc14_)
                                       {
                                          addr122:
                                          _loc9_ = §§pop();
                                          §§push(param3.x);
                                          if(_loc14_ || param1)
                                          {
                                             §§push(_loc8_.x);
                                             if(_loc14_ || param3)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!(_loc15_ && param2))
                                                {
                                                   addr149:
                                                   §§push(param3.y);
                                                   if(_loc14_)
                                                   {
                                                      addr153:
                                                      §§push(§§pop() * _loc8_.y);
                                                      if(_loc14_)
                                                      {
                                                         addr158:
                                                         §§push(§§pop() + §§pop());
                                                         if(!(_loc15_ && param2))
                                                         {
                                                            addr167:
                                                            §§push(§§pop() - param4);
                                                            if(_loc14_ || param3)
                                                            {
                                                               addr175:
                                                               §§push(Number(§§pop()));
                                                            }
                                                            var _loc10_:* = §§pop();
                                                            if(_loc14_)
                                                            {
                                                               §§push(_loc9_);
                                                               loop0:
                                                               while(true)
                                                               {
                                                                  §§push(0);
                                                                  addr294:
                                                                  while(true)
                                                                  {
                                                                     if(§§pop() <= §§pop())
                                                                     {
                                                                        addr295:
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
                                                                     loop2:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc10_);
                                                                        loop3:
                                                                        while(true)
                                                                        {
                                                                           §§push(0);
                                                                           loop4:
                                                                           while(true)
                                                                           {
                                                                              if(§§pop() <= §§pop())
                                                                              {
                                                                                 if(!_loc15_)
                                                                                 {
                                                                                    if(_loc14_ || b2Collision)
                                                                                    {
                                                                                       param1[_loc6_++].Set(param2[1]);
                                                                                       addr291:
                                                                                       while(true)
                                                                                       {
                                                                                          addr180:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc9_);
                                                                                             if(_loc14_ || param2)
                                                                                             {
                                                                                                §§push(_loc10_);
                                                                                                if(!_loc15_)
                                                                                                {
                                                                                                   if(!(_loc14_ || b2Collision))
                                                                                                   {
                                                                                                      continue loop4;
                                                                                                   }
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(!_loc15_)
                                                                                                   {
                                                                                                      if(_loc14_ || param3)
                                                                                                      {
                                                                                                         continue loop0;
                                                                                                      }
                                                                                                      continue loop3;
                                                                                                   }
                                                                                                   addr249:
                                                                                                   §§push(_loc9_);
                                                                                                   if(_loc14_)
                                                                                                   {
                                                                                                      addr252:
                                                                                                      §§push(§§pop() - _loc10_);
                                                                                                   }
                                                                                                }
                                                                                                §§push(§§pop() / §§pop());
                                                                                                if(!_loc15_)
                                                                                                {
                                                                                                   addr257:
                                                                                                   §§push(Number(§§pop()));
                                                                                                   break;
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          addr259:
                                                                                          _loc11_ = §§pop();
                                                                                          if(!(_loc15_ && b2Collision))
                                                                                          {
                                                                                             if(false)
                                                                                             {
                                                                                                continue loop2;
                                                                                             }
                                                                                             §§push(_loc12_ = (_loc5_ = param1[_loc6_]).v);
                                                                                             §§push(_loc7_.x);
                                                                                             if(!_loc15_)
                                                                                             {
                                                                                                §§push(_loc11_);
                                                                                                if(_loc14_ || param3)
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
                                                                                             if(_loc14_)
                                                                                             {
                                                                                                §§push(_loc12_);
                                                                                                §§push(_loc7_.y);
                                                                                                if(_loc14_)
                                                                                                {
                                                                                                   §§push(_loc11_);
                                                                                                   if(!(_loc15_ && b2Collision))
                                                                                                   {
                                                                                                      §§push(_loc8_.y);
                                                                                                      if(!_loc15_)
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
                                                                                                   addr378:
                                                                                                   _loc13_ = param2[0];
                                                                                                   if(_loc14_)
                                                                                                   {
                                                                                                      _loc5_.id = _loc13_.id;
                                                                                                      if(!_loc15_)
                                                                                                      {
                                                                                                         addr418:
                                                                                                         _loc6_++;
                                                                                                         addr391:
                                                                                                      }
                                                                                                      addr419:
                                                                                                      return _loc6_;
                                                                                                   }
                                                                                                   §§goto(addr391);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   _loc13_ = param2[1];
                                                                                                   if(_loc14_ || param3)
                                                                                                   {
                                                                                                      _loc5_.id = _loc13_.id;
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr418);
                                                                                             }
                                                                                             §§goto(addr378);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr295);
                                                                                          }
                                                                                       }
                                                                                       addr291:
                                                                                    }
                                                                                    §§goto(addr305);
                                                                                 }
                                                                                 §§goto(addr291);
                                                                              }
                                                                              §§goto(addr180);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr295);
                                                         }
                                                      }
                                                      §§goto(addr167);
                                                   }
                                                   §§goto(addr158);
                                                }
                                             }
                                             §§goto(addr167);
                                          }
                                          §§goto(addr175);
                                       }
                                       §§goto(addr149);
                                    }
                                    §§goto(addr122);
                                 }
                                 §§goto(addr153);
                              }
                              §§goto(addr119);
                           }
                           §§goto(addr158);
                        }
                        §§goto(addr153);
                     }
                  }
                  §§goto(addr167);
               }
               §§goto(addr88);
            }
            §§goto(addr167);
         }
         §§goto(addr122);
      }
      
      public static function §&!L§(param1:b2PolygonShape, param2:b2Transform, param3:int, param4:b2PolygonShape, param5:b2Transform) : Number
      {
         var _loc26_:Boolean = false;
         var _loc27_:Boolean = true;
         var _loc11_:b2Mat22 = null;
         var _loc12_:b2Vec2 = null;
         var _loc25_:* = NaN;
         §§push(param1.§;!9§);
         if(!_loc26_)
         {
            §§push(int(§§pop()));
         }
         var _loc6_:* = §§pop();
         var _loc7_:Vector.<b2Vec2> = param1.§=#S§;
         var _loc8_:Vector.<b2Vec2> = param1.§"!M§;
         §§push(param4.§;!9§);
         if(_loc27_)
         {
            §§push(int(§§pop()));
         }
         var _loc9_:* = §§pop();
         var _loc10_:Vector.<b2Vec2> = param4.§=#S§;
         _loc11_ = param2.R;
         _loc12_ = _loc8_[param3];
         §§push(_loc11_.col1.x);
         if(_loc27_)
         {
            §§push(_loc12_.x);
            if(_loc27_ || param1)
            {
               §§push(§§pop() * §§pop());
               if(!(_loc26_ && param1))
               {
                  addr80:
                  §§push(_loc11_.col2.x);
                  if(_loc27_ || param1)
                  {
                     addr90:
                     §§push(§§pop() * _loc12_.y);
                  }
                  §§push(§§pop() + §§pop());
                  if(!(_loc26_ && param1))
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var _loc13_:* = §§pop();
               §§push(_loc11_.col1.y);
               if(_loc27_ || param3)
               {
                  §§push(_loc12_.x);
                  if(_loc27_)
                  {
                     §§push(§§pop() * §§pop());
                     if(!_loc26_)
                     {
                        addr120:
                        §§push(_loc11_.col2.y);
                        if(_loc27_ || param2)
                        {
                           addr130:
                           §§push(§§pop() * _loc12_.y);
                        }
                        §§push(§§pop() + §§pop());
                        if(!_loc26_)
                        {
                           addr136:
                           §§push(Number(§§pop()));
                        }
                        var _loc14_:* = §§pop();
                        §§push((_loc11_ = param5.R).col1.x);
                        if(_loc27_)
                        {
                           §§push(_loc13_);
                           if(_loc27_)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc27_ || param2)
                              {
                                 §§push(_loc11_.col1.y);
                                 if(!(_loc26_ && param3))
                                 {
                                    addr170:
                                    §§push(§§pop() + §§pop() * _loc14_);
                                    if(_loc27_)
                                    {
                                       addr173:
                                       §§push(Number(§§pop()));
                                    }
                                 }
                                 §§goto(addr170);
                              }
                              var _loc15_:* = §§pop();
                              §§push(_loc11_.col2.x);
                              if(!(_loc26_ && param1))
                              {
                                 §§push(_loc13_);
                                 if(!(_loc26_ && param2))
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(_loc27_ || param2)
                                    {
                                       §§push(_loc11_.col2.y);
                                       if(!(_loc26_ && param3))
                                       {
                                          addr211:
                                          §§push(§§pop() * _loc14_);
                                       }
                                       §§push(§§pop() + §§pop());
                                       if(_loc27_ || param1)
                                       {
                                          addr222:
                                          var _loc16_:Number = §§pop();
                                          var _loc17_:* = 0;
                                          var _loc18_:Number = Number.MAX_VALUE;
                                          var _loc19_:int = 0;
                                          while(_loc19_ < _loc9_)
                                          {
                                             §§push((_loc12_ = _loc10_[_loc19_]).x);
                                             if(!_loc26_)
                                             {
                                                §§push(_loc15_);
                                                if(!(_loc26_ && param3))
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc27_ || param1)
                                                   {
                                                      §§push(_loc12_.y);
                                                      if(_loc27_)
                                                      {
                                                         addr262:
                                                         §§push(§§pop() * _loc16_);
                                                         if(_loc27_ || param2)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(!(_loc26_ && param1))
                                                            {
                                                               §§push(Number(§§pop()));
                                                               if(_loc27_ || param3)
                                                               {
                                                                  §§push(§§pop());
                                                                  if(!_loc26_)
                                                                  {
                                                                     addr290:
                                                                     _loc25_ = §§pop();
                                                                     if(!_loc27_)
                                                                     {
                                                                     }
                                                                     addr306:
                                                                     _loc18_ = §§pop();
                                                                     addr305:
                                                                     if(_loc27_)
                                                                     {
                                                                        §§push(_loc19_);
                                                                        if(!(_loc26_ && param2))
                                                                        {
                                                                           §§push(int(§§pop()));
                                                                        }
                                                                        _loc17_ = §§pop();
                                                                        if(_loc26_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                     }
                                                                     _loc19_++;
                                                                     continue;
                                                                  }
                                                                  addr294:
                                                                  if(§§pop() < §§pop())
                                                                  {
                                                                     if(_loc26_ && b2Collision)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     §§push(_loc25_);
                                                                     if(_loc27_)
                                                                     {
                                                                        §§goto(addr305);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr306);
                                                            }
                                                            §§goto(addr294);
                                                            §§push(_loc18_);
                                                         }
                                                         §§goto(addr290);
                                                      }
                                                      §§goto(addr294);
                                                   }
                                                   §§goto(addr290);
                                                }
                                                §§goto(addr262);
                                             }
                                             §§goto(addr290);
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
                                                if(!_loc26_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc27_)
                                                   {
                                                      addr361:
                                                      §§push(_loc11_.col2.x);
                                                      if(_loc27_ || param3)
                                                      {
                                                         addr374:
                                                         §§push(§§pop() + §§pop() * _loc12_.y);
                                                      }
                                                      §§goto(addr374);
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                   if(!(_loc26_ && param2))
                                                   {
                                                      addr384:
                                                      var _loc20_:Number = §§pop();
                                                      §§push(param2.position.y);
                                                      if(_loc27_)
                                                      {
                                                         §§push(_loc11_.col1.y);
                                                         if(_loc27_)
                                                         {
                                                            §§push(_loc12_.x);
                                                            if(!_loc26_)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(!_loc26_)
                                                               {
                                                                  addr416:
                                                                  §§push(_loc11_.col2.y);
                                                                  if(!(_loc26_ && param3))
                                                                  {
                                                                     addr412:
                                                                     §§push(§§pop() * _loc12_.y);
                                                                  }
                                                                  §§push(§§pop() + (§§pop() + §§pop()));
                                                                  if(_loc27_)
                                                                  {
                                                                     addr420:
                                                                     var _loc21_:Number = §§pop();
                                                                     _loc12_ = _loc10_[_loc17_];
                                                                     _loc11_ = param5.R;
                                                                     §§push(param5.position.x);
                                                                     if(_loc27_)
                                                                     {
                                                                        §§push(_loc11_.col1.x);
                                                                        if(_loc27_)
                                                                        {
                                                                           §§push(_loc12_.x);
                                                                           if(!_loc26_)
                                                                           {
                                                                              addr456:
                                                                              §§push(§§pop() * §§pop());
                                                                              if(_loc27_)
                                                                              {
                                                                                 §§push(_loc11_.col2.x);
                                                                                 if(!_loc26_)
                                                                                 {
                                                                                    §§push(§§pop() * _loc12_.y);
                                                                                 }
                                                                              }
                                                                              §§push(§§pop() + §§pop());
                                                                              if(!(_loc26_ && param2))
                                                                              {
                                                                                 addr465:
                                                                                 var _loc22_:* = Number(§§pop());
                                                                                 §§push(param5.position.y);
                                                                                 if(_loc27_ || param2)
                                                                                 {
                                                                                    §§push(_loc11_.col1.y);
                                                                                    if(!(_loc26_ && b2Collision))
                                                                                    {
                                                                                       §§push(_loc12_.x);
                                                                                       if(_loc27_ || param1)
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(_loc27_)
                                                                                          {
                                                                                             addr498:
                                                                                             §§push(_loc11_.col2.y);
                                                                                             if(!(_loc26_ && param3))
                                                                                             {
                                                                                                addr511:
                                                                                                §§push(§§pop() + §§pop() * _loc12_.y);
                                                                                             }
                                                                                             §§goto(addr511);
                                                                                          }
                                                                                          §§push(§§pop() + §§pop());
                                                                                          if(!_loc26_)
                                                                                          {
                                                                                             addr515:
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                          var _loc23_:* = §§pop();
                                                                                          if(_loc27_ || b2Collision)
                                                                                          {
                                                                                             §§push(_loc22_);
                                                                                             if(!(_loc26_ && param3))
                                                                                             {
                                                                                                §§push(_loc20_);
                                                                                                if(!(_loc26_ && b2Collision))
                                                                                                {
                                                                                                   §§push(§§pop() - §§pop());
                                                                                                   if(!(_loc26_ && param2))
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      if(!_loc26_)
                                                                                                      {
                                                                                                         _loc22_ = §§pop();
                                                                                                         if(!(_loc26_ && param2))
                                                                                                         {
                                                                                                            addr559:
                                                                                                            §§push(_loc23_);
                                                                                                            if(_loc27_ || b2Collision)
                                                                                                            {
                                                                                                               §§push(_loc21_);
                                                                                                               if(!(_loc26_ && param1))
                                                                                                               {
                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                  if(!(_loc26_ && param1))
                                                                                                                  {
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     if(_loc26_ && param3)
                                                                                                                     {
                                                                                                                     }
                                                                                                                     addr638:
                                                                                                                     return Number(§§pop());
                                                                                                                     addr636:
                                                                                                                  }
                                                                                                                  _loc23_ = §§pop();
                                                                                                               }
                                                                                                               addr618:
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               if(_loc26_ && param2)
                                                                                                               {
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr636);
                                                                                                         }
                                                                                                         §§push(_loc22_);
                                                                                                         if(_loc27_)
                                                                                                         {
                                                                                                            addr595:
                                                                                                            §§push(_loc13_);
                                                                                                            if(!(_loc26_ && param3))
                                                                                                            {
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               if(_loc27_)
                                                                                                               {
                                                                                                                  addr606:
                                                                                                                  §§push(_loc23_);
                                                                                                                  if(_loc27_ || param2)
                                                                                                                  {
                                                                                                                     §§push(§§pop() * _loc14_);
                                                                                                                     if(_loc27_)
                                                                                                                     {
                                                                                                                        §§goto(addr618);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr618);
                                                                                                               }
                                                                                                               §§goto(addr636);
                                                                                                            }
                                                                                                            §§goto(addr638);
                                                                                                         }
                                                                                                         §§goto(addr606);
                                                                                                      }
                                                                                                      §§goto(addr595);
                                                                                                   }
                                                                                                   §§goto(addr638);
                                                                                                }
                                                                                                §§goto(addr618);
                                                                                             }
                                                                                             §§goto(addr638);
                                                                                          }
                                                                                          §§goto(addr559);
                                                                                       }
                                                                                       §§goto(addr511);
                                                                                    }
                                                                                    §§goto(addr498);
                                                                                 }
                                                                                 §§goto(addr515);
                                                                              }
                                                                              §§goto(addr465);
                                                                           }
                                                                           §§push(§§pop() + §§pop());
                                                                        }
                                                                        §§goto(addr456);
                                                                     }
                                                                     §§goto(addr465);
                                                                  }
                                                                  §§goto(addr420);
                                                               }
                                                               §§goto(addr416);
                                                            }
                                                            §§goto(addr412);
                                                         }
                                                         §§goto(addr416);
                                                      }
                                                      §§goto(addr420);
                                                   }
                                                   §§goto(addr384);
                                                }
                                                §§goto(addr374);
                                             }
                                             §§goto(addr361);
                                          }
                                          §§goto(addr384);
                                       }
                                    }
                                    §§goto(addr222);
                                 }
                                 §§goto(addr211);
                              }
                              §§goto(addr222);
                           }
                           §§goto(addr170);
                        }
                        §§goto(addr173);
                     }
                     §§goto(addr136);
                  }
                  §§goto(addr130);
               }
               §§goto(addr120);
            }
            §§goto(addr90);
         }
         §§goto(addr80);
      }
      
      public static function §`"6§(param1:Vector.<int>, param2:b2PolygonShape, param3:b2Transform, param4:b2PolygonShape, param5:b2Transform) : Number
      {
         var _loc26_:Boolean = false;
         var _loc27_:Boolean = true;
         var _loc8_:b2Vec2 = null;
         var _loc9_:b2Mat22 = null;
         var _loc22_:* = 0;
         var _loc23_:* = NaN;
         var _loc24_:* = 0;
         var _loc25_:* = NaN;
         §§push(param2.§;!9§);
         if(!_loc26_)
         {
            §§push(int(§§pop()));
         }
         var _loc6_:* = §§pop();
         var _loc7_:Vector.<b2Vec2> = param2.§"!M§;
         _loc9_ = param5.R;
         _loc8_ = param4.§2"s§;
         §§push(param5.position.x);
         if(_loc27_)
         {
            §§push(_loc9_.col1.x);
            if(!(_loc26_ && b2Collision))
            {
               §§push(_loc8_.x);
               if(_loc27_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc27_)
                  {
                     addr85:
                     §§push(_loc9_.col2.x);
                     if(_loc27_ || param3)
                     {
                        addr81:
                        §§push(§§pop() * _loc8_.y);
                     }
                     §§push(§§pop() + (§§pop() + §§pop()));
                     if(_loc27_ || param2)
                     {
                        addr93:
                        §§push(Number(§§pop()));
                     }
                     var _loc10_:* = §§pop();
                     §§push(param5.position.y);
                     if(_loc27_)
                     {
                        §§push(_loc9_.col1.y);
                        if(_loc27_)
                        {
                           §§push(_loc8_.x);
                           if(!_loc26_)
                           {
                              §§push(§§pop() * §§pop());
                              if(!_loc26_)
                              {
                                 addr126:
                                 §§push(_loc9_.col2.y);
                                 if(_loc27_ || param1)
                                 {
                                    addr122:
                                    §§push(§§pop() * _loc8_.y);
                                 }
                                 §§push(§§pop() + (§§pop() + §§pop()));
                                 if(!_loc26_)
                                 {
                                    addr130:
                                    var _loc11_:* = Number(§§pop());
                                    _loc9_ = param3.R;
                                    _loc8_ = param2.§2"s§;
                                    if(!_loc26_)
                                    {
                                       §§push(_loc10_);
                                       if(!_loc26_)
                                       {
                                          §§push(param3.position);
                                          if(!(_loc26_ && param2))
                                          {
                                             §§push(§§pop().x);
                                             if(_loc27_ || param1)
                                             {
                                                §§push(_loc9_.col1);
                                                if(_loc27_)
                                                {
                                                   §§push(§§pop().x);
                                                   if(!_loc26_)
                                                   {
                                                      §§push(_loc8_.x);
                                                      if(!(_loc26_ && param3))
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(!(_loc26_ && param3))
                                                         {
                                                            §§push(_loc9_.col2);
                                                            if(!_loc26_)
                                                            {
                                                               §§push(§§pop().x);
                                                               if(!_loc26_)
                                                               {
                                                                  §§push(_loc8_.y);
                                                                  if(_loc27_ || param1)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(!(_loc26_ && param1))
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        if(_loc27_ || param1)
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           if(_loc27_)
                                                                           {
                                                                              §§push(§§pop() - §§pop());
                                                                              if(_loc27_)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 if(!_loc26_)
                                                                                 {
                                                                                    _loc10_ = §§pop();
                                                                                    if(!(_loc26_ && param2))
                                                                                    {
                                                                                       §§push(_loc11_);
                                                                                       if(_loc27_ || param2)
                                                                                       {
                                                                                          addr244:
                                                                                          §§push(param3.position.y);
                                                                                          if(!(_loc26_ && b2Collision))
                                                                                          {
                                                                                             §§push(_loc9_.col1);
                                                                                             if(_loc27_)
                                                                                             {
                                                                                                addr256:
                                                                                                §§push(§§pop().y);
                                                                                                if(_loc27_ || param1)
                                                                                                {
                                                                                                   addr264:
                                                                                                   §§push(_loc8_.x);
                                                                                                   if(!(_loc26_ && param1))
                                                                                                   {
                                                                                                      addr273:
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      if(_loc26_ && param1)
                                                                                                      {
                                                                                                      }
                                                                                                      addr297:
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      if(!(_loc26_ && param1))
                                                                                                      {
                                                                                                         addr305:
                                                                                                         §§push(§§pop() - §§pop());
                                                                                                         if(_loc27_ || b2Collision)
                                                                                                         {
                                                                                                            addr313:
                                                                                                            §§push(Number(§§pop()));
                                                                                                            if(!(_loc26_ && param3))
                                                                                                            {
                                                                                                               addr321:
                                                                                                               _loc11_ = §§pop();
                                                                                                               §§push(_loc10_);
                                                                                                               if(_loc27_ || b2Collision)
                                                                                                               {
                                                                                                                  addr330:
                                                                                                                  §§push(param3.R.col1.x);
                                                                                                                  if(!(_loc26_ && b2Collision))
                                                                                                                  {
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     if(_loc27_)
                                                                                                                     {
                                                                                                                        addr344:
                                                                                                                        §§push(_loc11_);
                                                                                                                        if(!_loc26_)
                                                                                                                        {
                                                                                                                           addr352:
                                                                                                                           addr347:
                                                                                                                           addr351:
                                                                                                                           addr350:
                                                                                                                           §§push(§§pop() + §§pop() * param3.R.col1.y);
                                                                                                                           if(_loc26_)
                                                                                                                           {
                                                                                                                           }
                                                                                                                           var _loc12_:* = §§pop();
                                                                                                                           §§push(_loc10_);
                                                                                                                           if(!(_loc26_ && param3))
                                                                                                                           {
                                                                                                                              §§push(param3.R.col2.x);
                                                                                                                              if(_loc27_ || param3)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 if(!_loc26_)
                                                                                                                                 {
                                                                                                                                    addr379:
                                                                                                                                    §§push(_loc11_);
                                                                                                                                    if(!_loc26_)
                                                                                                                                    {
                                                                                                                                       addr382:
                                                                                                                                       §§push(§§pop() * param3.R.col2.y);
                                                                                                                                    }
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    if(!_loc26_)
                                                                                                                                    {
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 var _loc13_:* = §§pop();
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
                                                                                                                                    if(_loc27_ || param1)
                                                                                                                                    {
                                                                                                                                       §§push(_loc12_);
                                                                                                                                       if(!_loc26_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          if(!_loc26_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc8_.y);
                                                                                                                                             if(_loc27_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * _loc13_);
                                                                                                                                                if(_loc27_)
                                                                                                                                                {
                                                                                                                                                   addr433:
                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                   if(!_loc26_)
                                                                                                                                                   {
                                                                                                                                                      addr436:
                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                      if(_loc27_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop());
                                                                                                                                                         if(!_loc26_)
                                                                                                                                                         {
                                                                                                                                                            addr442:
                                                                                                                                                            _loc25_ = §§pop();
                                                                                                                                                            if(_loc27_)
                                                                                                                                                            {
                                                                                                                                                               addr446:
                                                                                                                                                               if(§§pop() > _loc15_)
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc26_ && param1))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc25_);
                                                                                                                                                                     if(!_loc26_)
                                                                                                                                                                     {
                                                                                                                                                                        addr458:
                                                                                                                                                                        _loc15_ = Number(§§pop());
                                                                                                                                                                        addr457:
                                                                                                                                                                        if(_loc26_)
                                                                                                                                                                        {
                                                                                                                                                                        }
                                                                                                                                                                        _loc16_++;
                                                                                                                                                                        continue;
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr458);
                                                                                                                                                                  }
                                                                                                                                                                  §§push(_loc16_);
                                                                                                                                                                  if(_loc27_ || param3)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(int(§§pop()));
                                                                                                                                                                  }
                                                                                                                                                                  _loc14_ = §§pop();
                                                                                                                                                                  if(!_loc27_)
                                                                                                                                                                  {
                                                                                                                                                                     continue;
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr458);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr446);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr457);
                                                                                                                                                }
                                                                                                                                                §§goto(addr442);
                                                                                                                                             }
                                                                                                                                             §§goto(addr433);
                                                                                                                                          }
                                                                                                                                          §§goto(addr458);
                                                                                                                                       }
                                                                                                                                       §§goto(addr446);
                                                                                                                                    }
                                                                                                                                    §§goto(addr436);
                                                                                                                                 }
                                                                                                                                 §§push(§&!L§(param2,param3,_loc14_,param4,param5));
                                                                                                                                 if(_loc27_ || param1)
                                                                                                                                 {
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                 }
                                                                                                                                 var _loc17_:* = §§pop();
                                                                                                                                 if(!(_loc26_ && param1))
                                                                                                                                 {
                                                                                                                                    §§push(_loc14_);
                                                                                                                                    if(!(_loc26_ && param1))
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() - 1);
                                                                                                                                       if(_loc27_ || param2)
                                                                                                                                       {
                                                                                                                                          if(§§pop() >= 0)
                                                                                                                                          {
                                                                                                                                             addr519:
                                                                                                                                             §§push(_loc14_);
                                                                                                                                             if(_loc27_ || param1)
                                                                                                                                             {
                                                                                                                                                addr537:
                                                                                                                                                §§push(§§pop() - 1);
                                                                                                                                                if(_loc27_)
                                                                                                                                                {
                                                                                                                                                   §§push(int(§§pop()));
                                                                                                                                                   if(_loc27_ || param3)
                                                                                                                                                   {
                                                                                                                                                      addr566:
                                                                                                                                                      §§push(int(§§pop()));
                                                                                                                                                      addr548:
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      addr558:
                                                                                                                                                      §§push(int(§§pop() - 1));
                                                                                                                                                      if(!(_loc26_ && param3))
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr566);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   var _loc18_:* = §§pop();
                                                                                                                                                   §§push(§&!L§(param2,param3,_loc18_,param4,param5));
                                                                                                                                                   if(_loc27_)
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
                                                                                                                                                         if(_loc27_ || b2Collision)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                            if(!_loc26_)
                                                                                                                                                            {
                                                                                                                                                               if(§§pop() < _loc6_)
                                                                                                                                                               {
                                                                                                                                                                  addr598:
                                                                                                                                                                  §§push(_loc14_);
                                                                                                                                                                  if(!_loc26_)
                                                                                                                                                                  {
                                                                                                                                                                     addr603:
                                                                                                                                                                     §§push(int(§§pop() + 1));
                                                                                                                                                                     if(_loc27_ || param3)
                                                                                                                                                                     {
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  addr620:
                                                                                                                                                                  §§push(int(§§pop()));
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  §§push(0);
                                                                                                                                                                  if(!(_loc26_ && param1))
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr620);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               var _loc20_:* = §§pop();
                                                                                                                                                               §§push(§&!L§(param2,param3,_loc20_,param4,param5));
                                                                                                                                                               if(!_loc26_)
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
                                                                                                                                                                        if(_loc27_)
                                                                                                                                                                        {
                                                                                                                                                                           if(§§pop())
                                                                                                                                                                           {
                                                                                                                                                                              addr1077:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§pop();
                                                                                                                                                                                 addr1078:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc19_);
                                                                                                                                                                                    addr1046:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc21_);
                                                                                                                                                                                       addr1047:
                                                                                                                                                                                       while(_loc27_ || param2)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() > §§pop());
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop2;
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              addr1077:
                                                                                                                                                                           }
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              loop4:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!§§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc21_);
                                                                                                                                                                                    loop5:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc17_);
                                                                                                                                                                                       loop6:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(§§pop() > §§pop())
                                                                                                                                                                                          {
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(1);
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   _loc24_ = §§pop();
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
                                                                                                                                                                                                               §§push(_loc21_);
                                                                                                                                                                                                               loop13:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                                                                  loop14:
                                                                                                                                                                                                                  while(!_loc26_)
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
                                                                                                                                                                                                                              if(_loc27_ || param1)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(-1);
                                                                                                                                                                                                                                 loop18:
                                                                                                                                                                                                                                 while(§§pop() != §§pop())
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc22_);
                                                                                                                                                                                                                                    if(!(_loc26_ && param3))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc27_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(1);
                                                                                                                                                                                                                                          if(!(_loc26_ && b2Collision))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc27_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                loop19:
                                                                                                                                                                                                                                                for(; !_loc26_; while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!(_loc26_ && param1))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc27_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§goto(addr764);
                                                                                                                                                                                                                                                         §§push(_loc23_);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      break;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   continue loop19;
                                                                                                                                                                                                                                                },§§goto(addr1046))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc6_);
                                                                                                                                                                                                                                                   if(_loc27_ || param2)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop() < §§pop());
                                                                                                                                                                                                                                                      if(_loc27_ || param3)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!(_loc27_ || param3))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue loop4;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         if(!(_loc26_ && param3))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!§§pop())
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(0);
                                                                                                                                                                                                                                                               if(!_loc26_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc27_ || b2Collision)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        loop20:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(int(§§pop()));
                                                                                                                                                                                                                                                                           addr934:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(_loc27_ || param1)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(!_loc27_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    break;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 _loc14_ = §§pop();
                                                                                                                                                                                                                                                                                 loop32:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(!_loc26_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr946:
                                                                                                                                                                                                                                                                                       loop26:
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(§&!L§(param2,param3,_loc14_,param4,param5));
                                                                                                                                                                                                                                                                                          loop27:
                                                                                                                                                                                                                                                                                          while(_loc27_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(!_loc26_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                loop28:
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(!_loc27_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      continue loop14;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   if(_loc26_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      continue loop13;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§push(§§pop());
                                                                                                                                                                                                                                                                                                   if(!(_loc26_ && param1))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(_loc26_ && b2Collision)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         break;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      _loc17_ = §§pop();
                                                                                                                                                                                                                                                                                                      continue loop19;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   addr1036:
                                                                                                                                                                                                                                                                                                   addr764:
                                                                                                                                                                                                                                                                                                   loop30:
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(!(_loc27_ || param1))
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         continue loop6;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      if(§§pop() > §§pop())
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(!_loc26_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(!_loc26_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               continue loop15;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            addr1002:
                                                                                                                                                                                                                                                                                                            addr893:
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(_loc26_ && param2)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  break loop18;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§push(_loc22_);
                                                                                                                                                                                                                                                                                                               if(!(_loc27_ || param3))
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  continue loop20;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               if(_loc26_ && b2Collision)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(int(§§pop()));
                                                                                                                                                                                                                                                                                                                     continue loop10;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  addr666:
                                                                                                                                                                                                                                                                                                                  return §§pop();
                                                                                                                                                                                                                                                                                                                  addr980:
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               if(!_loc26_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(1);
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                     addr919:
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(_loc27_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(int(§§pop()));
                                                                                                                                                                                                                                                                                                                           continue loop20;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  addr918:
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     _loc24_ = §§pop();
                                                                                                                                                                                                                                                                                                                     addr1059:
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(_loc18_);
                                                                                                                                                                                                                                                                                                                        if(_loc27_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(int(§§pop()));
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        addr1042:
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           _loc22_ = §§pop();
                                                                                                                                                                                                                                                                                                                           addr1043:
                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§push(_loc19_);
                                                                                                                                                                                                                                                                                                                              addr1034:
                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  addr1058:
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  _loc23_ = §§pop();
                                                                                                                                                                                                                                                                                                                  break loop30;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            continue loop16;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         addr814:
                                                                                                                                                                                                                                                                                                         addr814:
                                                                                                                                                                                                                                                                                                         if(!(_loc27_ || param3))
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            continue loop32;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         if(!(_loc27_ || param1))
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(_loc17_);
                                                                                                                                                                                                                                                                                                            break loop19;
                                                                                                                                                                                                                                                                                                            addr1010:
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         if(!(_loc26_ && param2))
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            addr693:
                                                                                                                                                                                                                                                                                                            §§push(_loc17_);
                                                                                                                                                                                                                                                                                                            if(_loc27_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(_loc27_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  addr698:
                                                                                                                                                                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                  if(!(_loc26_ && param2))
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     continue loop1;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  continue loop27;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               continue loop28;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            continue loop19;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr1043);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         param1[0] = _loc22_;
                                                                                                                                                                                                                                                                                                         if(!_loc26_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(_loc27_ || param1)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(_loc27_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(_loc23_);
                                                                                                                                                                                                                                                                                                                  if(!(_loc26_ && param1))
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(_loc27_ || param2)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(!(_loc26_ && param3))
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(!_loc27_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              break loop26;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr666);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§goto(addr919);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§goto(addr693);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr698);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(_loc27_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        addr974:
                                                                                                                                                                                                                                                                                                                        §§push(_loc22_);
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(§§pop() - 1);
                                                                                                                                                                                                                                                                                                                           break loop26;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        addr974:
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§goto(addr1059);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  addr971:
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr1035);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§goto(addr814);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            addr713:
                                                                                                                                                                                                                                                                                                            if(_loc27_ || b2Collision)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               continue loop17;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            addr989:
                                                                                                                                                                                                                                                                                                            loop25:
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(!(_loc27_ || param2))
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  continue loop12;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               if(!_loc26_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  continue loop26;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               addr1057:
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  break loop25;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr713);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr1059);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      continue loop16;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1047);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr1034);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          addr979:
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§goto(addr980);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(int(§§pop()));
                                                                                                                                                                                                                                                                                          addr976:
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§goto(addr666);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§goto(addr1078);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1047);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr974);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           continue loop11;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§goto(addr979);
                                                                                                                                                                                                                                                                        addr977:
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr926:
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr934);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr893);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§goto(addr1077);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(§§pop())
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§goto(addr971);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§goto(addr977);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr970:
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§goto(addr970);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                return §§pop();
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             continue;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr918);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr976);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr926);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc27_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc27_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(_loc22_);
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(§§pop() - 1);
                                                                                                                                                                                                                                             if(_loc27_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§goto(addr969);
                                                                                                                                                                                                                                                §§push(0);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr979);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr965:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1036);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§goto(addr1002);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr974);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
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
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             param1[0] = _loc14_;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1010);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1057);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1054);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1077);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1059);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr603);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr598);
                                                                                                                                                }
                                                                                                                                                §§goto(addr558);
                                                                                                                                             }
                                                                                                                                             §§goto(addr548);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§push(_loc6_);
                                                                                                                                             if(!(_loc26_ && param3))
                                                                                                                                             {
                                                                                                                                                §§goto(addr558);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr566);
                                                                                                                                       }
                                                                                                                                       §§goto(addr558);
                                                                                                                                    }
                                                                                                                                    §§goto(addr537);
                                                                                                                                 }
                                                                                                                                 §§goto(addr519);
                                                                                                                              }
                                                                                                                              §§goto(addr382);
                                                                                                                           }
                                                                                                                           §§goto(addr379);
                                                                                                                        }
                                                                                                                        §§goto(addr352);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr347);
                                                                                                               }
                                                                                                               §§goto(addr344);
                                                                                                            }
                                                                                                            §§goto(addr352);
                                                                                                            §§push(Number(§§pop()));
                                                                                                         }
                                                                                                         §§goto(addr344);
                                                                                                      }
                                                                                                      §§goto(addr352);
                                                                                                   }
                                                                                                   addr286:
                                                                                                   §§push(§§pop() + §§pop() * _loc8_.y);
                                                                                                   if(!(_loc26_ && param1))
                                                                                                   {
                                                                                                      §§goto(addr297);
                                                                                                   }
                                                                                                   §§goto(addr351);
                                                                                                }
                                                                                                addr283:
                                                                                                §§push(_loc9_.col2.y);
                                                                                                if(!_loc27_)
                                                                                                {
                                                                                                }
                                                                                                §§goto(addr286);
                                                                                             }
                                                                                             §§goto(addr350);
                                                                                          }
                                                                                          §§goto(addr352);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr321);
                                                                                 }
                                                                                 §§goto(addr313);
                                                                              }
                                                                              §§goto(addr330);
                                                                           }
                                                                           §§goto(addr305);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr264);
                                                            }
                                                            §§goto(addr283);
                                                         }
                                                         §§goto(addr297);
                                                      }
                                                      §§goto(addr273);
                                                   }
                                                   §§goto(addr352);
                                                }
                                                §§goto(addr256);
                                             }
                                             §§goto(addr305);
                                          }
                                          §§goto(addr244);
                                       }
                                       §§goto(addr352);
                                    }
                                    §§goto(addr321);
                                 }
                                 §§goto(addr130);
                              }
                              §§goto(addr126);
                           }
                           §§goto(addr122);
                        }
                        §§goto(addr126);
                     }
                     §§goto(addr130);
                  }
                  §§goto(addr85);
               }
               §§goto(addr81);
            }
            §§goto(addr85);
         }
         §§goto(addr93);
      }
      
      public static function §1";§(param1:Vector.<§]R§>, param2:b2PolygonShape, param3:b2Transform, param4:int, param5:b2PolygonShape, param6:b2Transform) : void
      {
         var _loc24_:Boolean = true;
         var _loc25_:Boolean = false;
         var _loc12_:b2Mat22 = null;
         var _loc13_:b2Vec2 = null;
         var _loc20_:§]R§ = null;
         var _loc23_:* = NaN;
         §§push(param2.§;!9§);
         if(!_loc25_)
         {
            §§push(int(§§pop()));
         }
         var _loc7_:* = §§pop();
         var _loc8_:Vector.<b2Vec2> = param2.§"!M§;
         §§push(param5.§;!9§);
         if(_loc24_ || param1)
         {
            §§push(int(§§pop()));
         }
         var _loc9_:* = §§pop();
         var _loc10_:Vector.<b2Vec2> = param5.§=#S§;
         var _loc11_:Vector.<b2Vec2> = param5.§"!M§;
         _loc12_ = param3.R;
         _loc13_ = _loc8_[param4];
         §§push(_loc12_.col1.x);
         if(_loc24_ || b2Collision)
         {
            §§push(_loc13_.x);
            if(_loc24_ || param2)
            {
               §§push(§§pop() * §§pop());
               if(_loc24_)
               {
                  §§push(_loc12_.col2.x);
                  if(_loc24_)
                  {
                     addr95:
                     §§push(§§pop() + §§pop() * _loc13_.y);
                     if(!_loc25_)
                     {
                        addr98:
                        §§push(Number(§§pop()));
                     }
                  }
                  §§goto(addr95);
               }
               var _loc14_:* = §§pop();
               §§push(_loc12_.col1.y);
               if(!_loc25_)
               {
                  §§push(_loc13_.x);
                  if(_loc24_)
                  {
                     §§push(§§pop() * §§pop());
                     if(_loc24_)
                     {
                        §§push(_loc12_.col2.y);
                        if(!_loc25_)
                        {
                           addr117:
                           §§push(§§pop() * _loc13_.y);
                        }
                        §§push(§§pop() + §§pop());
                        if(_loc24_)
                        {
                           addr123:
                           §§push(Number(§§pop()));
                        }
                        var _loc15_:* = §§pop();
                        §§push((_loc12_ = param6.R).col1.x);
                        if(!(_loc25_ && param2))
                        {
                           §§push(_loc14_);
                           if(!_loc25_)
                           {
                              addr165:
                              §§push(§§pop() * §§pop());
                              if(_loc24_)
                              {
                                 §§push(_loc12_.col1.y);
                                 if(!(_loc25_ && b2Collision))
                                 {
                                    §§push(§§pop() * _loc15_);
                                 }
                              }
                              var _loc16_:Number = §§pop();
                              if(_loc24_)
                              {
                                 §§push(_loc12_.col2.x);
                                 if(!(_loc25_ && param3))
                                 {
                                    §§push(_loc14_);
                                    if(_loc24_ || param2)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(!_loc25_)
                                       {
                                          §§push(_loc12_.col2.y);
                                          if(_loc24_)
                                          {
                                             addr197:
                                             §§push(§§pop() + §§pop() * _loc15_);
                                             if(_loc24_)
                                             {
                                                addr200:
                                                §§push(Number(§§pop()));
                                                if(_loc24_)
                                                {
                                                   addr203:
                                                   _loc15_ = §§pop();
                                                   if(!_loc25_)
                                                   {
                                                      addr206:
                                                      §§push(_loc16_);
                                                      if(!(_loc25_ && param3))
                                                      {
                                                         addr215:
                                                         _loc14_ = Number(§§pop());
                                                      }
                                                      §§goto(addr215);
                                                   }
                                                   var _loc17_:* = 0;
                                                   var _loc18_:* = Number(Number.MAX_VALUE);
                                                   var _loc19_:int = 0;
                                                   loop0:
                                                   while(true)
                                                   {
                                                      §§push(_loc19_);
                                                      if(_loc24_ || param2)
                                                      {
                                                         §§push(_loc9_);
                                                         if(_loc24_ || param2)
                                                         {
                                                            if(§§pop() >= §§pop())
                                                            {
                                                               §§push(_loc17_);
                                                               if(_loc24_ || param3)
                                                               {
                                                                  §§push(int(§§pop()));
                                                                  break;
                                                               }
                                                               break;
                                                            }
                                                            _loc13_ = _loc11_[_loc19_];
                                                            if(_loc24_ || param3)
                                                            {
                                                               §§push(_loc14_);
                                                               if(_loc24_ || param2)
                                                               {
                                                                  §§push(_loc13_.x);
                                                                  if(!(_loc25_ && param2))
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(!(_loc25_ && b2Collision))
                                                                     {
                                                                        §§push(_loc15_);
                                                                        if(!(_loc25_ && param3))
                                                                        {
                                                                           §§push(§§pop() * _loc13_.y);
                                                                           if(!_loc25_)
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              if(_loc24_ || param2)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 if(!_loc25_)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    if(_loc24_)
                                                                                    {
                                                                                       addr318:
                                                                                       _loc23_ = §§pop();
                                                                                       if(!_loc25_)
                                                                                       {
                                                                                          addr322:
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
                                                                                                      addr332:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc18_ = §§pop();
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
                                                                                                               loop4:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  addr239:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     _loc19_++;
                                                                                                                     if(_loc24_)
                                                                                                                     {
                                                                                                                        break loop4;
                                                                                                                     }
                                                                                                                     continue loop4;
                                                                                                                  }
                                                                                                               }
                                                                                                               if(!(_loc24_ || param3))
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               if(_loc24_ || param3)
                                                                                                               {
                                                                                                                  while(false)
                                                                                                                  {
                                                                                                                     continue loop3;
                                                                                                                  }
                                                                                                                  continue loop0;
                                                                                                                  addr257:
                                                                                                               }
                                                                                                               continue loop5;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   addr331:
                                                                                                }
                                                                                                §§goto(addr332);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr239);
                                                                                       }
                                                                                       §§goto(addr331);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr322);
                                                                              }
                                                                              §§goto(addr332);
                                                                           }
                                                                           §§goto(addr322);
                                                                        }
                                                                     }
                                                                     §§goto(addr322);
                                                                  }
                                                                  §§goto(addr318);
                                                               }
                                                               §§goto(addr322);
                                                            }
                                                            §§goto(addr257);
                                                         }
                                                         addr361:
                                                         var _loc21_:* = §§pop();
                                                         if(!(_loc25_ && param3))
                                                         {
                                                            §§push(1);
                                                            if(!(_loc25_ && param2))
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               if(!_loc25_)
                                                               {
                                                                  if(§§pop() < _loc9_)
                                                                  {
                                                                     §§push(_loc21_);
                                                                     if(!(_loc25_ && param3))
                                                                     {
                                                                        addr393:
                                                                        addr392:
                                                                        §§push(int(§§pop() + 1));
                                                                        if(_loc24_)
                                                                        {
                                                                           addr396:
                                                                        }
                                                                        addr405:
                                                                        §§push(int(§§pop()));
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(0);
                                                                     if(_loc24_ || param1)
                                                                     {
                                                                        §§goto(addr405);
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
                                                                        addr616:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop().x);
                                                                           addr617:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc12_.col1);
                                                                              addr619:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().x);
                                                                                 addr620:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc13_.x);
                                                                                    if(!_loc25_)
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc12_.col2);
                                                                                          addr627:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop().x);
                                                                                             addr628:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc13_.y);
                                                                                                addr630:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       addr625:
                                                                                    }
                                                                                    addr631:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() + §§pop());
                                                                                       addr632:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() + §§pop());
                                                                                          addr633:
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop().x = §§pop();
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
                                                                  §§goto(addr611);
                                                               }
                                                               §§goto(addr393);
                                                            }
                                                            §§goto(addr392);
                                                         }
                                                         §§goto(addr396);
                                                      }
                                                      break;
                                                   }
                                                   §§goto(addr361);
                                                   §§push(§§pop());
                                                }
                                                §§goto(addr215);
                                             }
                                             §§goto(addr203);
                                          }
                                          §§goto(addr197);
                                       }
                                       §§goto(addr200);
                                    }
                                    §§goto(addr197);
                                 }
                                 §§goto(addr215);
                              }
                              §§goto(addr206);
                           }
                           §§push(§§pop() + §§pop());
                           if(_loc24_ || b2Collision)
                           {
                           }
                        }
                        §§goto(addr165);
                     }
                     §§goto(addr123);
                  }
                  §§goto(addr117);
               }
               §§goto(addr123);
            }
            §§goto(addr95);
         }
         §§goto(addr98);
      }
      
      private static function §;"f§() : Vector.<§]R§>
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Vector.<§]R§> = new Vector.<§]R§>(2);
         if(!(_loc2_ && b2Collision))
         {
            _loc1_[0] = new §]R§();
         }
         do
         {
            _loc1_[1] = new §]R§();
         }
         while(!_loc3_);
         
         return _loc1_;
      }
      
      public static function §?e§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2PolygonShape, param5:b2Transform) : void
      {
         var _loc46_:Boolean = false;
         var _loc47_:Boolean = true;
         var _loc6_:§]R§ = null;
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
            param1.§6#;§ = 0;
         }
         var _loc7_:Number = param2.§ "^§ + param4.§ "^§;
         var _loc8_:* = 0;
         if(_loc47_ || param2)
         {
            §;#6§[0] = _loc8_;
         }
         §§push(§`"6§(§;#6§,param2,param3,param4,param5));
         if(!(_loc46_ && param1))
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         if(_loc47_ || param2)
         {
            §§push(int(§;#6§[0]));
            if(_loc47_)
            {
               _loc8_ = §§pop();
               if(_loc47_)
               {
                  if(_loc9_ > _loc7_)
                  {
                     if(!(_loc46_ && param2))
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
            if(_loc47_)
            {
               §7#[§[0] = _loc10_;
            }
            §§push(§`"6§(§7#[§,param4,param5,param2,param3));
            if(_loc47_ || b2Collision)
            {
               §§push(Number(§§pop()));
            }
            var _loc11_:* = §§pop();
            if(!_loc46_)
            {
               _loc10_ = int(§7#[§[0]);
               if(!(_loc46_ && param3))
               {
                  §§push(_loc11_);
                  if(!(_loc46_ && param3))
                  {
                     if(§§pop() > _loc7_)
                     {
                        if(!(_loc46_ && param1))
                        {
                           §§goto(addr177);
                        }
                        else
                        {
                           addr178:
                           §§push(0.98);
                           if(_loc47_)
                           {
                              addr181:
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
                              if(_loc47_)
                              {
                                 §§push(_loc9_);
                                 if(_loc47_)
                                 {
                                    addr202:
                                    §§push(§§pop() * §§pop());
                                    if(!_loc46_)
                                    {
                                       §§push(_loc19_);
                                    }
                                    if(§§pop() > §§pop())
                                    {
                                       addr203:
                                       _loc12_ = param4;
                                       _loc13_ = param2;
                                       _loc14_ = param5;
                                       _loc15_ = param3;
                                       if(_loc47_)
                                       {
                                          §§push(_loc10_);
                                          loop38:
                                          while(true)
                                          {
                                             §§push(int(§§pop()));
                                             loop39:
                                             while(true)
                                             {
                                                _loc16_ = §§pop();
                                                loop40:
                                                while(true)
                                                {
                                                   addr245:
                                                   while(true)
                                                   {
                                                      param1.§%!9§ = b2Manifold.§3"f§;
                                                      addr250:
                                                      while(true)
                                                      {
                                                         if(!(_loc46_ && param3))
                                                         {
                                                            §§push(1);
                                                            if(_loc47_ || param3)
                                                            {
                                                               continue loop38;
                                                            }
                                                            continue loop39;
                                                         }
                                                         continue loop40;
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr243);
                                    }
                                    else
                                    {
                                       _loc12_ = param2;
                                       _loc13_ = param4;
                                       _loc14_ = param3;
                                       _loc15_ = param5;
                                       if(_loc47_)
                                       {
                                          §§push(_loc8_);
                                          if(_loc47_ || param2)
                                          {
                                             §§push(int(§§pop()));
                                          }
                                          loop0:
                                          while(true)
                                          {
                                             _loc16_ = §§pop();
                                             addr311:
                                             while(true)
                                             {
                                                addr295:
                                                while(true)
                                                {
                                                   param1.§%!9§ = b2Manifold.§=!m§;
                                                   continue loop0;
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr293);
                                    }
                                 }
                                 §§push(§§pop() + §§pop());
                              }
                              §§goto(addr202);
                           }
                           §§goto(addr203);
                        }
                     }
                     §§goto(addr178);
                  }
                  §§goto(addr181);
               }
               §§goto(addr178);
            }
            addr177:
            return;
         }
         §§goto(addr122);
      }
      
      public static function §-"c§(param1:b2Manifold, param2:b2CircleShape, param3:b2Transform, param4:b2CircleShape, param5:b2Transform) : void
      {
         var _loc16_:Boolean = true;
         var _loc17_:Boolean = false;
         var _loc6_:b2Mat22 = null;
         var _loc7_:b2Vec2 = null;
         if(_loc16_)
         {
            param1.§6#;§ = 0;
         }
         _loc6_ = param3.R;
         _loc7_ = param2.§&!i§;
         §§push(param3.position.x);
         if(!_loc17_)
         {
            §§push(_loc6_.col1.x);
            if(!_loc17_)
            {
               §§push(_loc7_.x);
               if(_loc16_ || param1)
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc17_ && param3))
                  {
                     addr71:
                     §§push(_loc6_.col2.x);
                     if(_loc16_)
                     {
                        addr67:
                        §§push(§§pop() * _loc7_.y);
                     }
                     §§push(§§pop() + (§§pop() + §§pop()));
                     if(_loc16_ || param1)
                     {
                        addr79:
                        §§push(Number(§§pop()));
                     }
                     var _loc8_:* = §§pop();
                     §§push(param3.position.y);
                     if(!_loc17_)
                     {
                        §§push(_loc6_.col1.y);
                        if(_loc16_)
                        {
                           §§push(_loc7_.x);
                           if(_loc16_ || param1)
                           {
                              §§push(§§pop() * §§pop());
                              if(!(_loc17_ && param3))
                              {
                                 addr108:
                                 §§push(_loc6_.col2.y);
                                 if(!_loc17_)
                                 {
                                    addr113:
                                    §§push(§§pop() * _loc7_.y);
                                 }
                                 §§push(§§pop() + §§pop());
                              }
                              §§push(§§pop() + §§pop());
                              if(_loc16_)
                              {
                                 addr120:
                                 §§push(Number(§§pop()));
                              }
                              var _loc9_:* = §§pop();
                              _loc6_ = param5.R;
                              _loc7_ = param4.§&!i§;
                              §§push(param5.position.x);
                              if(!_loc17_)
                              {
                                 §§push(_loc6_.col1.x);
                                 if(_loc16_ || param3)
                                 {
                                    §§push(_loc7_.x);
                                    if(!_loc17_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(_loc16_)
                                       {
                                          addr166:
                                          §§push(_loc6_.col2.x);
                                          if(!(_loc17_ && param2))
                                          {
                                             addr162:
                                             §§push(§§pop() * _loc7_.y);
                                          }
                                          §§push(§§pop() + (§§pop() + §§pop()));
                                          if(!_loc17_)
                                          {
                                             addr169:
                                             §§push(Number(§§pop()));
                                          }
                                          var _loc10_:* = §§pop();
                                          §§push(param5.position.y);
                                          if(_loc16_)
                                          {
                                             §§push(_loc6_.col1.y);
                                             if(!_loc17_)
                                             {
                                                §§push(_loc7_.x);
                                                if(_loc16_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(!(_loc17_ && param2))
                                                   {
                                                      addr203:
                                                      §§push(_loc6_.col2.y);
                                                      if(_loc16_)
                                                      {
                                                         addr211:
                                                         §§push(§§pop() + §§pop() * _loc7_.y);
                                                      }
                                                      §§goto(addr211);
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                   if(_loc16_ || b2Collision)
                                                   {
                                                      addr220:
                                                      §§push(Number(§§pop()));
                                                   }
                                                   var _loc11_:* = §§pop();
                                                   §§push(_loc10_);
                                                   if(_loc16_ || param1)
                                                   {
                                                      §§push(§§pop() - _loc8_);
                                                      if(_loc16_ || param2)
                                                      {
                                                         §§push(Number(§§pop()));
                                                      }
                                                   }
                                                   var _loc12_:* = §§pop();
                                                   §§push(_loc11_);
                                                   if(_loc16_)
                                                   {
                                                      §§push(§§pop() - _loc9_);
                                                      if(!_loc17_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                      }
                                                   }
                                                   var _loc13_:* = §§pop();
                                                   §§push(_loc12_);
                                                   if(!_loc17_)
                                                   {
                                                      §§push(_loc12_);
                                                      if(!_loc17_)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(!(_loc17_ && param3))
                                                         {
                                                            §§push(_loc13_);
                                                            if(!_loc17_)
                                                            {
                                                               addr267:
                                                               §§push(§§pop() * _loc13_);
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                            if(!_loc17_)
                                                            {
                                                               addr272:
                                                               §§push(Number(§§pop()));
                                                            }
                                                         }
                                                         var _loc14_:* = §§pop();
                                                         var _loc15_:Number = param2.§ "^§ + param4.§ "^§;
                                                         if(_loc16_)
                                                         {
                                                            §§push(_loc14_);
                                                            §§push(_loc15_);
                                                            if(!_loc17_)
                                                            {
                                                               §§push(§§pop() * _loc15_);
                                                            }
                                                            if(§§pop() <= §§pop())
                                                            {
                                                               loop0:
                                                               while(true)
                                                               {
                                                                  param1.§%!9§ = b2Manifold.§1!9§;
                                                                  while(true)
                                                                  {
                                                                     param1.m_localPoint.SetV(param2.§&!i§);
                                                                     loop2:
                                                                     while(_loc16_ || b2Collision)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           param1.§[#M§.§&"Q§();
                                                                           loop4:
                                                                           while(true)
                                                                           {
                                                                              param1.§6#;§ = 1;
                                                                              loop5:
                                                                              while(true)
                                                                              {
                                                                                 param1.§="8§[0].m_localPoint.SetV(param4.§&!i§);
                                                                                 while(true)
                                                                                 {
                                                                                    if(!(_loc17_ && b2Collision))
                                                                                    {
                                                                                       continue loop4;
                                                                                    }
                                                                                    continue loop5;
                                                                                    addr333:
                                                                                    param1.§="8§[0].m_id.key = 0;
                                                                                    if(_loc16_)
                                                                                    {
                                                                                       if(!(_loc17_ && param2))
                                                                                       {
                                                                                          if(!_loc17_)
                                                                                          {
                                                                                             return;
                                                                                          }
                                                                                          addr381:
                                                                                          return;
                                                                                       }
                                                                                       continue loop0;
                                                                                    }
                                                                                 }
                                                                                 continue loop2;
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr381);
                                                         }
                                                         §§goto(addr357);
                                                      }
                                                      §§goto(addr267);
                                                   }
                                                   §§goto(addr272);
                                                }
                                                §§goto(addr211);
                                             }
                                             §§goto(addr203);
                                          }
                                          §§goto(addr220);
                                       }
                                       §§goto(addr166);
                                    }
                                    §§goto(addr162);
                                 }
                                 §§goto(addr166);
                              }
                              §§goto(addr169);
                           }
                           §§goto(addr113);
                        }
                        §§goto(addr108);
                     }
                     §§goto(addr120);
                  }
                  §§goto(addr71);
               }
               §§goto(addr67);
            }
            §§goto(addr71);
         }
         §§goto(addr79);
      }
      
      public static function §7"S§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2CircleShape, param5:b2Transform) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfuscation" for better results.
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public static function §?#S§(param1:b2AABB, param2:b2AABB) : Boolean
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc3_:b2Vec2 = param2.§1!,§;
         var _loc4_:b2Vec2 = param1.§ D§;
         §§push(_loc3_.x);
         if(_loc10_)
         {
            §§push(§§pop() - _loc4_.x);
            if(_loc10_)
            {
               addr34:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            §§push(_loc3_.y);
            if(_loc10_)
            {
               §§push(§§pop() - _loc4_.y);
               if(_loc10_)
               {
                  addr45:
                  §§push(Number(§§pop()));
               }
               var _loc6_:* = §§pop();
               _loc3_ = param1.§1!,§;
               _loc4_ = param2.§ D§;
               §§push(_loc3_.x);
               if(!(_loc9_ && param1))
               {
                  §§push(§§pop() - _loc4_.x);
                  if(_loc10_ || param2)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var _loc7_:* = §§pop();
               §§push(_loc3_.y);
               if(_loc10_ || b2Collision)
               {
                  §§push(§§pop() - _loc4_.y);
                  if(_loc10_)
                  {
                     addr90:
                     §§push(Number(§§pop()));
                  }
                  var _loc8_:* = §§pop();
                  if(_loc10_)
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
                                       addr247:
                                       while(true)
                                       {
                                          §§push(_loc6_);
                                          addr217:
                                          while(true)
                                          {
                                             §§push(0);
                                             addr218:
                                             while(!(_loc9_ && param1))
                                             {
                                                §§push(§§pop() > §§pop());
                                             }
                                             continue loop1;
                                          }
                                       }
                                    }
                                    addr246:
                                 }
                                 while(true)
                                 {
                                    loop9:
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
                                                addr185:
                                                while(!(_loc9_ && param2))
                                                {
                                                   §§push(§§pop() > §§pop());
                                                   do
                                                   {
                                                      §§push(§§pop());
                                                      if(!(_loc10_ || b2Collision))
                                                      {
                                                         continue loop3;
                                                      }
                                                      if(§§pop())
                                                      {
                                                         loop17:
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(_loc10_ || _loc3_)
                                                               {
                                                                  if(_loc9_)
                                                                  {
                                                                     continue loop10;
                                                                  }
                                                                  §§push(false);
                                                                  while(true)
                                                                  {
                                                                     if(_loc10_)
                                                                     {
                                                                        break loop17;
                                                                     }
                                                                     addr228:
                                                                     addr202:
                                                                     §§goto(addr239);
                                                                  }
                                                                  addr174:
                                                               }
                                                               else if(!_loc9_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr95);
                                                                  }
                                                                  addr181:
                                                               }
                                                               while(true)
                                                               {
                                                                  if(!(_loc9_ && param2))
                                                                  {
                                                                     if(_loc9_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§push(_loc8_);
                                                                     if(!(_loc10_ || b2Collision))
                                                                     {
                                                                        continue loop11;
                                                                     }
                                                                     if(_loc10_)
                                                                     {
                                                                        continue loop0;
                                                                     }
                                                                     §§goto(addr217);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr239);
                                                                  }
                                                               }
                                                               §§goto(addr247);
                                                            }
                                                            addr95:
                                                            while(true)
                                                            {
                                                               §§push(true);
                                                               if(_loc10_ || b2Collision)
                                                               {
                                                                  addr104:
                                                                  if(_loc10_ || param2)
                                                                  {
                                                                     if(!_loc9_)
                                                                     {
                                                                        if(!(_loc9_ && param1))
                                                                        {
                                                                           break;
                                                                        }
                                                                        continue loop2;
                                                                     }
                                                                     §§goto(addr246);
                                                                  }
                                                                  else
                                                                  {
                                                                     while(_loc10_ || param1)
                                                                     {
                                                                        continue loop17;
                                                                        §§goto(addr104);
                                                                     }
                                                                     addr155:
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr174);
                                                               }
                                                               addr239:
                                                               while(true)
                                                               {
                                                                  if(_loc9_)
                                                                  {
                                                                     continue loop9;
                                                                  }
                                                                  §§pop();
                                                               }
                                                               return false;
                                                            }
                                                            return §§pop();
                                                         }
                                                         continue;
                                                      }
                                                      §§goto(addr202);
                                                   }
                                                   while(_loc9_);
                                                   
                                                   return §§pop();
                                                }
                                                §§goto(addr218);
                                             }
                                          }
                                       }
                                       §§goto(addr228);
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr181);
               }
               §§goto(addr90);
            }
            §§goto(addr45);
         }
         §§goto(addr34);
      }
   }
}
