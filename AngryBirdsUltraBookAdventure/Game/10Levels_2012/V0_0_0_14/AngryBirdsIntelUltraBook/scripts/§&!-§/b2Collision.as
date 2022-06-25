package §&!-§
{
   import §0!'§.*;
   import §8>§.*;
   import §;u§.*;
   
   use namespace b2internal;
   
   public class b2Collision
   {
      
      public static const b2_nullFeature:uint = 255;
      
      private static var §[!8§:Vector.<§2!P§>;
      
      private static var s_clipPoints1:Vector.<§2!P§>;
      
      private static var s_clipPoints2:Vector.<§2!P§>;
      
      private static var §=y§:Vector.<int>;
      
      private static var §'G§:Vector.<int>;
      
      private static var §'!;§:b2Vec2;
      
      private static var §'8§:b2Vec2;
      
      private static var §5!m§:b2Vec2;
      
      private static var §=d§:b2Vec2;
      
      private static var §"p§:b2Vec2;
      
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
         loop0:
         while(true)
         {
            §[!8§ = §@i§();
            while(true)
            {
               s_clipPoints1 = §@i§();
               loop2:
               while(!_loc2_)
               {
                  s_clipPoints2 = §@i§();
                  loop3:
                  while(true)
                  {
                     §=y§ = new Vector.<int>(1);
                     loop4:
                     while(true)
                     {
                        if(_loc2_)
                        {
                           continue loop3;
                        }
                        if(!_loc1_)
                        {
                           break;
                        }
                        §'G§ = new Vector.<int>(1);
                        while(true)
                        {
                           §'!;§ = new b2Vec2();
                           while(true)
                           {
                              §'8§ = new b2Vec2();
                              continue loop4;
                              addr51:
                              if(_loc1_ || _loc2_)
                              {
                                 return;
                              }
                           }
                           loop13:
                           while(!(_loc2_ && b2Collision))
                           {
                              b2CollidePolyTempVec = new b2Vec2();
                              if(!(_loc1_ || b2Collision))
                              {
                                 continue;
                              }
                              addr40:
                              if(!(_loc2_ && _loc1_))
                              {
                                 if(!_loc2_)
                                 {
                                    addr49:
                                    if(_loc2_)
                                    {
                                       loop9:
                                       while(true)
                                       {
                                          §"p§ = new b2Vec2();
                                          addr115:
                                          addr134:
                                          loop10:
                                          while(_loc1_ || _loc1_)
                                          {
                                             s_tangent2 = new b2Vec2();
                                             while(_loc1_ || _loc1_)
                                             {
                                                s_v11 = new b2Vec2();
                                                while(true)
                                                {
                                                   if(!(_loc2_ && b2Collision))
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         break;
                                                      }
                                                      s_v12 = new b2Vec2();
                                                      continue loop13;
                                                   }
                                                   continue loop10;
                                                   §§goto(addr40);
                                                }
                                                continue loop2;
                                             }
                                             continue loop4;
                                          }
                                          while(true)
                                          {
                                             §=d§ = new b2Vec2();
                                             continue loop9;
                                             §§goto(addr115);
                                          }
                                       }
                                    }
                                    §§goto(addr51);
                                 }
                                 §§goto(addr102);
                              }
                              §§goto(addr77);
                           }
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
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
      
      public static function §[!M§(param1:Vector.<§2!P§>, param2:Vector.<§2!P§>, param3:b2Vec2, param4:Number) : int
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc5_:§2!P§ = null;
         var _loc6_:int = 0;
         var _loc7_:b2Vec2 = null;
         var _loc9_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:b2Vec2 = null;
         var _loc13_:§2!P§ = null;
         if(_loc14_ || param3)
         {
            _loc6_ = 0;
         }
         _loc7_ = (_loc5_ = param2[0]).v;
         var _loc8_:b2Vec2 = (_loc5_ = param2[1]).v;
         if(!_loc15_)
         {
            §§push(param3.x);
            if(!(_loc15_ && param1))
            {
               §§push(_loc7_.x);
               if(!_loc15_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc14_ || b2Collision)
                  {
                     §§push(param3.y);
                     if(_loc14_)
                     {
                        §§push(_loc7_.y);
                        if(_loc14_)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc14_ || b2Collision)
                           {
                              §§push(§§pop() + §§pop());
                              if(!(_loc15_ && b2Collision))
                              {
                                 §§push(param4);
                                 if(!(_loc15_ && param3))
                                 {
                                    addr116:
                                    §§push(§§pop() - §§pop());
                                    if(!_loc15_)
                                    {
                                       §§push(Number(§§pop()));
                                       if(_loc14_)
                                       {
                                          addr122:
                                          _loc9_ = §§pop();
                                          §§push(param3.x);
                                          if(_loc14_ || b2Collision)
                                          {
                                             §§push(_loc8_.x);
                                             if(!_loc15_)
                                             {
                                                addr136:
                                                §§push(§§pop() * §§pop());
                                                if(_loc14_ || b2Collision)
                                                {
                                                   addr144:
                                                   §§push(param3.y);
                                                   if(_loc15_)
                                                   {
                                                   }
                                                   addr158:
                                                   §§push(§§pop() + §§pop());
                                                   if(!(_loc15_ && b2Collision))
                                                   {
                                                      addr167:
                                                      §§push(§§pop() - param4);
                                                      if(_loc14_ || b2Collision)
                                                      {
                                                         addr176:
                                                         var _loc10_:Number = §§pop();
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
                                                                        addr310:
                                                                        while(true)
                                                                        {
                                                                        }
                                                                     }
                                                                     addr300:
                                                                  }
                                                                  loop4:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc10_);
                                                                     loop5:
                                                                     while(true)
                                                                     {
                                                                        §§push(0);
                                                                        while(true)
                                                                        {
                                                                           if(§§pop() <= §§pop())
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc14_ || b2Collision))
                                                                                 {
                                                                                    break loop5;
                                                                                 }
                                                                                 param1[_loc6_++].Set(param2[1]);
                                                                                 while(true)
                                                                                 {
                                                                                 }
                                                                              }
                                                                              §§goto(addr310);
                                                                              addr279:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc9_);
                                                                              if(_loc14_ || param2)
                                                                              {
                                                                                 §§push(_loc10_);
                                                                                 if(!(_loc15_ && param3))
                                                                                 {
                                                                                    if(_loc15_ && param2)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    if(_loc15_)
                                                                                    {
                                                                                       continue loop1;
                                                                                    }
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(!(_loc15_ && param3))
                                                                                    {
                                                                                       if(_loc15_)
                                                                                       {
                                                                                          continue loop0;
                                                                                       }
                                                                                       §§push(0);
                                                                                       if(_loc14_)
                                                                                       {
                                                                                          if(§§pop() < §§pop())
                                                                                          {
                                                                                             if(_loc14_ || param1)
                                                                                             {
                                                                                                §§push(_loc9_);
                                                                                                if(_loc14_)
                                                                                                {
                                                                                                   §§push(_loc9_);
                                                                                                   if(!_loc15_)
                                                                                                   {
                                                                                                      addr250:
                                                                                                      addr248:
                                                                                                      §§push(§§pop() / (§§pop() - _loc10_));
                                                                                                      if(!_loc15_)
                                                                                                      {
                                                                                                         addr253:
                                                                                                         if(_loc15_ && param2)
                                                                                                         {
                                                                                                            continue loop5;
                                                                                                         }
                                                                                                         §§push(Number(§§pop()));
                                                                                                      }
                                                                                                      _loc11_ = §§pop();
                                                                                                   }
                                                                                                   §§goto(addr250);
                                                                                                }
                                                                                                §§goto(addr253);
                                                                                             }
                                                                                             if(_loc14_ || b2Collision)
                                                                                             {
                                                                                                if(!_loc15_)
                                                                                                {
                                                                                                   if(_loc14_)
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
                                                                                                         if(_loc14_)
                                                                                                         {
                                                                                                            §§push(_loc8_.x);
                                                                                                            if(!_loc15_)
                                                                                                            {
                                                                                                               §§push(§§pop() - _loc7_.x);
                                                                                                            }
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                         }
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                      }
                                                                                                      §§pop().x = §§pop();
                                                                                                      if(!_loc15_)
                                                                                                      {
                                                                                                         §§push(_loc12_);
                                                                                                         §§push(_loc7_.y);
                                                                                                         if(!(_loc15_ && b2Collision))
                                                                                                         {
                                                                                                            §§push(_loc11_);
                                                                                                            if(!_loc15_)
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
                                                                                                      if(_loc14_)
                                                                                                      {
                                                                                                         if(_loc9_ > 0)
                                                                                                         {
                                                                                                            _loc13_ = param2[0];
                                                                                                            addr373:
                                                                                                            if(!_loc15_)
                                                                                                            {
                                                                                                               _loc5_.id = _loc13_.id;
                                                                                                               if(_loc14_ || param2)
                                                                                                               {
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr414);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            _loc13_ = param2[1];
                                                                                                            if(!_loc15_)
                                                                                                            {
                                                                                                               _loc5_.id = _loc13_.id;
                                                                                                            }
                                                                                                         }
                                                                                                         _loc6_++;
                                                                                                         §§goto(addr414);
                                                                                                      }
                                                                                                      §§goto(addr373);
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr279);
                                                                                                }
                                                                                                §§goto(addr310);
                                                                                             }
                                                                                             §§goto(addr296);
                                                                                          }
                                                                                          addr414:
                                                                                          return _loc6_;
                                                                                       }
                                                                                       §§goto(addr248);
                                                                                    }
                                                                                    §§goto(addr253);
                                                                                 }
                                                                                 §§goto(addr250);
                                                                              }
                                                                              §§goto(addr253);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr300);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr296);
                                                      }
                                                   }
                                                }
                                                §§goto(addr176);
                                             }
                                             addr150:
                                             §§push(§§pop() * _loc8_.y);
                                             if(!(_loc15_ && param2))
                                             {
                                                §§goto(addr158);
                                             }
                                          }
                                          §§goto(addr167);
                                       }
                                       §§goto(addr176);
                                    }
                                    §§goto(addr122);
                                 }
                                 §§goto(addr158);
                              }
                              §§goto(addr176);
                           }
                           §§goto(addr116);
                        }
                        §§goto(addr150);
                     }
                     §§goto(addr136);
                  }
                  §§goto(addr167);
               }
               §§goto(addr116);
            }
            §§goto(addr144);
         }
         §§goto(addr122);
      }
      
      public static function §#!6§(param1:b2PolygonShape, param2:b2Transform, param3:int, param4:b2PolygonShape, param5:b2Transform) : Number
      {
         var _loc26_:Boolean = true;
         var _loc27_:Boolean = false;
         var _loc11_:b2Mat22 = null;
         var _loc12_:b2Vec2 = null;
         var _loc25_:* = NaN;
         §§push(param1.§']§);
         if(!(_loc27_ && param2))
         {
            §§push(int(§§pop()));
         }
         var _loc6_:* = §§pop();
         var _loc7_:Vector.<b2Vec2> = param1.§%§;
         var _loc8_:Vector.<b2Vec2> = param1.§<0§;
         §§push(param4.§']§);
         if(_loc26_)
         {
            §§push(int(§§pop()));
         }
         var _loc9_:* = §§pop();
         var _loc10_:Vector.<b2Vec2> = param4.§%§;
         _loc11_ = param2.R;
         _loc12_ = _loc8_[param3];
         §§push(_loc11_.col1.x);
         if(_loc26_)
         {
            §§push(_loc12_.x);
            if(!_loc27_)
            {
               addr86:
               §§push(§§pop() * §§pop());
               if(_loc26_)
               {
                  §§push(_loc11_.col2.x);
                  if(!_loc27_)
                  {
                     §§push(§§pop() * _loc12_.y);
                  }
               }
               var _loc13_:* = §§pop();
               §§push(_loc11_.col1.y);
               if(!_loc27_)
               {
                  §§push(_loc12_.x);
                  if(_loc26_)
                  {
                     §§push(§§pop() * §§pop());
                     if(_loc26_)
                     {
                        §§push(_loc11_.col2.y);
                        if(!_loc27_)
                        {
                           addr104:
                           §§push(§§pop() * _loc12_.y);
                        }
                        §§push(§§pop() + §§pop());
                        if(!(_loc27_ && param3))
                        {
                           addr115:
                           §§push(Number(§§pop()));
                        }
                     }
                     var _loc14_:* = §§pop();
                     §§push((_loc11_ = param5.R).col1.x);
                     if(_loc26_ || param2)
                     {
                        §§push(_loc13_);
                        if(!_loc27_)
                        {
                           addr157:
                           §§push(§§pop() * §§pop());
                           if(!(_loc27_ && param3))
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
                              if(!(_loc27_ && param1))
                              {
                                 §§push(§§pop() * §§pop());
                                 if(_loc26_ || param1)
                                 {
                                    §§push(_loc11_.col2.y);
                                    if(!(_loc27_ && param2))
                                    {
                                       addr192:
                                       §§push(§§pop() + §§pop() * _loc14_);
                                       if(_loc27_)
                                       {
                                       }
                                       addr196:
                                       var _loc16_:* = §§pop();
                                       var _loc17_:* = 0;
                                       var _loc18_:* = Number(Number.MAX_VALUE);
                                       var _loc19_:int = 0;
                                       while(_loc19_ < _loc9_)
                                       {
                                          §§push((_loc12_ = _loc10_[_loc19_]).x);
                                          if(_loc26_ || param3)
                                          {
                                             §§push(_loc15_);
                                             if(_loc26_ || param2)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!_loc27_)
                                                {
                                                   §§push(_loc12_.y);
                                                   if(_loc26_)
                                                   {
                                                      §§push(§§pop() * _loc16_);
                                                      if(_loc27_)
                                                      {
                                                      }
                                                      addr273:
                                                      if(§§pop() < §§pop())
                                                      {
                                                         if(_loc27_)
                                                         {
                                                            continue;
                                                         }
                                                         §§push(_loc25_);
                                                         if(!(_loc27_ && param3))
                                                         {
                                                            addr284:
                                                            §§push(Number(§§pop()));
                                                         }
                                                         _loc18_ = §§pop();
                                                         if(!(_loc26_ || param2))
                                                         {
                                                            continue;
                                                         }
                                                         §§push(_loc19_);
                                                         if(_loc26_ || b2Collision)
                                                         {
                                                            §§push(int(§§pop()));
                                                         }
                                                         _loc17_ = §§pop();
                                                         if(_loc27_ && param1)
                                                         {
                                                            continue;
                                                         }
                                                      }
                                                      _loc19_++;
                                                      continue;
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                   if(_loc26_ || b2Collision)
                                                   {
                                                      addr248:
                                                      §§push(Number(§§pop()));
                                                      if(_loc26_ || param2)
                                                      {
                                                         §§push(§§pop());
                                                         if(!(_loc27_ && b2Collision))
                                                         {
                                                            _loc25_ = §§pop();
                                                            if(_loc27_ && param2)
                                                            {
                                                            }
                                                            §§goto(addr284);
                                                         }
                                                         §§goto(addr273);
                                                      }
                                                   }
                                                   §§goto(addr273);
                                                   §§push(_loc18_);
                                                }
                                                §§goto(addr284);
                                             }
                                             §§goto(addr273);
                                          }
                                          §§goto(addr248);
                                       }
                                       _loc12_ = _loc7_[param3];
                                       _loc11_ = param2.R;
                                       §§push(param2.position.x);
                                       if(!_loc27_)
                                       {
                                          §§push(_loc11_.col1.x);
                                          if(!_loc27_)
                                          {
                                             §§push(_loc12_.x);
                                             if(!(_loc27_ && b2Collision))
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(_loc26_ || param1)
                                                {
                                                   addr360:
                                                   §§push(_loc11_.col2.x);
                                                   if(_loc26_)
                                                   {
                                                      addr365:
                                                      §§push(§§pop() * _loc12_.y);
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                }
                                                §§push(§§pop() + §§pop());
                                                if(_loc26_)
                                                {
                                                   addr372:
                                                   §§push(Number(§§pop()));
                                                }
                                                var _loc20_:* = §§pop();
                                                §§push(param2.position.y);
                                                if(!_loc27_)
                                                {
                                                   §§push(_loc11_.col1.y);
                                                   if(!(_loc27_ && b2Collision))
                                                   {
                                                      §§push(_loc12_.x);
                                                      if(!(_loc27_ && param1))
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(!_loc27_)
                                                         {
                                                            addr410:
                                                            §§push(_loc11_.col2.y);
                                                            if(_loc26_)
                                                            {
                                                               addr406:
                                                               §§push(§§pop() * _loc12_.y);
                                                            }
                                                            §§push(§§pop() + (§§pop() + §§pop()));
                                                            if(_loc26_)
                                                            {
                                                               addr413:
                                                               §§push(Number(§§pop()));
                                                            }
                                                            var _loc21_:* = §§pop();
                                                            _loc12_ = _loc10_[_loc17_];
                                                            _loc11_ = param5.R;
                                                            §§push(param5.position.x);
                                                            if(_loc26_)
                                                            {
                                                               §§push(_loc11_.col1.x);
                                                               if(!_loc27_)
                                                               {
                                                                  §§push(_loc12_.x);
                                                                  if(_loc26_ || param1)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(_loc26_ || b2Collision)
                                                                     {
                                                                        addr451:
                                                                        §§push(_loc11_.col2.x);
                                                                        if(!(_loc27_ && param1))
                                                                        {
                                                                           addr464:
                                                                           §§push(§§pop() + §§pop() * _loc12_.y);
                                                                        }
                                                                        §§goto(addr464);
                                                                     }
                                                                     §§push(§§pop() + §§pop());
                                                                     if(!(_loc27_ && param3))
                                                                     {
                                                                        addr473:
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                     var _loc22_:* = §§pop();
                                                                     §§push(param5.position.y);
                                                                     if(_loc26_ || param3)
                                                                     {
                                                                        §§push(_loc11_.col1.y);
                                                                        if(_loc26_ || param3)
                                                                        {
                                                                           §§push(_loc12_.x);
                                                                           if(!_loc27_)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              if(!(_loc27_ && param2))
                                                                              {
                                                                                 addr507:
                                                                                 §§push(_loc11_.col2.y);
                                                                                 if(_loc26_)
                                                                                 {
                                                                                    addr512:
                                                                                    §§push(§§pop() * _loc12_.y);
                                                                                 }
                                                                                 §§push(§§pop() + §§pop());
                                                                              }
                                                                              §§push(§§pop() + §§pop());
                                                                              if(!_loc27_)
                                                                              {
                                                                                 addr519:
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                              var _loc23_:* = §§pop();
                                                                              if(!(_loc27_ && param1))
                                                                              {
                                                                                 §§push(_loc22_);
                                                                                 if(_loc26_ || param3)
                                                                                 {
                                                                                    §§push(_loc20_);
                                                                                    if(!_loc27_)
                                                                                    {
                                                                                       §§push(§§pop() - §§pop());
                                                                                       if(!(_loc27_ && param3))
                                                                                       {
                                                                                          addr547:
                                                                                          §§push(Number(§§pop()));
                                                                                          if(!(_loc27_ && param1))
                                                                                          {
                                                                                             _loc22_ = §§pop();
                                                                                             if(_loc26_ || param1)
                                                                                             {
                                                                                                addr563:
                                                                                                §§push(_loc23_);
                                                                                                if(_loc26_ || param3)
                                                                                                {
                                                                                                   §§push(_loc21_);
                                                                                                   if(_loc26_ || param2)
                                                                                                   {
                                                                                                      §§push(§§pop() - §§pop());
                                                                                                      if(!(_loc27_ && b2Collision))
                                                                                                      {
                                                                                                         addr587:
                                                                                                         §§push(Number(§§pop()));
                                                                                                         if(!_loc27_)
                                                                                                         {
                                                                                                            addr590:
                                                                                                            _loc23_ = §§pop();
                                                                                                            §§push(_loc22_);
                                                                                                            if(_loc26_ || b2Collision)
                                                                                                            {
                                                                                                               §§push(_loc13_);
                                                                                                               if(!(_loc27_ && param3))
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(_loc26_ || param1)
                                                                                                                  {
                                                                                                                     §§push(_loc23_);
                                                                                                                     if(_loc27_)
                                                                                                                     {
                                                                                                                     }
                                                                                                                     §§goto(addr637);
                                                                                                                  }
                                                                                                                  addr637:
                                                                                                                  §§push(§§pop() * _loc14_);
                                                                                                                  if(_loc26_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     if(!_loc27_)
                                                                                                                     {
                                                                                                                        addr635:
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                     }
                                                                                                                  }
                                                                                                                  var _loc24_:* = §§pop();
                                                                                                                  return §§pop();
                                                                                                                  §§push(§§pop());
                                                                                                               }
                                                                                                               §§goto(addr637);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr635);
                                                                                                   }
                                                                                                   §§goto(addr637);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr590);
                                                                                          }
                                                                                          §§goto(addr587);
                                                                                       }
                                                                                       §§goto(addr590);
                                                                                    }
                                                                                    §§goto(addr637);
                                                                                 }
                                                                                 §§goto(addr547);
                                                                              }
                                                                              §§goto(addr563);
                                                                           }
                                                                           §§goto(addr512);
                                                                        }
                                                                        §§goto(addr507);
                                                                     }
                                                                     §§goto(addr519);
                                                                  }
                                                                  §§goto(addr464);
                                                               }
                                                               §§goto(addr451);
                                                            }
                                                            §§goto(addr473);
                                                         }
                                                         §§goto(addr410);
                                                      }
                                                      §§goto(addr406);
                                                   }
                                                   §§goto(addr410);
                                                }
                                                §§goto(addr413);
                                             }
                                             §§goto(addr365);
                                          }
                                          §§goto(addr360);
                                       }
                                       §§goto(addr372);
                                    }
                                    §§goto(addr192);
                                 }
                                 §§goto(addr196);
                                 §§push(Number(§§pop()));
                              }
                           }
                           §§goto(addr192);
                        }
                        §§push(§§pop() + §§pop());
                        if(_loc27_ && param1)
                        {
                        }
                     }
                     §§goto(addr157);
                  }
                  §§goto(addr104);
               }
               §§goto(addr115);
            }
            §§push(§§pop() + §§pop());
            if(_loc26_)
            {
               §§push(Number(§§pop()));
            }
         }
         §§goto(addr86);
      }
      
      public static function §^!a§(param1:Vector.<int>, param2:b2PolygonShape, param3:b2Transform, param4:b2PolygonShape, param5:b2Transform) : Number
      {
         var _loc26_:Boolean = true;
         var _loc27_:Boolean = false;
         var _loc8_:b2Vec2 = null;
         var _loc9_:b2Mat22 = null;
         var _loc22_:* = 0;
         var _loc23_:* = NaN;
         var _loc24_:* = 0;
         var _loc25_:* = NaN;
         §§push(param2.§']§);
         if(_loc26_ || param2)
         {
            §§push(int(§§pop()));
         }
         var _loc6_:* = §§pop();
         var _loc7_:Vector.<b2Vec2> = param2.§<0§;
         _loc9_ = param5.R;
         _loc8_ = param4.§[E§;
         §§push(param5.position.x);
         if(!_loc27_)
         {
            §§push(_loc9_.col1.x);
            if(!_loc27_)
            {
               §§push(_loc8_.x);
               if(!(_loc27_ && b2Collision))
               {
                  addr89:
                  §§push(§§pop() * §§pop());
                  if(!(_loc27_ && param2))
                  {
                     §§push(_loc9_.col2.x);
                     if(_loc26_)
                     {
                        §§push(§§pop() * _loc8_.y);
                     }
                  }
                  §§push(§§pop() + §§pop());
                  if(!_loc27_)
                  {
                     addr92:
                     §§push(Number(§§pop()));
                  }
                  var _loc10_:* = §§pop();
                  §§push(param5.position.y);
                  if(!_loc27_)
                  {
                     §§push(_loc9_.col1.y);
                     if(!_loc27_)
                     {
                        §§push(_loc8_.x);
                        if(!_loc27_)
                        {
                           addr125:
                           §§push(§§pop() * §§pop());
                           if(_loc26_)
                           {
                              §§push(_loc9_.col2.y);
                              if(!(_loc27_ && param2))
                              {
                                 §§push(§§pop() * _loc8_.y);
                              }
                           }
                           §§push(§§pop() + §§pop());
                           if(!(_loc27_ && param1))
                           {
                              addr133:
                              §§push(Number(§§pop()));
                           }
                           var _loc11_:* = §§pop();
                           _loc9_ = param3.R;
                           _loc8_ = param2.§[E§;
                           if(!_loc27_)
                           {
                              §§push(_loc10_);
                              if(!(_loc27_ && param2))
                              {
                                 §§push(param3.position);
                                 if(_loc26_)
                                 {
                                    §§push(§§pop().x);
                                    if(_loc26_ || param2)
                                    {
                                       §§push(_loc9_.col1);
                                       if(!(_loc27_ && param3))
                                       {
                                          §§push(§§pop().x);
                                          if(!(_loc27_ && param2))
                                          {
                                             §§push(_loc8_.x);
                                             if(_loc26_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(_loc26_)
                                                {
                                                   §§push(_loc9_.col2);
                                                   if(!_loc27_)
                                                   {
                                                      §§push(§§pop().x);
                                                      if(!_loc27_)
                                                      {
                                                         §§push(_loc8_.y);
                                                         if(!_loc27_)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(!_loc27_)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               if(!(_loc27_ && param2))
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  if(!(_loc27_ && param3))
                                                                  {
                                                                     §§push(§§pop() - §§pop());
                                                                     if(!_loc27_)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        if(!_loc27_)
                                                                        {
                                                                           _loc10_ = §§pop();
                                                                           if(!(_loc27_ && param3))
                                                                           {
                                                                              addr233:
                                                                              §§push(_loc11_);
                                                                              if(!_loc27_)
                                                                              {
                                                                                 addr236:
                                                                                 §§push(param3.position.y);
                                                                                 if(!(_loc27_ && b2Collision))
                                                                                 {
                                                                                    addr246:
                                                                                    §§push(_loc9_.col1);
                                                                                    if(!(_loc27_ && param3))
                                                                                    {
                                                                                       §§push(§§pop().y);
                                                                                       if(!(_loc27_ && param2))
                                                                                       {
                                                                                          §§push(_loc8_.x);
                                                                                          if(_loc26_)
                                                                                          {
                                                                                             addr267:
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(_loc26_ || b2Collision)
                                                                                             {
                                                                                             }
                                                                                             addr345:
                                                                                             §§push(§§pop() + §§pop() * §§pop());
                                                                                             if(_loc26_ || param2)
                                                                                             {
                                                                                                addr354:
                                                                                                §§push(Number(§§pop()));
                                                                                             }
                                                                                             var _loc12_:* = §§pop();
                                                                                             §§push(_loc10_);
                                                                                             if(_loc26_ || param3)
                                                                                             {
                                                                                                §§push(param3.R.col2.x);
                                                                                                if(!_loc27_)
                                                                                                {
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(_loc26_ || param1)
                                                                                                   {
                                                                                                      addr378:
                                                                                                      §§push(_loc11_);
                                                                                                      if(!(_loc27_ && b2Collision))
                                                                                                      {
                                                                                                         addr391:
                                                                                                         §§push(§§pop() + §§pop() * param3.R.col2.y);
                                                                                                         if(!(_loc27_ && param2))
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr391);
                                                                                                   }
                                                                                                   var _loc13_:* = §§pop();
                                                                                                   var _loc14_:* = 0;
                                                                                                   §§push(-Number.MAX_VALUE);
                                                                                                   if(!_loc27_)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                   }
                                                                                                   var _loc15_:* = §§pop();
                                                                                                   var _loc16_:int = 0;
                                                                                                   while(_loc16_ < _loc6_)
                                                                                                   {
                                                                                                      §§push((_loc8_ = _loc7_[_loc16_]).x);
                                                                                                      if(_loc26_)
                                                                                                      {
                                                                                                         §§push(_loc12_);
                                                                                                         if(!(_loc27_ && param1))
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            if(_loc26_ || param2)
                                                                                                            {
                                                                                                               §§push(_loc8_.y);
                                                                                                               if(!(_loc27_ && param3))
                                                                                                               {
                                                                                                                  §§push(§§pop() * _loc13_);
                                                                                                                  if(!_loc27_)
                                                                                                                  {
                                                                                                                     addr452:
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     if(!_loc27_)
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                        if(!(_loc27_ && param3))
                                                                                                                        {
                                                                                                                           addr463:
                                                                                                                           §§push(§§pop());
                                                                                                                           if(_loc26_ || param3)
                                                                                                                           {
                                                                                                                              addr471:
                                                                                                                              _loc25_ = §§pop();
                                                                                                                              addr487:
                                                                                                                              if(!_loc27_)
                                                                                                                              {
                                                                                                                                 §§push(_loc15_);
                                                                                                                              }
                                                                                                                              _loc15_ = §§pop();
                                                                                                                              if(!(_loc27_ && b2Collision))
                                                                                                                              {
                                                                                                                                 §§push(_loc16_);
                                                                                                                                 if(_loc26_ || b2Collision)
                                                                                                                                 {
                                                                                                                                    §§push(int(§§pop()));
                                                                                                                                 }
                                                                                                                                 _loc14_ = §§pop();
                                                                                                                                 if(!_loc26_)
                                                                                                                                 {
                                                                                                                                    continue;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              _loc16_++;
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                           if(§§pop() > §§pop())
                                                                                                                           {
                                                                                                                              if(_loc26_ || param3)
                                                                                                                              {
                                                                                                                                 §§push(_loc25_);
                                                                                                                                 if(!_loc27_)
                                                                                                                                 {
                                                                                                                                    addr486:
                                                                                                                                    §§goto(addr487);
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                 }
                                                                                                                                 §§goto(addr487);
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr487);
                                                                                                                     }
                                                                                                                     §§goto(addr486);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr471);
                                                                                                            }
                                                                                                            §§goto(addr463);
                                                                                                         }
                                                                                                         §§goto(addr452);
                                                                                                      }
                                                                                                      §§goto(addr463);
                                                                                                   }
                                                                                                   §§push(§#!6§(param2,param3,_loc14_,param4,param5));
                                                                                                   if(_loc26_)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                   }
                                                                                                   var _loc17_:* = §§pop();
                                                                                                   if(_loc26_)
                                                                                                   {
                                                                                                      §§push(_loc14_);
                                                                                                      if(!_loc27_)
                                                                                                      {
                                                                                                         §§push(§§pop() - 1);
                                                                                                         if(_loc26_ || param3)
                                                                                                         {
                                                                                                            if(§§pop() >= 0)
                                                                                                            {
                                                                                                               addr548:
                                                                                                               §§push(_loc14_);
                                                                                                               if(_loc26_ || param2)
                                                                                                               {
                                                                                                                  §§push(§§pop() - 1);
                                                                                                                  if(!(_loc27_ && param1))
                                                                                                                  {
                                                                                                                     §§push(int(§§pop()));
                                                                                                                     if(!(_loc27_ && param1))
                                                                                                                     {
                                                                                                                        addr590:
                                                                                                                        §§push(int(§§pop()));
                                                                                                                        addr572:
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr582:
                                                                                                                        §§push(int(§§pop() - 1));
                                                                                                                        if(!(_loc27_ && b2Collision))
                                                                                                                        {
                                                                                                                           §§goto(addr590);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     var _loc18_:* = §§pop();
                                                                                                                     §§push(§#!6§(param2,param3,_loc18_,param4,param5));
                                                                                                                     if(!(_loc27_ && param2))
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                     }
                                                                                                                     var _loc19_:* = §§pop();
                                                                                                                     if(_loc26_ || param3)
                                                                                                                     {
                                                                                                                        §§push(_loc14_);
                                                                                                                        if(_loc26_)
                                                                                                                        {
                                                                                                                           §§push(1);
                                                                                                                           if(!(_loc27_ && param3))
                                                                                                                           {
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              if(_loc26_)
                                                                                                                              {
                                                                                                                                 if(§§pop() < _loc6_)
                                                                                                                                 {
                                                                                                                                    addr632:
                                                                                                                                    §§push(_loc14_);
                                                                                                                                    if(!(_loc27_ && param1))
                                                                                                                                    {
                                                                                                                                       addr642:
                                                                                                                                       §§push(int(§§pop() + 1));
                                                                                                                                       if(_loc26_ || b2Collision)
                                                                                                                                       {
                                                                                                                                          addr654:
                                                                                                                                          §§push(int(§§pop()));
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr654);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§push(0);
                                                                                                                                    if(!_loc27_)
                                                                                                                                    {
                                                                                                                                       §§goto(addr654);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 var _loc20_:* = §§pop();
                                                                                                                                 §§push(§#!6§(param2,param3,_loc20_,param4,param5));
                                                                                                                                 if(!(_loc27_ && param1))
                                                                                                                                 {
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                 }
                                                                                                                                 var _loc21_:* = §§pop();
                                                                                                                                 if(_loc26_ || param1)
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
                                                                                                                                                      loop6:
                                                                                                                                                      while(_loc26_)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc21_);
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() > §§pop());
                                                                                                                                                         }
                                                                                                                                                         loop45:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc26_ || param3))
                                                                                                                                                            {
                                                                                                                                                               continue loop6;
                                                                                                                                                            }
                                                                                                                                                            §§push(_loc6_);
                                                                                                                                                            if(!_loc27_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() < §§pop());
                                                                                                                                                               if(!(_loc27_ && param2))
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc27_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!§§pop())
                                                                                                                                                                     {
                                                                                                                                                                        §§push(0);
                                                                                                                                                                        if(_loc26_)
                                                                                                                                                                        {
                                                                                                                                                                           addr951:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(int(§§pop()));
                                                                                                                                                                           }
                                                                                                                                                                           addr951:
                                                                                                                                                                        }
                                                                                                                                                                        loop28:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc26_ || param1)
                                                                                                                                                                           {
                                                                                                                                                                              _loc14_ = §§pop();
                                                                                                                                                                              loop29:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc27_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc27_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc26_ || param1)
                                                                                                                                                                                       {
                                                                                                                                                                                          loop30:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§#!6§(param2,param3,_loc14_,param4,param5));
                                                                                                                                                                                             if(_loc26_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc27_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc27_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                      if(_loc26_ || param2)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr784:
                                                                                                                                                                                                         §§push(§§pop());
                                                                                                                                                                                                         if(!_loc27_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            _loc17_ = §§pop();
                                                                                                                                                                                                            loop31:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc26_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc23_);
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!(_loc27_ && param1))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!_loc27_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc27_ && b2Collision)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop2;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           if(§§pop() <= §§pop())
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              param1[0] = _loc22_;
                                                                                                                                                                                                                              if(_loc27_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc27_ && param1)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop29;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    if(_loc27_ && b2Collision)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       break;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    if(_loc26_ || param3)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!_loc26_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop5;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr761);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 continue loop30;
                                                                                                                                                                                                                                 addr738:
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              if(!_loc27_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc23_);
                                                                                                                                                                                                                                 if(!(_loc26_ || param2))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop31;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 if(_loc26_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    return §§pop();
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(int(§§pop()));
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr1034:
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              else
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr808:
                                                                                                                                                                                                                                 if(!(_loc27_ && param3))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc14_);
                                                                                                                                                                                                                                    if(_loc26_ || param3)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!_loc27_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr826:
                                                                                                                                                                                                                                          §§push(int(§§pop()));
                                                                                                                                                                                                                                          if(_loc27_ && param3)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop28;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          if(!_loc27_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr835:
                                                                                                                                                                                                                                             if(!(_loc27_ && param1))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc26_ || param3)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   _loc22_ = §§pop();
                                                                                                                                                                                                                                                   continue loop29;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr1113:
                                                                                                                                                                                                                                                addr1097:
                                                                                                                                                                                                                                                addr1096:
                                                                                                                                                                                                                                                _loc22_ = §§pop();
                                                                                                                                                                                                                                                if(_loc26_ || b2Collision)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc19_);
                                                                                                                                                                                                                                                   break loop30;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   break loop29;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             loop15:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(int(§§pop()));
                                                                                                                                                                                                                                                loop16:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   _loc22_ = §§pop();
                                                                                                                                                                                                                                                   addr1059:
                                                                                                                                                                                                                                                   loop17:
                                                                                                                                                                                                                                                   while(_loc26_)
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
                                                                                                                                                                                                                                                            addr1054:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr972:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(_loc24_);
                                                                                                                                                                                                                                                                     if(_loc26_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!(_loc27_ && param1))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr987:
                                                                                                                                                                                                                                                                           §§push(-1);
                                                                                                                                                                                                                                                                           for(; §§pop() != §§pop(); if(_loc26_ || param2)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                              continue loop45;
                                                                                                                                                                                                                                                                           })
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(_loc22_);
                                                                                                                                                                                                                                                                              if(_loc26_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(1);
                                                                                                                                                                                                                                                                                 if(!_loc27_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    continue;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                    addr940:
                                                                                                                                                                                                                                                                                    while(_loc26_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(!_loc26_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          continue loop18;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§push(int(§§pop()));
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(_loc26_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§goto(addr951);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr1035:
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(int(§§pop()));
                                                                                                                                                                                                                                                                                                addr1036:
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   _loc14_ = §§pop();
                                                                                                                                                                                                                                                                                                   continue loop30;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             addr1035:
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    addr938:
                                                                                                                                                                                                                                                                                    continue loop19;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr945);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(_loc22_);
                                                                                                                                                                                                                                                                              addr988:
                                                                                                                                                                                                                                                                              while(_loc26_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(§§pop() - 1);
                                                                                                                                                                                                                                                                                 while(_loc26_ || param3)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(0);
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(§§pop() >= §§pop());
                                                                                                                                                                                                                                                                                       addr1000:
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!(_loc26_ || param2))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             continue loop4;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          if(!(_loc26_ || param2))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             break;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          if(!§§pop())
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(_loc6_);
                                                                                                                                                                                                                                                                                             while(_loc26_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(!_loc27_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§goto(addr1034);
                                                                                                                                                                                                                                                                                                   §§push(§§pop() - 1);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             continue loop16;
                                                                                                                                                                                                                                                                                             addr1029:
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          if(_loc27_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             continue loop30;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§push(_loc22_);
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(§§pop() - 1);
                                                                                                                                                                                                                                                                                             addr1019:
                                                                                                                                                                                                                                                                                             addr1066:
                                                                                                                                                                                                                                                                                             while(!(_loc27_ && param3))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(int(§§pop()));
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§goto(addr1035);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(_loc17_);
                                                                                                                                                                                                                                                                                                addr1067:
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(§§pop() <= §§pop())
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      param1[0] = _loc14_;
                                                                                                                                                                                                                                                                                                      §§push(_loc17_);
                                                                                                                                                                                                                                                                                                      break loop31;
                                                                                                                                                                                                                                                                                                      addr1049:
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(1);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1019);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             _loc24_ = §§pop();
                                                                                                                                                                                                                                                                                             break loop17;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       continue loop3;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 break loop31;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              break loop29;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           addr987:
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1018);
                                                                                                                                                                                                                                                                     addr761:
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  loop50:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§goto(addr1096);
                                                                                                                                                                                                                                                                     §§push(int(§§pop()));
                                                                                                                                                                                                                                                                     addr1115:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        continue loop50;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr1092:
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop15;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr945);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1036);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr826);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1049);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1035);
                                                                                                                                                                                                                              §§goto(addr1068);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr808);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        else
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr1110);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1067);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr791:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr1074:
                                                                                                                                                                                                               addr1075:
                                                                                                                                                                                                               _loc23_ = §§pop();
                                                                                                                                                                                                               if(!(_loc27_ && b2Collision))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr1092);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1115);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            return §§pop();
                                                                                                                                                                                                            addr788:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr791);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr788);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   break;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr940);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr784);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1074);
                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1054);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr972);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr987);
                                                                                                                                                                              }
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 _loc24_ = §§pop();
                                                                                                                                                                                 §§goto(addr1115);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr988);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr905);
                                                                                                                                                                  }
                                                                                                                                                                  break;
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1000);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr999);
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!§§pop())
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr1066);
                                                                                                                                                               §§push(_loc21_);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1113);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      continue loop1;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§goto(addr1112);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr987);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr642);
                                                                                                                        }
                                                                                                                        §§goto(addr654);
                                                                                                                     }
                                                                                                                     §§goto(addr632);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr582);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§push(_loc6_);
                                                                                                               if(_loc26_ || param3)
                                                                                                               {
                                                                                                                  §§goto(addr582);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr590);
                                                                                                         }
                                                                                                         §§goto(addr582);
                                                                                                      }
                                                                                                      §§goto(addr572);
                                                                                                   }
                                                                                                   §§goto(addr548);
                                                                                                }
                                                                                                §§goto(addr391);
                                                                                             }
                                                                                             §§goto(addr378);
                                                                                          }
                                                                                          addr283:
                                                                                          §§push(§§pop() + §§pop());
                                                                                          if(_loc26_ || param2)
                                                                                          {
                                                                                             addr291:
                                                                                             §§push(§§pop() + §§pop());
                                                                                             if(_loc26_ || param3)
                                                                                             {
                                                                                                addr299:
                                                                                                §§push(§§pop() - §§pop());
                                                                                                if(_loc26_)
                                                                                                {
                                                                                                   addr302:
                                                                                                   §§push(Number(§§pop()));
                                                                                                   if(_loc26_ || param2)
                                                                                                   {
                                                                                                      addr310:
                                                                                                      _loc11_ = §§pop();
                                                                                                      §§push(_loc10_);
                                                                                                      if(!(_loc27_ && b2Collision))
                                                                                                      {
                                                                                                         addr319:
                                                                                                         §§push(param3.R.col1.x);
                                                                                                         if(_loc26_)
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            if(_loc26_ || b2Collision)
                                                                                                            {
                                                                                                               addr333:
                                                                                                               §§push(_loc11_);
                                                                                                               if(_loc26_ || param2)
                                                                                                               {
                                                                                                                  addr341:
                                                                                                                  §§goto(addr345);
                                                                                                                  §§push(param3.R.col1.y);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr345);
                                                                                                      }
                                                                                                      §§goto(addr354);
                                                                                                   }
                                                                                                   §§goto(addr333);
                                                                                                }
                                                                                                §§goto(addr319);
                                                                                             }
                                                                                             §§goto(addr341);
                                                                                          }
                                                                                          §§goto(addr345);
                                                                                       }
                                                                                       addr277:
                                                                                       §§push(_loc9_.col2.y);
                                                                                       if(!_loc27_)
                                                                                       {
                                                                                          addr282:
                                                                                          §§goto(addr283);
                                                                                          §§push(§§pop() * _loc8_.y);
                                                                                       }
                                                                                       §§goto(addr283);
                                                                                    }
                                                                                    §§goto(addr341);
                                                                                 }
                                                                                 §§goto(addr299);
                                                                              }
                                                                           }
                                                                           §§goto(addr310);
                                                                        }
                                                                        §§goto(addr236);
                                                                     }
                                                                     §§goto(addr319);
                                                                  }
                                                                  §§goto(addr246);
                                                               }
                                                               §§goto(addr291);
                                                            }
                                                            §§goto(addr267);
                                                         }
                                                         §§goto(addr282);
                                                      }
                                                      §§goto(addr283);
                                                   }
                                                   §§goto(addr277);
                                                }
                                                §§goto(addr291);
                                             }
                                             §§goto(addr283);
                                          }
                                          §§goto(addr267);
                                       }
                                       §§goto(addr341);
                                    }
                                    §§goto(addr246);
                                 }
                                 §§goto(addr236);
                              }
                              §§goto(addr302);
                           }
                           §§goto(addr233);
                        }
                        §§push(§§pop() + §§pop());
                     }
                     §§goto(addr125);
                  }
                  §§goto(addr133);
               }
               §§push(§§pop() + §§pop());
            }
            §§goto(addr89);
         }
         §§goto(addr92);
      }
      
      public static function §[!U§(param1:Vector.<§2!P§>, param2:b2PolygonShape, param3:b2Transform, param4:int, param5:b2PolygonShape, param6:b2Transform) : void
      {
         var _loc24_:Boolean = false;
         var _loc25_:Boolean = true;
         var _loc12_:b2Mat22 = null;
         var _loc13_:b2Vec2 = null;
         var _loc20_:§2!P§ = null;
         var _loc23_:* = NaN;
         §§push(param2.§']§);
         if(_loc25_ || param2)
         {
            §§push(int(§§pop()));
         }
         var _loc7_:* = §§pop();
         var _loc8_:Vector.<b2Vec2> = param2.§<0§;
         §§push(param5.§']§);
         if(_loc25_ || param2)
         {
            §§push(int(§§pop()));
         }
         var _loc9_:* = §§pop();
         var _loc10_:Vector.<b2Vec2> = param5.§%§;
         var _loc11_:Vector.<b2Vec2> = param5.§<0§;
         _loc12_ = param3.R;
         _loc13_ = _loc8_[param4];
         §§push(_loc12_.col1.x);
         if(!(_loc24_ && b2Collision))
         {
            §§push(_loc13_.x);
            if(_loc25_ || param2)
            {
               §§push(§§pop() * §§pop());
               if(_loc25_ || param1)
               {
                  §§push(_loc12_.col2.x);
                  if(!_loc24_)
                  {
                     addr103:
                     §§push(§§pop() * _loc13_.y);
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc25_)
                  {
                     addr109:
                     §§push(Number(§§pop()));
                  }
               }
               var _loc14_:* = §§pop();
               §§push(_loc12_.col1.y);
               if(!_loc24_)
               {
                  §§push(_loc13_.x);
                  if(!_loc24_)
                  {
                     §§push(§§pop() * §§pop());
                     if(_loc25_)
                     {
                        addr123:
                        §§push(_loc12_.col2.y);
                        if(_loc25_ || param3)
                        {
                           addr133:
                           §§push(§§pop() * _loc13_.y);
                        }
                        §§push(§§pop() + §§pop());
                        if(_loc25_ || param1)
                        {
                           addr144:
                           §§push(Number(§§pop()));
                        }
                        var _loc15_:* = §§pop();
                        §§push((_loc12_ = param6.R).col1.x);
                        if(!(_loc24_ && param3))
                        {
                           §§push(_loc14_);
                           if(!(_loc24_ && param2))
                           {
                              §§push(§§pop() * §§pop());
                              if(!(_loc24_ && param2))
                              {
                                 §§push(_loc12_.col1.y);
                                 if(_loc25_ || param2)
                                 {
                                    addr186:
                                    §§push(§§pop() * _loc15_);
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(!(_loc24_ && param2))
                                 {
                                    addr196:
                                    §§push(Number(§§pop()));
                                 }
                              }
                              var _loc16_:* = §§pop();
                              if(_loc25_)
                              {
                                 §§push(_loc12_.col2.x);
                                 if(_loc25_)
                                 {
                                    §§push(_loc14_);
                                    if(!_loc24_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(!_loc24_)
                                       {
                                          addr211:
                                          §§push(_loc12_.col2.y);
                                          if(!(_loc24_ && param2))
                                          {
                                             addr221:
                                             §§push(§§pop() * _loc15_);
                                          }
                                          §§push(§§pop() + §§pop());
                                          if(_loc25_ || param1)
                                          {
                                             §§push(Number(§§pop()));
                                             if(!(_loc24_ && param3))
                                             {
                                                _loc15_ = §§pop();
                                                if(!(_loc24_ && param3))
                                                {
                                                   addr247:
                                                   §§push(_loc16_);
                                                   if(!_loc24_)
                                                   {
                                                      addr251:
                                                      _loc14_ = Number(§§pop());
                                                   }
                                                   §§goto(addr251);
                                                }
                                                var _loc17_:* = 0;
                                                var _loc18_:* = Number(Number.MAX_VALUE);
                                                var _loc19_:int = 0;
                                                while(true)
                                                {
                                                   §§push(_loc19_);
                                                   if(!(_loc24_ && param3))
                                                   {
                                                      §§push(_loc9_);
                                                      if(_loc25_)
                                                      {
                                                         if(§§pop() >= §§pop())
                                                         {
                                                            §§push(_loc17_);
                                                            if(_loc25_ || param1)
                                                            {
                                                               break;
                                                            }
                                                            addr381:
                                                            §§push(§§pop());
                                                         }
                                                         else
                                                         {
                                                            _loc13_ = _loc11_[_loc19_];
                                                            if(!_loc24_)
                                                            {
                                                               §§push(_loc14_);
                                                               if(_loc25_ || param3)
                                                               {
                                                                  §§push(_loc13_.x);
                                                                  if(_loc25_ || param3)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(!(_loc24_ && b2Collision))
                                                                     {
                                                                        §§push(_loc15_);
                                                                        if(_loc25_)
                                                                        {
                                                                           §§push(§§pop() * _loc13_.y);
                                                                           if(!_loc25_)
                                                                           {
                                                                           }
                                                                           addr346:
                                                                           if(§§pop() < §§pop())
                                                                           {
                                                                              if(!(_loc24_ && b2Collision))
                                                                              {
                                                                                 addr358:
                                                                                 §§push(_loc23_);
                                                                                 if(!_loc24_)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                                 _loc18_ = §§pop();
                                                                              }
                                                                              loop1:
                                                                              while(true)
                                                                              {
                                                                                 addr276:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc19_);
                                                                                    if(!(_loc24_ && param1))
                                                                                    {
                                                                                       §§push(int(§§pop()));
                                                                                    }
                                                                                    _loc17_ = §§pop();
                                                                                    addr287:
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
                                                                                 §§goto(addr276);
                                                                              }
                                                                              §§goto(addr287);
                                                                           }
                                                                           continue;
                                                                        }
                                                                        §§push(§§pop() + §§pop());
                                                                        if(!_loc25_)
                                                                        {
                                                                        }
                                                                        addr334:
                                                                        §§push(§§pop());
                                                                        if(_loc25_ || param3)
                                                                        {
                                                                           _loc23_ = §§pop();
                                                                           if(_loc25_)
                                                                           {
                                                                              addr345:
                                                                              §§goto(addr346);
                                                                              §§push(_loc18_);
                                                                           }
                                                                           §§goto(addr358);
                                                                        }
                                                                        §§goto(addr346);
                                                                     }
                                                                     §§push(Number(§§pop()));
                                                                     if(_loc25_ || b2Collision)
                                                                     {
                                                                        §§goto(addr334);
                                                                     }
                                                                     §§goto(addr345);
                                                                  }
                                                                  §§goto(addr346);
                                                               }
                                                               §§goto(addr334);
                                                            }
                                                            §§goto(addr289);
                                                         }
                                                      }
                                                      var _loc21_:* = §§pop();
                                                      if(!(_loc24_ && param3))
                                                      {
                                                         §§push(1);
                                                         if(_loc25_ || b2Collision)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(!_loc24_)
                                                            {
                                                               if(§§pop() < _loc9_)
                                                               {
                                                                  §§push(_loc21_);
                                                                  if(!(_loc24_ && param1))
                                                                  {
                                                                     addr414:
                                                                     §§push(int(§§pop() + 1));
                                                                     if(!_loc24_)
                                                                     {
                                                                        addr436:
                                                                        §§push(int(§§pop()));
                                                                        addr417:
                                                                     }
                                                                  }
                                                                  §§goto(addr417);
                                                               }
                                                               else
                                                               {
                                                                  §§push(0);
                                                                  if(_loc25_ || param2)
                                                                  {
                                                                     §§goto(addr436);
                                                                  }
                                                               }
                                                               var _loc22_:* = §§pop();
                                                               _loc20_ = param1[0];
                                                               _loc13_ = _loc10_[_loc21_];
                                                               _loc12_ = param6.R;
                                                               if(!(_loc24_ && param2))
                                                               {
                                                                  §§push(_loc20_.v);
                                                                  loop6:
                                                                  while(true)
                                                                  {
                                                                     §§push(param6.position);
                                                                     addr635:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().x);
                                                                        addr636:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc12_.col1);
                                                                           addr638:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().x);
                                                                              addr639:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc13_.x);
                                                                                 if(!(_loc24_ && b2Collision))
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc12_.col2);
                                                                                       addr651:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop().x);
                                                                                          if(!(_loc24_ && b2Collision))
                                                                                          {
                                                                                             §§push(_loc13_.y);
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                             }
                                                                                             addr661:
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr649:
                                                                                 }
                                                                                 addr662:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() + §§pop());
                                                                                    addr663:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() + §§pop());
                                                                                       addr664:
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop().x = §§pop();
                                                                                          continue loop6;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  addr633:
                                                               }
                                                               loop17:
                                                               while(true)
                                                               {
                                                                  §§push(_loc20_.v);
                                                                  if(!(_loc24_ && param1))
                                                                  {
                                                                     §§push(param6.position);
                                                                     if(_loc25_)
                                                                     {
                                                                        §§push(§§pop().y);
                                                                        if(!(_loc24_ && param3))
                                                                        {
                                                                           if(!_loc24_)
                                                                           {
                                                                              §§push(_loc12_.col1);
                                                                              if(!(_loc24_ && param3))
                                                                              {
                                                                                 §§push(§§pop().y);
                                                                                 if(!(_loc24_ && param1))
                                                                                 {
                                                                                    if(_loc25_ || param3)
                                                                                    {
                                                                                       if(_loc25_)
                                                                                       {
                                                                                          §§push(_loc13_.x);
                                                                                          if(_loc25_ || param2)
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(!(_loc24_ && param1))
                                                                                             {
                                                                                                if(_loc25_)
                                                                                                {
                                                                                                   §§push(_loc12_.col2);
                                                                                                   if(_loc25_)
                                                                                                   {
                                                                                                      §§push(§§pop().y);
                                                                                                      if(_loc25_)
                                                                                                      {
                                                                                                         if(!(_loc24_ && param1))
                                                                                                         {
                                                                                                            §§push(_loc13_.y);
                                                                                                            if(!_loc24_)
                                                                                                            {
                                                                                                               addr625:
                                                                                                               §§push(§§pop() + (§§pop() + §§pop() * §§pop()));
                                                                                                               if(_loc25_)
                                                                                                               {
                                                                                                                  §§pop().y = §§pop();
                                                                                                                  loop18:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc20_.id);
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop().§1W§);
                                                                                                                        addr534:
                                                                                                                        addr470:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(param4);
                                                                                                                           addr535:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§pop().§-7§ = §§pop();
                                                                                                                              addr536:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 addr516:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc20_.id);
                                                                                                                                    addr519:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop().§1W§);
                                                                                                                                       addr520:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc21_);
                                                                                                                                          addr521:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§pop().§ !=§ = §§pop();
                                                                                                                                             continue loop18;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        if(_loc24_ && param1)
                                                                                                                        {
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                        §§push(§§pop().§1W§);
                                                                                                                        if(!_loc24_)
                                                                                                                        {
                                                                                                                           if(!(_loc24_ && param2))
                                                                                                                           {
                                                                                                                              §§push(0);
                                                                                                                              if(!_loc24_)
                                                                                                                              {
                                                                                                                                 if(!(_loc24_ && param3))
                                                                                                                                 {
                                                                                                                                    §§pop().§3!R§ = §§pop();
                                                                                                                                    if(!(_loc25_ || param3))
                                                                                                                                    {
                                                                                                                                       continue loop18;
                                                                                                                                    }
                                                                                                                                    if(_loc25_)
                                                                                                                                    {
                                                                                                                                       if(_loc24_ && b2Collision)
                                                                                                                                       {
                                                                                                                                          continue loop17;
                                                                                                                                       }
                                                                                                                                       if(true)
                                                                                                                                       {
                                                                                                                                          _loc20_ = param1[1];
                                                                                                                                          _loc13_ = _loc10_[_loc22_];
                                                                                                                                          _loc12_ = param6.R;
                                                                                                                                          if(!_loc24_)
                                                                                                                                          {
                                                                                                                                             addr879:
                                                                                                                                             addr861:
                                                                                                                                             addr859:
                                                                                                                                             addr880:
                                                                                                                                             addr858:
                                                                                                                                             addr856:
                                                                                                                                             §§push(_loc20_.v);
                                                                                                                                             §§push(param6.position.x);
                                                                                                                                             §§push(_loc12_.col1.x);
                                                                                                                                             if(!(_loc24_ && param3))
                                                                                                                                             {
                                                                                                                                                addr871:
                                                                                                                                                §§push(§§pop() * _loc13_.x + _loc12_.col2.x * _loc13_.y);
                                                                                                                                             }
                                                                                                                                             §§pop().x = §§pop() + §§pop();
                                                                                                                                             addr881:
                                                                                                                                             §§push(_loc20_.v);
                                                                                                                                             if(_loc25_ || param3)
                                                                                                                                             {
                                                                                                                                                §§push(param6.position);
                                                                                                                                                if(_loc25_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop().y);
                                                                                                                                                   if(!(_loc24_ && b2Collision))
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc24_ && b2Collision))
                                                                                                                                                      {
                                                                                                                                                         if(_loc25_)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc12_.col1);
                                                                                                                                                            if(!_loc24_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop().y);
                                                                                                                                                               if(_loc25_ || param2)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc25_ || param3)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc13_.x);
                                                                                                                                                                     if(!_loc24_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc24_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc24_ && param2))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                              if(!(_loc24_ && param1))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc12_.col2);
                                                                                                                                                                                 if(!(_loc24_ && b2Collision))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop().y);
                                                                                                                                                                                    if(!(_loc24_ && param3))
                                                                                                                                                                                    {
                                                                                                                                                                                       addr826:
                                                                                                                                                                                       §§push(_loc13_.y);
                                                                                                                                                                                       if(!(_loc24_ && param1))
                                                                                                                                                                                       {
                                                                                                                                                                                          addr836:
                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                          if(!_loc24_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr839:
                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                             if(!_loc24_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr842:
                                                                                                                                                                                                §§pop().y = §§pop() + §§pop();
                                                                                                                                                                                                addr734:
                                                                                                                                                                                                _loc20_.id.§1W§.§-7§ = param4;
                                                                                                                                                                                                addr735:
                                                                                                                                                                                                addr733:
                                                                                                                                                                                                addr732:
                                                                                                                                                                                                addr853:
                                                                                                                                                                                                if(_loc25_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr718:
                                                                                                                                                                                                   §§push(_loc20_.id.§1W§);
                                                                                                                                                                                                   §§push(_loc22_);
                                                                                                                                                                                                   if(!_loc24_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§pop().§ !=§ = §§pop();
                                                                                                                                                                                                      addr721:
                                                                                                                                                                                                      if(!(_loc24_ && param1))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc20_.id);
                                                                                                                                                                                                         if(_loc25_ || b2Collision)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc25_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop().§1W§);
                                                                                                                                                                                                               if(!_loc24_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc24_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(1);
                                                                                                                                                                                                                     if(!_loc24_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§pop().§3!R§ = §§pop();
                                                                                                                                                                                                                        if(!_loc24_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!_loc25_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr735);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           return;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr721);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr718);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr733);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr718);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr732);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr718);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr853);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr734);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr881);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr879);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr871);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr836);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr871);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr839);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr871);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr826);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr871);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr839);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr861);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr859);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr880);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr842);
                                                                                                                                                }
                                                                                                                                                §§goto(addr858);
                                                                                                                                             }
                                                                                                                                             §§goto(addr856);
                                                                                                                                          }
                                                                                                                                          §§goto(addr842);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§goto(addr536);
                                                                                                                                    }
                                                                                                                                    §§goto(addr516);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§goto(addr535);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr521);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr534);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr520);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr661);
                                                                                                            }
                                                                                                            §§goto(addr664);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr625);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr651);
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr639);
                                                                                                }
                                                                                                §§goto(addr662);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr625);
                                                                                       }
                                                                                       §§goto(addr649);
                                                                                    }
                                                                                    §§goto(addr663);
                                                                                 }
                                                                                 §§goto(addr625);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr638);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr636);
                                                                           }
                                                                           §§goto(addr638);
                                                                        }
                                                                        §§goto(addr625);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr635);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr633);
                                                                  }
                                                                  §§goto(addr635);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr414);
                                                      }
                                                      §§goto(addr436);
                                                   }
                                                   break;
                                                }
                                                §§goto(addr381);
                                                §§push(int(§§pop()));
                                             }
                                          }
                                       }
                                       §§goto(addr251);
                                    }
                                    §§goto(addr221);
                                 }
                                 §§goto(addr211);
                              }
                              §§goto(addr247);
                           }
                           §§goto(addr186);
                        }
                        §§goto(addr196);
                     }
                     §§goto(addr144);
                  }
                  §§goto(addr133);
               }
               §§goto(addr123);
            }
            §§goto(addr103);
         }
         §§goto(addr109);
      }
      
      private static function §@i§() : Vector.<§2!P§>
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Vector.<§2!P§> = new Vector.<§2!P§>(2);
         if(_loc2_ || b2Collision)
         {
            _loc1_[0] = new §2!P§();
         }
         do
         {
            _loc1_[1] = new §2!P§();
         }
         while(!_loc2_);
         
         return _loc1_;
      }
      
      public static function §4!0§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2PolygonShape, param5:b2Transform) : void
      {
         var _loc46_:Boolean = true;
         var _loc47_:Boolean = false;
         var _loc6_:§2!P§ = null;
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
         if(!_loc47_)
         {
            param1.§]B§ = 0;
         }
         var _loc7_:Number = param2.§6q§ + param4.§6q§;
         var _loc8_:* = 0;
         if(_loc46_ || param2)
         {
            §=y§[0] = _loc8_;
         }
         §§push(§^!a§(§=y§,param2,param3,param4,param5));
         if(_loc46_)
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         if(!(_loc47_ && param1))
         {
            §§push(int(§=y§[0]));
            if(!(_loc47_ && param2))
            {
               _loc8_ = §§pop();
               if(!(_loc47_ && param2))
               {
                  if(_loc9_ > _loc7_)
                  {
                     if(!(_loc47_ && param1))
                     {
                        §§goto(addr125);
                     }
                  }
                  §§push(0);
               }
               §§goto(addr125);
            }
            var _loc10_:* = §§pop();
            if(_loc46_ || param1)
            {
               §'G§[0] = _loc10_;
            }
            §§push(§^!a§(§'G§,param4,param5,param2,param3));
            if(_loc46_)
            {
               §§push(Number(§§pop()));
            }
            var _loc11_:* = §§pop();
            if(!(_loc47_ && b2Collision))
            {
               _loc10_ = int(§'G§[0]);
               if(!_loc47_)
               {
                  §§push(_loc11_);
                  if(_loc46_ || param1)
                  {
                     if(§§pop() > _loc7_)
                     {
                        if(!_loc47_)
                        {
                           §§goto(addr176);
                        }
                        else
                        {
                           addr177:
                           §§push(0.98);
                           if(_loc46_ || b2Collision)
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                     }
                     §§goto(addr177);
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
                     if(!_loc47_)
                     {
                        §§push(_loc9_);
                        if(!_loc47_)
                        {
                           §§push(§§pop() * §§pop());
                           if(!(_loc47_ && param2))
                           {
                              addr215:
                              §§push(§§pop() + _loc19_);
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
                                 while(true)
                                 {
                                    §§push(int(§§pop()));
                                    addr259:
                                    while(true)
                                    {
                                       _loc16_ = §§pop();
                                    }
                                 }
                                 addr258:
                              }
                              loop45:
                              while(true)
                              {
                                 loop46:
                                 while(true)
                                 {
                                    param1.§"!1§ = b2Manifold.§6$§;
                                    while(true)
                                    {
                                       §§push(1);
                                       if(!_loc47_)
                                       {
                                          if(_loc46_)
                                          {
                                             _loc17_ = §§pop();
                                             if(_loc46_ || param3)
                                             {
                                                if(!_loc47_)
                                                {
                                                   if(true)
                                                   {
                                                      break loop46;
                                                   }
                                                   continue loop46;
                                                }
                                                continue loop45;
                                             }
                                             continue;
                                          }
                                          §§goto(addr258);
                                       }
                                       break;
                                    }
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
                              if(_loc46_ || param1)
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
                                          addr309:
                                          while(true)
                                          {
                                             param1.§"!1§ = b2Manifold.§@!`§;
                                             addr314:
                                             while(true)
                                             {
                                                if(!_loc47_)
                                                {
                                                   §§push(0);
                                                   if(_loc46_ || param2)
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
                              §§goto(addr307);
                           }
                           §§goto(addr321);
                        }
                     }
                     §§goto(addr215);
                  }
                  §§goto(addr217);
               }
               §§goto(addr177);
            }
            addr176:
            return;
         }
         addr125:
      }
      
      public static function §!!y§(param1:b2Manifold, param2:b2CircleShape, param3:b2Transform, param4:b2CircleShape, param5:b2Transform) : void
      {
         var _loc16_:Boolean = true;
         var _loc17_:Boolean = false;
         var _loc6_:b2Mat22 = null;
         var _loc7_:b2Vec2 = null;
         if(!(_loc17_ && param3))
         {
            param1.§]B§ = 0;
         }
         _loc6_ = param3.R;
         _loc7_ = param2.§#!j§;
         §§push(param3.position.x);
         if(_loc16_)
         {
            §§push(_loc6_.col1.x);
            if(!_loc17_)
            {
               §§push(_loc7_.x);
               if(_loc16_)
               {
                  addr71:
                  §§push(§§pop() * §§pop());
                  if(!(_loc17_ && param2))
                  {
                     §§push(_loc6_.col2.x);
                     if(!_loc17_)
                     {
                        §§push(§§pop() * _loc7_.y);
                     }
                  }
                  §§push(§§pop() + §§pop());
                  if(!(_loc17_ && param3))
                  {
                     addr80:
                     var _loc8_:Number = §§pop();
                     §§push(param3.position.y);
                     if(_loc16_)
                     {
                        §§push(_loc6_.col1.y);
                        if(_loc16_)
                        {
                           §§push(_loc7_.x);
                           if(!_loc17_)
                           {
                              §§push(§§pop() * §§pop());
                              if(!_loc17_)
                              {
                                 addr98:
                                 §§push(_loc6_.col2.y);
                                 if(_loc16_)
                                 {
                                    addr106:
                                    §§push(§§pop() + §§pop() * _loc7_.y);
                                 }
                                 §§goto(addr106);
                              }
                              §§push(§§pop() + §§pop());
                              if(_loc16_)
                              {
                                 addr111:
                                 var _loc9_:Number = §§pop();
                                 _loc6_ = param5.R;
                                 _loc7_ = param4.§#!j§;
                                 §§push(param5.position.x);
                                 if(!(_loc17_ && param3))
                                 {
                                    §§push(_loc6_.col1.x);
                                    if(_loc16_)
                                    {
                                       §§push(_loc7_.x);
                                       if(_loc16_ || param3)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(!(_loc17_ && param3))
                                          {
                                             addr166:
                                             §§push(_loc6_.col2.x);
                                             if(_loc16_ || b2Collision)
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
                                             if(_loc16_ || param3)
                                             {
                                                §§push(_loc6_.col1.y);
                                                if(!_loc17_)
                                                {
                                                   §§push(_loc7_.x);
                                                   if(!_loc17_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc16_ || param3)
                                                      {
                                                         addr208:
                                                         §§push(_loc6_.col2.y);
                                                         if(_loc16_ || b2Collision)
                                                         {
                                                            addr221:
                                                            §§push(§§pop() + §§pop() * _loc7_.y);
                                                         }
                                                         §§goto(addr221);
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                      if(!(_loc17_ && param1))
                                                      {
                                                         addr230:
                                                         §§push(Number(§§pop()));
                                                      }
                                                      var _loc11_:* = §§pop();
                                                      §§push(_loc10_);
                                                      if(!(_loc17_ && param1))
                                                      {
                                                         §§push(§§pop() - _loc8_);
                                                         if(_loc16_)
                                                         {
                                                            addr244:
                                                            §§push(Number(§§pop()));
                                                         }
                                                         var _loc12_:* = §§pop();
                                                         §§push(_loc11_);
                                                         if(!_loc17_)
                                                         {
                                                            §§push(§§pop() - _loc9_);
                                                            if(_loc16_ || param3)
                                                            {
                                                               addr258:
                                                               §§push(Number(§§pop()));
                                                            }
                                                            var _loc13_:* = §§pop();
                                                            §§push(_loc12_);
                                                            if(!(_loc17_ && param2))
                                                            {
                                                               §§push(_loc12_);
                                                               if(!(_loc17_ && b2Collision))
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(!(_loc17_ && param1))
                                                                  {
                                                                     §§push(_loc13_);
                                                                     if(!_loc17_)
                                                                     {
                                                                        addr287:
                                                                        §§push(§§pop() * _loc13_);
                                                                     }
                                                                     §§push(§§pop() + §§pop());
                                                                     if(!_loc17_)
                                                                     {
                                                                        addr293:
                                                                        var _loc14_:Number = §§pop();
                                                                        var _loc15_:Number = param2.§6q§ + param4.§6q§;
                                                                        if(_loc16_)
                                                                        {
                                                                           §§push(_loc14_);
                                                                           §§push(_loc15_);
                                                                           if(!(_loc17_ && b2Collision))
                                                                           {
                                                                              §§push(§§pop() * _loc15_);
                                                                           }
                                                                           if(§§pop() <= §§pop())
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 param1.§"!1§ = b2Manifold.§,!y§;
                                                                                 while(_loc16_ || b2Collision)
                                                                                 {
                                                                                    param1.m_localPoint.SetV(param2.§#!j§);
                                                                                    loop2:
                                                                                    while(!(_loc17_ && b2Collision))
                                                                                    {
                                                                                       param1.§0!?§.§%&§();
                                                                                       while(_loc16_)
                                                                                       {
                                                                                          param1.§]B§ = 1;
                                                                                          loop4:
                                                                                          while(!(_loc17_ && b2Collision))
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                param1.§<8§[0].m_localPoint.SetV(param4.§#!j§);
                                                                                                do
                                                                                                {
                                                                                                   param1.§<8§[0].m_id.key = 0;
                                                                                                }
                                                                                                while(_loc17_);
                                                                                                
                                                                                                if(!(_loc17_ && param1))
                                                                                                {
                                                                                                   if(!_loc17_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   continue loop2;
                                                                                                }
                                                                                                continue loop4;
                                                                                             }
                                                                                             return;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           return;
                                                                        }
                                                                        §§goto(addr349);
                                                                     }
                                                                  }
                                                                  §§goto(addr293);
                                                               }
                                                               §§goto(addr287);
                                                            }
                                                            §§goto(addr293);
                                                         }
                                                         §§goto(addr258);
                                                      }
                                                      §§goto(addr244);
                                                   }
                                                   §§goto(addr221);
                                                }
                                                §§goto(addr208);
                                             }
                                             §§goto(addr230);
                                          }
                                          §§goto(addr166);
                                       }
                                       §§goto(addr162);
                                    }
                                    §§goto(addr166);
                                 }
                                 §§goto(addr169);
                              }
                              §§goto(addr111);
                           }
                           §§goto(addr106);
                        }
                        §§goto(addr98);
                     }
                     §§goto(addr111);
                  }
                  §§goto(addr80);
               }
               §§push(§§pop() + §§pop());
            }
            §§goto(addr71);
         }
         §§goto(addr80);
      }
      
      public static function §-i§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2CircleShape, param5:b2Transform) : void
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
         if(_loc34_)
         {
            param1.§]B§ = 0;
         }
         _loc12_ = param5.R;
         _loc11_ = param4.§#!j§;
         §§push(param5.position.x);
         if(!(_loc35_ && param2))
         {
            §§push(_loc12_.col1.x);
            if(_loc34_)
            {
               §§push(_loc11_.x);
               if(!(_loc35_ && param2))
               {
                  addr95:
                  §§push(§§pop() * §§pop());
                  if(_loc34_)
                  {
                     §§push(_loc12_.col2.x);
                     if(!(_loc35_ && param1))
                     {
                        §§push(§§pop() * _loc11_.y);
                     }
                  }
                  §§push(§§pop() + §§pop());
                  if(!_loc35_)
                  {
                     addr99:
                     var _loc13_:Number = §§pop();
                     §§push(param5.position.y);
                     if(!_loc35_)
                     {
                        §§push(_loc12_.col1.y);
                        if(!(_loc35_ && param2))
                        {
                           §§push(_loc11_.x);
                           if(!(_loc35_ && param3))
                           {
                              §§push(§§pop() * §§pop());
                              if(!_loc35_)
                              {
                                 addr141:
                                 §§push(_loc12_.col2.y);
                                 if(_loc34_ || param2)
                                 {
                                    addr137:
                                    §§push(§§pop() * _loc11_.y);
                                 }
                                 §§push(§§pop() + (§§pop() + §§pop()));
                                 if(_loc34_)
                                 {
                                    addr145:
                                    var _loc14_:Number = §§pop();
                                    if(!(_loc35_ && param3))
                                    {
                                       §§push(_loc13_);
                                       if(_loc34_ || param2)
                                       {
                                          §§push(param3.position);
                                          if(_loc34_ || b2Collision)
                                          {
                                             §§push(§§pop().x);
                                             if(!_loc35_)
                                             {
                                                §§push(§§pop() - §§pop());
                                                if(_loc34_ || param1)
                                                {
                                                   §§push(Number(§§pop()));
                                                   if(!_loc35_)
                                                   {
                                                      addr184:
                                                      _loc7_ = §§pop();
                                                      if(_loc34_)
                                                      {
                                                         §§push(_loc14_);
                                                         if(!_loc35_)
                                                         {
                                                            addr193:
                                                            addr192:
                                                            §§push(§§pop() - param3.position.y);
                                                            if(!(_loc35_ && param1))
                                                            {
                                                               addr201:
                                                               §§push(Number(§§pop()));
                                                            }
                                                            _loc8_ = §§pop();
                                                            addr203:
                                                            _loc12_ = param3.R;
                                                            §§push(_loc7_);
                                                            if(_loc34_ || b2Collision)
                                                            {
                                                               §§push(_loc12_.col1.x);
                                                               if(!(_loc35_ && param1))
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(!_loc35_)
                                                                  {
                                                                     §§push(_loc8_);
                                                                     if(_loc34_)
                                                                     {
                                                                        addr231:
                                                                        §§push(§§pop() * _loc12_.col1.y);
                                                                     }
                                                                     §§push(§§pop() + §§pop());
                                                                     if(!(_loc35_ && b2Collision))
                                                                     {
                                                                        addr243:
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                     var _loc15_:* = §§pop();
                                                                     §§push(_loc7_);
                                                                     if(_loc34_ || param2)
                                                                     {
                                                                        §§push(_loc12_.col2.x);
                                                                        if(_loc34_ || b2Collision)
                                                                        {
                                                                           addr286:
                                                                           addr287:
                                                                           §§push(§§pop() * §§pop());
                                                                           if(!(_loc35_ && b2Collision))
                                                                           {
                                                                              §§push(_loc8_);
                                                                              if(!(_loc35_ && param2))
                                                                              {
                                                                                 §§push(§§pop() * _loc12_.col2.y);
                                                                              }
                                                                           }
                                                                           var _loc16_:Number = §§pop();
                                                                           var _loc18_:* = 0;
                                                                           §§push(-Number.MAX_VALUE);
                                                                           if(!_loc35_)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                           var _loc19_:* = §§pop();
                                                                           var _loc20_:Number = param2.§6q§ + param4.§6q§;
                                                                           §§push(param2.§']§);
                                                                           if(_loc34_)
                                                                           {
                                                                              §§push(int(§§pop()));
                                                                           }
                                                                           var _loc21_:* = §§pop();
                                                                           var _loc22_:Vector.<b2Vec2> = param2.§%§;
                                                                           var _loc23_:Vector.<b2Vec2> = param2.§<0§;
                                                                           var _loc24_:int = 0;
                                                                           loop0:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc24_);
                                                                              if(_loc34_ || param1)
                                                                              {
                                                                                 §§push(_loc21_);
                                                                                 if(!(_loc35_ && param3))
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
                                                                                    if(_loc34_ || param2)
                                                                                    {
                                                                                       §§push(_loc15_);
                                                                                       if(_loc34_ || param1)
                                                                                       {
                                                                                          §§push(_loc11_.x);
                                                                                          if(_loc34_ || b2Collision)
                                                                                          {
                                                                                             §§push(§§pop() - §§pop());
                                                                                             if(_loc34_)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                if(!(_loc35_ && b2Collision))
                                                                                                {
                                                                                                   addr362:
                                                                                                   _loc7_ = §§pop();
                                                                                                   addr390:
                                                                                                   if(_loc34_ || param3)
                                                                                                   {
                                                                                                      §§push(_loc16_);
                                                                                                      if(_loc34_ || param1)
                                                                                                      {
                                                                                                         addr380:
                                                                                                         §§push(§§pop() - _loc11_.y);
                                                                                                         if(!(_loc35_ && param1))
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   §§push((_loc11_ = _loc23_[_loc24_]).x);
                                                                                                   if(_loc34_)
                                                                                                   {
                                                                                                      §§push(_loc7_);
                                                                                                      if(!_loc35_)
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         if(!_loc35_)
                                                                                                         {
                                                                                                            §§push(_loc11_.y);
                                                                                                            if(_loc34_)
                                                                                                            {
                                                                                                               §§push(§§pop() * _loc8_);
                                                                                                               if(!_loc35_)
                                                                                                               {
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  if(!(_loc35_ && param2))
                                                                                                                  {
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     if(!(_loc35_ && param2))
                                                                                                                     {
                                                                                                                        §§push(§§pop());
                                                                                                                        if(_loc34_ || param2)
                                                                                                                        {
                                                                                                                           addr437:
                                                                                                                           _loc31_ = §§pop();
                                                                                                                           if(_loc34_)
                                                                                                                           {
                                                                                                                              addr440:
                                                                                                                              §§push(_loc20_);
                                                                                                                              if(_loc34_ || param2)
                                                                                                                              {
                                                                                                                                 addr448:
                                                                                                                                 if(§§pop() > §§pop())
                                                                                                                                 {
                                                                                                                                    if(!(_loc35_ && b2Collision))
                                                                                                                                    {
                                                                                                                                       return;
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
                                                                                                                                          if(_loc34_)
                                                                                                                                          {
                                                                                                                                             §§push(int(§§pop()));
                                                                                                                                          }
                                                                                                                                          _loc18_ = §§pop();
                                                                                                                                          addr477:
                                                                                                                                          loop4:
                                                                                                                                          while(!(_loc35_ && b2Collision))
                                                                                                                                          {
                                                                                                                                             addr484:
                                                                                                                                             if(_loc34_ || param2)
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   _loc24_++;
                                                                                                                                                   if(_loc34_)
                                                                                                                                                   {
                                                                                                                                                      continue loop8;
                                                                                                                                                   }
                                                                                                                                                   continue loop4;
                                                                                                                                                }
                                                                                                                                                continue loop0;
                                                                                                                                                addr465:
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                addr497:
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc31_);
                                                                                                                                                if(!(_loc35_ && param1))
                                                                                                                                                {
                                                                                                                                                   addr505:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                   }
                                                                                                                                                   addr505:
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   _loc19_ = §§pop();
                                                                                                                                                   break loop4;
                                                                                                                                                }
                                                                                                                                                §§goto(addr484);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             continue loop3;
                                                                                                                                             §§goto(addr477);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§push(_loc31_);
                                                                                                                                    if(!_loc35_)
                                                                                                                                    {
                                                                                                                                       addr495:
                                                                                                                                       §§push(_loc19_);
                                                                                                                                    }
                                                                                                                                    §§goto(addr505);
                                                                                                                                 }
                                                                                                                                 §§goto(addr505);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr495);
                                                                                                                        }
                                                                                                                        if(§§pop() > §§pop())
                                                                                                                        {
                                                                                                                           §§goto(addr497);
                                                                                                                        }
                                                                                                                        §§goto(addr465);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr495);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr437);
                                                                                                         }
                                                                                                         §§goto(addr505);
                                                                                                      }
                                                                                                      §§goto(addr448);
                                                                                                   }
                                                                                                   §§goto(addr440);
                                                                                                }
                                                                                             }
                                                                                             _loc8_ = §§pop();
                                                                                             §§goto(addr390);
                                                                                          }
                                                                                          §§goto(addr380);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr362);
                                                                                 }
                                                                                 addr535:
                                                                                 var _loc25_:* = §§pop();
                                                                                 if(_loc34_ || param2)
                                                                                 {
                                                                                    §§push(1);
                                                                                    if(_loc34_)
                                                                                    {
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(!_loc35_)
                                                                                       {
                                                                                          if(§§pop() < _loc21_)
                                                                                          {
                                                                                             §§push(_loc25_);
                                                                                             if(_loc34_ || param2)
                                                                                             {
                                                                                                addr562:
                                                                                                §§push(int(§§pop() + 1));
                                                                                                if(!(_loc35_ && param3))
                                                                                                {
                                                                                                   addr574:
                                                                                                   §§push(int(§§pop()));
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§push(0);
                                                                                             if(_loc34_)
                                                                                             {
                                                                                                §§goto(addr574);
                                                                                             }
                                                                                          }
                                                                                          var _loc26_:* = §§pop();
                                                                                          var _loc27_:b2Vec2 = _loc22_[_loc25_];
                                                                                          var _loc28_:b2Vec2 = _loc22_[_loc26_];
                                                                                          if(!_loc35_)
                                                                                          {
                                                                                             §§push(_loc19_);
                                                                                             if(_loc34_)
                                                                                             {
                                                                                                if(§§pop() < Number.MIN_VALUE)
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      param1.§]B§ = 1;
                                                                                                      while(true)
                                                                                                      {
                                                                                                         param1.§"!1§ = b2Manifold.§@!`§;
                                                                                                         while(true)
                                                                                                         {
                                                                                                            param1.§0!?§.SetV(_loc23_[_loc18_]);
                                                                                                            loop39:
                                                                                                            while(_loc34_ || param2)
                                                                                                            {
                                                                                                               §§push(param1.m_localPoint);
                                                                                                               loop40:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(0.5);
                                                                                                                  addr696:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc27_.x);
                                                                                                                     addr698:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc28_.x);
                                                                                                                        addr700:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           addr701:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              addr702:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§pop().x = §§pop();
                                                                                                                                 addr703:
                                                                                                                                 while(!_loc35_)
                                                                                                                                 {
                                                                                                                                    continue loop40;
                                                                                                                                 }
                                                                                                                                 continue loop39;
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      if(_loc35_ && param1)
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                      §§goto(addr691);
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§push(_loc15_);
                                                                                                   if(!(_loc35_ && param3))
                                                                                                   {
                                                                                                      §§push(_loc27_.x);
                                                                                                      if(!(_loc35_ && param1))
                                                                                                      {
                                                                                                         §§push(§§pop() - §§pop());
                                                                                                         if(!_loc35_)
                                                                                                         {
                                                                                                            §§push(_loc28_.x);
                                                                                                            if(!(_loc35_ && param1))
                                                                                                            {
                                                                                                               §§push(_loc27_.x);
                                                                                                               if(_loc34_)
                                                                                                               {
                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                  if(!_loc35_)
                                                                                                                  {
                                                                                                                     addr773:
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     if(_loc34_ || param3)
                                                                                                                     {
                                                                                                                        addr781:
                                                                                                                        §§push(_loc16_);
                                                                                                                        if(!(_loc35_ && param3))
                                                                                                                        {
                                                                                                                           §§push(_loc27_.y);
                                                                                                                           if(_loc34_)
                                                                                                                           {
                                                                                                                              addr809:
                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                              if(!(_loc35_ && b2Collision))
                                                                                                                              {
                                                                                                                                 §§push(_loc28_.y);
                                                                                                                                 if(!_loc35_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() - _loc27_.y);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              if(_loc34_ || param1)
                                                                                                                              {
                                                                                                                                 addr818:
                                                                                                                                 var _loc29_:Number = §§pop();
                                                                                                                                 §§push(_loc15_);
                                                                                                                                 if(!(_loc35_ && param1))
                                                                                                                                 {
                                                                                                                                    §§push(_loc28_.x);
                                                                                                                                    if(!(_loc35_ && param3))
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                       if(!(_loc35_ && b2Collision))
                                                                                                                                       {
                                                                                                                                          §§push(_loc27_.x);
                                                                                                                                          if(!_loc35_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc28_.x);
                                                                                                                                             if(!(_loc35_ && param1))
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() - §§pop());
                                                                                                                                                if(_loc34_ || param2)
                                                                                                                                                {
                                                                                                                                                   addr875:
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                   if(_loc34_ || param1)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc16_);
                                                                                                                                                      if(_loc34_ || param1)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc28_.y);
                                                                                                                                                         if(_loc34_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() - §§pop());
                                                                                                                                                            if(_loc34_ || param1)
                                                                                                                                                            {
                                                                                                                                                               addr903:
                                                                                                                                                               §§push(_loc27_.y);
                                                                                                                                                               if(!_loc35_)
                                                                                                                                                               {
                                                                                                                                                                  addr910:
                                                                                                                                                                  §§push(§§pop() * (§§pop() - _loc28_.y));
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr910);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr910);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   addr920:
                                                                                                                                                   var _loc30_:Number = §§pop();
                                                                                                                                                   addr919:
                                                                                                                                                   if(!(_loc35_ && param3))
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc29_);
                                                                                                                                                      loop9:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(0);
                                                                                                                                                         if(_loc34_ || param3)
                                                                                                                                                         {
                                                                                                                                                            if(§§pop() > §§pop())
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc30_);
                                                                                                                                                               if(!_loc35_)
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop() > 0)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(0.5);
                                                                                                                                                                     loop10:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc27_.x);
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc28_.x);
                                                                                                                                                                           loop12:
                                                                                                                                                                           while(!(_loc35_ && param3))
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc34_ || param3)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc34_ || param2)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                    loop13:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                       loop14:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                          while(!(_loc35_ && param1))
                                                                                                                                                                                          {
                                                                                                                                                                                             _loc32_ = §§pop();
                                                                                                                                                                                             loop16:
                                                                                                                                                                                             while(_loc34_ || param1)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc34_ || b2Collision)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(0.5);
                                                                                                                                                                                                   loop17:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!_loc35_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!(_loc35_ && param2))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc27_.y);
                                                                                                                                                                                                            if(_loc34_ || b2Collision)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop13;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr1290:
                                                                                                                                                                                                            loop19:
                                                                                                                                                                                                            while(!(_loc35_ && param3))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc34_ || param2)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                  loop20:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                                                                     loop21:
                                                                                                                                                                                                                     while(_loc34_ || b2Collision)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        _loc33_ = §§pop();
                                                                                                                                                                                                                        loop22:
                                                                                                                                                                                                                        while(_loc34_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc15_);
                                                                                                                                                                                                                              if(!_loc34_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop20;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              if(!(_loc35_ && param3))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc32_);
                                                                                                                                                                                                                                 if(_loc34_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!(_loc35_ && b2Collision))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!_loc35_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                          if(!(_loc35_ && param3))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc35_ && param2)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop21;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§push(§§pop() * _loc23_[_loc25_].x);
                                                                                                                                                                                                                                             if(!(_loc35_ && b2Collision))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop17;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr1220:
                                                                                                                                                                                                                                             addr1220:
                                                                                                                                                                                                                                             addr1220:
                                                                                                                                                                                                                                             if(!_loc35_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr1223:
                                                                                                                                                                                                                                                §§push(_loc20_);
                                                                                                                                                                                                                                                if(!_loc34_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop19;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                if(_loc34_ || param3)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(§§pop() <= §§pop())
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      loop26:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         param1.§]B§ = 1;
                                                                                                                                                                                                                                                         loop27:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            param1.§"!1§ = b2Manifold.§@!`§;
                                                                                                                                                                                                                                                            loop28:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc34_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(param1.§0!?§);
                                                                                                                                                                                                                                                                  loop29:
                                                                                                                                                                                                                                                                  while(_loc34_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§pop().x = _loc23_[_loc25_].x;
                                                                                                                                                                                                                                                                     loop30:
                                                                                                                                                                                                                                                                     while(!_loc35_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(_loc34_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(param1.§0!?§);
                                                                                                                                                                                                                                                                           loop31:
                                                                                                                                                                                                                                                                           for(; !_loc35_; §§push(param1.§0!?§),if(!(_loc34_ || b2Collision))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue;
                                                                                                                                                                                                                                                                           },if(_loc34_ || param2)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§pop().Normalize();
                                                                                                                                                                                                                                                                              loop33:
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(!_loc34_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    continue loop22;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§push(param1.m_localPoint);
                                                                                                                                                                                                                                                                                 if(!_loc35_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§pop().Set(_loc32_,_loc33_);
                                                                                                                                                                                                                                                                                    while(_loc34_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       param1.§<8§[0].m_localPoint.SetV(param4.§#!j§);
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(_loc34_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(!_loc34_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                break;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             continue;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          continue loop33;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       continue loop27;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    addr1519:
                                                                                                                                                                                                                                                                                    if(_loc34_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(!(_loc35_ && param3))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr1493:
                                                                                                                                                                                                                                                                                          §§push(param1.§0!?§);
                                                                                                                                                                                                                                                                                          if(_loc34_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(_loc15_);
                                                                                                                                                                                                                                                                                             if(_loc34_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(!_loc35_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr1502:
                                                                                                                                                                                                                                                                                                   §§push(_loc28_.x);
                                                                                                                                                                                                                                                                                                   if(_loc34_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      addr1505:
                                                                                                                                                                                                                                                                                                      §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                      if(_loc34_ || param3)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§pop().x = §§pop();
                                                                                                                                                                                                                                                                                                         break loop16;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      addr1660:
                                                                                                                                                                                                                                                                                                      if(_loc35_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§goto(addr1671);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      addr1665:
                                                                                                                                                                                                                                                                                                      §§pop().y = §§pop() - _loc27_.y;
                                                                                                                                                                                                                                                                                                      addr1654:
                                                                                                                                                                                                                                                                                                      param1.§0!?§.Normalize();
                                                                                                                                                                                                                                                                                                      addr1648:
                                                                                                                                                                                                                                                                                                      param1.m_localPoint.SetV(_loc27_);
                                                                                                                                                                                                                                                                                                      param1.§<8§[0].m_localPoint.SetV(param4.§#!j§);
                                                                                                                                                                                                                                                                                                      param1.§<8§[0].m_id.key = 0;
                                                                                                                                                                                                                                                                                                      addr929:
                                                                                                                                                                                                                                                                                                      return;
                                                                                                                                                                                                                                                                                                      addr1664:
                                                                                                                                                                                                                                                                                                      addr1655:
                                                                                                                                                                                                                                                                                                      addr1634:
                                                                                                                                                                                                                                                                                                      addr1666:
                                                                                                                                                                                                                                                                                                      addr1644:
                                                                                                                                                                                                                                                                                                      addr1650:
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1673);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr1505);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1670);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1693);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    param1.§"!1§ = b2Manifold.§@!`§;
                                                                                                                                                                                                                                                                                    §§goto(addr1519);
                                                                                                                                                                                                                                                                                    addr1533:
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 if(_loc34_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§pop().SetV(_loc28_);
                                                                                                                                                                                                                                                                                    param1.§<8§[0].m_localPoint.SetV(param4.§#!j§);
                                                                                                                                                                                                                                                                                    §§goto(addr1406);
                                                                                                                                                                                                                                                                                    addr1421:
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1648);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           },addr1425:,if(!_loc35_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(_loc34_ || param1)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc34_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§pop().Normalize();
                                                                                                                                                                                                                                                                                    break loop22;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1654);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1493);
                                                                                                                                                                                                                                                                           },§§push(_loc16_),if(_loc34_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(_loc34_ || param2)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(!(_loc35_ && param1))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(_loc28_.y);
                                                                                                                                                                                                                                                                                    if(!(_loc35_ && param1))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(_loc34_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr1479:
                                                                                                                                                                                                                                                                                          §§pop().y = §§pop() - §§pop();
                                                                                                                                                                                                                                                                                          addr1480:
                                                                                                                                                                                                                                                                                          if(_loc34_ || b2Collision)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(_loc34_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§goto(addr1425);
                                                                                                                                                                                                                                                                                                §§push(param1.§0!?§);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr1689);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          param1.§]B§ = 1;
                                                                                                                                                                                                                                                                                          §§goto(addr1533);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1664);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1502);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1665);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1505);
                                                                                                                                                                                                                                                                           },§§goto(addr1479))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§pop().y = _loc23_[_loc25_].y;
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(!(_loc34_ || param3))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(_loc34_ || b2Collision)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       return;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    addr1704:
                                                                                                                                                                                                                                                                                    §§push(_loc15_);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr1233:
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 continue loop31;
                                                                                                                                                                                                                                                                                 addr950:
                                                                                                                                                                                                                                                                                 if(_loc35_ && b2Collision)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    continue;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 if(!_loc34_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    continue loop30;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 if(!_loc34_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    continue loop28;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 if(!(_loc35_ && param2))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(!(_loc35_ && param1))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§goto(addr929);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1753);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 addr1406:
                                                                                                                                                                                                                                                                                 if(_loc34_ || param1)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    param1.§<8§[0].m_id.key = 0;
                                                                                                                                                                                                                                                                                    break loop30;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 addr1675:
                                                                                                                                                                                                                                                                                 if(!(_loc35_ && param2))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(param1.§0!?§);
                                                                                                                                                                                                                                                                                    break loop29;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 loop23:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr1670:
                                                                                                                                                                                                                                                                                    §§push(param1.§0!?§);
                                                                                                                                                                                                                                                                                    §§push(_loc15_);
                                                                                                                                                                                                                                                                                    addr1671:
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr1673:
                                                                                                                                                                                                                                                                                       §§pop().x = §§pop() - _loc27_.x;
                                                                                                                                                                                                                                                                                       continue loop23;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 addr1688:
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§push(_loc15_);
                                                                                                                                                                                                                                                                              if(_loc34_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr1713:
                                                                                                                                                                                                                                                                                 §§push(§§pop() - _loc27_.x);
                                                                                                                                                                                                                                                                                 if(_loc34_ || param3)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    break loop9;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 addr1746:
                                                                                                                                                                                                                                                                                 §§push(§§pop() + §§pop() * (_loc16_ - _loc27_.y));
                                                                                                                                                                                                                                                                                 §§push(_loc20_ * _loc20_);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              if(§§pop() > §§pop())
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr1753:
                                                                                                                                                                                                                                                                                 return;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              addr1689:
                                                                                                                                                                                                                                                                              param1.§]B§ = 1;
                                                                                                                                                                                                                                                                              param1.§"!1§ = b2Manifold.§@!`§;
                                                                                                                                                                                                                                                                              §§goto(addr1688);
                                                                                                                                                                                                                                                                              addr1693:
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           continue loop29;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1480);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     if(_loc34_ || param3)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(_loc35_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr1543:
                                                                                                                                                                                                                                                                           §§push(_loc15_);
                                                                                                                                                                                                                                                                           if(!(_loc35_ && param1))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr1553:
                                                                                                                                                                                                                                                                              addr1552:
                                                                                                                                                                                                                                                                              §§push(§§pop() - _loc28_.x);
                                                                                                                                                                                                                                                                              if(_loc34_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr1556:
                                                                                                                                                                                                                                                                                 §§push(_loc15_);
                                                                                                                                                                                                                                                                                 §§push(_loc28_.x);
                                                                                                                                                                                                                                                                                 if(_loc34_ || param1)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr1566:
                                                                                                                                                                                                                                                                                    §§push(§§pop() * (§§pop() - §§pop()));
                                                                                                                                                                                                                                                                                    break loop17;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 if(_loc34_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr1573:
                                                                                                                                                                                                                                                                                    §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                    if(_loc34_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(_loc16_);
                                                                                                                                                                                                                                                                                       if(_loc34_ || param1)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(_loc28_.y);
                                                                                                                                                                                                                                                                                          if(_loc34_ || param1)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                             break loop12;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1746);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       addr1613:
                                                                                                                                                                                                                                                                                       addr1614:
                                                                                                                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                       if(_loc34_ || b2Collision)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(§§pop() <= §§pop())
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§goto(addr1479);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          addr1622:
                                                                                                                                                                                                                                                                                          if(_loc34_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             return;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1655);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       addr1733:
                                                                                                                                                                                                                                                                                       §§push(_loc27_.y);
                                                                                                                                                                                                                                                                                       if(!(_loc35_ && param3))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§goto(addr1746);
                                                                                                                                                                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1746);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1752);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1746);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1733);
                                                                                                                                                                                                                                                                              §§push(_loc16_);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1752);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        if(_loc35_ && b2Collision)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§goto(addr1634);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr929);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1622);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1660);
                                                                                                                                                                                                                                                                  §§push(_loc16_);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(_loc35_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     continue loop16;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  if(_loc34_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     continue loop26;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1421);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1233);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1746);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1553);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr1159:
                                                                                                                                                                                                                                             if(!(_loc35_ && param1))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop9;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr1604:
                                                                                                                                                                                                                                             addr1605:
                                                                                                                                                                                                                                             §§push(_loc20_);
                                                                                                                                                                                                                                             if(!(_loc35_ && param2))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§goto(addr1613);
                                                                                                                                                                                                                                                §§push(_loc20_);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1746);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1556);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1605);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr1154:
                                                                                                                                                                                                                                    if(!_loc35_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                       if(_loc34_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§goto(addr1159);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§goto(addr1220);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1573);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1543);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        if(_loc34_ || b2Collision)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc34_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr1417);
                                                                                                                                                                                                                              §§push(param1.m_localPoint);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1666);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1644);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     continue loop14;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1552);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1556);
                                                                                                                                                                                                            §§push(_loc28_.y);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         break;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop10;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1290);
                                                                                                                                                                                                   §§push(_loc16_);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1650);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1425);
                                                                                                                                                                                             §§push(param1.§0!?§);
                                                                                                                                                                                          }
                                                                                                                                                                                          addr1707:
                                                                                                                                                                                          §§goto(addr1752);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1713);
                                                                                                                                                                           }
                                                                                                                                                                           if(!(_loc35_ && param2))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                              if(!_loc35_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr1604);
                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1604);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1713);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1543);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1704);
                                                                                                                                                         }
                                                                                                                                                         break;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1553);
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1316);
                                                                                                                                                }
                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                if(!(_loc35_ && b2Collision))
                                                                                                                                                {
                                                                                                                                                   §§goto(addr919);
                                                                                                                                                }
                                                                                                                                                §§goto(addr920);
                                                                                                                                             }
                                                                                                                                             §§goto(addr910);
                                                                                                                                          }
                                                                                                                                          §§goto(addr903);
                                                                                                                                       }
                                                                                                                                       §§goto(addr920);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr875);
                                                                                                                              }
                                                                                                                              §§goto(addr818);
                                                                                                                           }
                                                                                                                           §§goto(addr809);
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                        }
                                                                                                                        §§goto(addr809);
                                                                                                                     }
                                                                                                                     §§goto(addr818);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr809);
                                                                                                            }
                                                                                                            §§goto(addr773);
                                                                                                         }
                                                                                                         §§goto(addr818);
                                                                                                      }
                                                                                                      §§goto(addr809);
                                                                                                   }
                                                                                                   §§goto(addr781);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr818);
                                                                                          }
                                                                                          §§goto(addr624);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr562);
                                                                              }
                                                                              break;
                                                                           }
                                                                           §§goto(addr535);
                                                                           §§push(§§pop());
                                                                        }
                                                                        §§push(§§pop() + §§pop());
                                                                        if(_loc34_)
                                                                        {
                                                                           §§goto(addr286);
                                                                        }
                                                                        §§goto(addr287);
                                                                     }
                                                                     §§goto(addr286);
                                                                  }
                                                                  §§goto(addr243);
                                                               }
                                                               §§goto(addr231);
                                                            }
                                                            §§goto(addr243);
                                                         }
                                                      }
                                                      §§goto(addr203);
                                                   }
                                                   §§goto(addr201);
                                                }
                                                §§goto(addr184);
                                             }
                                             §§goto(addr193);
                                          }
                                          §§goto(addr192);
                                       }
                                       §§goto(addr184);
                                    }
                                    §§goto(addr193);
                                 }
                                 §§goto(addr145);
                              }
                              §§goto(addr141);
                           }
                           §§goto(addr137);
                        }
                        §§goto(addr141);
                     }
                     §§goto(addr145);
                  }
                  §§goto(addr99);
               }
               §§push(§§pop() + §§pop());
            }
            §§goto(addr95);
         }
         §§goto(addr99);
      }
      
      public static function §'V§(param1:b2AABB, param2:b2AABB) : Boolean
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc3_:b2Vec2 = param2.§]S§;
         var _loc4_:b2Vec2 = param1.§-!o§;
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
            if(!(_loc9_ && param2))
            {
               §§push(§§pop() - _loc4_.y);
               if(!(_loc9_ && param1))
               {
                  addr55:
                  §§push(Number(§§pop()));
               }
               var _loc6_:* = §§pop();
               _loc3_ = param1.§]S§;
               _loc4_ = param2.§-!o§;
               §§push(_loc3_.x);
               if(!(_loc9_ && b2Collision))
               {
                  §§push(§§pop() - _loc4_.x);
                  if(_loc10_)
                  {
                     addr79:
                     §§push(Number(§§pop()));
                  }
                  var _loc7_:* = §§pop();
                  §§push(_loc3_.y);
                  if(!(_loc9_ && _loc3_))
                  {
                     §§push(§§pop() - _loc4_.y);
                     if(_loc10_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  var _loc8_:* = §§pop();
                  if(_loc10_ || b2Collision)
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
                                    addr266:
                                    while(true)
                                    {
                                       §§pop();
                                       addr267:
                                       while(true)
                                       {
                                          §§push(_loc6_);
                                          addr245:
                                          while(true)
                                          {
                                             §§push(0);
                                             addr246:
                                             while(!(_loc9_ && param1))
                                             {
                                                §§push(§§pop() > §§pop());
                                             }
                                             continue loop1;
                                          }
                                       }
                                    }
                                    addr266:
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
                                          while(_loc10_)
                                          {
                                             §§push(0);
                                             loop7:
                                             while(true)
                                             {
                                                §§push(§§pop() > §§pop());
                                                if(!(_loc9_ && param1))
                                                {
                                                   if(!(_loc10_ || _loc3_))
                                                   {
                                                      return §§pop();
                                                   }
                                                   addr257:
                                                   if(!(_loc10_ || b2Collision))
                                                   {
                                                      break;
                                                   }
                                                   continue loop2;
                                                }
                                                addr222:
                                                addr222:
                                                while(true)
                                                {
                                                   §§pop();
                                                   addr223:
                                                   while(true)
                                                   {
                                                      if(!_loc10_)
                                                      {
                                                         continue loop5;
                                                      }
                                                      if(_loc10_ || b2Collision)
                                                      {
                                                         §§push(_loc8_);
                                                         if(!_loc9_)
                                                         {
                                                            if(!_loc9_)
                                                            {
                                                               continue loop7;
                                                            }
                                                            continue loop0;
                                                         }
                                                         continue loop6;
                                                      }
                                                      §§goto(addr267);
                                                   }
                                                }
                                             }
                                             continue loop4;
                                          }
                                          §§goto(addr245);
                                       }
                                    }
                                    §§goto(addr257);
                                 }
                              }
                           }
                           §§goto(addr266);
                        }
                     }
                  }
                  §§goto(addr176);
               }
               §§goto(addr79);
            }
            §§goto(addr55);
         }
         §§goto(addr34);
      }
   }
}
