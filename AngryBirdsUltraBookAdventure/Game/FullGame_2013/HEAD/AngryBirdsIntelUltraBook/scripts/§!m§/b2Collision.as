package §!m§
{
   import §+!g§.*;
   import §0!3§.*;
   import §>!8§.*;
   
   use namespace b2internal;
   
   public class b2Collision
   {
      
      public static const b2_nullFeature:uint = 255;
      
      private static var §"!H§:Vector.<§&!W§>;
      
      private static var s_clipPoints1:Vector.<§&!W§>;
      
      private static var s_clipPoints2:Vector.<§&!W§>;
      
      private static var §]!f§:Vector.<int>;
      
      private static var §#![§:Vector.<int>;
      
      private static var §9!I§:b2Vec2;
      
      private static var §!&§:b2Vec2;
      
      private static var §&a§:b2Vec2;
      
      private static var §0!-§:b2Vec2;
      
      private static var §[!9§:b2Vec2;
      
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
               §"!H§ = §#!d§();
               loop1:
               while(true)
               {
                  s_clipPoints1 = §#!d§();
                  while(true)
                  {
                     s_clipPoints2 = §#!d§();
                     while(true)
                     {
                        §]!f§ = new Vector.<int>(1);
                        continue loop0;
                        addr39:
                        if(!(_loc2_ && b2Collision))
                        {
                           if(!_loc2_)
                           {
                              return;
                              addr48:
                           }
                           continue loop1;
                        }
                     }
                     loop7:
                     for(; !(_loc2_ && b2Collision); if(_loc2_ && b2Collision)
                     {
                        continue;
                     },§§goto(addr39))
                     {
                        §&a§ = new b2Vec2();
                        loop8:
                        while(true)
                        {
                           §0!-§ = new b2Vec2();
                           while(true)
                           {
                              §[!9§ = new b2Vec2();
                              loop10:
                              for(; !(_loc2_ && _loc2_); while(!(_loc2_ && _loc1_))
                              {
                                 s_v11 = new b2Vec2();
                                 §§goto(addr69);
                              })
                              {
                                 addr112:
                                 if(!(_loc2_ && _loc1_))
                                 {
                                    while(true)
                                    {
                                       s_tangent2 = new b2Vec2();
                                       continue loop10;
                                    }
                                    §§goto(addr48);
                                    addr119:
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       §9!I§ = new b2Vec2();
                                       while(_loc1_)
                                       {
                                          §!&§ = new b2Vec2();
                                          continue loop7;
                                          loop13:
                                          while(!(_loc2_ && b2Collision))
                                          {
                                             s_v12 = new b2Vec2();
                                             while(true)
                                             {
                                                if(!_loc2_)
                                                {
                                                   continue loop8;
                                                }
                                                continue loop10;
                                                addr63:
                                                b2CollidePolyTempVec = new b2Vec2();
                                                if(!_loc2_)
                                                {
                                                   if(_loc1_)
                                                   {
                                                      continue loop7;
                                                   }
                                                   continue loop13;
                                                }
                                             }
                                             continue loop8;
                                          }
                                       }
                                       continue loop0;
                                       §§goto(addr112);
                                    }
                                    addr163:
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr119);
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
      
      public static function §'!B§(param1:Vector.<§&!W§>, param2:Vector.<§&!W§>, param3:b2Vec2, param4:Number) : int
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc5_:§&!W§ = null;
         var _loc6_:* = 0;
         var _loc7_:b2Vec2 = null;
         var _loc9_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:b2Vec2 = null;
         var _loc13_:§&!W§ = null;
         if(_loc14_)
         {
            §§push(0);
            if(!(_loc15_ && b2Collision))
            {
               §§push(int(§§pop()));
            }
            _loc6_ = §§pop();
         }
         _loc5_ = param2[0];
         _loc7_ = _loc5_.v;
         _loc5_ = param2[1];
         var _loc8_:b2Vec2 = _loc5_.v;
         if(_loc14_ || b2Collision)
         {
            §§push(param3.x);
            if(_loc14_)
            {
               §§push(_loc7_.x);
               if(_loc14_)
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc15_ && b2Collision))
                  {
                     §§push(param3.y);
                     if(!(_loc15_ && param2))
                     {
                        addr96:
                        §§push(_loc7_.y);
                        if(!_loc15_)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc14_ || b2Collision)
                           {
                              §§push(§§pop() + §§pop());
                              if(!_loc15_)
                              {
                                 §§push(param4);
                                 if(!(_loc15_ && b2Collision))
                                 {
                                    addr119:
                                    §§push(§§pop() - §§pop());
                                    if(!(_loc15_ && param1))
                                    {
                                       addr127:
                                       §§push(Number(§§pop()));
                                       if(!(_loc15_ && param3))
                                       {
                                          _loc9_ = §§pop();
                                          addr136:
                                          §§push(param3.x);
                                          if(_loc14_ || param3)
                                          {
                                             addr145:
                                             §§push(_loc8_.x);
                                             if(!_loc15_)
                                             {
                                                addr149:
                                                §§push(§§pop() * §§pop());
                                                if(!(_loc15_ && param2))
                                                {
                                                   §§push(param3.y);
                                                   if(_loc14_ || param2)
                                                   {
                                                      addr168:
                                                      §§push(§§pop() * _loc8_.y);
                                                      if(_loc15_ && param2)
                                                      {
                                                      }
                                                      addr185:
                                                      §§push(§§pop() - §§pop());
                                                      if(_loc14_)
                                                      {
                                                         addr188:
                                                         §§push(Number(§§pop()));
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
                                                                  while(true)
                                                                  {
                                                                     param1[_loc6_++].Set(param2[0]);
                                                                     addr322:
                                                                     while(true)
                                                                     {
                                                                     }
                                                                  }
                                                                  addr310:
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
                                                                           while(!(_loc15_ && param1))
                                                                           {
                                                                              param1[_loc6_++].Set(param2[1]);
                                                                              loop9:
                                                                              while(true)
                                                                              {
                                                                                 addr193:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc9_);
                                                                                    if(!_loc14_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    §§push(_loc10_);
                                                                                    if(_loc15_ && param3)
                                                                                    {
                                                                                       if(§§pop() < §§pop())
                                                                                       {
                                                                                          if(!_loc15_)
                                                                                          {
                                                                                             if(!_loc15_)
                                                                                             {
                                                                                                if(!_loc15_)
                                                                                                {
                                                                                                   §§push(_loc9_);
                                                                                                   if(!(_loc14_ || b2Collision))
                                                                                                   {
                                                                                                      addr257:
                                                                                                      break;
                                                                                                   }
                                                                                                   §§push(_loc9_);
                                                                                                   if(!_loc15_)
                                                                                                   {
                                                                                                      if(!_loc14_)
                                                                                                      {
                                                                                                         continue loop6;
                                                                                                      }
                                                                                                      §§push(§§pop() - _loc10_);
                                                                                                   }
                                                                                                   §§push(§§pop() / §§pop());
                                                                                                   if(_loc15_ && param3)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   if(_loc14_ || param3)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      break;
                                                                                                   }
                                                                                                   continue loop5;
                                                                                                }
                                                                                                continue loop7;
                                                                                             }
                                                                                             continue loop9;
                                                                                          }
                                                                                          addr274:
                                                                                          if(_loc14_ || param2)
                                                                                          {
                                                                                             if(false)
                                                                                             {
                                                                                                continue loop4;
                                                                                             }
                                                                                             _loc5_ = param1[_loc6_];
                                                                                             _loc12_ = _loc5_.v;
                                                                                             if(_loc14_ || param2)
                                                                                             {
                                                                                                §§push(_loc12_);
                                                                                                §§push(_loc7_.x);
                                                                                                if(_loc14_ || b2Collision)
                                                                                                {
                                                                                                   §§push(_loc11_);
                                                                                                   if(_loc14_ || param2)
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
                                                                                                if(!_loc15_)
                                                                                                {
                                                                                                   addr374:
                                                                                                   §§push(_loc12_);
                                                                                                   §§push(_loc7_.y);
                                                                                                   if(!(_loc15_ && param3))
                                                                                                   {
                                                                                                      §§push(_loc11_);
                                                                                                      if(_loc14_ || param3)
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
                                                                                                if(_loc14_ || param2)
                                                                                                {
                                                                                                   if(_loc9_ > 0)
                                                                                                   {
                                                                                                      addr422:
                                                                                                      _loc13_ = param2[0];
                                                                                                      if(!_loc15_)
                                                                                                      {
                                                                                                         _loc5_.id = _loc13_.id;
                                                                                                         if(_loc15_ && param2)
                                                                                                         {
                                                                                                         }
                                                                                                         break loop5;
                                                                                                      }
                                                                                                      break loop5;
                                                                                                   }
                                                                                                   _loc13_ = param2[1];
                                                                                                   if(_loc14_ || param2)
                                                                                                   {
                                                                                                      _loc5_.id = _loc13_.id;
                                                                                                   }
                                                                                                   §§push(_loc6_);
                                                                                                   if(!_loc15_)
                                                                                                   {
                                                                                                      §§push(§§pop() + 1);
                                                                                                      if(!_loc15_)
                                                                                                      {
                                                                                                         §§push(int(§§pop()));
                                                                                                      }
                                                                                                   }
                                                                                                   _loc6_ = §§pop();
                                                                                                   break loop5;
                                                                                                }
                                                                                                §§goto(addr422);
                                                                                             }
                                                                                             §§goto(addr374);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr310);
                                                                                          }
                                                                                       }
                                                                                       break loop5;
                                                                                    }
                                                                                    addr235:
                                                                                    if(!(_loc15_ && b2Collision))
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(!_loc14_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       continue loop0;
                                                                                    }
                                                                                    continue loop1;
                                                                                 }
                                                                                 _loc11_ = §§pop();
                                                                                 §§goto(addr274);
                                                                              }
                                                                           }
                                                                           §§goto(addr322);
                                                                        }
                                                                        §§goto(addr193);
                                                                     }
                                                                  }
                                                                  return _loc6_;
                                                               }
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr306);
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                   if(!(_loc15_ && param1))
                                                   {
                                                      addr184:
                                                      §§push(param4);
                                                   }
                                                   §§goto(addr188);
                                                }
                                                §§goto(addr184);
                                             }
                                             §§goto(addr185);
                                          }
                                          §§goto(addr184);
                                       }
                                       §§goto(addr145);
                                    }
                                    §§goto(addr188);
                                 }
                              }
                              §§goto(addr145);
                           }
                           §§goto(addr149);
                        }
                        §§goto(addr168);
                     }
                     §§goto(addr119);
                  }
                  §§goto(addr145);
               }
               §§goto(addr96);
            }
            §§goto(addr127);
         }
         §§goto(addr136);
      }
      
      public static function §'!L§(param1:b2PolygonShape, param2:b2Transform, param3:int, param4:b2PolygonShape, param5:b2Transform) : Number
      {
         var _loc26_:Boolean = true;
         var _loc27_:Boolean = false;
         var _loc11_:b2Mat22 = null;
         var _loc12_:b2Vec2 = null;
         var _loc25_:* = NaN;
         §§push(param1.§"#§);
         if(_loc26_ || param1)
         {
            §§push(int(§§pop()));
         }
         var _loc6_:* = §§pop();
         var _loc7_:Vector.<b2Vec2> = param1.§`!a§;
         var _loc8_:Vector.<b2Vec2> = param1.§6>§;
         §§push(param4.§"#§);
         if(_loc26_ || param1)
         {
            §§push(int(§§pop()));
         }
         var _loc9_:* = §§pop();
         var _loc10_:Vector.<b2Vec2> = param4.§`!a§;
         _loc11_ = param2.R;
         _loc12_ = _loc8_[param3];
         §§push(_loc11_.col1.x);
         if(_loc26_ || param1)
         {
            §§push(_loc12_.x);
            if(_loc26_)
            {
               §§push(§§pop() * §§pop());
               if(!_loc27_)
               {
                  addr84:
                  §§push(_loc11_.col2.x);
                  if(!(_loc27_ && param1))
                  {
                     addr97:
                     §§push(§§pop() + §§pop() * _loc12_.y);
                     if(_loc26_)
                     {
                        addr100:
                        §§push(Number(§§pop()));
                     }
                     var _loc13_:* = §§pop();
                     §§push(_loc11_.col1.y);
                     if(_loc26_)
                     {
                        §§push(_loc12_.x);
                        if(_loc26_ || param2)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc26_)
                           {
                              §§push(_loc11_.col2.y);
                              if(!_loc27_)
                              {
                                 addr127:
                                 §§push(§§pop() + §§pop() * _loc12_.y);
                                 if(_loc26_ || param3)
                                 {
                                 }
                                 var _loc14_:* = §§pop();
                                 _loc11_ = param5.R;
                                 §§push(_loc11_.col1.x);
                                 if(!_loc27_)
                                 {
                                    §§push(_loc13_);
                                    if(_loc26_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(_loc26_ || param2)
                                       {
                                          §§push(_loc11_.col1.y);
                                          if(_loc26_ || b2Collision)
                                          {
                                             addr167:
                                             §§push(§§pop() * _loc14_);
                                          }
                                          §§push(§§pop() + §§pop());
                                          if(_loc26_)
                                          {
                                             addr172:
                                             §§push(Number(§§pop()));
                                          }
                                          var _loc15_:* = §§pop();
                                          §§push(_loc11_.col2.x);
                                          if(!_loc27_)
                                          {
                                             §§push(_loc13_);
                                             if(!(_loc27_ && param2))
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!_loc27_)
                                                {
                                                   addr190:
                                                   §§push(_loc11_.col2.y);
                                                   if(!_loc27_)
                                                   {
                                                      addr197:
                                                      §§push(§§pop() + §§pop() * _loc14_);
                                                      if(_loc26_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                      }
                                                   }
                                                   §§goto(addr197);
                                                }
                                                var _loc16_:* = §§pop();
                                                §§push(0);
                                                if(!(_loc27_ && param3))
                                                {
                                                   §§push(int(§§pop()));
                                                }
                                                var _loc17_:* = §§pop();
                                                var _loc18_:* = Number(Number.MAX_VALUE);
                                                §§push(0);
                                                if(_loc26_)
                                                {
                                                   §§push(int(§§pop()));
                                                }
                                                var _loc19_:* = §§pop();
                                                loop0:
                                                while(_loc19_ < _loc9_)
                                                {
                                                   _loc12_ = _loc10_[_loc19_];
                                                   if(_loc26_)
                                                   {
                                                      §§push(_loc12_.x);
                                                      loop1:
                                                      while(true)
                                                      {
                                                         §§push(_loc15_);
                                                         if(_loc26_)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(!(_loc27_ && b2Collision))
                                                            {
                                                               §§push(_loc12_.y);
                                                               if(!(_loc27_ && param2))
                                                               {
                                                                  addr355:
                                                                  §§push(§§pop() * _loc16_);
                                                               }
                                                               loop2:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  if(_loc26_ || param2)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                     addr365:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     _loc25_ = §§pop();
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc25_);
                                                                        if(!_loc27_)
                                                                        {
                                                                           continue loop2;
                                                                        }
                                                                        addr314:
                                                                        addr315:
                                                                        addr314:
                                                                        _loc18_ = §§pop();
                                                                        loop5:
                                                                        for(; !(_loc27_ && b2Collision); if(_loc26_ || b2Collision)
                                                                        {
                                                                           while(false)
                                                                           {
                                                                              §§goto(addr276);
                                                                           }
                                                                           continue loop0;
                                                                           addr274:
                                                                        })
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc19_);
                                                                              loop7:
                                                                              while(true)
                                                                              {
                                                                                 §§push(int(§§pop()));
                                                                                 loop8:
                                                                                 while(true)
                                                                                 {
                                                                                    _loc17_ = §§pop();
                                                                                    while(true)
                                                                                    {
                                                                                       addr232:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc19_);
                                                                                          if(!(_loc27_ && b2Collision))
                                                                                          {
                                                                                             §§push(§§pop() + 1);
                                                                                             if(_loc26_ || b2Collision)
                                                                                             {
                                                                                                if(!_loc26_)
                                                                                                {
                                                                                                   continue loop8;
                                                                                                }
                                                                                                §§push(int(§§pop()));
                                                                                             }
                                                                                          }
                                                                                          if(_loc26_ || param2)
                                                                                          {
                                                                                             _loc19_ = §§pop();
                                                                                             if(_loc26_ || param1)
                                                                                             {
                                                                                                continue loop5;
                                                                                             }
                                                                                             continue;
                                                                                          }
                                                                                          continue loop7;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     continue loop2;
                                                                     addr304:
                                                                     if(_loc27_ && param1)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     if(_loc27_)
                                                                     {
                                                                        continue loop1;
                                                                     }
                                                                     §§goto(addr314);
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr365);
                                                         }
                                                         §§goto(addr355);
                                                      }
                                                   }
                                                   §§goto(addr274);
                                                }
                                                _loc12_ = _loc7_[param3];
                                                _loc11_ = param2.R;
                                                §§push(param2.position.x);
                                                if(!(_loc27_ && b2Collision))
                                                {
                                                   §§push(_loc11_.col1.x);
                                                   if(_loc26_)
                                                   {
                                                      §§push(_loc12_.x);
                                                      if(!_loc27_)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(!(_loc27_ && param3))
                                                         {
                                                            addr407:
                                                            §§push(_loc11_.col2.x);
                                                            if(_loc26_)
                                                            {
                                                               addr415:
                                                               §§push(§§pop() + §§pop() * _loc12_.y);
                                                            }
                                                            §§goto(addr415);
                                                         }
                                                         §§push(§§pop() + §§pop());
                                                         if(!_loc27_)
                                                         {
                                                            addr419:
                                                            §§push(Number(§§pop()));
                                                         }
                                                         var _loc20_:* = §§pop();
                                                         §§push(param2.position.y);
                                                         if(_loc26_ || param1)
                                                         {
                                                            §§push(_loc11_.col1.y);
                                                            if(!(_loc27_ && param3))
                                                            {
                                                               §§push(_loc12_.x);
                                                               if(!_loc27_)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(_loc26_ || b2Collision)
                                                                  {
                                                                     addr453:
                                                                     §§push(_loc11_.col2.y);
                                                                     if(_loc26_ || param1)
                                                                     {
                                                                        addr466:
                                                                        §§push(§§pop() + §§pop() * _loc12_.y);
                                                                     }
                                                                     §§goto(addr466);
                                                                  }
                                                                  §§push(§§pop() + §§pop());
                                                                  if(_loc26_ || b2Collision)
                                                                  {
                                                                     addr476:
                                                                     var _loc21_:Number = §§pop();
                                                                     _loc12_ = _loc10_[_loc17_];
                                                                     _loc11_ = param5.R;
                                                                     §§push(param5.position.x);
                                                                     if(_loc26_)
                                                                     {
                                                                        §§push(_loc11_.col1.x);
                                                                        if(_loc26_)
                                                                        {
                                                                           §§push(_loc12_.x);
                                                                           if(!_loc27_)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              if(!(_loc27_ && param3))
                                                                              {
                                                                                 addr508:
                                                                                 §§push(_loc11_.col2.x);
                                                                                 if(!(_loc27_ && param1))
                                                                                 {
                                                                                    addr518:
                                                                                    §§push(§§pop() * _loc12_.y);
                                                                                 }
                                                                                 §§push(§§pop() + §§pop());
                                                                              }
                                                                              §§push(§§pop() + §§pop());
                                                                              if(_loc26_ || param3)
                                                                              {
                                                                                 addr530:
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                              var _loc22_:* = §§pop();
                                                                              §§push(param5.position.y);
                                                                              if(_loc26_)
                                                                              {
                                                                                 §§push(_loc11_.col1.y);
                                                                                 if(!_loc27_)
                                                                                 {
                                                                                    §§push(_loc12_.x);
                                                                                    if(!_loc27_)
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(_loc26_)
                                                                                       {
                                                                                          addr549:
                                                                                          §§push(_loc11_.col2.y);
                                                                                          if(_loc26_)
                                                                                          {
                                                                                             addr557:
                                                                                             §§push(§§pop() + §§pop() * _loc12_.y);
                                                                                          }
                                                                                          §§goto(addr557);
                                                                                       }
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(_loc26_)
                                                                                       {
                                                                                          addr562:
                                                                                          var _loc23_:* = Number(§§pop());
                                                                                          if(_loc26_)
                                                                                          {
                                                                                             §§push(_loc22_);
                                                                                             if(_loc26_ || param2)
                                                                                             {
                                                                                                §§push(_loc20_);
                                                                                                if(_loc26_)
                                                                                                {
                                                                                                   §§push(§§pop() - §§pop());
                                                                                                   if(!_loc27_)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      if(_loc26_)
                                                                                                      {
                                                                                                         addr582:
                                                                                                         _loc22_ = §§pop();
                                                                                                         if(_loc26_)
                                                                                                         {
                                                                                                            §§push(_loc23_);
                                                                                                            if(!(_loc27_ && param2))
                                                                                                            {
                                                                                                               §§push(_loc21_);
                                                                                                               if(!(_loc27_ && param1))
                                                                                                               {
                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                  if(_loc26_ || b2Collision)
                                                                                                                  {
                                                                                                                     addr609:
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     if(!(_loc27_ && b2Collision))
                                                                                                                     {
                                                                                                                        addr617:
                                                                                                                        _loc23_ = §§pop();
                                                                                                                        addr618:
                                                                                                                        §§push(_loc22_);
                                                                                                                        if(_loc26_)
                                                                                                                        {
                                                                                                                           §§push(_loc13_);
                                                                                                                           if(!_loc27_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              if(!(_loc27_ && b2Collision))
                                                                                                                              {
                                                                                                                                 §§push(_loc23_);
                                                                                                                                 if(_loc27_ && b2Collision)
                                                                                                                                 {
                                                                                                                                 }
                                                                                                                                 §§goto(addr652);
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr652);
                                                                                                                  }
                                                                                                                  §§push(Number(§§pop()));
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr652);
                                                                                                         }
                                                                                                         §§goto(addr618);
                                                                                                      }
                                                                                                      §§goto(addr609);
                                                                                                   }
                                                                                                   §§goto(addr582);
                                                                                                }
                                                                                                addr652:
                                                                                                §§push(§§pop() + §§pop() * _loc14_);
                                                                                                if(_loc26_ || param1)
                                                                                                {
                                                                                                }
                                                                                                return §§pop();
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr617);
                                                                                       }
                                                                                       §§goto(addr562);
                                                                                    }
                                                                                    §§goto(addr557);
                                                                                 }
                                                                                 §§goto(addr549);
                                                                              }
                                                                              §§goto(addr562);
                                                                           }
                                                                           §§goto(addr518);
                                                                        }
                                                                        §§goto(addr508);
                                                                     }
                                                                     §§goto(addr530);
                                                                  }
                                                                  §§goto(addr476);
                                                               }
                                                               §§goto(addr466);
                                                            }
                                                            §§goto(addr453);
                                                         }
                                                         §§goto(addr476);
                                                      }
                                                      §§goto(addr415);
                                                   }
                                                   §§goto(addr407);
                                                }
                                                §§goto(addr419);
                                             }
                                             §§goto(addr197);
                                          }
                                          §§goto(addr190);
                                       }
                                       §§goto(addr172);
                                    }
                                    §§goto(addr167);
                                 }
                                 §§goto(addr172);
                              }
                           }
                           §§goto(addr127);
                           §§push(Number(§§pop()));
                        }
                     }
                     §§goto(addr127);
                  }
                  §§goto(addr97);
               }
               §§goto(addr100);
            }
            §§goto(addr97);
         }
         §§goto(addr84);
      }
      
      public static function §8!c§(param1:Vector.<int>, param2:b2PolygonShape, param3:b2Transform, param4:b2PolygonShape, param5:b2Transform) : Number
      {
         var _loc26_:Boolean = false;
         var _loc27_:Boolean = true;
         var _loc8_:b2Vec2 = null;
         var _loc9_:b2Mat22 = null;
         var _loc22_:* = 0;
         var _loc23_:* = NaN;
         var _loc24_:* = 0;
         var _loc25_:* = NaN;
         §§push(param2.§"#§);
         if(!_loc26_)
         {
            §§push(int(§§pop()));
         }
         var _loc6_:* = §§pop();
         var _loc7_:Vector.<b2Vec2> = param2.§6>§;
         _loc9_ = param5.R;
         _loc8_ = param4.§7_§;
         §§push(param5.position.x);
         if(!(_loc26_ && param2))
         {
            §§push(_loc9_.col1.x);
            if(_loc27_)
            {
               §§push(_loc8_.x);
               if(_loc27_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc27_)
                  {
                     addr71:
                     §§push(_loc9_.col2.x);
                     if(_loc27_)
                     {
                        addr76:
                        §§push(§§pop() * _loc8_.y);
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc27_ || param3)
                  {
                     addr88:
                     §§push(Number(§§pop()));
                  }
                  var _loc10_:* = §§pop();
                  §§push(param5.position.y);
                  if(!_loc26_)
                  {
                     §§push(_loc9_.col1.y);
                     if(!(_loc26_ && param2))
                     {
                        §§push(_loc8_.x);
                        if(!_loc26_)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc27_)
                           {
                              addr112:
                              §§push(_loc9_.col2.y);
                              if(_loc27_)
                              {
                                 addr117:
                                 §§push(§§pop() * _loc8_.y);
                              }
                              §§push(§§pop() + §§pop());
                           }
                           §§push(§§pop() + §§pop());
                           if(_loc27_)
                           {
                              addr124:
                              §§push(Number(§§pop()));
                           }
                           var _loc11_:* = §§pop();
                           _loc9_ = param3.R;
                           _loc8_ = param2.§7_§;
                           if(!_loc26_)
                           {
                              §§push(_loc10_);
                              if(_loc27_ || param3)
                              {
                                 §§push(param3.position);
                                 if(_loc27_)
                                 {
                                    §§push(§§pop().x);
                                    if(_loc27_ || param3)
                                    {
                                       §§push(_loc9_.col1);
                                       if(!(_loc26_ && param1))
                                       {
                                          §§push(§§pop().x);
                                          if(_loc27_)
                                          {
                                             §§push(_loc8_.x);
                                             if(_loc27_ || param3)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(_loc27_ || param1)
                                                {
                                                   §§push(_loc9_.col2);
                                                   if(_loc27_)
                                                   {
                                                      §§push(§§pop().x);
                                                      if(_loc27_ || param3)
                                                      {
                                                         §§push(_loc8_.y);
                                                         if(_loc27_)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(!(_loc26_ && param3))
                                                            {
                                                               addr209:
                                                               §§push(§§pop() + §§pop());
                                                               if(!(_loc26_ && b2Collision))
                                                               {
                                                                  addr217:
                                                                  §§push(§§pop() + §§pop());
                                                                  if(_loc27_ || param1)
                                                                  {
                                                                     §§push(§§pop() - §§pop());
                                                                     if(!(_loc26_ && param3))
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        if(!(_loc26_ && param2))
                                                                        {
                                                                           _loc10_ = §§pop();
                                                                           if(_loc27_)
                                                                           {
                                                                              addr244:
                                                                              §§push(_loc11_);
                                                                              if(!(_loc26_ && b2Collision))
                                                                              {
                                                                                 addr254:
                                                                                 §§push(param3.position.y);
                                                                                 if(_loc27_ || param1)
                                                                                 {
                                                                                    addr262:
                                                                                    §§push(_loc9_.col1);
                                                                                    if(!(_loc26_ && param3))
                                                                                    {
                                                                                       §§push(§§pop().y);
                                                                                       if(_loc27_ || param2)
                                                                                       {
                                                                                          addr279:
                                                                                          §§push(_loc8_.x);
                                                                                          if(!(_loc26_ && param3))
                                                                                          {
                                                                                             addr288:
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(_loc27_ || param2)
                                                                                             {
                                                                                                addr298:
                                                                                                §§push(_loc9_.col2.y);
                                                                                                if(_loc27_)
                                                                                                {
                                                                                                   addr301:
                                                                                                   §§push(§§pop() * _loc8_.y);
                                                                                                }
                                                                                                §§push(§§pop() + §§pop());
                                                                                                if(_loc27_)
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(!(_loc26_ && param1))
                                                                                                   {
                                                                                                      §§push(§§pop() - §§pop());
                                                                                                      if(!(_loc26_ && param2))
                                                                                                      {
                                                                                                         addr323:
                                                                                                         §§push(Number(§§pop()));
                                                                                                         if(!_loc26_)
                                                                                                         {
                                                                                                            _loc11_ = §§pop();
                                                                                                            addr327:
                                                                                                            §§push(_loc10_);
                                                                                                            if(!_loc26_)
                                                                                                            {
                                                                                                               addr330:
                                                                                                               §§push(param3.R.col1.x);
                                                                                                               if(_loc27_ || param1)
                                                                                                               {
                                                                                                                  addr341:
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(!(_loc26_ && param1))
                                                                                                                  {
                                                                                                                     addr349:
                                                                                                                     §§push(_loc11_);
                                                                                                                     if(!_loc27_)
                                                                                                                     {
                                                                                                                     }
                                                                                                                     addr357:
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     if(_loc27_)
                                                                                                                     {
                                                                                                                        addr361:
                                                                                                                        var _loc12_:Number = §§pop();
                                                                                                                        §§push(_loc10_);
                                                                                                                        if(!_loc26_)
                                                                                                                        {
                                                                                                                           §§push(param3.R.col2.x);
                                                                                                                           if(!(_loc26_ && param2))
                                                                                                                           {
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              if(_loc27_ || param1)
                                                                                                                              {
                                                                                                                                 addr384:
                                                                                                                                 §§push(_loc11_);
                                                                                                                                 if(!(_loc26_ && param2))
                                                                                                                                 {
                                                                                                                                    addr397:
                                                                                                                                    §§push(§§pop() + §§pop() * param3.R.col2.y);
                                                                                                                                    if(_loc27_ || param3)
                                                                                                                                    {
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr397);
                                                                                                                              }
                                                                                                                              var _loc13_:* = §§pop();
                                                                                                                              §§push(0);
                                                                                                                              if(_loc27_)
                                                                                                                              {
                                                                                                                                 §§push(int(§§pop()));
                                                                                                                              }
                                                                                                                              var _loc14_:* = §§pop();
                                                                                                                              §§push(-Number.MAX_VALUE);
                                                                                                                              if(!_loc26_)
                                                                                                                              {
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                              }
                                                                                                                              var _loc15_:* = §§pop();
                                                                                                                              §§push(0);
                                                                                                                              if(_loc27_)
                                                                                                                              {
                                                                                                                                 §§push(int(§§pop()));
                                                                                                                              }
                                                                                                                              var _loc16_:* = §§pop();
                                                                                                                              loop0:
                                                                                                                              while(_loc16_ < _loc6_)
                                                                                                                              {
                                                                                                                                 _loc8_ = _loc7_[_loc16_];
                                                                                                                                 if(!(_loc26_ && param1))
                                                                                                                                 {
                                                                                                                                    §§push(_loc8_.x);
                                                                                                                                    loop1:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc12_);
                                                                                                                                       if(!(_loc26_ && b2Collision))
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          if(_loc27_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc8_.y);
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * _loc13_);
                                                                                                                                                addr557:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                   addr558:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr555:
                                                                                                                                          }
                                                                                                                                          loop3:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             _loc25_ = §§pop();
                                                                                                                                             addr560:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc25_);
                                                                                                                                                if(!(_loc26_ && param3))
                                                                                                                                                {
                                                                                                                                                   §§push(_loc15_);
                                                                                                                                                   if(_loc27_ || param1)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc26_)
                                                                                                                                                      {
                                                                                                                                                         if(§§pop() > §§pop())
                                                                                                                                                         {
                                                                                                                                                            if(_loc26_ && param3)
                                                                                                                                                            {
                                                                                                                                                               loop7:
                                                                                                                                                               for(; _loc27_; while(!(_loc26_ && param2))
                                                                                                                                                               {
                                                                                                                                                               })
                                                                                                                                                               {
                                                                                                                                                                  loop8:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc16_);
                                                                                                                                                                     if(_loc27_ || param2)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(int(§§pop()));
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        _loc14_ = §§pop();
                                                                                                                                                                        continue loop7;
                                                                                                                                                                        addr452:
                                                                                                                                                                        if(!(_loc26_ && b2Collision))
                                                                                                                                                                        {
                                                                                                                                                                           addr460:
                                                                                                                                                                           _loc16_ = int(§§pop());
                                                                                                                                                                           if(!_loc26_)
                                                                                                                                                                           {
                                                                                                                                                                              if(false)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop8;
                                                                                                                                                                              }
                                                                                                                                                                              continue loop0;
                                                                                                                                                                           }
                                                                                                                                                                           continue loop7;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               continue;
                                                                                                                                                               addr537:
                                                                                                                                                            }
                                                                                                                                                            §§push(_loc25_);
                                                                                                                                                            if(!(_loc26_ && param2))
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc26_ && param2))
                                                                                                                                                               {
                                                                                                                                                                  addr527:
                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                  if(_loc27_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop1;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop3;
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr558);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr527);
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc16_);
                                                                                                                                                            if(_loc27_ || b2Collision)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() + 1);
                                                                                                                                                               if(_loc27_)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr452);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr460);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr452);
                                                                                                                                                         }
                                                                                                                                                         continue loop0;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr555);
                                                                                                                                                      §§goto(addr558);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr557);
                                                                                                                                                }
                                                                                                                                                §§goto(addr527);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr557);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr560);
                                                                                                                              }
                                                                                                                              §§push(§'!L§(param2,param3,_loc14_,param4,param5));
                                                                                                                              if(_loc27_ || b2Collision)
                                                                                                                              {
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                              }
                                                                                                                              var _loc17_:* = §§pop();
                                                                                                                              if(_loc27_)
                                                                                                                              {
                                                                                                                                 §§push(_loc14_);
                                                                                                                                 if(!(_loc26_ && param2))
                                                                                                                                 {
                                                                                                                                    §§push(1);
                                                                                                                                    if(!(_loc26_ && b2Collision))
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                       if(!_loc26_)
                                                                                                                                       {
                                                                                                                                          if(§§pop() >= 0)
                                                                                                                                          {
                                                                                                                                             addr614:
                                                                                                                                             §§push(_loc14_);
                                                                                                                                             if(_loc27_ || param2)
                                                                                                                                             {
                                                                                                                                                §§push(1);
                                                                                                                                                if(!(_loc26_ && param3))
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                   if(_loc27_)
                                                                                                                                                   {
                                                                                                                                                      addr633:
                                                                                                                                                      §§push(int(§§pop()));
                                                                                                                                                      if(!_loc26_)
                                                                                                                                                      {
                                                                                                                                                         addr636:
                                                                                                                                                      }
                                                                                                                                                      addr646:
                                                                                                                                                      var _loc18_:int = §§pop();
                                                                                                                                                      §§push(§'!L§(param2,param3,_loc18_,param4,param5));
                                                                                                                                                      if(!_loc26_)
                                                                                                                                                      {
                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                      }
                                                                                                                                                      var _loc19_:* = §§pop();
                                                                                                                                                      if(!_loc26_)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc14_);
                                                                                                                                                         if(_loc27_ || param1)
                                                                                                                                                         {
                                                                                                                                                            §§push(1);
                                                                                                                                                            if(!(_loc26_ && param1))
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                               if(_loc27_ || b2Collision)
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop() < _loc6_)
                                                                                                                                                                  {
                                                                                                                                                                     addr687:
                                                                                                                                                                     §§push(_loc14_);
                                                                                                                                                                     if(_loc27_)
                                                                                                                                                                     {
                                                                                                                                                                        addr692:
                                                                                                                                                                        addr691:
                                                                                                                                                                        addr690:
                                                                                                                                                                        §§push(int(§§pop() + 1));
                                                                                                                                                                        if(_loc27_ || param2)
                                                                                                                                                                        {
                                                                                                                                                                        }
                                                                                                                                                                        addr707:
                                                                                                                                                                        §§push(int(§§pop()));
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        addr704:
                                                                                                                                                                        §§push(int(§§pop()));
                                                                                                                                                                        if(_loc27_)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr707);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     §§push(0);
                                                                                                                                                                     if(!_loc26_)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr704);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  var _loc20_:* = §§pop();
                                                                                                                                                                  §§push(§'!L§(param2,param3,_loc20_,param4,param5));
                                                                                                                                                                  if(_loc27_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                  }
                                                                                                                                                                  var _loc21_:* = §§pop();
                                                                                                                                                                  if(_loc27_ || b2Collision)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc19_);
                                                                                                                                                                     loop12:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc17_);
                                                                                                                                                                        loop13:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() > §§pop());
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(Boolean(§§pop()));
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop());
                                                                                                                                                                                 if(_loc27_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(Boolean(§§pop()));
                                                                                                                                                                                 }
                                                                                                                                                                                 if(§§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    loop16:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§pop();
                                                                                                                                                                                       loop17:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc19_);
                                                                                                                                                                                          loop18:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc21_);
                                                                                                                                                                                             loop19:
                                                                                                                                                                                             while(_loc27_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() > §§pop());
                                                                                                                                                                                                if(!_loc26_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc26_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop16;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§push(Boolean(§§pop()));
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                loop20:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!§§pop())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc21_);
                                                                                                                                                                                                      loop21:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc17_);
                                                                                                                                                                                                         loop22:
                                                                                                                                                                                                         while(!(_loc26_ && param3))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(§§pop() > §§pop())
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!(_loc26_ && param1))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(1);
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(int(§§pop()));
                                                                                                                                                                                                                     addr1173:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        _loc24_ = §§pop();
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr1172:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               loop25:
                                                                                                                                                                                                               while(!_loc26_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc20_);
                                                                                                                                                                                                                  loop26:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(int(§§pop()));
                                                                                                                                                                                                                     loop27:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        _loc22_ = §§pop();
                                                                                                                                                                                                                        loop28:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!_loc26_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc21_);
                                                                                                                                                                                                                              loop29:
                                                                                                                                                                                                                              for(; _loc27_; if(_loc26_ && param1)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue;
                                                                                                                                                                                                                              },§§goto(addr1067),§§push(0))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                                                                 loop30:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    _loc23_ = §§pop();
                                                                                                                                                                                                                                    loop31:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       loop32:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          loop33:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(true);
                                                                                                                                                                                                                                             if(_loc27_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc26_ && param1)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop20;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                if(!§§pop())
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc27_ || param2)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc27_ || param3)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!(_loc27_ || param2))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            break;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            param1[0] = _loc22_;
                                                                                                                                                                                                                                                            §§goto(addr785);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr889);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr785:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc26_ && param2)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         while(_loc26_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         continue loop33;
                                                                                                                                                                                                                                                         addr813:
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      if(_loc27_ || param3)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(_loc23_);
                                                                                                                                                                                                                                                         if(!_loc27_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue loop30;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         if(_loc27_ || param1)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc27_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               break;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            loop41:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                                                                                                                               loop42:
                                                                                                                                                                                                                                                               for(; !_loc26_; while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!(_loc27_ || param3))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     continue loop42;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  if(!_loc26_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(!_loc26_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!(_loc26_ && param1))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!(_loc26_ && param3))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(_loc23_);
                                                                                                                                                                                                                                                                              if(_loc26_ && param1)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              if(§§pop() <= §§pop())
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 continue loop34;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              if(!_loc26_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§goto(addr854);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr889);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1111);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1087);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr933);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr983);
                                                                                                                                                                                                                                                               },continue loop22)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!_loc27_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     continue loop18;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  _loc17_ = §§pop();
                                                                                                                                                                                                                                                                  loop43:
                                                                                                                                                                                                                                                                  while(_loc27_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(!_loc26_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(_loc17_);
                                                                                                                                                                                                                                                                        continue loop42;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     continue loop25;
                                                                                                                                                                                                                                                                     if(!(_loc27_ || b2Collision))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        continue;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(_loc14_);
                                                                                                                                                                                                                                                                        if(_loc27_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc27_ || param3)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(!_loc26_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr874:
                                                                                                                                                                                                                                                                                 §§push(int(§§pop()));
                                                                                                                                                                                                                                                                                 if(_loc27_ || param1)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(!(_loc26_ && param2))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       _loc22_ = §§pop();
                                                                                                                                                                                                                                                                                       addr889:
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(_loc27_ || param2)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(_loc17_);
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(_loc27_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                   continue loop30;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                continue loop42;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             addr802:
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             loop58:
                                                                                                                                                                                                                                                                                             while(!(_loc26_ && param3))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(_loc27_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(_loc22_);
                                                                                                                                                                                                                                                                                                   if(_loc27_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(!_loc27_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         continue loop27;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§push(1);
                                                                                                                                                                                                                                                                                                      if(!_loc26_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                         if(!(_loc26_ && b2Collision))
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            continue loop29;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         addr1086:
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         addr1086:
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      loop49:
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(int(§§pop()));
                                                                                                                                                                                                                                                                                                         addr1088:
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(!_loc27_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               break loop49;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(int(§§pop()));
                                                                                                                                                                                                                                                                                                               addr1098:
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  _loc14_ = §§pop();
                                                                                                                                                                                                                                                                                                                  addr1099:
                                                                                                                                                                                                                                                                                                                  loop39:
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(!(_loc26_ && param2))
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(_loc27_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           continue loop41;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        continue loop28;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     if(!(_loc26_ && b2Collision))
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        continue loop32;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     addr1136:
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(_loc17_);
                                                                                                                                                                                                                                                                                                                        break loop39;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  addr1111:
                                                                                                                                                                                                                                                                                                                  while(_loc26_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        _loc23_ = §§pop();
                                                                                                                                                                                                                                                                                                                        addr1181:
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           continue loop32;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  continue loop12;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(int(§§pop()));
                                                                                                                                                                                                                                                                                                         addr1212:
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            _loc24_ = §§pop();
                                                                                                                                                                                                                                                                                                            break loop58;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      addr1211:
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      addr1085:
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1086);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   addr1210:
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1211);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(_loc18_);
                                                                                                                                                                                                                                                                                                addr1194:
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(int(§§pop()));
                                                                                                                                                                                                                                                                                                   addr1195:
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      _loc22_ = §§pop();
                                                                                                                                                                                                                                                                                                      addr1196:
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(_loc19_);
                                                                                                                                                                                                                                                                                                         addr1179:
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§goto(addr1180);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             addr1034:
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       addr889:
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1088);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(_loc27_ || param2)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!_loc26_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             _loc14_ = §§pop();
                                                                                                                                                                                                                                                                                             addr1018:
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                continue loop41;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             addr1018:
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§goto(addr1173);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(1);
                                                                                                                                                                                                                                                                                             addr1093:
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                break loop42;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          addr1092:
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    addr1008:
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 loop47:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(!(_loc26_ && param1))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr1003:
                                                                                                                                                                                                                                                                                       §§push(int(§§pop()));
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(_loc27_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(!_loc27_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                break loop47;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§goto(addr1008);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§goto(addr1172);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1173);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       addr1003:
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!(_loc26_ && param1))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(-1);
                                                                                                                                                                                                                                                                                             if(_loc27_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(§§pop() == §§pop())
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§goto(addr1034);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr918:
                                                                                                                                                                                                                                                                                                   §§push(_loc22_);
                                                                                                                                                                                                                                                                                                   if(_loc27_ || param1)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(1);
                                                                                                                                                                                                                                                                                                      if(_loc27_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(!_loc26_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                            while(_loc27_ || param1)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(_loc6_);
                                                                                                                                                                                                                                                                                                               if(_loc27_ || param3)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(§§pop() < §§pop());
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(§§pop())
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        break loop43;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     continue loop47;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  addr949:
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(§§pop() >= §§pop());
                                                                                                                                                                                                                                                                                                                     continue loop20;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  addr1067:
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr1179);
                                                                                                                                                                                                                                                                                                            addr933:
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr1093);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      while(!(_loc26_ && param2))
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(int(§§pop()));
                                                                                                                                                                                                                                                                                                            if(!_loc27_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               continue loop47;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            if(!(_loc26_ && param1))
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§goto(addr1007);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr1098);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr1194);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1086);
                                                                                                                                                                                                                                                                                                      addr975:
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(_loc27_ || param2)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(_loc27_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§goto(addr975);
                                                                                                                                                                                                                                                                                                            §§push(1);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         break;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      addr1095:
                                                                                                                                                                                                                                                                                                      while(_loc27_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      continue loop26;
                                                                                                                                                                                                                                                                                                      §§goto(addr918);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1212);
                                                                                                                                                                                                                                                                                                   addr965:
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1097);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr1086);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1194);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       addr1023:
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1007);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1195);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1194);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1003);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr874);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  while(!(_loc26_ && param1))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(_loc22_);
                                                                                                                                                                                                                                                                     if(!(_loc26_ && param3))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§goto(addr965);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1003);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1196);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§goto(addr1095);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr802);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1018);
                                                                                                                                                                                                                                                      §§goto(addr1099);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   return §§pop();
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§push(_loc24_);
                                                                                                                                                                                                                                                §§goto(addr1023);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr949);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue loop31;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue loop21;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1181);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop17;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            param1[0] = _loc14_;
                                                                                                                                                                                                            §§goto(addr1136);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop19;
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1210);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop13;
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1208);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr861);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr692);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr691);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr690);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr687);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr646);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   addr641:
                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                }
                                                                                                                                                §§push(int(§§pop()));
                                                                                                                                                if(_loc27_)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr646);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§push(_loc6_);
                                                                                                                                             if(_loc27_)
                                                                                                                                             {
                                                                                                                                                §§goto(addr641);
                                                                                                                                                §§push(1);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr646);
                                                                                                                                       }
                                                                                                                                       §§goto(addr633);
                                                                                                                                    }
                                                                                                                                    §§goto(addr641);
                                                                                                                                 }
                                                                                                                                 §§goto(addr636);
                                                                                                                              }
                                                                                                                              §§goto(addr614);
                                                                                                                           }
                                                                                                                           §§goto(addr397);
                                                                                                                        }
                                                                                                                        §§goto(addr384);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr361);
                                                                                                               }
                                                                                                               addr356:
                                                                                                               §§goto(addr357);
                                                                                                               §§push(§§pop() * param3.R.col1.y);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr361);
                                                                                                   }
                                                                                                   §§goto(addr341);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr356);
                                                                                          }
                                                                                          §§goto(addr301);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr356);
                                                                                 }
                                                                                 §§goto(addr341);
                                                                              }
                                                                              §§goto(addr323);
                                                                           }
                                                                           §§goto(addr327);
                                                                        }
                                                                        §§goto(addr349);
                                                                     }
                                                                     §§goto(addr330);
                                                                  }
                                                                  §§goto(addr262);
                                                               }
                                                               §§goto(addr279);
                                                            }
                                                            §§goto(addr288);
                                                         }
                                                         §§goto(addr301);
                                                      }
                                                      §§goto(addr209);
                                                   }
                                                   §§goto(addr298);
                                                }
                                                §§goto(addr217);
                                             }
                                             §§goto(addr209);
                                          }
                                          §§goto(addr298);
                                       }
                                       §§goto(addr330);
                                    }
                                    §§goto(addr349);
                                 }
                                 §§goto(addr254);
                              }
                              §§goto(addr361);
                           }
                           §§goto(addr244);
                        }
                        §§goto(addr117);
                     }
                     §§goto(addr112);
                  }
                  §§goto(addr124);
               }
               §§goto(addr76);
            }
            §§goto(addr71);
         }
         §§goto(addr88);
      }
      
      public static function §^!O§(param1:Vector.<§&!W§>, param2:b2PolygonShape, param3:b2Transform, param4:int, param5:b2PolygonShape, param6:b2Transform) : void
      {
         var _loc24_:Boolean = true;
         var _loc25_:Boolean = false;
         var _loc12_:b2Mat22 = null;
         var _loc13_:b2Vec2 = null;
         var _loc20_:§&!W§ = null;
         var _loc23_:* = NaN;
         §§push(param2.§"#§);
         if(_loc24_)
         {
            §§push(int(§§pop()));
         }
         var _loc7_:* = §§pop();
         var _loc8_:Vector.<b2Vec2> = param2.§6>§;
         §§push(param5.§"#§);
         if(_loc24_ || b2Collision)
         {
            §§push(int(§§pop()));
         }
         var _loc9_:* = §§pop();
         var _loc10_:Vector.<b2Vec2> = param5.§`!a§;
         var _loc11_:Vector.<b2Vec2> = param5.§6>§;
         _loc12_ = param3.R;
         _loc13_ = _loc8_[param4];
         §§push(_loc12_.col1.x);
         if(_loc24_ || b2Collision)
         {
            §§push(_loc13_.x);
            if(!_loc25_)
            {
               §§push(§§pop() * §§pop());
               if(!(_loc25_ && param3))
               {
                  §§push(_loc12_.col2.x);
                  if(!_loc25_)
                  {
                     addr92:
                     §§push(§§pop() * _loc13_.y);
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc25_)
                  {
                  }
                  addr99:
                  var _loc14_:* = §§pop();
                  §§push(_loc12_.col1.y);
                  if(!_loc25_)
                  {
                     §§push(_loc13_.x);
                     if(_loc24_ || b2Collision)
                     {
                        §§push(§§pop() * §§pop());
                        if(!(_loc25_ && param2))
                        {
                           §§push(_loc12_.col2.y);
                           if(!(_loc25_ && b2Collision))
                           {
                              addr132:
                              §§push(§§pop() * _loc13_.y);
                           }
                           §§push(§§pop() + §§pop());
                           if(_loc24_)
                           {
                              addr139:
                              var _loc15_:* = Number(§§pop());
                              _loc12_ = param6.R;
                              §§push(_loc12_.col1.x);
                              if(!(_loc25_ && b2Collision))
                              {
                                 §§push(_loc14_);
                                 if(!(_loc25_ && param2))
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(_loc24_ || param2)
                                    {
                                       addr170:
                                       §§push(_loc12_.col1.y);
                                       if(!_loc25_)
                                       {
                                          addr177:
                                          §§push(§§pop() + §§pop() * _loc15_);
                                          if(_loc24_ || param1)
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                       }
                                       §§goto(addr177);
                                    }
                                    var _loc16_:* = §§pop();
                                    if(!_loc25_)
                                    {
                                       §§push(_loc12_.col2.x);
                                       if(_loc24_)
                                       {
                                          §§push(_loc14_);
                                          if(!_loc25_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(!_loc25_)
                                             {
                                                §§push(_loc12_.col2.y);
                                                if(_loc24_ || param2)
                                                {
                                                   addr212:
                                                   §§push(§§pop() + §§pop() * _loc15_);
                                                   if(_loc24_ || b2Collision)
                                                   {
                                                      addr220:
                                                      §§push(Number(§§pop()));
                                                      if(_loc24_ || param3)
                                                      {
                                                         _loc15_ = §§pop();
                                                         if(!(_loc25_ && param1))
                                                         {
                                                            addr236:
                                                            §§push(_loc16_);
                                                            if(!_loc25_)
                                                            {
                                                               addr240:
                                                               _loc14_ = Number(§§pop());
                                                            }
                                                            §§goto(addr240);
                                                         }
                                                         §§push(0);
                                                         if(!(_loc25_ && param3))
                                                         {
                                                            §§push(int(§§pop()));
                                                         }
                                                         var _loc17_:* = §§pop();
                                                         var _loc18_:Number = Number.MAX_VALUE;
                                                         §§push(0);
                                                         if(!(_loc25_ && param1))
                                                         {
                                                            §§push(int(§§pop()));
                                                         }
                                                         var _loc19_:* = §§pop();
                                                         loop0:
                                                         while(true)
                                                         {
                                                            §§push(_loc19_);
                                                            if(_loc24_ || param3)
                                                            {
                                                               if(§§pop() >= _loc9_)
                                                               {
                                                                  §§push(_loc17_);
                                                                  if(_loc24_)
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
                                                                  if(_loc24_)
                                                                  {
                                                                     §§push(_loc13_.x);
                                                                     if(_loc24_)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc15_);
                                                                           addr359:
                                                                           if(!(_loc24_ || param1))
                                                                           {
                                                                              continue;
                                                                           }
                                                                           addr367:
                                                                           _loc18_ = §§pop();
                                                                           loop7:
                                                                           for(; !_loc25_; loop11:
                                                                           while(!(_loc25_ && param1))
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc19_);
                                                                                 if(!(_loc25_ && param1))
                                                                                 {
                                                                                    if(_loc24_ || param3)
                                                                                    {
                                                                                       §§push(§§pop() + 1);
                                                                                       if(_loc24_ || param3)
                                                                                       {
                                                                                          addr300:
                                                                                          §§push(int(§§pop()));
                                                                                       }
                                                                                       if(_loc24_ || param2)
                                                                                       {
                                                                                          _loc19_ = §§pop();
                                                                                          if(!_loc24_)
                                                                                          {
                                                                                             continue loop11;
                                                                                          }
                                                                                          if(true)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          §§goto(addr313);
                                                                                       }
                                                                                       §§goto(addr315);
                                                                                    }
                                                                                    §§goto(addr316);
                                                                                 }
                                                                                 §§goto(addr300);
                                                                              }
                                                                              continue loop0;
                                                                           })
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc19_);
                                                                                 addr315:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(int(§§pop()));
                                                                                    addr316:
                                                                                    while(true)
                                                                                    {
                                                                                       _loc17_ = §§pop();
                                                                                       continue loop7;
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           loop6:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc23_);
                                                                              if(!_loc25_)
                                                                              {
                                                                                 if(_loc24_ || param3)
                                                                                 {
                                                                                    §§push(_loc18_);
                                                                                    if(_loc24_)
                                                                                    {
                                                                                       if(!(_loc25_ && param3))
                                                                                       {
                                                                                          if(§§pop() < §§pop())
                                                                                          {
                                                                                             if(_loc24_)
                                                                                             {
                                                                                                §§push(_loc23_);
                                                                                                if(_loc24_)
                                                                                                {
                                                                                                   if(_loc24_ || param2)
                                                                                                   {
                                                                                                      §§goto(addr359);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr384:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                         addr385:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc23_ = §§pop();
                                                                                                            continue loop6;
                                                                                                         }
                                                                                                      }
                                                                                                      addr384:
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr367);
                                                                                             }
                                                                                             §§goto(addr368);
                                                                                          }
                                                                                          §§goto(addr276);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() * _loc13_.y);
                                                                                             addr383:
                                                                                             while(true)
                                                                                             {
                                                                                             }
                                                                                          }
                                                                                          addr380:
                                                                                       }
                                                                                       §§goto(addr384);
                                                                                    }
                                                                                    §§goto(addr383);
                                                                                 }
                                                                                 §§goto(addr385);
                                                                              }
                                                                              §§goto(addr367);
                                                                           }
                                                                           addr368:
                                                                           addr386:
                                                                        }
                                                                     }
                                                                     §§goto(addr380);
                                                                  }
                                                                  §§goto(addr384);
                                                               }
                                                               §§goto(addr386);
                                                            }
                                                            break;
                                                         }
                                                         var _loc21_:* = §§pop();
                                                         if(!_loc25_)
                                                         {
                                                            §§push(_loc21_);
                                                            if(_loc24_)
                                                            {
                                                               §§push(1);
                                                               if(!_loc25_)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  if(!(_loc25_ && param1))
                                                                  {
                                                                     if(§§pop() < _loc9_)
                                                                     {
                                                                        addr456:
                                                                        §§push(_loc21_);
                                                                        if(!_loc25_)
                                                                        {
                                                                           addr425:
                                                                           §§push(§§pop() + 1);
                                                                        }
                                                                        var _loc22_:int = §§pop();
                                                                        _loc20_ = param1[0];
                                                                        _loc13_ = _loc10_[_loc21_];
                                                                        _loc12_ = param6.R;
                                                                        if(_loc24_ || param2)
                                                                        {
                                                                           §§push(_loc20_.v);
                                                                           loop13:
                                                                           while(true)
                                                                           {
                                                                              §§push(param6.position);
                                                                              addr659:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().x);
                                                                                 addr660:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc12_.col1);
                                                                                    addr662:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().x);
                                                                                       addr663:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc13_.x);
                                                                                          addr665:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             addr666:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc12_.col2);
                                                                                                addr668:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop().x);
                                                                                                   addr669:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc13_.y);
                                                                                                      addr671:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         addr672:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            addr673:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               addr674:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§pop().x = §§pop();
                                                                                                                  continue loop13;
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
                                                                        }
                                                                        §§goto(addr654);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(0);
                                                                        if(_loc24_)
                                                                        {
                                                                           addr448:
                                                                           §§push(int(§§pop()));
                                                                           if(_loc25_ && param1)
                                                                           {
                                                                           }
                                                                        }
                                                                        §§goto(addr456);
                                                                     }
                                                                  }
                                                                  §§push(int(§§pop()));
                                                                  if(!(_loc25_ && param1))
                                                                  {
                                                                     §§goto(addr456);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr448);
                                                                  }
                                                               }
                                                               §§goto(addr425);
                                                            }
                                                         }
                                                         §§goto(addr456);
                                                      }
                                                   }
                                                   §§goto(addr240);
                                                }
                                                §§goto(addr212);
                                             }
                                             §§goto(addr240);
                                          }
                                          §§goto(addr212);
                                       }
                                       §§goto(addr220);
                                    }
                                    §§goto(addr236);
                                 }
                                 §§goto(addr177);
                              }
                              §§goto(addr170);
                           }
                        }
                        §§goto(addr139);
                     }
                     §§goto(addr132);
                  }
                  §§goto(addr139);
               }
               §§goto(addr99);
               §§push(Number(§§pop()));
            }
            §§goto(addr92);
         }
         §§goto(addr99);
      }
      
      private static function §#!d§() : Vector.<§&!W§>
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Vector.<§&!W§> = new Vector.<§&!W§>(2);
         if(!_loc2_)
         {
            _loc1_[0] = new §&!W§();
         }
         do
         {
            _loc1_[1] = new §&!W§();
         }
         while(_loc2_);
         
         return _loc1_;
      }
      
      public static function §&?§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2PolygonShape, param5:b2Transform) : void
      {
         var _loc46_:Boolean = false;
         var _loc47_:Boolean = true;
         var _loc6_:§&!W§ = null;
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
         if(_loc47_ || b2Collision)
         {
            param1.§5<§ = 0;
         }
         var _loc7_:Number = param2.§!@§ + param4.§!@§;
         §§push(0);
         if(!(_loc46_ && param1))
         {
            §§push(int(§§pop()));
         }
         var _loc8_:* = §§pop();
         if(!_loc46_)
         {
            §]!f§[0] = _loc8_;
         }
         §§push(§8!c§(§]!f§,param2,param3,param4,param5));
         if(!_loc46_)
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         if(_loc47_ || param3)
         {
            §§push(int(§]!f§[0]));
            if(!_loc46_)
            {
               _loc8_ = §§pop();
               if(_loc47_ || param1)
               {
                  if(_loc9_ > _loc7_)
                  {
                     if(!_loc46_)
                     {
                        return;
                     }
                     addr128:
                     §§push(0);
                     if(_loc47_ || param3)
                     {
                        addr136:
                        §§push(int(§§pop()));
                     }
                     var _loc10_:* = §§pop();
                     if(!(_loc46_ && param3))
                     {
                        §#![§[0] = _loc10_;
                     }
                     §§push(§8!c§(§#![§,param4,param5,param2,param3));
                     if(_loc47_)
                     {
                        §§push(Number(§§pop()));
                     }
                     var _loc11_:* = §§pop();
                     if(!_loc46_)
                     {
                        _loc10_ = int(§#![§[0]);
                        if(!_loc46_)
                        {
                           §§push(_loc11_);
                           if(!_loc46_)
                           {
                              if(§§pop() > _loc7_)
                              {
                                 if(_loc47_)
                                 {
                                    §§goto(addr179);
                                 }
                                 else
                                 {
                                    addr180:
                                    §§push(0.98);
                                    if(!(_loc46_ && param3))
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                 }
                              }
                              §§goto(addr180);
                           }
                           var _loc18_:* = §§pop();
                           §§push(0.001);
                           if(_loc47_ || param3)
                           {
                              §§push(Number(§§pop()));
                           }
                           var _loc19_:* = §§pop();
                           if(!(_loc46_ && param1))
                           {
                              §§push(_loc11_);
                              §§push(_loc18_);
                              if(_loc47_)
                              {
                                 §§push(_loc9_);
                                 if(_loc47_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(_loc47_ || b2Collision)
                                    {
                                       addr223:
                                       §§push(§§pop() + _loc19_);
                                    }
                                    if(§§pop() > §§pop())
                                    {
                                       addr225:
                                       _loc12_ = param4;
                                       _loc13_ = param2;
                                       _loc14_ = param5;
                                       _loc15_ = param3;
                                       if(_loc47_ || b2Collision)
                                       {
                                          §§push(_loc10_);
                                          loop37:
                                          while(true)
                                          {
                                             §§push(int(§§pop()));
                                             loop38:
                                             while(true)
                                             {
                                                _loc16_ = §§pop();
                                                loop39:
                                                while(true)
                                                {
                                                   addr257:
                                                   while(true)
                                                   {
                                                      param1.§2!5§ = b2Manifold.§&!>§;
                                                      while(true)
                                                      {
                                                         if(_loc47_)
                                                         {
                                                            §§push(1);
                                                            if(!_loc46_)
                                                            {
                                                               if(_loc47_)
                                                               {
                                                                  _loc17_ = §§pop();
                                                                  if(!_loc46_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue;
                                                               }
                                                               continue loop37;
                                                            }
                                                            continue loop38;
                                                         }
                                                         continue loop39;
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       while(false)
                                       {
                                          §§goto(addr257);
                                       }
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
                                          if(!_loc46_)
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
                                                addr296:
                                                while(true)
                                                {
                                                   param1.§2!5§ = b2Manifold.§<!!§;
                                                   addr302:
                                                   while(true)
                                                   {
                                                      if(!_loc46_)
                                                      {
                                                         continue loop0;
                                                      }
                                                      continue loop1;
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr294);
                                    }
                                    §§goto(addr311);
                                 }
                              }
                              §§goto(addr223);
                           }
                           §§goto(addr225);
                        }
                        addr179:
                        return;
                     }
                     §§goto(addr180);
                  }
               }
               §§goto(addr128);
            }
            §§goto(addr136);
         }
         §§goto(addr128);
      }
      
      public static function §4_§(param1:b2Manifold, param2:b2CircleShape, param3:b2Transform, param4:b2CircleShape, param5:b2Transform) : void
      {
         var _loc16_:Boolean = true;
         var _loc17_:Boolean = false;
         var _loc6_:b2Mat22 = null;
         var _loc7_:b2Vec2 = null;
         if(_loc16_)
         {
            param1.§5<§ = 0;
         }
         _loc6_ = param3.R;
         _loc7_ = param2.§,!2§;
         §§push(param3.position.x);
         if(_loc16_ || b2Collision)
         {
            §§push(_loc6_.col1.x);
            if(_loc16_ || param3)
            {
               §§push(_loc7_.x);
               if(!_loc17_)
               {
                  addr71:
                  §§push(§§pop() * §§pop());
                  if(_loc16_)
                  {
                     §§push(_loc6_.col2.x);
                     if(_loc16_)
                     {
                        §§push(§§pop() * _loc7_.y);
                     }
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc16_)
                  {
                     addr74:
                     §§push(Number(§§pop()));
                  }
                  var _loc8_:* = §§pop();
                  §§push(param3.position.y);
                  if(!(_loc17_ && param2))
                  {
                     §§push(_loc6_.col1.y);
                     if(_loc16_ || param1)
                     {
                        §§push(_loc7_.x);
                        if(_loc16_ || b2Collision)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc16_ || param3)
                           {
                              addr113:
                              §§push(_loc6_.col2.y);
                              if(!_loc17_)
                              {
                                 addr121:
                                 §§push(§§pop() + §§pop() * _loc7_.y);
                              }
                              §§goto(addr121);
                           }
                           §§push(§§pop() + §§pop());
                           if(_loc16_)
                           {
                              addr126:
                              var _loc9_:Number = §§pop();
                              _loc6_ = param5.R;
                              _loc7_ = param4.§,!2§;
                              §§push(param5.position.x);
                              if(_loc16_)
                              {
                                 §§push(_loc6_.col1.x);
                                 if(!_loc17_)
                                 {
                                    §§push(_loc7_.x);
                                    if(_loc16_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(_loc16_ || param1)
                                       {
                                          addr166:
                                          §§push(_loc6_.col2.x);
                                          if(_loc16_)
                                          {
                                             addr162:
                                             §§push(§§pop() * _loc7_.y);
                                          }
                                          §§push(§§pop() + (§§pop() + §§pop()));
                                          if(_loc16_)
                                          {
                                             addr169:
                                             §§push(Number(§§pop()));
                                          }
                                          var _loc10_:* = §§pop();
                                          §§push(param5.position.y);
                                          if(_loc16_)
                                          {
                                             §§push(_loc6_.col1.y);
                                             if(_loc16_ || param2)
                                             {
                                                §§push(_loc7_.x);
                                                if(_loc16_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(!(_loc17_ && param3))
                                                   {
                                                      addr217:
                                                      §§push(_loc6_.col2.y);
                                                      if(!_loc17_)
                                                      {
                                                         addr213:
                                                         §§push(§§pop() * _loc7_.y);
                                                      }
                                                      §§push(§§pop() + (§§pop() + §§pop()));
                                                      if(!(_loc17_ && param2))
                                                      {
                                                         addr225:
                                                         §§push(Number(§§pop()));
                                                      }
                                                      var _loc11_:* = §§pop();
                                                      §§push(_loc10_);
                                                      if(!_loc17_)
                                                      {
                                                         §§push(§§pop() - _loc8_);
                                                         if(_loc16_)
                                                         {
                                                            addr234:
                                                            §§push(Number(§§pop()));
                                                         }
                                                         var _loc12_:* = §§pop();
                                                         §§push(_loc11_);
                                                         if(_loc16_)
                                                         {
                                                            §§push(§§pop() - _loc9_);
                                                            if(_loc16_ || b2Collision)
                                                            {
                                                               §§push(Number(§§pop()));
                                                            }
                                                         }
                                                         var _loc13_:* = §§pop();
                                                         §§push(_loc12_);
                                                         if(!_loc17_)
                                                         {
                                                            §§push(_loc12_);
                                                            if(_loc16_ || param3)
                                                            {
                                                               addr278:
                                                               §§push(§§pop() * §§pop());
                                                               if(!_loc17_)
                                                               {
                                                                  §§push(_loc13_);
                                                                  if(!(_loc17_ && b2Collision))
                                                                  {
                                                                     §§push(§§pop() * _loc13_);
                                                                  }
                                                               }
                                                               var _loc14_:* = §§pop();
                                                               var _loc15_:Number = param2.§!@§ + param4.§!@§;
                                                               if(!(_loc17_ && param1))
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
                                                                        param1.§2!5§ = b2Manifold.§@!"§;
                                                                        loop1:
                                                                        while(true)
                                                                        {
                                                                           param1.m_localPoint.SetV(param2.§,!2§);
                                                                           while(!_loc17_)
                                                                           {
                                                                              param1.§-O§.§@!;§();
                                                                              while(_loc16_ || b2Collision)
                                                                              {
                                                                                 if(!_loc17_)
                                                                                 {
                                                                                    param1.§5<§ = 1;
                                                                                    loop4:
                                                                                    while(!_loc17_)
                                                                                    {
                                                                                       if(_loc16_ || param3)
                                                                                       {
                                                                                          param1.§&!2§[0].m_localPoint.SetV(param4.§,!2§);
                                                                                          while(true)
                                                                                          {
                                                                                             param1.§&!2§[0].m_id.key = 0;
                                                                                             if(!(_loc17_ && param3))
                                                                                             {
                                                                                                if(!(_loc17_ && param3))
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                continue loop4;
                                                                                             }
                                                                                          }
                                                                                          return;
                                                                                          continue;
                                                                                       }
                                                                                       continue loop0;
                                                                                    }
                                                                                    continue;
                                                                                 }
                                                                                 continue loop1;
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  return;
                                                               }
                                                               §§goto(addr331);
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                            if(!_loc17_)
                                                            {
                                                               §§push(Number(§§pop()));
                                                            }
                                                         }
                                                         §§goto(addr278);
                                                      }
                                                      §§goto(addr234);
                                                   }
                                                   §§goto(addr217);
                                                }
                                                §§goto(addr213);
                                             }
                                             §§goto(addr217);
                                          }
                                          §§goto(addr225);
                                       }
                                       §§goto(addr166);
                                    }
                                    §§goto(addr162);
                                 }
                                 §§goto(addr166);
                              }
                              §§goto(addr169);
                           }
                           §§goto(addr126);
                        }
                        §§goto(addr121);
                     }
                     §§goto(addr113);
                  }
                  §§goto(addr126);
               }
               §§push(§§pop() + §§pop());
            }
            §§goto(addr71);
         }
         §§goto(addr74);
      }
      
      public static function §&$§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2CircleShape, param5:b2Transform) : void
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
         if(!(_loc35_ && param1))
         {
            param1.§5<§ = 0;
         }
         _loc12_ = param5.R;
         _loc11_ = param4.§,!2§;
         §§push(param5.position.x);
         if(!(_loc35_ && param1))
         {
            §§push(_loc12_.col1.x);
            if(!_loc35_)
            {
               §§push(_loc11_.x);
               if(!(_loc35_ && param2))
               {
                  addr100:
                  §§push(§§pop() * §§pop());
                  if(_loc34_ || param2)
                  {
                     §§push(_loc12_.col2.x);
                     if(_loc34_)
                     {
                        §§push(§§pop() * _loc11_.y);
                     }
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc34_)
                  {
                     addr103:
                     §§push(Number(§§pop()));
                  }
                  var _loc13_:* = §§pop();
                  §§push(param5.position.y);
                  if(_loc34_)
                  {
                     §§push(_loc12_.col1.y);
                     if(_loc34_ || param3)
                     {
                        §§push(_loc11_.x);
                        if(_loc34_)
                        {
                           addr146:
                           §§push(§§pop() * §§pop());
                           if(!(_loc35_ && param1))
                           {
                              §§push(_loc12_.col2.y);
                              if(!(_loc35_ && b2Collision))
                              {
                                 §§push(§§pop() * _loc11_.y);
                              }
                           }
                           §§push(§§pop() + §§pop());
                           if(_loc34_)
                           {
                              addr150:
                              var _loc14_:Number = §§pop();
                              if(!(_loc35_ && b2Collision))
                              {
                                 §§push(_loc13_);
                                 if(!_loc35_)
                                 {
                                    §§push(param3.position);
                                    if(!_loc35_)
                                    {
                                       §§push(§§pop().x);
                                       if(!_loc35_)
                                       {
                                          §§push(§§pop() - §§pop());
                                          if(_loc34_ || param2)
                                          {
                                             addr176:
                                             §§push(Number(§§pop()));
                                             if(!(_loc35_ && param2))
                                             {
                                                addr184:
                                                _loc7_ = §§pop();
                                                if(!_loc35_)
                                                {
                                                   addr187:
                                                   §§push(_loc14_);
                                                   if(!_loc35_)
                                                   {
                                                      addr190:
                                                      addr193:
                                                      addr192:
                                                      §§push(§§pop() - param3.position.y);
                                                      if(_loc34_ || param2)
                                                      {
                                                         addr201:
                                                         §§push(Number(§§pop()));
                                                      }
                                                      _loc8_ = §§pop();
                                                      addr203:
                                                      _loc12_ = param3.R;
                                                      §§push(_loc7_);
                                                      if(!_loc35_)
                                                      {
                                                         §§push(_loc12_.col1.x);
                                                         if(!(_loc35_ && b2Collision))
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc34_)
                                                            {
                                                               §§push(_loc8_);
                                                               if(_loc34_ || b2Collision)
                                                               {
                                                                  addr231:
                                                                  §§push(§§pop() * _loc12_.col1.y);
                                                               }
                                                               §§push(§§pop() + §§pop());
                                                               if(_loc34_ || param2)
                                                               {
                                                                  addr243:
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               var _loc15_:* = §§pop();
                                                               §§push(_loc7_);
                                                               if(_loc34_)
                                                               {
                                                                  §§push(_loc12_.col2.x);
                                                                  if(_loc34_)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(_loc34_ || param1)
                                                                     {
                                                                        addr261:
                                                                        §§push(_loc8_);
                                                                        if(!(_loc35_ && param3))
                                                                        {
                                                                           addr273:
                                                                           §§push(§§pop() + §§pop() * _loc12_.col2.y);
                                                                           if(_loc34_)
                                                                           {
                                                                              addr276:
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                           var _loc16_:* = §§pop();
                                                                           §§push(0);
                                                                           if(_loc34_)
                                                                           {
                                                                              §§push(int(§§pop()));
                                                                           }
                                                                           var _loc18_:* = §§pop();
                                                                           §§push(-Number.MAX_VALUE);
                                                                           if(!(_loc35_ && param2))
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                           var _loc19_:* = §§pop();
                                                                           var _loc20_:Number = param2.§!@§ + param4.§!@§;
                                                                           §§push(param2.§"#§);
                                                                           if(!_loc35_)
                                                                           {
                                                                              §§push(int(§§pop()));
                                                                           }
                                                                           var _loc21_:* = §§pop();
                                                                           var _loc22_:Vector.<b2Vec2> = param2.§`!a§;
                                                                           var _loc23_:Vector.<b2Vec2> = param2.§6>§;
                                                                           §§push(0);
                                                                           if(!(_loc35_ && param1))
                                                                           {
                                                                              §§push(int(§§pop()));
                                                                           }
                                                                           var _loc24_:* = §§pop();
                                                                           loop0:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc24_);
                                                                              if(!(_loc35_ && param3))
                                                                              {
                                                                                 if(§§pop() >= _loc21_)
                                                                                 {
                                                                                    §§push(_loc18_);
                                                                                    if(!_loc35_)
                                                                                    {
                                                                                       §§push(int(§§pop()));
                                                                                       break;
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 _loc11_ = _loc22_[_loc24_];
                                                                                 if(_loc34_)
                                                                                 {
                                                                                    §§push(_loc15_);
                                                                                    if(_loc34_ || param1)
                                                                                    {
                                                                                       §§push(_loc11_.x);
                                                                                       if(_loc34_ || param2)
                                                                                       {
                                                                                          §§push(§§pop() - §§pop());
                                                                                          if(!_loc35_)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             if(_loc35_)
                                                                                             {
                                                                                             }
                                                                                             addr370:
                                                                                             addr381:
                                                                                             addr372:
                                                                                             §§push(§§pop() - _loc11_.y);
                                                                                             if(!(_loc35_ && param3))
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                             }
                                                                                             _loc8_ = §§pop();
                                                                                             _loc11_ = _loc23_[_loc24_];
                                                                                             if(_loc34_)
                                                                                             {
                                                                                                §§push(_loc11_.x);
                                                                                                if(!(_loc35_ && param3))
                                                                                                {
                                                                                                   §§push(_loc7_);
                                                                                                   if(_loc34_ || param2)
                                                                                                   {
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      if(_loc34_)
                                                                                                      {
                                                                                                         addr519:
                                                                                                         §§push(_loc11_.y);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() * _loc8_);
                                                                                                            addr521:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                            }
                                                                                                         }
                                                                                                         addr519:
                                                                                                      }
                                                                                                      loop1:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                         loop2:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc31_ = §§pop();
                                                                                                            loop3:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc31_);
                                                                                                               loop4:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc35_)
                                                                                                                  {
                                                                                                                     continue loop1;
                                                                                                                  }
                                                                                                                  §§push(_loc20_);
                                                                                                                  loop5:
                                                                                                                  for(; !(_loc35_ && param1); §§push(_loc19_),if(!(_loc35_ && param1))
                                                                                                                  {
                                                                                                                     if(§§pop() > §§pop())
                                                                                                                     {
                                                                                                                        loop8:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc31_);
                                                                                                                           if(_loc34_)
                                                                                                                           {
                                                                                                                              continue loop4;
                                                                                                                           }
                                                                                                                           addr464:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              _loc19_ = §§pop();
                                                                                                                              while(_loc34_)
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc24_);
                                                                                                                                    addr426:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(int(§§pop()));
                                                                                                                                       addr427:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          _loc18_ = §§pop();
                                                                                                                                          addr428:
                                                                                                                                          while(_loc34_)
                                                                                                                                          {
                                                                                                                                             if(_loc35_)
                                                                                                                                             {
                                                                                                                                                continue loop3;
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          continue loop8;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 if(_loc35_ && param1)
                                                                                                                                 {
                                                                                                                                    continue;
                                                                                                                                 }
                                                                                                                                 if(true)
                                                                                                                                 {
                                                                                                                                    continue loop0;
                                                                                                                                 }
                                                                                                                                 §§goto(addr424);
                                                                                                                              }
                                                                                                                              §§goto(addr496);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc24_);
                                                                                                                        if(_loc34_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + 1);
                                                                                                                           if(_loc34_ || b2Collision)
                                                                                                                           {
                                                                                                                              addr402:
                                                                                                                              if(_loc34_ || param1)
                                                                                                                              {
                                                                                                                                 addr410:
                                                                                                                                 §§push(int(§§pop()));
                                                                                                                                 if(!_loc35_)
                                                                                                                                 {
                                                                                                                                    _loc24_ = §§pop();
                                                                                                                                    if(!_loc35_)
                                                                                                                                    {
                                                                                                                                       §§goto(addr415);
                                                                                                                                    }
                                                                                                                                    §§goto(addr428);
                                                                                                                                 }
                                                                                                                                 §§goto(addr427);
                                                                                                                              }
                                                                                                                              §§goto(addr426);
                                                                                                                           }
                                                                                                                           §§goto(addr410);
                                                                                                                        }
                                                                                                                        §§goto(addr402);
                                                                                                                     }
                                                                                                                     continue loop0;
                                                                                                                  })
                                                                                                                  {
                                                                                                                     if(!(_loc35_ && param3))
                                                                                                                     {
                                                                                                                        if(§§pop() > §§pop())
                                                                                                                        {
                                                                                                                           if(!(_loc35_ && param2))
                                                                                                                           {
                                                                                                                              return;
                                                                                                                           }
                                                                                                                           addr496:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                           }
                                                                                                                           addr496:
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc31_);
                                                                                                                           if(_loc34_ || param3)
                                                                                                                           {
                                                                                                                              if(!_loc34_)
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              continue loop5;
                                                                                                                           }
                                                                                                                           continue loop4;
                                                                                                                           §§goto(addr496);
                                                                                                                        }
                                                                                                                        continue loop2;
                                                                                                                     }
                                                                                                                     §§goto(addr519);
                                                                                                                  }
                                                                                                                  §§goto(addr521);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr519);
                                                                                             }
                                                                                             §§goto(addr432);
                                                                                          }
                                                                                          _loc7_ = §§pop();
                                                                                          if(_loc34_ || param2)
                                                                                          {
                                                                                             §§push(_loc16_);
                                                                                             if(_loc34_)
                                                                                             {
                                                                                                §§goto(addr370);
                                                                                             }
                                                                                             §§goto(addr381);
                                                                                          }
                                                                                          §§goto(addr370);
                                                                                       }
                                                                                       §§goto(addr372);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr370);
                                                                              }
                                                                              break;
                                                                           }
                                                                           var _loc25_:* = §§pop();
                                                                           if(_loc34_)
                                                                           {
                                                                              §§push(_loc25_);
                                                                              if(_loc34_ || param2)
                                                                              {
                                                                                 §§push(1);
                                                                                 if(!(_loc35_ && param2))
                                                                                 {
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(_loc34_)
                                                                                    {
                                                                                       if(§§pop() < _loc21_)
                                                                                       {
                                                                                          addr564:
                                                                                          §§push(_loc25_);
                                                                                          if(!(_loc35_ && param3))
                                                                                          {
                                                                                             addr574:
                                                                                             §§push(int(§§pop() + 1));
                                                                                             if(_loc34_ || b2Collision)
                                                                                             {
                                                                                             }
                                                                                          }
                                                                                          addr589:
                                                                                          §§push(int(§§pop()));
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§push(0);
                                                                                          if(_loc34_)
                                                                                          {
                                                                                             §§push(int(§§pop()));
                                                                                             if(!_loc35_)
                                                                                             {
                                                                                                §§goto(addr589);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       var _loc26_:* = §§pop();
                                                                                       var _loc27_:b2Vec2 = _loc22_[_loc25_];
                                                                                       var _loc28_:b2Vec2 = _loc22_[_loc26_];
                                                                                       if(!_loc35_)
                                                                                       {
                                                                                          §§push(_loc19_);
                                                                                          if(_loc34_ || param2)
                                                                                          {
                                                                                             if(§§pop() < Number.MIN_VALUE)
                                                                                             {
                                                                                                if(!(_loc35_ && param1))
                                                                                                {
                                                                                                   param1.§5<§ = 1;
                                                                                                }
                                                                                                param1.§2!5§ = b2Manifold.§<!!§;
                                                                                                while(true)
                                                                                                {
                                                                                                   param1.§-O§.SetV(_loc23_[_loc18_]);
                                                                                                   loop56:
                                                                                                   for(; !(_loc35_ && param1); while(!(_loc35_ && param3))
                                                                                                   {
                                                                                                      §§goto(addr734);
                                                                                                   })
                                                                                                   {
                                                                                                      §§push(param1.m_localPoint);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(0.5);
                                                                                                         addr720:
                                                                                                         addr734:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc27_.x);
                                                                                                            addr722:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc28_.x);
                                                                                                               addr724:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  addr725:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     addr726:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§pop().x = §§pop();
                                                                                                                        continue loop56;
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         §§push(param1.m_localPoint);
                                                                                                         if(_loc35_ && param1)
                                                                                                         {
                                                                                                            continue;
                                                                                                         }
                                                                                                         §§push(0.5);
                                                                                                         if(!_loc35_)
                                                                                                         {
                                                                                                            if(!(_loc35_ && param1))
                                                                                                            {
                                                                                                               §§push(_loc27_.y);
                                                                                                               if(_loc34_ || param1)
                                                                                                               {
                                                                                                                  §§push(_loc28_.y);
                                                                                                                  if(!(_loc35_ && b2Collision))
                                                                                                                  {
                                                                                                                     addr692:
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     if(!(_loc35_ && b2Collision))
                                                                                                                     {
                                                                                                                        if(!(_loc35_ && param3))
                                                                                                                        {
                                                                                                                           addr707:
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           if(!(_loc35_ && param1))
                                                                                                                           {
                                                                                                                              §§pop().y = §§pop();
                                                                                                                              do
                                                                                                                              {
                                                                                                                                 param1.§&!2§[0].m_localPoint.SetV(param4.§,!2§);
                                                                                                                                 if(!(_loc35_ && param3))
                                                                                                                                 {
                                                                                                                                    continue;
                                                                                                                                 }
                                                                                                                                 continue loop56;
                                                                                                                              }
                                                                                                                              while(param1.§&!2§[0].m_id.key = 0, !(_loc34_ || b2Collision));
                                                                                                                              
                                                                                                                              return;
                                                                                                                              addr634:
                                                                                                                           }
                                                                                                                           §§goto(addr720);
                                                                                                                        }
                                                                                                                        §§goto(addr722);
                                                                                                                     }
                                                                                                                     §§goto(addr725);
                                                                                                                  }
                                                                                                                  §§goto(addr724);
                                                                                                               }
                                                                                                               §§goto(addr692);
                                                                                                            }
                                                                                                            §§goto(addr726);
                                                                                                         }
                                                                                                         §§goto(addr707);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§push(_loc15_);
                                                                                                if(_loc34_)
                                                                                                {
                                                                                                   §§push(_loc27_.x);
                                                                                                   if(!_loc35_)
                                                                                                   {
                                                                                                      §§push(§§pop() - §§pop());
                                                                                                      if(_loc34_)
                                                                                                      {
                                                                                                         §§push(_loc28_.x);
                                                                                                         if(_loc34_)
                                                                                                         {
                                                                                                            §§push(_loc27_.x);
                                                                                                            if(!(_loc35_ && param2))
                                                                                                            {
                                                                                                               §§push(§§pop() - §§pop());
                                                                                                               if(!_loc35_)
                                                                                                               {
                                                                                                                  addr807:
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(!(_loc35_ && b2Collision))
                                                                                                                  {
                                                                                                                     §§push(_loc16_);
                                                                                                                     if(!(_loc35_ && param2))
                                                                                                                     {
                                                                                                                        §§push(_loc27_.y);
                                                                                                                        if(!(_loc35_ && b2Collision))
                                                                                                                        {
                                                                                                                           addr832:
                                                                                                                           §§push(§§pop() - §§pop());
                                                                                                                           if(_loc34_ || b2Collision)
                                                                                                                           {
                                                                                                                              addr840:
                                                                                                                              §§push(_loc28_.y);
                                                                                                                              if(!_loc35_)
                                                                                                                              {
                                                                                                                                 addr844:
                                                                                                                                 §§push(§§pop() - _loc27_.y);
                                                                                                                              }
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                           }
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           if(!_loc35_)
                                                                                                                           {
                                                                                                                              addr852:
                                                                                                                              var _loc29_:Number = §§pop();
                                                                                                                              §§push(_loc15_);
                                                                                                                              if(!_loc35_)
                                                                                                                              {
                                                                                                                                 §§push(_loc28_.x);
                                                                                                                                 if(_loc34_ || b2Collision)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() - §§pop());
                                                                                                                                    if(_loc34_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc27_.x);
                                                                                                                                       if(_loc34_ || param1)
                                                                                                                                       {
                                                                                                                                          §§push(_loc28_.x);
                                                                                                                                          if(_loc34_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() - §§pop());
                                                                                                                                             if(_loc34_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                if(!(_loc35_ && param1))
                                                                                                                                                {
                                                                                                                                                   addr902:
                                                                                                                                                   §§push(_loc16_);
                                                                                                                                                   if(!(_loc35_ && b2Collision))
                                                                                                                                                   {
                                                                                                                                                      addr910:
                                                                                                                                                      §§push(_loc28_.y);
                                                                                                                                                      if(!(_loc35_ && param1))
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                         if(_loc34_ || b2Collision)
                                                                                                                                                         {
                                                                                                                                                            addr927:
                                                                                                                                                            §§push(_loc27_.y);
                                                                                                                                                            if(!(_loc35_ && param3))
                                                                                                                                                            {
                                                                                                                                                               addr939:
                                                                                                                                                               §§push(§§pop() * (§§pop() - _loc28_.y));
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr939);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr939);
                                                                                                                                                   }
                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                   if(_loc35_)
                                                                                                                                                   {
                                                                                                                                                   }
                                                                                                                                                   addr944:
                                                                                                                                                   var _loc30_:* = §§pop();
                                                                                                                                                   if(!(_loc35_ && param3))
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc29_);
                                                                                                                                                      if(!(_loc35_ && param2))
                                                                                                                                                      {
                                                                                                                                                         §§push(0);
                                                                                                                                                         loop20:
                                                                                                                                                         for(; §§pop() > §§pop(); if(!(_loc34_ || param3))
                                                                                                                                                         {
                                                                                                                                                            continue;
                                                                                                                                                         },§§goto(addr1650),§§push(_loc20_))
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc30_);
                                                                                                                                                            loop21:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(§§pop() > 0)
                                                                                                                                                               {
                                                                                                                                                                  §§push(0.5);
                                                                                                                                                                  loop22:
                                                                                                                                                                  while(_loc34_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc34_ || param3)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc27_.x);
                                                                                                                                                                        loop23:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc28_.x);
                                                                                                                                                                           loop24:
                                                                                                                                                                           while(_loc34_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                              loop25:
                                                                                                                                                                              while(!(_loc35_ && param3))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                 loop26:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                    loop27:
                                                                                                                                                                                    while(_loc34_)
                                                                                                                                                                                    {
                                                                                                                                                                                       _loc32_ = §§pop();
                                                                                                                                                                                       loop28:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc34_ || b2Collision)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc34_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc34_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc34_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(0.5);
                                                                                                                                                                                                      loop29:
                                                                                                                                                                                                      while(!(_loc35_ && param3))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!(_loc35_ && param3))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc27_.y);
                                                                                                                                                                                                            loop30:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc34_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop23;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(!_loc35_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc35_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc28_.y);
                                                                                                                                                                                                                     loop31:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!_loc35_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!(_loc35_ && b2Collision))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                                                                              loop32:
                                                                                                                                                                                                                              for(; !(_loc35_ && param2); if(_loc35_ && param1)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue;
                                                                                                                                                                                                                              },§§push(§§pop() - §§pop()),if(_loc34_ || param3)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!_loc34_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop29;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr1597:
                                                                                                                                                                                                                                 if(!(_loc35_ && b2Collision))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§goto(addr1253);
                                                                                                                                                                                                                                    §§push(§§pop() * _loc23_[_loc25_].x);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1600);
                                                                                                                                                                                                                                 §§push(_loc16_);
                                                                                                                                                                                                                                 §§push(_loc28_.y);
                                                                                                                                                                                                                              },§§goto(addr1298))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                                                                    loop34:
                                                                                                                                                                                                                                    while(!(_loc35_ && b2Collision))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       _loc33_ = §§pop();
                                                                                                                                                                                                                                       while(_loc34_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(_loc15_);
                                                                                                                                                                                                                                          loop36:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(_loc32_);
                                                                                                                                                                                                                                             if(_loc34_ || param2)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop32;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             loop51:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!_loc35_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop() * _loc23_[_loc25_].y);
                                                                                                                                                                                                                                                   loop52:
                                                                                                                                                                                                                                                   while(!_loc35_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                      loop53:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!_loc35_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc35_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               break;
                                                                                                                                                                                                                                                               addr1298:
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                                                                                                                            loop38:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!(_loc35_ && param2))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(_loc34_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     _loc19_ = §§pop();
                                                                                                                                                                                                                                                                     while(_loc34_ || param2)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(_loc19_);
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!(_loc34_ || param1))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop38;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           if(_loc35_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop53;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           if(_loc34_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(_loc34_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(_loc20_);
                                                                                                                                                                                                                                                                                 if(_loc34_ || param1)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(_loc34_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       continue loop30;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    continue loop51;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 continue loop52;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              continue loop36;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           addr1253:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(!_loc35_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(_loc16_);
                                                                                                                                                                                                                                                                                 if(_loc34_ || param3)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(_loc35_ && b2Collision)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                       break loop29;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    addr1758:
                                                                                                                                                                                                                                                                                    §§push(_loc33_);
                                                                                                                                                                                                                                                                                    if(!_loc35_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(_loc34_ || b2Collision)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(_loc34_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                             continue loop51;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          addr1600:
                                                                                                                                                                                                                                                                                          addr1600:
                                                                                                                                                                                                                                                                                          if(!(_loc35_ && param2))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr1608:
                                                                                                                                                                                                                                                                                             §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                             §§push(_loc16_);
                                                                                                                                                                                                                                                                                             if(!(_loc34_ || param2))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                break loop24;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             if(_loc34_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                addr1795:
                                                                                                                                                                                                                                                                                                §§push(_loc28_.y);
                                                                                                                                                                                                                                                                                                if(!_loc35_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                   break;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§push(§§pop() + §§pop() * (§§pop() - §§pop()));
                                                                                                                                                                                                                                                                                                §§push(_loc20_ * _loc20_);
                                                                                                                                                                                                                                                                                                break loop52;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr1795);
                                                                                                                                                                                                                                                                                             §§push(_loc27_.y);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1795);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       break;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    continue loop31;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 continue loop51;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              continue loop21;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                           if(_loc35_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              break loop25;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           if(_loc34_ || param3)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                              break loop27;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1793);
                                                                                                                                                                                                                                                                           §§push(_loc16_);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        if(_loc34_ || param2)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!_loc35_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              return;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           addr1744:
                                                                                                                                                                                                                                                                           addr1713:
                                                                                                                                                                                                                                                                           addr1727:
                                                                                                                                                                                                                                                                           addr1744:
                                                                                                                                                                                                                                                                           addr1739:
                                                                                                                                                                                                                                                                           addr1718:
                                                                                                                                                                                                                                                                           addr1744:
                                                                                                                                                                                                                                                                           addr1732:
                                                                                                                                                                                                                                                                           addr1723:
                                                                                                                                                                                                                                                                           addr1740:
                                                                                                                                                                                                                                                                           param1.§5<§ = 1;
                                                                                                                                                                                                                                                                           param1.§2!5§ = b2Manifold.§<!!§;
                                                                                                                                                                                                                                                                           addr1731:
                                                                                                                                                                                                                                                                           param1.§-O§.x = _loc15_ - _loc27_.x;
                                                                                                                                                                                                                                                                           addr1722:
                                                                                                                                                                                                                                                                           param1.§-O§.y = _loc16_ - _loc27_.y;
                                                                                                                                                                                                                                                                           param1.§-O§.Normalize();
                                                                                                                                                                                                                                                                           addr1730:
                                                                                                                                                                                                                                                                           addr1728:
                                                                                                                                                                                                                                                                           addr1719:
                                                                                                                                                                                                                                                                           addr1721:
                                                                                                                                                                                                                                                                           addr1727:
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!(_loc34_ || param3))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              break loop20;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           param1.§5<§ = 1;
                                                                                                                                                                                                                                                                           if(!(_loc35_ && b2Collision))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              param1.§2!5§ = b2Manifold.§<!!§;
                                                                                                                                                                                                                                                                              addr1540:
                                                                                                                                                                                                                                                                              if(!_loc35_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr1508:
                                                                                                                                                                                                                                                                                 §§push(param1.§-O§);
                                                                                                                                                                                                                                                                                 if(_loc34_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr1511:
                                                                                                                                                                                                                                                                                    §§push(_loc15_);
                                                                                                                                                                                                                                                                                    §§push(_loc28_.x);
                                                                                                                                                                                                                                                                                    if(_loc34_ || param3)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr1521:
                                                                                                                                                                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                       if(!_loc35_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(_loc34_ || param1)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(_loc34_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§pop().x = §§pop();
                                                                                                                                                                                                                                                                                                addr1477:
                                                                                                                                                                                                                                                                                                §§push(param1.§-O§);
                                                                                                                                                                                                                                                                                                §§push(_loc16_);
                                                                                                                                                                                                                                                                                                if(!_loc35_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(_loc28_.y);
                                                                                                                                                                                                                                                                                                   if(_loc34_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(_loc34_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         addr1487:
                                                                                                                                                                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                         if(_loc34_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(_loc34_ || param3)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(!(_loc35_ && param2))
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§pop().y = §§pop();
                                                                                                                                                                                                                                                                                                                  break;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr1731);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr1511);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr1521);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1730);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1511);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1487);
                                                                                                                                                                                                                                                                                                addr1533:
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr1728);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1719);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1722);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1721);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1727);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              addr953:
                                                                                                                                                                                                                                                                              return;
                                                                                                                                                                                                                                                                              addr1683:
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        param1.m_localPoint.SetV(_loc27_);
                                                                                                                                                                                                                                                                        do
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           param1.§&!2§[0].m_localPoint.SetV(param4.§,!2§);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        while(!(_loc34_ || param2));
                                                                                                                                                                                                                                                                        
                                                                                                                                                                                                                                                                        param1.§&!2§[0].m_id.key = 0;
                                                                                                                                                                                                                                                                        §§goto(addr1683);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     addr1457:
                                                                                                                                                                                                                                                                     §§push(param1.§-O§.Normalize());
                                                                                                                                                                                                                                                                     break loop22;
                                                                                                                                                                                                                                                                     addr1308:
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  break;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               continue loop34;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            continue loop26;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         continue loop27;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      continue loop22;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr1801:
                                                                                                                                                                                                                                                   if(§§pop() > §§pop())
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      break loop28;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1740);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1608);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue loop29;
                                                                                                                                                                                                                                          if(_loc35_ && param2)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          if(!(_loc35_ && b2Collision))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!(_loc34_ || param2))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§goto(addr1732);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr953);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1723);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr953);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr1586:
                                                                                                                                                                                                                                    §§push(_loc15_);
                                                                                                                                                                                                                                    if(_loc34_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!_loc35_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(_loc28_.x);
                                                                                                                                                                                                                                          if(_loc34_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                             break loop32;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1600);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1795);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1608);
                                                                                                                                                                                                                                    addr1080:
                                                                                                                                                                                                                                    if(!(_loc34_ || param1))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§pop();
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(param1.m_localPoint);
                                                                                                                                                                                                                                       if(!_loc35_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!_loc35_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§pop().Set(_loc32_,_loc33_);
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!(_loc35_ && param3))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr1055:
                                                                                                                                                                                                                                                   if(!(_loc35_ && param1))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!_loc35_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop28;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr1211:
                                                                                                                                                                                                                                                      while(_loc34_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(param1.§-O§);
                                                                                                                                                                                                                                                         loop44:
                                                                                                                                                                                                                                                         while(_loc34_ || param2)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!(_loc35_ && param1))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§pop().x = _loc23_[_loc25_].x;
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!_loc35_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc34_ || param2)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(param1.§-O§);
                                                                                                                                                                                                                                                                        loop46:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!_loc35_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(!_loc35_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc34_ || param3)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(!(_loc35_ && param2))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§pop().y = _loc23_[_loc25_].y;
                                                                                                                                                                                                                                                                                       while(!_loc35_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          continue loop46;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1694);
                                                                                                                                                                                                                                                                                       addr1115:
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§goto(addr1718);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1708);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§goto(addr1508);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              break;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           continue loop44;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1477);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     break;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1308);
                                                                                                                                                                                                                                                                  §§goto(addr1055);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               addr1437:
                                                                                                                                                                                                                                                               if(_loc34_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!(_loc34_ || param1))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§goto(addr1547);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  param1.§&!2§[0].m_id.key = 0;
                                                                                                                                                                                                                                                                  §§goto(addr1426);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1540);
                                                                                                                                                                                                                                                               addr1140:
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1718);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1457);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         param1.§2!5§ = b2Manifold.§<!!§;
                                                                                                                                                                                                                                                         §§goto(addr1156);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr1156:
                                                                                                                                                                                                                                                      addr1163:
                                                                                                                                                                                                                                                      if(_loc34_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr1213:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            param1.§5<§ = 1;
                                                                                                                                                                                                                                                            §§goto(addr1163);
                                                                                                                                                                                                                                                            §§goto(addr1213);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         addr1159:
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1744);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1140);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1115);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             continue loop28;
                                                                                                                                                                                                                                             addr1048:
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1705);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       break;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§pop().SetV(_loc28_);
                                                                                                                                                                                                                                    param1.§&!2§[0].m_localPoint.SetV(param4.§,!2§);
                                                                                                                                                                                                                                    §§goto(addr1437);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1597);
                                                                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        continue loop24;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr1791:
                                                                                                                                                                                                                     §§goto(addr1792);
                                                                                                                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  break;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1597);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr1760:
                                                                                                                                                                                                            §§push(§§pop() - _loc27_.x);
                                                                                                                                                                                                            if(!(_loc35_ && param3))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr1781:
                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                               §§push(_loc16_);
                                                                                                                                                                                                               if(_loc34_ || param1)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr1791);
                                                                                                                                                                                                                  §§push(_loc27_.y);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1795);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1801);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1758);
                                                                                                                                                                                                         §§push(_loc27_.x);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr1759:
                                                                                                                                                                                                      §§goto(addr1760);
                                                                                                                                                                                                      §§push(_loc15_);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   break;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1666);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1533);
                                                                                                                                                                                          }
                                                                                                                                                                                          addr1466:
                                                                                                                                                                                          if(!(_loc35_ && b2Collision))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr1450);
                                                                                                                                                                                             §§push(param1.m_localPoint);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1739);
                                                                                                                                                                                       }
                                                                                                                                                                                       return;
                                                                                                                                                                                    }
                                                                                                                                                                                    if(_loc34_ || param2)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc20_);
                                                                                                                                                                                       break loop25;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1781);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              continue loop20;
                                                                                                                                                                           }
                                                                                                                                                                           addr1650:
                                                                                                                                                                           if(_loc34_ || param1)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc34_ || param1)
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr1665);
                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr1760);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1727);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1795);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1562);
                                                                                                                                                                  }
                                                                                                                                                                  if(_loc34_ || b2Collision)
                                                                                                                                                                  {
                                                                                                                                                                     §§pop();
                                                                                                                                                                     §§goto(addr1466);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1713);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1562);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1756);
                                                                                                                                                         §§push(_loc15_);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1759);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1744);
                                                                                                                                                }
                                                                                                                                                §§goto(addr944);
                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                             }
                                                                                                                                             §§goto(addr927);
                                                                                                                                          }
                                                                                                                                          §§goto(addr939);
                                                                                                                                       }
                                                                                                                                       §§goto(addr910);
                                                                                                                                    }
                                                                                                                                    §§goto(addr944);
                                                                                                                                 }
                                                                                                                                 §§goto(addr927);
                                                                                                                              }
                                                                                                                              §§goto(addr902);
                                                                                                                           }
                                                                                                                           §§goto(addr852);
                                                                                                                        }
                                                                                                                        §§goto(addr844);
                                                                                                                     }
                                                                                                                     §§goto(addr840);
                                                                                                                  }
                                                                                                                  §§goto(addr852);
                                                                                                               }
                                                                                                               §§goto(addr840);
                                                                                                            }
                                                                                                            §§goto(addr832);
                                                                                                         }
                                                                                                         §§goto(addr840);
                                                                                                      }
                                                                                                      §§goto(addr852);
                                                                                                   }
                                                                                                   §§goto(addr807);
                                                                                                }
                                                                                                §§goto(addr852);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr852);
                                                                                       }
                                                                                       §§goto(addr634);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr574);
                                                                           }
                                                                           §§goto(addr564);
                                                                        }
                                                                        §§goto(addr273);
                                                                     }
                                                                     §§goto(addr276);
                                                                  }
                                                                  §§goto(addr273);
                                                               }
                                                               §§goto(addr261);
                                                            }
                                                            §§goto(addr243);
                                                         }
                                                         §§goto(addr231);
                                                      }
                                                      §§goto(addr243);
                                                   }
                                                   §§goto(addr201);
                                                }
                                                §§goto(addr203);
                                             }
                                             §§goto(addr190);
                                          }
                                          §§goto(addr184);
                                       }
                                       §§goto(addr193);
                                    }
                                    §§goto(addr192);
                                 }
                                 §§goto(addr176);
                              }
                              §§goto(addr187);
                           }
                           §§goto(addr150);
                        }
                        §§push(§§pop() + §§pop());
                     }
                     §§goto(addr146);
                  }
                  §§goto(addr150);
               }
               §§push(§§pop() + §§pop());
            }
            §§goto(addr100);
         }
         §§goto(addr103);
      }
      
      public static function § V§(param1:b2AABB, param2:b2AABB) : Boolean
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc3_:b2Vec2 = param2.§4m§;
         var _loc4_:b2Vec2 = param1.§=!`§;
         §§push(_loc3_.x);
         if(!_loc9_)
         {
            §§push(§§pop() - _loc4_.x);
            if(!_loc9_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         §§push(_loc3_.y);
         if(_loc10_ || param1)
         {
            §§push(§§pop() - _loc4_.y);
            if(_loc10_ || b2Collision)
            {
               addr55:
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            _loc3_ = param1.§4m§;
            _loc4_ = param2.§=!`§;
            §§push(_loc3_.x);
            if(_loc10_)
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
               if(!_loc9_)
               {
                  addr90:
                  §§push(Number(§§pop()));
               }
               var _loc8_:* = §§pop();
               if(!(_loc9_ && param2))
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
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           while(true)
                           {
                              §§push(§§pop());
                              if(!(_loc9_ && _loc3_))
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              loop4:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    while(true)
                                    {
                                       §§pop();
                                       addr310:
                                       while(true)
                                       {
                                          §§push(_loc6_);
                                          addr285:
                                          while(_loc10_)
                                          {
                                             §§push(0);
                                             while(true)
                                             {
                                                §§push(§§pop() > §§pop());
                                                addr289:
                                                addr227:
                                                while(true)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                }
                                                while(_loc10_ || _loc3_)
                                                {
                                                   if(!(_loc10_ || _loc3_))
                                                   {
                                                      continue loop1;
                                                   }
                                                   §§push(§§pop() > §§pop());
                                                   while(true)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      addr243:
                                                      while(_loc10_)
                                                      {
                                                         continue loop4;
                                                      }
                                                      §§goto(addr289);
                                                   }
                                                }
                                             }
                                          }
                                          continue loop0;
                                       }
                                    }
                                    addr309:
                                 }
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          addr293:
                                          return false;
                                          addr292:
                                       }
                                       else
                                       {
                                          addr224:
                                       }
                                       while(true)
                                       {
                                          §§push(_loc7_);
                                          addr226:
                                          while(true)
                                          {
                                             §§goto(addr227);
                                          }
                                       }
                                       addr109:
                                       if(!(_loc9_ && param1))
                                       {
                                          return §§pop();
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr282);
            }
            §§goto(addr90);
         }
         §§goto(addr55);
      }
   }
}
