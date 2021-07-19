package § G§
{
   import §-!C§.*;
   import §9"§.*;
   import §>!@§.*;
   
   use namespace b2internal;
   
   public class b2Collision
   {
      
      public static const b2_nullFeature:uint = 255;
      
      private static var §3!&§:Vector.<§&S§>;
      
      private static var s_clipPoints1:Vector.<§&S§>;
      
      private static var s_clipPoints2:Vector.<§&S§>;
      
      private static var §"!6§:Vector.<int>;
      
      private static var §9!<§:Vector.<int>;
      
      private static var §4!I§:b2Vec2;
      
      private static var §"!M§:b2Vec2;
      
      private static var §?! §:b2Vec2;
      
      private static var §9!$§:b2Vec2;
      
      private static var §-s§:b2Vec2;
      
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
               §3!&§ = §7!L§();
               loop1:
               while(true)
               {
                  s_clipPoints1 = §7!L§();
                  loop2:
                  while(true)
                  {
                     s_clipPoints2 = §7!L§();
                     loop3:
                     while(true)
                     {
                        §"!6§ = new Vector.<int>(1);
                        while(true)
                        {
                           §9!<§ = new Vector.<int>(1);
                           addr149:
                           loop9:
                           for(; !(_loc1_ && _loc1_); if(_loc1_ && _loc1_)
                           {
                              continue;
                           },s_v12 = new b2Vec2(),while(_loc2_)
                           {
                              b2CollidePolyTempVec = new b2Vec2();
                              if(!(_loc2_ || _loc1_))
                              {
                                 continue;
                              }
                              §§goto(addr36);
                           },§§goto(addr149))
                           {
                              if(!_loc1_)
                              {
                                 §-s§ = new b2Vec2();
                                 loop10:
                                 do
                                 {
                                    s_tangent2 = new b2Vec2();
                                    loop11:
                                    while(_loc2_)
                                    {
                                       if(_loc2_)
                                       {
                                          s_v11 = new b2Vec2();
                                          while(true)
                                          {
                                             if(!_loc1_)
                                             {
                                                continue loop9;
                                             }
                                             continue loop11;
                                             addr36:
                                             if(!(_loc1_ && b2Collision))
                                             {
                                                continue loop10;
                                             }
                                          }
                                          continue loop9;
                                       }
                                       continue loop1;
                                    }
                                    continue loop3;
                                 }
                                 while(!_loc2_);
                                 
                                 addr45:
                                 if(!_loc2_)
                                 {
                                    while(true)
                                    {
                                       §9!$§ = new b2Vec2();
                                       continue loop9;
                                       §§goto(addr45);
                                    }
                                    addr119:
                                 }
                                 if(!_loc1_)
                                 {
                                    return;
                                 }
                                 loop7:
                                 while(true)
                                 {
                                    if(_loc2_)
                                    {
                                       continue loop0;
                                    }
                                    addr140:
                                    while(true)
                                    {
                                       §"!M§ = new b2Vec2();
                                       continue loop7;
                                    }
                                 }
                                 continue loop1;
                              }
                              continue loop2;
                           }
                           while(true)
                           {
                              §4!I§ = new b2Vec2();
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr140);
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
      
      public static function §]q§(param1:Vector.<§&S§>, param2:Vector.<§&S§>, param3:b2Vec2, param4:Number) : int
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc5_:§&S§ = null;
         var _loc6_:int = 0;
         var _loc7_:b2Vec2 = null;
         var _loc9_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:b2Vec2 = null;
         var _loc13_:§&S§ = null;
         if(!_loc14_)
         {
            _loc6_ = 0;
         }
         _loc7_ = (_loc5_ = param2[0]).v;
         var _loc8_:b2Vec2 = (_loc5_ = param2[1]).v;
         if(_loc15_ || param2)
         {
            §§push(param3.x);
            if(_loc15_)
            {
               §§push(_loc7_.x);
               if(!(_loc14_ && param2))
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc14_ && b2Collision))
                  {
                     §§push(param3.y);
                     if(!_loc14_)
                     {
                        §§push(_loc7_.y);
                        if(!(_loc14_ && param3))
                        {
                           §§push(§§pop() * §§pop());
                           if(!_loc14_)
                           {
                              §§push(§§pop() + §§pop());
                              if(_loc15_)
                              {
                                 addr104:
                                 §§push(param4);
                                 if(_loc15_ || param1)
                                 {
                                    addr112:
                                    §§push(§§pop() - §§pop());
                                    if(!_loc14_)
                                    {
                                       §§push(Number(§§pop()));
                                       if(!_loc14_)
                                       {
                                          addr118:
                                          _loc9_ = §§pop();
                                          §§push(param3.x);
                                          if(!_loc14_)
                                          {
                                             addr123:
                                             §§push(_loc8_.x);
                                             if(!_loc14_)
                                             {
                                                addr127:
                                                §§push(§§pop() * §§pop());
                                                if(!_loc14_)
                                                {
                                                   addr130:
                                                   §§push(param3.y);
                                                   if(!_loc14_)
                                                   {
                                                      addr134:
                                                      §§push(§§pop() * _loc8_.y);
                                                      if(_loc15_)
                                                      {
                                                         addr157:
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc15_ || param1)
                                                         {
                                                            addr147:
                                                            §§push(param4);
                                                         }
                                                         var _loc10_:* = §§pop();
                                                         if(_loc15_)
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
                                                                     addr281:
                                                                     while(true)
                                                                     {
                                                                        param1[_loc6_++].Set(param2[0]);
                                                                        addr291:
                                                                        while(true)
                                                                        {
                                                                        }
                                                                     }
                                                                     addr281:
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
                                                                        while(!_loc14_)
                                                                        {
                                                                           if(§§pop() <= §§pop())
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 param1[_loc6_++].Set(param2[1]);
                                                                                 addr275:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc15_)
                                                                                    {
                                                                                       §§goto(addr281);
                                                                                    }
                                                                                 }
                                                                                 addr216:
                                                                                 §§goto(addr291);
                                                                                 if(_loc14_ && param2)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 §§push(_loc9_);
                                                                                 if(_loc15_ || param1)
                                                                                 {
                                                                                    §§push(_loc9_);
                                                                                    if(_loc15_)
                                                                                    {
                                                                                       addr234:
                                                                                       §§push(§§pop() - _loc10_);
                                                                                    }
                                                                                    if(_loc14_ && param3)
                                                                                    {
                                                                                       continue loop4;
                                                                                    }
                                                                                    addr247:
                                                                                    §§push(§§pop() / §§pop());
                                                                                    if(_loc15_)
                                                                                    {
                                                                                       addr246:
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                    _loc11_ = §§pop();
                                                                                    addr248:
                                                                                    if(!_loc15_)
                                                                                    {
                                                                                       §§goto(addr275);
                                                                                    }
                                                                                    if(!(_loc14_ && param2))
                                                                                    {
                                                                                       if(false)
                                                                                       {
                                                                                          continue loop2;
                                                                                       }
                                                                                       §§push(_loc12_ = (_loc5_ = param1[_loc6_]).v);
                                                                                       §§push(_loc7_.x);
                                                                                       if(_loc15_)
                                                                                       {
                                                                                          §§push(_loc11_);
                                                                                          if(!_loc14_)
                                                                                          {
                                                                                             §§push(_loc8_.x);
                                                                                             if(_loc15_ || param1)
                                                                                             {
                                                                                                §§push(§§pop() - _loc7_.x);
                                                                                             }
                                                                                             §§push(§§pop() * §§pop());
                                                                                          }
                                                                                          §§push(§§pop() + §§pop());
                                                                                       }
                                                                                       §§pop().x = §§pop();
                                                                                       if(!_loc14_)
                                                                                       {
                                                                                          §§push(_loc12_);
                                                                                          §§push(_loc7_.y);
                                                                                          if(!(_loc14_ && param1))
                                                                                          {
                                                                                             §§push(_loc11_);
                                                                                             if(!_loc14_)
                                                                                             {
                                                                                                §§push(_loc8_.y);
                                                                                                if(!_loc14_)
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
                                                                                             addr359:
                                                                                             _loc13_ = param2[0];
                                                                                             if(!_loc14_)
                                                                                             {
                                                                                                _loc5_.id = _loc13_.id;
                                                                                                if(!(_loc14_ && param1))
                                                                                                {
                                                                                                   addr399:
                                                                                                   _loc6_++;
                                                                                                   addr377:
                                                                                                }
                                                                                                §§goto(addr400);
                                                                                             }
                                                                                             §§goto(addr377);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             _loc13_ = param2[1];
                                                                                             if(_loc15_)
                                                                                             {
                                                                                                _loc5_.id = _loc13_.id;
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr399);
                                                                                       }
                                                                                       §§goto(addr359);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr291);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr246);
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc9_);
                                                                              if(!(_loc14_ && param3))
                                                                              {
                                                                                 §§push(_loc10_);
                                                                                 if(_loc15_ || param1)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(!(_loc14_ && b2Collision))
                                                                                    {
                                                                                       if(!_loc15_)
                                                                                       {
                                                                                          continue loop3;
                                                                                       }
                                                                                       if(_loc14_)
                                                                                       {
                                                                                          continue loop0;
                                                                                       }
                                                                                       §§push(0);
                                                                                       if(_loc15_ || b2Collision)
                                                                                       {
                                                                                          if(§§pop() < §§pop())
                                                                                          {
                                                                                             if(_loc15_ || param3)
                                                                                             {
                                                                                                §§goto(addr216);
                                                                                             }
                                                                                             §§goto(addr248);
                                                                                          }
                                                                                          addr400:
                                                                                          return _loc6_;
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr247);
                                                                                 }
                                                                                 §§goto(addr234);
                                                                              }
                                                                              §§goto(addr247);
                                                                           }
                                                                        }
                                                                        continue loop1;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr281);
                                                      }
                                                   }
                                                   §§push(§§pop() - §§pop());
                                                   if(!(_loc14_ && b2Collision))
                                                   {
                                                      §§push(Number(§§pop()));
                                                   }
                                                }
                                                §§goto(addr147);
                                             }
                                             §§goto(addr134);
                                          }
                                          §§goto(addr157);
                                       }
                                       §§goto(addr147);
                                    }
                                    §§goto(addr130);
                                 }
                                 §§goto(addr127);
                              }
                              §§goto(addr118);
                           }
                           §§goto(addr112);
                        }
                     }
                     §§goto(addr134);
                  }
                  §§goto(addr104);
               }
               §§goto(addr127);
            }
            §§goto(addr123);
         }
         §§goto(addr118);
      }
      
      public static function §?!>§(param1:b2PolygonShape, param2:b2Transform, param3:int, param4:b2PolygonShape, param5:b2Transform) : Number
      {
         var _loc26_:Boolean = false;
         var _loc27_:Boolean = true;
         var _loc11_:b2Mat22 = null;
         var _loc12_:b2Vec2 = null;
         var _loc25_:* = NaN;
         §§push(param1.§^L§);
         if(_loc27_)
         {
            §§push(int(§§pop()));
         }
         var _loc6_:* = §§pop();
         var _loc7_:Vector.<b2Vec2> = param1.§3!S§;
         var _loc8_:Vector.<b2Vec2> = param1.§0!'§;
         §§push(param4.§^L§);
         if(_loc27_ || param3)
         {
            §§push(int(§§pop()));
         }
         var _loc9_:* = §§pop();
         var _loc10_:Vector.<b2Vec2> = param4.§3!S§;
         _loc11_ = param2.R;
         _loc12_ = _loc8_[param3];
         §§push(_loc11_.col1.x);
         if(!(_loc26_ && b2Collision))
         {
            §§push(_loc12_.x);
            if(_loc27_ || param2)
            {
               §§push(§§pop() * §§pop());
               if(!_loc26_)
               {
                  addr85:
                  §§push(_loc11_.col2.x);
                  if(!_loc26_)
                  {
                     addr90:
                     §§push(§§pop() * _loc12_.y);
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc27_ || param3)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var _loc13_:* = §§pop();
               §§push(_loc11_.col1.y);
               if(!(_loc26_ && param1))
               {
                  §§push(_loc12_.x);
                  if(_loc27_ || param2)
                  {
                     addr136:
                     §§push(§§pop() * §§pop());
                     if(!_loc26_)
                     {
                        §§push(_loc11_.col2.y);
                        if(_loc27_)
                        {
                           §§push(§§pop() * _loc12_.y);
                        }
                     }
                     var _loc14_:Number = §§pop();
                     §§push((_loc11_ = param5.R).col1.x);
                     if(!(_loc26_ && param1))
                     {
                        §§push(_loc13_);
                        if(_loc27_)
                        {
                           §§push(§§pop() * §§pop());
                           if(!_loc26_)
                           {
                              §§push(_loc11_.col1.y);
                              if(!(_loc26_ && param3))
                              {
                                 addr168:
                                 §§push(§§pop() * _loc14_);
                              }
                              §§push(§§pop() + §§pop());
                              if(!_loc26_)
                              {
                                 addr173:
                                 §§push(Number(§§pop()));
                              }
                           }
                           var _loc15_:* = §§pop();
                           §§push(_loc11_.col2.x);
                           if(!_loc26_)
                           {
                              §§push(_loc13_);
                              if(_loc27_)
                              {
                                 addr206:
                                 addr207:
                                 §§push(§§pop() * §§pop());
                                 if(_loc27_ || param2)
                                 {
                                    §§push(_loc11_.col2.y);
                                    if(_loc27_)
                                    {
                                       §§push(§§pop() * _loc14_);
                                    }
                                 }
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
                                       if(_loc27_)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(_loc27_ || param3)
                                          {
                                             addr238:
                                             §§push(_loc12_.y);
                                             if(!_loc26_)
                                             {
                                                §§push(§§pop() * _loc16_);
                                                if(_loc27_ || param1)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   if(_loc27_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      if(_loc27_ || b2Collision)
                                                      {
                                                         §§push(§§pop());
                                                         if(!_loc26_)
                                                         {
                                                            addr265:
                                                            _loc25_ = §§pop();
                                                            if(!_loc26_)
                                                            {
                                                               addr269:
                                                               addr268:
                                                               if(§§pop() < _loc18_)
                                                               {
                                                                  if(!(_loc27_ || b2Collision))
                                                                  {
                                                                     continue;
                                                                  }
                                                                  §§push(_loc25_);
                                                                  if(_loc27_ || param1)
                                                                  {
                                                                     addr286:
                                                                     _loc18_ = §§pop();
                                                                     if(!(_loc26_ && b2Collision))
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
                                                                  }
                                                                  §§goto(addr286);
                                                               }
                                                               _loc19_++;
                                                               continue;
                                                            }
                                                         }
                                                         §§goto(addr269);
                                                      }
                                                      §§goto(addr268);
                                                   }
                                                   §§goto(addr286);
                                                }
                                             }
                                             §§goto(addr265);
                                          }
                                       }
                                       §§goto(addr269);
                                    }
                                    §§goto(addr238);
                                 }
                                 _loc12_ = _loc7_[param3];
                                 _loc11_ = param2.R;
                                 §§push(param2.position.x);
                                 if(!(_loc26_ && param3))
                                 {
                                    §§push(_loc11_.col1.x);
                                    if(!(_loc26_ && param3))
                                    {
                                       §§push(_loc12_.x);
                                       if(_loc27_ || b2Collision)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(!(_loc26_ && param3))
                                          {
                                             addr366:
                                             §§push(_loc11_.col2.x);
                                             if(!_loc26_)
                                             {
                                                addr371:
                                                §§push(§§pop() * _loc12_.y);
                                             }
                                             §§push(§§pop() + §§pop());
                                          }
                                          §§push(§§pop() + §§pop());
                                          if(!(_loc26_ && param1))
                                          {
                                             addr383:
                                             §§push(Number(§§pop()));
                                          }
                                          var _loc20_:* = §§pop();
                                          §§push(param2.position.y);
                                          if(_loc27_)
                                          {
                                             §§push(_loc11_.col1.y);
                                             if(!_loc26_)
                                             {
                                                §§push(_loc12_.x);
                                                if(_loc27_ || param2)
                                                {
                                                   addr416:
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc27_)
                                                   {
                                                      §§push(_loc11_.col2.y);
                                                      if(!_loc26_)
                                                      {
                                                         §§push(§§pop() * _loc12_.y);
                                                      }
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                   if(_loc27_ || b2Collision)
                                                   {
                                                      addr425:
                                                      var _loc21_:Number = §§pop();
                                                      _loc12_ = _loc10_[_loc17_];
                                                      _loc11_ = param5.R;
                                                      §§push(param5.position.x);
                                                      if(_loc27_)
                                                      {
                                                         §§push(_loc11_.col1.x);
                                                         if(!(_loc26_ && param3))
                                                         {
                                                            §§push(_loc12_.x);
                                                            if(_loc27_)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(!_loc26_)
                                                               {
                                                                  addr466:
                                                                  §§push(_loc11_.col2.x);
                                                                  if(_loc27_)
                                                                  {
                                                                     addr462:
                                                                     §§push(§§pop() * _loc12_.y);
                                                                  }
                                                                  §§push(§§pop() + (§§pop() + §§pop()));
                                                                  if(!_loc26_)
                                                                  {
                                                                     addr470:
                                                                     var _loc22_:* = Number(§§pop());
                                                                     §§push(param5.position.y);
                                                                     if(_loc27_ || param1)
                                                                     {
                                                                        §§push(_loc11_.col1.y);
                                                                        if(_loc27_ || b2Collision)
                                                                        {
                                                                           §§push(_loc12_.x);
                                                                           if(!_loc26_)
                                                                           {
                                                                              addr507:
                                                                              §§push(§§pop() * §§pop());
                                                                              if(!_loc26_)
                                                                              {
                                                                                 §§push(_loc11_.col2.y);
                                                                                 if(_loc27_)
                                                                                 {
                                                                                    §§push(§§pop() * _loc12_.y);
                                                                                 }
                                                                              }
                                                                              §§push(§§pop() + §§pop());
                                                                              if(_loc27_ || param2)
                                                                              {
                                                                                 addr515:
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                              var _loc23_:* = §§pop();
                                                                              if(_loc27_ || param3)
                                                                              {
                                                                                 §§push(_loc22_);
                                                                                 if(_loc27_)
                                                                                 {
                                                                                    §§push(_loc20_);
                                                                                    if(!(_loc26_ && param2))
                                                                                    {
                                                                                       §§push(§§pop() - §§pop());
                                                                                       if(_loc27_)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          if(_loc27_)
                                                                                          {
                                                                                             _loc22_ = §§pop();
                                                                                             if(!_loc26_)
                                                                                             {
                                                                                                §§push(_loc23_);
                                                                                                if(_loc27_ || param2)
                                                                                                {
                                                                                                }
                                                                                                §§goto(addr613);
                                                                                             }
                                                                                             addr572:
                                                                                             §§push(_loc22_);
                                                                                             if(_loc27_)
                                                                                             {
                                                                                                §§push(_loc13_);
                                                                                                if(_loc27_ || param1)
                                                                                                {
                                                                                                   addr583:
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(_loc27_ || b2Collision)
                                                                                                   {
                                                                                                      addr591:
                                                                                                      §§push(_loc23_);
                                                                                                      if(!_loc26_)
                                                                                                      {
                                                                                                         addr594:
                                                                                                         §§push(§§pop() * _loc14_);
                                                                                                         if(!_loc27_)
                                                                                                         {
                                                                                                         }
                                                                                                         §§goto(addr613);
                                                                                                      }
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      if(!_loc26_)
                                                                                                      {
                                                                                                         addr611:
                                                                                                         addr613:
                                                                                                         return §§pop();
                                                                                                         §§push(Number(§§pop()));
                                                                                                      }
                                                                                                      §§goto(addr613);
                                                                                                   }
                                                                                                   §§goto(addr611);
                                                                                                }
                                                                                                §§goto(addr613);
                                                                                             }
                                                                                             §§goto(addr611);
                                                                                          }
                                                                                          §§goto(addr613);
                                                                                       }
                                                                                       §§push(_loc21_);
                                                                                       if(_loc27_ || param2)
                                                                                       {
                                                                                          §§push(§§pop() - §§pop());
                                                                                          if(_loc27_)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             if(_loc27_ || param2)
                                                                                             {
                                                                                                _loc23_ = §§pop();
                                                                                                §§goto(addr572);
                                                                                             }
                                                                                             §§goto(addr591);
                                                                                          }
                                                                                          §§goto(addr611);
                                                                                       }
                                                                                       §§goto(addr583);
                                                                                    }
                                                                                    §§goto(addr594);
                                                                                 }
                                                                                 §§goto(addr613);
                                                                              }
                                                                              §§goto(addr572);
                                                                           }
                                                                           §§push(§§pop() + §§pop());
                                                                        }
                                                                        §§goto(addr507);
                                                                     }
                                                                     §§goto(addr515);
                                                                  }
                                                                  §§goto(addr470);
                                                               }
                                                               §§goto(addr466);
                                                            }
                                                            §§goto(addr462);
                                                         }
                                                         §§goto(addr466);
                                                      }
                                                      §§goto(addr470);
                                                   }
                                                   §§goto(addr425);
                                                }
                                                §§push(§§pop() + §§pop());
                                             }
                                             §§goto(addr416);
                                          }
                                          §§goto(addr425);
                                       }
                                       §§goto(addr371);
                                    }
                                    §§goto(addr366);
                                 }
                                 §§goto(addr383);
                              }
                              §§push(§§pop() + §§pop());
                              if(!(_loc26_ && b2Collision))
                              {
                                 §§goto(addr206);
                              }
                              §§goto(addr207);
                           }
                           §§goto(addr206);
                        }
                        §§goto(addr168);
                     }
                     §§goto(addr173);
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc26_)
                  {
                  }
               }
               §§goto(addr136);
            }
            §§goto(addr90);
         }
         §§goto(addr85);
      }
      
      public static function §4!M§(param1:Vector.<int>, param2:b2PolygonShape, param3:b2Transform, param4:b2PolygonShape, param5:b2Transform) : Number
      {
         var _loc26_:Boolean = true;
         var _loc27_:Boolean = false;
         var _loc8_:b2Vec2 = null;
         var _loc9_:b2Mat22 = null;
         var _loc22_:* = 0;
         var _loc23_:* = NaN;
         var _loc24_:* = 0;
         var _loc25_:* = NaN;
         §§push(param2.§^L§);
         if(!(_loc27_ && b2Collision))
         {
            §§push(int(§§pop()));
         }
         var _loc6_:* = §§pop();
         var _loc7_:Vector.<b2Vec2> = param2.§0!'§;
         _loc9_ = param5.R;
         _loc8_ = param4.§9!Z§;
         §§push(param5.position.x);
         if(!_loc27_)
         {
            §§push(_loc9_.col1.x);
            if(!_loc27_)
            {
               §§push(_loc8_.x);
               if(_loc26_)
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc27_)
                  {
                     addr70:
                     §§push(_loc9_.col2.x);
                     if(!(_loc27_ && param1))
                     {
                        addr80:
                        §§push(§§pop() * _loc8_.y);
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc26_)
                  {
                     addr88:
                     var _loc10_:* = Number(§§pop());
                     §§push(param5.position.y);
                     if(!_loc27_)
                     {
                        §§push(_loc9_.col1.y);
                        if(!_loc27_)
                        {
                           §§push(_loc8_.x);
                           if(_loc26_)
                           {
                              addr125:
                              §§push(§§pop() * §§pop());
                              if(!(_loc27_ && param3))
                              {
                                 §§push(_loc9_.col2.y);
                                 if(_loc26_ || b2Collision)
                                 {
                                    §§push(§§pop() * _loc8_.y);
                                 }
                              }
                              §§push(§§pop() + §§pop());
                              if(!_loc27_)
                              {
                                 addr128:
                                 §§push(Number(§§pop()));
                              }
                              var _loc11_:* = §§pop();
                              _loc9_ = param3.R;
                              _loc8_ = param2.§9!Z§;
                              if(!_loc27_)
                              {
                                 §§push(_loc10_);
                                 if(_loc26_ || param1)
                                 {
                                    §§push(param3.position);
                                    if(!_loc27_)
                                    {
                                       §§push(§§pop().x);
                                       if(_loc26_ || param3)
                                       {
                                          §§push(_loc9_.col1);
                                          if(_loc26_ || b2Collision)
                                          {
                                             §§push(§§pop().x);
                                             if(!(_loc27_ && b2Collision))
                                             {
                                                §§push(_loc8_.x);
                                                if(_loc26_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(!(_loc27_ && param1))
                                                   {
                                                      §§push(_loc9_.col2);
                                                      if(!(_loc27_ && param2))
                                                      {
                                                         §§push(§§pop().x);
                                                         if(_loc26_)
                                                         {
                                                            §§push(_loc8_.y);
                                                            if(!_loc27_)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(!(_loc27_ && param2))
                                                               {
                                                                  addr213:
                                                                  §§push(§§pop() + §§pop());
                                                                  if(!_loc27_)
                                                                  {
                                                                     addr216:
                                                                     §§push(§§pop() + §§pop());
                                                                     if(!(_loc27_ && param3))
                                                                     {
                                                                        §§push(§§pop() - §§pop());
                                                                        if(_loc26_ || b2Collision)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           if(_loc26_ || param2)
                                                                           {
                                                                              addr240:
                                                                              _loc10_ = §§pop();
                                                                              if(_loc26_)
                                                                              {
                                                                                 addr243:
                                                                                 §§push(_loc11_);
                                                                                 if(_loc26_ || param1)
                                                                                 {
                                                                                    addr253:
                                                                                    §§push(param3.position.y);
                                                                                    if(_loc26_)
                                                                                    {
                                                                                       addr256:
                                                                                       §§push(_loc9_.col1);
                                                                                       if(_loc26_)
                                                                                       {
                                                                                          §§push(§§pop().y);
                                                                                          if(_loc26_ || b2Collision)
                                                                                          {
                                                                                             addr268:
                                                                                             §§push(_loc8_.x);
                                                                                             if(!(_loc27_ && b2Collision))
                                                                                             {
                                                                                                addr277:
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(!_loc27_)
                                                                                                {
                                                                                                   addr280:
                                                                                                   §§push(_loc9_.col2.y);
                                                                                                   if(!_loc27_)
                                                                                                   {
                                                                                                      addr288:
                                                                                                      §§push(§§pop() + §§pop() * _loc8_.y);
                                                                                                      if(!_loc27_)
                                                                                                      {
                                                                                                         addr291:
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         if(!_loc27_)
                                                                                                         {
                                                                                                            §§push(§§pop() - §§pop());
                                                                                                            if(_loc26_ || param1)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                               if(!_loc27_)
                                                                                                               {
                                                                                                                  _loc11_ = §§pop();
                                                                                                                  addr306:
                                                                                                                  §§push(_loc10_);
                                                                                                                  if(_loc26_)
                                                                                                                  {
                                                                                                                     addr309:
                                                                                                                     §§push(param3.R.col1.x);
                                                                                                                     if(!_loc27_)
                                                                                                                     {
                                                                                                                        addr315:
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        if(!_loc27_)
                                                                                                                        {
                                                                                                                           §§push(_loc11_);
                                                                                                                           if(!_loc27_)
                                                                                                                           {
                                                                                                                              addr326:
                                                                                                                              §§push(§§pop() + §§pop() * param3.R.col1.y);
                                                                                                                              if(!_loc27_)
                                                                                                                              {
                                                                                                                                 addr329:
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr326);
                                                                                                                        }
                                                                                                                        var _loc12_:* = §§pop();
                                                                                                                        §§push(_loc10_);
                                                                                                                        if(!(_loc27_ && param1))
                                                                                                                        {
                                                                                                                           §§push(param3.R.col2.x);
                                                                                                                           if(_loc26_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              if(!_loc27_)
                                                                                                                              {
                                                                                                                                 addr348:
                                                                                                                                 §§push(_loc11_);
                                                                                                                                 if(_loc26_)
                                                                                                                                 {
                                                                                                                                    addr356:
                                                                                                                                    §§push(§§pop() + §§pop() * param3.R.col2.y);
                                                                                                                                    if(!_loc27_)
                                                                                                                                    {
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr356);
                                                                                                                              }
                                                                                                                              var _loc13_:* = §§pop();
                                                                                                                              var _loc14_:* = 0;
                                                                                                                              §§push(-Number.MAX_VALUE);
                                                                                                                              if(_loc26_)
                                                                                                                              {
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                              }
                                                                                                                              var _loc15_:* = §§pop();
                                                                                                                              var _loc16_:int = 0;
                                                                                                                              while(_loc16_ < _loc6_)
                                                                                                                              {
                                                                                                                                 §§push((_loc8_ = _loc7_[_loc16_]).x);
                                                                                                                                 if(_loc26_ || param1)
                                                                                                                                 {
                                                                                                                                    §§push(_loc12_);
                                                                                                                                    if(_loc26_ || b2Collision)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       if(!_loc27_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc8_.y);
                                                                                                                                          if(_loc26_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * _loc13_);
                                                                                                                                             if(_loc26_ || b2Collision)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                if(_loc26_ || b2Collision)
                                                                                                                                                {
                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                   if(_loc26_ || b2Collision)
                                                                                                                                                   {
                                                                                                                                                      addr428:
                                                                                                                                                      §§push(§§pop());
                                                                                                                                                      if(!_loc27_)
                                                                                                                                                      {
                                                                                                                                                         addr431:
                                                                                                                                                         _loc25_ = §§pop();
                                                                                                                                                         if(!(_loc27_ && param1))
                                                                                                                                                         {
                                                                                                                                                            addr440:
                                                                                                                                                            addr439:
                                                                                                                                                            if(§§pop() > _loc15_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc26_ || param3)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc25_);
                                                                                                                                                                  if(_loc26_ || param3)
                                                                                                                                                                  {
                                                                                                                                                                     addr457:
                                                                                                                                                                     _loc15_ = Number(§§pop());
                                                                                                                                                                     if(_loc26_ || b2Collision)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc16_);
                                                                                                                                                                        if(!_loc27_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(int(§§pop()));
                                                                                                                                                                        }
                                                                                                                                                                        _loc14_ = §§pop();
                                                                                                                                                                        if(_loc27_)
                                                                                                                                                                        {
                                                                                                                                                                           continue;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr457);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            _loc16_++;
                                                                                                                                                            continue;
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr457);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr440);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr457);
                                                                                                                                                }
                                                                                                                                                §§goto(addr439);
                                                                                                                                             }
                                                                                                                                             §§goto(addr431);
                                                                                                                                          }
                                                                                                                                          §§goto(addr440);
                                                                                                                                       }
                                                                                                                                       §§goto(addr457);
                                                                                                                                    }
                                                                                                                                    §§goto(addr431);
                                                                                                                                 }
                                                                                                                                 §§goto(addr428);
                                                                                                                              }
                                                                                                                              §§push(§?!>§(param2,param3,_loc14_,param4,param5));
                                                                                                                              if(!(_loc27_ && param3))
                                                                                                                              {
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                              }
                                                                                                                              var _loc17_:* = §§pop();
                                                                                                                              if(!_loc27_)
                                                                                                                              {
                                                                                                                                 §§push(_loc14_);
                                                                                                                                 if(_loc26_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() - 1);
                                                                                                                                    if(!_loc27_)
                                                                                                                                    {
                                                                                                                                       if(§§pop() >= 0)
                                                                                                                                       {
                                                                                                                                          addr503:
                                                                                                                                          §§push(_loc14_);
                                                                                                                                          if(_loc26_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() - 1);
                                                                                                                                             if(!_loc27_)
                                                                                                                                             {
                                                                                                                                                addr509:
                                                                                                                                                §§push(int(§§pop()));
                                                                                                                                                if(_loc26_)
                                                                                                                                                {
                                                                                                                                                   addr535:
                                                                                                                                                   §§push(int(§§pop()));
                                                                                                                                                }
                                                                                                                                                §§goto(addr535);
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                addr517:
                                                                                                                                                §§push(int(§§pop()));
                                                                                                                                                if(_loc26_ || b2Collision)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr535);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             var _loc18_:* = §§pop();
                                                                                                                                             §§push(§?!>§(param2,param3,_loc18_,param4,param5));
                                                                                                                                             if(!_loc27_)
                                                                                                                                             {
                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                             }
                                                                                                                                             var _loc19_:* = §§pop();
                                                                                                                                             if(_loc26_)
                                                                                                                                             {
                                                                                                                                                §§push(_loc14_);
                                                                                                                                                if(_loc26_)
                                                                                                                                                {
                                                                                                                                                   §§push(1);
                                                                                                                                                   if(!_loc27_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                      if(!(_loc27_ && param1))
                                                                                                                                                      {
                                                                                                                                                         if(§§pop() < _loc6_)
                                                                                                                                                         {
                                                                                                                                                            addr567:
                                                                                                                                                            §§push(_loc14_);
                                                                                                                                                            if(_loc26_ || b2Collision)
                                                                                                                                                            {
                                                                                                                                                               addr577:
                                                                                                                                                               addr576:
                                                                                                                                                               addr575:
                                                                                                                                                               §§push(int(§§pop() + 1));
                                                                                                                                                               if(_loc27_)
                                                                                                                                                               {
                                                                                                                                                               }
                                                                                                                                                               addr589:
                                                                                                                                                               §§push(int(§§pop()));
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            §§push(0);
                                                                                                                                                            if(_loc26_ || param1)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr589);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         var _loc20_:* = §§pop();
                                                                                                                                                         §§push(§?!>§(param2,param3,_loc20_,param4,param5));
                                                                                                                                                         if(_loc26_)
                                                                                                                                                         {
                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                         }
                                                                                                                                                         var _loc21_:* = §§pop();
                                                                                                                                                         if(!_loc27_)
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
                                                                                                                                                                                 addr1063:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() > §§pop());
                                                                                                                                                                                    addr1064:
                                                                                                                                                                                    while(_loc26_)
                                                                                                                                                                                    {
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop4;
                                                                                                                                                                                 }
                                                                                                                                                                                 loop18:
                                                                                                                                                                                 while(_loc26_ || param2)
                                                                                                                                                                                 {
                                                                                                                                                                                    _loc23_ = §§pop();
                                                                                                                                                                                    loop19:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       loop20:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          loop21:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc24_);
                                                                                                                                                                                             loop22:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(-1);
                                                                                                                                                                                                loop23:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(§§pop() == §§pop())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc27_ && param2)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop19;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      if(_loc26_ || param3)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc22_);
                                                                                                                                                                                                         if(_loc26_ || b2Collision)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc26_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!(_loc27_ && param3))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() - 1);
                                                                                                                                                                                                                  loop24:
                                                                                                                                                                                                                  while(_loc26_ || param1)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(0);
                                                                                                                                                                                                                     loop25:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop() >= §§pop());
                                                                                                                                                                                                                        addr945:
                                                                                                                                                                                                                        while(_loc26_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(§§pop())
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              loop31:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!_loc27_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc22_);
                                                                                                                                                                                                                                    loop32:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop() - 1);
                                                                                                                                                                                                                                       loop33:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(int(§§pop()));
                                                                                                                                                                                                                                          addr953:
                                                                                                                                                                                                                                          while(!_loc27_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(int(§§pop()));
                                                                                                                                                                                                                                                addr974:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   _loc14_ = §§pop();
                                                                                                                                                                                                                                                   continue loop19;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          loop62:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             _loc24_ = §§pop();
                                                                                                                                                                                                                                             loop13:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(_loc20_);
                                                                                                                                                                                                                                                loop14:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc26_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(int(§§pop()));
                                                                                                                                                                                                                                                      break loop23;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr1056:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      _loc22_ = §§pop();
                                                                                                                                                                                                                                                      addr1057:
                                                                                                                                                                                                                                                      loop57:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc27_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue loop5;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§push(_loc19_);
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                                                                                                                            addr1047:
                                                                                                                                                                                                                                                            while(!_loc27_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               _loc23_ = §§pop();
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!_loc27_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     continue loop20;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  continue loop57;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            continue loop1;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr822:
                                                                                                                                                                                                                                                   if(!(_loc26_ || param1))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§push(1);
                                                                                                                                                                                                                                                   if(!(_loc26_ || param2))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      loop53:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!_loc26_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue loop23;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                         loop54:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!(_loc26_ || param2))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               continue loop18;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§push(int(§§pop()));
                                                                                                                                                                                                                                                            loop55:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc26_ || param1)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  loop48:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(int(§§pop()));
                                                                                                                                                                                                                                                                     loop49:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        _loc14_ = §§pop();
                                                                                                                                                                                                                                                                        loop50:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr701:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(§?!>§(param2,param3,_loc14_,param4,param5));
                                                                                                                                                                                                                                                                              loop37:
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                 loop38:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(§§pop());
                                                                                                                                                                                                                                                                                    if(_loc26_ || param2)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(!(_loc26_ || b2Collision))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          break;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       _loc17_ = §§pop();
                                                                                                                                                                                                                                                                                       loop39:
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!_loc26_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             continue loop24;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§push(_loc23_);
                                                                                                                                                                                                                                                                                          addr662:
                                                                                                                                                                                                                                                                                          loop41:
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(_loc27_ && b2Collision)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                continue loop39;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             if(!_loc26_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                break;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             if(_loc27_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                continue loop37;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                             loop42:
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(_loc26_ || param2)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(!(_loc27_ && b2Collision))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(_loc27_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         break;
                                                                                                                                                                                                                                                                                                         addr691:
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      _loc23_ = §§pop();
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(!(_loc27_ && param3))
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(_loc26_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               break;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            addr864:
                                                                                                                                                                                                                                                                                                            addr744:
                                                                                                                                                                                                                                                                                                            while(!_loc27_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(!(_loc26_ || b2Collision))
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  break loop37;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               if(_loc26_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(_loc14_);
                                                                                                                                                                                                                                                                                                                     if(_loc26_ || param3)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(!(_loc26_ || b2Collision))
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           continue loop49;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        if(!_loc26_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              if(!_loc27_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(!_loc26_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    continue loop22;
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr822);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           continue loop14;
                                                                                                                                                                                                                                                                                                                           addr818:
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        if(!(_loc27_ && param1))
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           addr780:
                                                                                                                                                                                                                                                                                                                           §§push(int(§§pop()));
                                                                                                                                                                                                                                                                                                                           if(!_loc27_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              if(!(_loc26_ || param2))
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 continue loop55;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              if(!(_loc27_ && param1))
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(!(_loc26_ || b2Collision))
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    continue loop32;
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 _loc22_ = §§pop();
                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    if(!(_loc26_ || param2))
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       continue loop50;
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    if(!_loc27_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       continue loop41;
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    addr1034:
                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§push(_loc21_);
                                                                                                                                                                                                                                                                                                                                       break loop42;
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    continue loop53;
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 addr867:
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(_loc26_ || b2Collision)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    continue loop48;
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr953);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              addr888:
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr974);
                                                                                                                                                                                                                                                                                                                        §§goto(addr973);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr780);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  addr755:
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§goto(addr1050);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(!_loc26_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  continue loop31;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr867);
                                                                                                                                                                                                                                                                                                               §§push(_loc22_);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr804);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      continue loop21;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   continue loop33;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                addr965:
                                                                                                                                                                                                                                                                                                while(!(_loc27_ && param1))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§goto(addr973);
                                                                                                                                                                                                                                                                                                   §§push(int(§§pop()));
                                                                                                                                                                                                                                                                                                   continue loop42;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1046);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                continue loop18;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          continue loop38;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       continue loop25;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(!(_loc27_ && param1))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(_loc27_ && b2Collision)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             break;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          if(§§pop() <= §§pop())
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             param1[0] = _loc22_;
                                                                                                                                                                                                                                                                                             if(_loc26_ || param2)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(!_loc27_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(_loc23_);
                                                                                                                                                                                                                                                                                                   if(_loc26_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(!(_loc27_ && param1))
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(!(_loc26_ || b2Collision))
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            continue loop54;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         if(_loc26_ || param2)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(_loc26_ || param3)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               return §§pop();
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr1047);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(!(_loc26_ || b2Collision))
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  return §§pop();
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               addr992:
                                                                                                                                                                                                                                                                                                               continue loop25;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            addr838:
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§goto(addr662);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1046);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr674);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(_loc27_ && param1)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         continue loop13;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§push(_loc17_);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   addr1008:
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr992);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr691);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr744);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       addr1040:
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(§§pop() > §§pop())
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                continue loop62;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             addr1041:
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             param1[0] = _loc14_;
                                                                                                                                                                                                                                                                                             §§goto(addr1008);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1063);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 continue loop2;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              continue loop19;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           continue loop23;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  while(_loc26_ || param1)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§goto(addr965);
                                                                                                                                                                                                                                                                     §§push(§§pop() - 1);
                                                                                                                                                                                                                                                                     continue loop55;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§goto(addr1056);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr957:
                                                                                                                                                                                                                                                                  addr1055:
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1057);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr838);
                                                                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc26_ || param1)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop20;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr1068:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(-1);
                                                                                                                                                                                                                                       addr1079:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          _loc24_ = §§pop();
                                                                                                                                                                                                                                          break loop31;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr1080:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           else
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr957);
                                                                                                                                                                                                                              §§push(_loc6_);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1055);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        continue loop3;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr1040);
                                                                                                                                                                                                                     §§goto(addr936);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr936:
                                                                                                                                                                                                                  addr1039:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1079);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            break;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr953);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1041);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   else
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr818);
                                                                                                                                                                                                      §§push(_loc22_);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr973);
                                                                                                                                                                                                }
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   _loc22_ = §§pop();
                                                                                                                                                                                                   §§goto(addr1034);
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
                                                                                                                                                                           §§goto(addr1039);
                                                                                                                                                                           §§push(_loc21_);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1068);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr755);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr577);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr576);
                                                                                                                                                }
                                                                                                                                                §§goto(addr575);
                                                                                                                                             }
                                                                                                                                             §§goto(addr567);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§push(_loc6_);
                                                                                                                                          if(_loc26_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr517);
                                                                                                                                             §§push(§§pop() - 1);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr535);
                                                                                                                                    }
                                                                                                                                    §§goto(addr509);
                                                                                                                                 }
                                                                                                                                 §§goto(addr535);
                                                                                                                              }
                                                                                                                              §§goto(addr503);
                                                                                                                           }
                                                                                                                           §§goto(addr356);
                                                                                                                        }
                                                                                                                        §§goto(addr348);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr329);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr309);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr326);
                                                                                                   }
                                                                                                   §§goto(addr288);
                                                                                                }
                                                                                                §§goto(addr291);
                                                                                             }
                                                                                             §§goto(addr288);
                                                                                          }
                                                                                          §§goto(addr280);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr326);
                                                                                 }
                                                                                 §§goto(addr329);
                                                                              }
                                                                              §§goto(addr306);
                                                                           }
                                                                           §§goto(addr329);
                                                                        }
                                                                        §§goto(addr309);
                                                                     }
                                                                     §§goto(addr315);
                                                                  }
                                                                  §§goto(addr268);
                                                               }
                                                            }
                                                            §§goto(addr288);
                                                         }
                                                         §§goto(addr213);
                                                      }
                                                   }
                                                   §§goto(addr280);
                                                }
                                                §§goto(addr277);
                                             }
                                             §§goto(addr216);
                                          }
                                          §§goto(addr326);
                                       }
                                       §§goto(addr256);
                                    }
                                    §§goto(addr253);
                                 }
                                 §§goto(addr240);
                              }
                              §§goto(addr243);
                           }
                           §§push(§§pop() + §§pop());
                        }
                        §§goto(addr125);
                     }
                     §§goto(addr128);
                  }
                  §§goto(addr88);
               }
               §§goto(addr80);
            }
            §§goto(addr70);
         }
         §§goto(addr88);
      }
      
      public static function §-`§(param1:Vector.<§&S§>, param2:b2PolygonShape, param3:b2Transform, param4:int, param5:b2PolygonShape, param6:b2Transform) : void
      {
         var _loc24_:Boolean = true;
         var _loc25_:Boolean = false;
         var _loc12_:b2Mat22 = null;
         var _loc13_:b2Vec2 = null;
         var _loc20_:§&S§ = null;
         var _loc23_:* = NaN;
         §§push(param2.§^L§);
         if(_loc24_ || b2Collision)
         {
            §§push(int(§§pop()));
         }
         var _loc7_:* = §§pop();
         var _loc8_:Vector.<b2Vec2> = param2.§0!'§;
         §§push(param5.§^L§);
         if(!(_loc25_ && param2))
         {
            §§push(int(§§pop()));
         }
         var _loc9_:* = §§pop();
         var _loc10_:Vector.<b2Vec2> = param5.§3!S§;
         var _loc11_:Vector.<b2Vec2> = param5.§0!'§;
         _loc12_ = param3.R;
         _loc13_ = _loc8_[param4];
         §§push(_loc12_.col1.x);
         if(!_loc25_)
         {
            §§push(_loc13_.x);
            if(!(_loc25_ && param2))
            {
               addr98:
               §§push(§§pop() * §§pop());
               if(_loc24_)
               {
                  §§push(_loc12_.col2.x);
                  if(_loc24_)
                  {
                     §§push(§§pop() * _loc13_.y);
                  }
               }
               var _loc14_:* = Number(§§pop());
               §§push(_loc12_.col1.y);
               if(!(_loc25_ && param3))
               {
                  §§push(_loc13_.x);
                  if(!(_loc25_ && param1))
                  {
                     §§push(§§pop() * §§pop());
                     if(_loc24_ || b2Collision)
                     {
                        §§push(_loc12_.col2.y);
                        if(_loc24_ || param3)
                        {
                           addr140:
                           §§push(§§pop() + §§pop() * _loc13_.y);
                           if(!_loc24_)
                           {
                           }
                           var _loc15_:* = §§pop();
                           §§push((_loc12_ = param6.R).col1.x);
                           if(!(_loc25_ && b2Collision))
                           {
                              §§push(_loc14_);
                              if(!_loc25_)
                              {
                                 addr175:
                                 §§push(§§pop() * §§pop());
                                 if(!_loc25_)
                                 {
                                    §§push(_loc12_.col1.y);
                                    if(!_loc25_)
                                    {
                                       §§push(§§pop() * _loc15_);
                                    }
                                 }
                                 var _loc16_:Number = §§pop();
                                 if(!_loc25_)
                                 {
                                    §§push(_loc12_.col2.x);
                                    if(_loc24_ || param1)
                                    {
                                       §§push(_loc14_);
                                       if(!(_loc25_ && param2))
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(!(_loc25_ && param1))
                                          {
                                             §§push(_loc12_.col2.y);
                                             if(_loc24_ || param1)
                                             {
                                                addr215:
                                                §§push(§§pop() * _loc15_);
                                             }
                                             §§push(§§pop() + §§pop());
                                             if(_loc24_ || param1)
                                             {
                                                §§push(Number(§§pop()));
                                                if(!(_loc25_ && param1))
                                                {
                                                   addr233:
                                                   _loc15_ = §§pop();
                                                   if(!_loc25_)
                                                   {
                                                      §§push(_loc16_);
                                                      if(!_loc25_)
                                                      {
                                                         addr239:
                                                         §§push(Number(§§pop()));
                                                      }
                                                      _loc14_ = §§pop();
                                                      addr241:
                                                      var _loc17_:* = 0;
                                                      var _loc18_:Number = Number.MAX_VALUE;
                                                      var _loc19_:int = 0;
                                                      loop0:
                                                      while(true)
                                                      {
                                                         §§push(_loc19_);
                                                         if(_loc24_ || param1)
                                                         {
                                                            §§push(_loc9_);
                                                            if(!_loc25_)
                                                            {
                                                               if(§§pop() >= §§pop())
                                                               {
                                                                  §§push(_loc17_);
                                                                  if(_loc24_ || param3)
                                                                  {
                                                                     break;
                                                                  }
                                                                  addr385:
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
                                                                              if(_loc24_ || param2)
                                                                              {
                                                                                 §§push(§§pop() * _loc13_.y);
                                                                                 if(!(_loc25_ && param2))
                                                                                 {
                                                                                    addr317:
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(!(_loc25_ && param3))
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                       if(!(_loc25_ && param3))
                                                                                       {
                                                                                          §§push(§§pop());
                                                                                          if(_loc24_ || param3)
                                                                                          {
                                                                                             addr341:
                                                                                             _loc23_ = §§pop();
                                                                                             addr361:
                                                                                             if(!_loc25_)
                                                                                             {
                                                                                                addr344:
                                                                                                §§push(_loc18_);
                                                                                             }
                                                                                             _loc18_ = §§pop();
                                                                                             loop1:
                                                                                             while(true)
                                                                                             {
                                                                                                addr277:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc19_);
                                                                                                   if(_loc24_)
                                                                                                   {
                                                                                                      §§push(int(§§pop()));
                                                                                                   }
                                                                                                   _loc17_ = §§pop();
                                                                                                   addr283:
                                                                                                   loop4:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      addr259:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc19_++;
                                                                                                         if(_loc24_ || param2)
                                                                                                         {
                                                                                                            continue loop1;
                                                                                                         }
                                                                                                         continue loop4;
                                                                                                      }
                                                                                                      continue loop0;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             addr363:
                                                                                          }
                                                                                          if(§§pop() < §§pop())
                                                                                          {
                                                                                             if(_loc24_ || param2)
                                                                                             {
                                                                                                §§push(_loc23_);
                                                                                                if(_loc25_ && param3)
                                                                                                {
                                                                                                }
                                                                                                §§goto(addr361);
                                                                                             }
                                                                                             §§goto(addr363);
                                                                                          }
                                                                                          §§goto(addr259);
                                                                                       }
                                                                                       §§goto(addr361);
                                                                                    }
                                                                                    §§goto(addr344);
                                                                                 }
                                                                                 §§goto(addr341);
                                                                              }
                                                                           }
                                                                           §§goto(addr341);
                                                                        }
                                                                        §§goto(addr317);
                                                                     }
                                                                     §§goto(addr341);
                                                                  }
                                                                  §§goto(addr283);
                                                               }
                                                            }
                                                            var _loc21_:* = §§pop();
                                                            if(_loc24_ || b2Collision)
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
                                                                        if(_loc24_ || b2Collision)
                                                                        {
                                                                           addr413:
                                                                           §§push(int(§§pop() + 1));
                                                                           if(_loc24_ || param1)
                                                                           {
                                                                              addr440:
                                                                              §§push(int(§§pop()));
                                                                           }
                                                                           §§goto(addr440);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(0);
                                                                        if(_loc24_ || param1)
                                                                        {
                                                                           §§goto(addr440);
                                                                        }
                                                                     }
                                                                     var _loc22_:* = §§pop();
                                                                     _loc20_ = param1[0];
                                                                     _loc13_ = _loc10_[_loc21_];
                                                                     _loc12_ = param6.R;
                                                                     if(_loc24_ || param1)
                                                                     {
                                                                        §§push(_loc20_.v);
                                                                        loop5:
                                                                        while(true)
                                                                        {
                                                                           §§push(param6.position);
                                                                           addr653:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().x);
                                                                              addr654:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc12_.col1);
                                                                                 addr656:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().x);
                                                                                    addr657:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc13_.x);
                                                                                       addr659:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          addr660:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc12_.col2);
                                                                                             addr662:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop().x);
                                                                                                addr663:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc13_.y);
                                                                                                   addr665:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      addr666:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         addr667:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            addr668:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§pop().x = §§pop();
                                                                                                               continue loop5;
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
                                                                     §§goto(addr518);
                                                                  }
                                                               }
                                                               §§goto(addr413);
                                                            }
                                                            §§goto(addr440);
                                                         }
                                                         break;
                                                      }
                                                      §§goto(addr385);
                                                      §§push(int(§§pop()));
                                                   }
                                                   §§goto(addr241);
                                                }
                                             }
                                             §§goto(addr239);
                                          }
                                          §§goto(addr233);
                                       }
                                       §§goto(addr215);
                                    }
                                    §§goto(addr233);
                                 }
                                 §§goto(addr241);
                              }
                              §§push(§§pop() + §§pop());
                              if(_loc25_)
                              {
                              }
                           }
                           §§goto(addr175);
                        }
                     }
                     §§goto(addr140);
                     §§push(Number(§§pop()));
                  }
               }
               §§goto(addr140);
            }
            §§push(§§pop() + §§pop());
            if(!_loc24_)
            {
            }
         }
         §§goto(addr98);
      }
      
      private static function §7!L§() : Vector.<§&S§>
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Vector.<§&S§> = new Vector.<§&S§>(2);
         if(_loc2_)
         {
            _loc1_[0] = new §&S§();
            do
            {
               _loc1_[1] = new §&S§();
            }
            while(_loc3_ && b2Collision);
            
         }
         return _loc1_;
      }
      
      public static function §`!V§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2PolygonShape, param5:b2Transform) : void
      {
         var _loc46_:Boolean = false;
         var _loc47_:Boolean = true;
         var _loc6_:§&S§ = null;
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
            param1.§in § = 0;
         }
         var _loc7_:Number = param2.§=!W§ + param4.§=!W§;
         var _loc8_:* = 0;
         if(_loc47_ || b2Collision)
         {
            §"!6§[0] = _loc8_;
         }
         §§push(§4!M§(§"!6§,param2,param3,param4,param5));
         if(_loc47_)
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         if(!_loc46_)
         {
            §§push(int(§"!6§[0]));
            if(!(_loc46_ && param2))
            {
               _loc8_ = §§pop();
               if(_loc47_)
               {
                  if(_loc9_ > _loc7_)
                  {
                     if(!_loc46_)
                     {
                        §§goto(addr111);
                     }
                  }
                  §§push(0);
               }
               §§goto(addr111);
            }
            var _loc10_:* = §§pop();
            if(!(_loc46_ && b2Collision))
            {
               §9!<§[0] = _loc10_;
            }
            §§push(§4!M§(§9!<§,param4,param5,param2,param3));
            if(!_loc46_)
            {
               §§push(Number(§§pop()));
            }
            var _loc11_:* = §§pop();
            if(!(_loc46_ && b2Collision))
            {
               _loc10_ = int(§9!<§[0]);
               if(_loc47_ || param3)
               {
                  §§push(_loc11_);
                  if(_loc47_ || param3)
                  {
                     if(§§pop() > _loc7_)
                     {
                        if(!_loc46_)
                        {
                           §§goto(addr167);
                        }
                        else
                        {
                           addr168:
                           §§push(0.98);
                           if(_loc47_ || param2)
                           {
                              addr176:
                              §§push(Number(§§pop()));
                           }
                           var _loc18_:* = §§pop();
                           §§push(0.001);
                           if(_loc47_)
                           {
                              §§push(Number(§§pop()));
                           }
                           var _loc19_:* = §§pop();
                           if(!_loc46_)
                           {
                              §§push(_loc11_);
                              §§push(_loc18_);
                              if(!_loc46_)
                              {
                                 §§push(_loc9_);
                                 if(_loc47_ || param1)
                                 {
                                    addr207:
                                    §§push(§§pop() * §§pop());
                                    if(_loc47_ || param1)
                                    {
                                       §§push(_loc19_);
                                    }
                                    if(§§pop() > §§pop())
                                    {
                                       addr208:
                                       _loc12_ = param4;
                                       _loc13_ = param2;
                                       _loc14_ = param5;
                                       _loc15_ = param3;
                                       if(!(_loc46_ && param1))
                                       {
                                          §§push(_loc10_);
                                          while(true)
                                          {
                                             §§push(int(§§pop()));
                                             addr265:
                                             while(true)
                                             {
                                                _loc16_ = §§pop();
                                             }
                                             addr237:
                                             if(_loc46_ && param3)
                                             {
                                                continue;
                                             }
                                             _loc17_ = §§pop();
                                             if(!(_loc46_ && param2))
                                             {
                                                if(!_loc46_)
                                                {
                                                   if(false)
                                                   {
                                                      while(true)
                                                      {
                                                         param1.§3c§ = b2Manifold.§3D§;
                                                         addr262:
                                                         while(true)
                                                         {
                                                            §§push(1);
                                                            if(!(_loc47_ || b2Collision))
                                                            {
                                                               break;
                                                            }
                                                            §§goto(addr237);
                                                         }
                                                         §§goto(addr265);
                                                      }
                                                      addr257:
                                                   }
                                                   addr322:
                                                   var _loc21_:Vector.<§&S§> = §3!&§;
                                                   if(_loc47_)
                                                   {
                                                      §-`§(_loc21_,_loc12_,_loc14_,_loc16_,_loc13_,_loc15_);
                                                   }
                                                   §§push(_loc12_.§^L§);
                                                   if(!_loc46_)
                                                   {
                                                      §§push(int(§§pop()));
                                                   }
                                                   var _loc22_:* = §§pop();
                                                   var _loc23_:Vector.<b2Vec2>;
                                                   var _loc24_:b2Vec2 = (_loc23_ = _loc12_.§3!S§)[_loc16_];
                                                   if(!(_loc46_ && param3))
                                                   {
                                                      if(_loc16_ + 1 < _loc22_)
                                                      {
                                                         addr362:
                                                         _loc25_ = _loc23_[int(_loc16_ + 1)];
                                                      }
                                                      else
                                                      {
                                                         _loc25_ = _loc23_[0];
                                                      }
                                                      var _loc26_:b2Vec2;
                                                      §§push(_loc26_ = §4!I§);
                                                      §§push(_loc25_.x);
                                                      if(_loc47_)
                                                      {
                                                         §§push(_loc24_.x);
                                                         if(_loc47_ || b2Collision)
                                                         {
                                                            addr395:
                                                            §§push(§§pop() - §§pop());
                                                            §§push(_loc25_.y);
                                                            if(_loc47_)
                                                            {
                                                               §§push(§§pop() - _loc24_.y);
                                                            }
                                                         }
                                                         §§pop().Set(§§pop(),§§pop());
                                                         if(!_loc46_)
                                                         {
                                                            _loc26_.Normalize();
                                                         }
                                                         var _loc27_:b2Vec2;
                                                         (_loc27_ = §"!M§).x = _loc26_.y;
                                                         if(_loc47_)
                                                         {
                                                            §§push(_loc27_);
                                                            §§push(_loc26_.x);
                                                            if(!_loc46_)
                                                            {
                                                               §§push(-§§pop());
                                                            }
                                                            §§pop().y = §§pop();
                                                         }
                                                         var _loc28_:b2Vec2;
                                                         §§push(_loc28_ = §?! §);
                                                         §§push(0.5);
                                                         if(_loc47_)
                                                         {
                                                            §§push(_loc24_.x);
                                                            if(!_loc46_)
                                                            {
                                                               §§push(_loc25_.x);
                                                               if(!(_loc46_ && param1))
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  if(!(_loc46_ && param2))
                                                                  {
                                                                     addr451:
                                                                     §§push(§§pop() * §§pop());
                                                                     §§push(0.5);
                                                                     if(!(_loc46_ && param1))
                                                                     {
                                                                        §§push(_loc24_.y);
                                                                        if(_loc47_)
                                                                        {
                                                                           addr467:
                                                                           §§push(§§pop() * (§§pop() + _loc25_.y));
                                                                        }
                                                                        §§goto(addr467);
                                                                     }
                                                                  }
                                                                  §§pop().Set(§§pop(),§§pop());
                                                                  var _loc29_:b2Vec2 = §-s§;
                                                                  _loc20_ = _loc14_.R;
                                                                  if(_loc47_)
                                                                  {
                                                                     §§push(_loc29_);
                                                                     §§push(_loc20_.col1.x);
                                                                     if(!_loc46_)
                                                                     {
                                                                        §§push(_loc26_.x);
                                                                        if(_loc47_ || b2Collision)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(!(_loc46_ && b2Collision))
                                                                           {
                                                                              addr501:
                                                                              §§push(_loc20_.col2.x);
                                                                              if(!(_loc46_ && param1))
                                                                              {
                                                                                 addr511:
                                                                                 §§push(§§pop() * _loc26_.y);
                                                                              }
                                                                              §§push(§§pop() + §§pop());
                                                                           }
                                                                           §§pop().x = §§pop();
                                                                           if(_loc47_)
                                                                           {
                                                                              §§push(_loc29_);
                                                                              §§push(_loc20_.col1.y);
                                                                              if(!_loc46_)
                                                                              {
                                                                                 §§push(_loc26_.x);
                                                                                 if(!_loc46_)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(!_loc46_)
                                                                                    {
                                                                                       addr531:
                                                                                       §§push(_loc20_.col2.y);
                                                                                       if(!_loc46_)
                                                                                       {
                                                                                          addr539:
                                                                                          §§push(§§pop() + §§pop() * _loc26_.y);
                                                                                       }
                                                                                       §§goto(addr539);
                                                                                    }
                                                                                    §§pop().y = §§pop();
                                                                                    addr541:
                                                                                    var _loc30_:b2Vec2;
                                                                                    §§push(_loc30_ = s_tangent2);
                                                                                    §§push(_loc29_.x);
                                                                                    if(!_loc46_)
                                                                                    {
                                                                                       §§push(-§§pop());
                                                                                    }
                                                                                    §§pop().x = §§pop();
                                                                                    if(_loc47_ || param2)
                                                                                    {
                                                                                       §§push(_loc30_);
                                                                                       §§push(_loc29_.y);
                                                                                       if(_loc47_ || param1)
                                                                                       {
                                                                                          §§push(-§§pop());
                                                                                       }
                                                                                       §§pop().y = §§pop();
                                                                                    }
                                                                                    var _loc31_:b2Vec2;
                                                                                    (_loc31_ = §9!$§).x = _loc29_.y;
                                                                                    if(_loc47_ || param1)
                                                                                    {
                                                                                       §§push(_loc31_);
                                                                                       §§push(_loc29_.x);
                                                                                       if(_loc47_ || param2)
                                                                                       {
                                                                                          §§push(-§§pop());
                                                                                       }
                                                                                       §§pop().y = §§pop();
                                                                                    }
                                                                                    var _loc32_:b2Vec2 = s_v11;
                                                                                    var _loc33_:b2Vec2 = s_v12;
                                                                                    if(_loc47_ || param3)
                                                                                    {
                                                                                       §§push(_loc32_);
                                                                                       §§push(_loc14_.position.x);
                                                                                       if(_loc47_)
                                                                                       {
                                                                                          §§push(_loc20_.col1.x);
                                                                                          if(_loc47_ || param3)
                                                                                          {
                                                                                             §§push(_loc24_.x);
                                                                                             if(!_loc46_)
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(_loc47_ || b2Collision)
                                                                                                {
                                                                                                   addr788:
                                                                                                   §§push(_loc20_.col2.x);
                                                                                                   if(_loc47_ || b2Collision)
                                                                                                   {
                                                                                                      addr801:
                                                                                                      §§push(§§pop() + §§pop() * _loc24_.y);
                                                                                                   }
                                                                                                   §§goto(addr801);
                                                                                                }
                                                                                                addr803:
                                                                                                §§pop().x = §§pop() + §§pop();
                                                                                                loop4:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc32_);
                                                                                                   §§push(_loc14_.position.y);
                                                                                                   if(!(_loc46_ && b2Collision))
                                                                                                   {
                                                                                                      §§push(_loc20_.col1.y);
                                                                                                      if(_loc47_ || param3)
                                                                                                      {
                                                                                                         §§push(_loc24_.x);
                                                                                                         if(!_loc46_)
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            if(!(_loc46_ && param2))
                                                                                                            {
                                                                                                               addr743:
                                                                                                               §§push(_loc20_.col2.y);
                                                                                                               if(_loc47_ || param3)
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
                                                                                                               addr653:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc33_);
                                                                                                                  §§push(_loc14_.position.x);
                                                                                                                  if(_loc47_)
                                                                                                                  {
                                                                                                                     §§push(_loc20_.col1.x);
                                                                                                                     if(!(_loc46_ && param3))
                                                                                                                     {
                                                                                                                        §§push(_loc25_.x);
                                                                                                                        if(_loc47_)
                                                                                                                        {
                                                                                                                           addr707:
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           if(_loc47_ || b2Collision)
                                                                                                                           {
                                                                                                                              addr692:
                                                                                                                              §§push(_loc20_.col2.x);
                                                                                                                              if(!(_loc46_ && param2))
                                                                                                                              {
                                                                                                                                 addr702:
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
                                                                                                                              if(_loc47_)
                                                                                                                              {
                                                                                                                                 §§push(_loc25_.x);
                                                                                                                                 if(_loc47_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                    if(_loc47_)
                                                                                                                                    {
                                                                                                                                       addr638:
                                                                                                                                       §§push(_loc20_.col2.y);
                                                                                                                                       if(_loc47_)
                                                                                                                                       {
                                                                                                                                          addr634:
                                                                                                                                          §§push(§§pop() * _loc25_.y);
                                                                                                                                       }
                                                                                                                                       §§push(§§pop() + (§§pop() + §§pop()));
                                                                                                                                       continue;
                                                                                                                                    }
                                                                                                                                    §§goto(addr638);
                                                                                                                                 }
                                                                                                                                 §§goto(addr634);
                                                                                                                              }
                                                                                                                              §§goto(addr638);
                                                                                                                           }
                                                                                                                           while(§§pop().y = §§pop(), !_loc47_);
                                                                                                                           
                                                                                                                           if(!_loc47_)
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           continue loop4;
                                                                                                                        }
                                                                                                                        §§goto(addr702);
                                                                                                                     }
                                                                                                                     §§goto(addr692);
                                                                                                                  }
                                                                                                                  §§goto(addr707);
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
                                                                                             §§goto(addr801);
                                                                                          }
                                                                                          §§goto(addr788);
                                                                                       }
                                                                                       §§goto(addr803);
                                                                                    }
                                                                                    §§goto(addr651);
                                                                                 }
                                                                                 §§goto(addr539);
                                                                              }
                                                                              §§goto(addr531);
                                                                           }
                                                                           §§goto(addr541);
                                                                        }
                                                                        §§goto(addr511);
                                                                     }
                                                                     §§goto(addr501);
                                                                  }
                                                                  §§goto(addr541);
                                                               }
                                                               §§goto(addr467);
                                                            }
                                                         }
                                                         §§goto(addr451);
                                                      }
                                                      §§goto(addr395);
                                                   }
                                                   §§goto(addr362);
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr257);
                                                }
                                                addr266:
                                             }
                                             §§goto(addr262);
                                          }
                                       }
                                       §§goto(addr266);
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
                                          if(_loc47_ || param1)
                                          {
                                             §§push(int(§§pop()));
                                          }
                                          loop0:
                                          while(true)
                                          {
                                             _loc16_ = §§pop();
                                             addr321:
                                             while(true)
                                             {
                                                addr305:
                                                while(true)
                                                {
                                                   param1.§3c§ = b2Manifold.§-b§;
                                                   continue loop0;
                                                }
                                             }
                                          }
                                          addr320:
                                       }
                                       while(true)
                                       {
                                          §§push(0);
                                          if(_loc47_ || param1)
                                          {
                                             _loc17_ = §§pop();
                                             if(_loc46_ && param3)
                                             {
                                                continue;
                                             }
                                             if(_loc47_)
                                             {
                                                if(true)
                                                {
                                                   break;
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr321);
                                             }
                                             §§goto(addr305);
                                          }
                                          else
                                          {
                                             §§goto(addr320);
                                          }
                                       }
                                    }
                                    §§goto(addr322);
                                 }
                                 §§push(§§pop() + §§pop());
                              }
                              §§goto(addr207);
                           }
                           §§goto(addr208);
                        }
                     }
                     §§goto(addr168);
                  }
                  §§goto(addr176);
               }
               addr167:
               return;
            }
            §§goto(addr168);
         }
         addr111:
      }
      
      public static function § !B§(param1:b2Manifold, param2:b2CircleShape, param3:b2Transform, param4:b2CircleShape, param5:b2Transform) : void
      {
         var _loc16_:Boolean = true;
         var _loc17_:Boolean = false;
         var _loc6_:b2Mat22 = null;
         var _loc7_:b2Vec2 = null;
         if(!_loc17_)
         {
            param1.§in § = 0;
         }
         _loc6_ = param3.R;
         _loc7_ = param2.§?8§;
         §§push(param3.position.x);
         if(!(_loc17_ && param3))
         {
            §§push(_loc6_.col1.x);
            if(_loc16_)
            {
               §§push(_loc7_.x);
               if(_loc16_ || param2)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc16_ || param1)
                  {
                     addr67:
                     §§push(_loc6_.col2.x);
                     if(_loc16_)
                     {
                        addr72:
                        §§push(§§pop() * _loc7_.y);
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc16_ || b2Collision)
                  {
                     addr85:
                     var _loc8_:Number = §§pop();
                     §§push(param3.position.y);
                     if(!_loc17_)
                     {
                        §§push(_loc6_.col1.y);
                        if(!_loc17_)
                        {
                           §§push(_loc7_.x);
                           if(_loc16_)
                           {
                              §§push(§§pop() * §§pop());
                              if(!_loc17_)
                              {
                                 addr103:
                                 §§push(_loc6_.col2.y);
                                 if(!_loc17_)
                                 {
                                    addr108:
                                    §§push(§§pop() * _loc7_.y);
                                 }
                                 §§push(§§pop() + §§pop());
                              }
                              §§push(§§pop() + §§pop());
                              if(!(_loc17_ && b2Collision))
                              {
                                 addr121:
                                 var _loc9_:Number = §§pop();
                                 _loc6_ = param5.R;
                                 _loc7_ = param4.§?8§;
                                 §§push(param5.position.x);
                                 if(!(_loc17_ && param2))
                                 {
                                    §§push(_loc6_.col1.x);
                                    if(_loc16_ || param2)
                                    {
                                       §§push(_loc7_.x);
                                       if(!(_loc17_ && param1))
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(!(_loc17_ && param1))
                                          {
                                             addr167:
                                             §§push(_loc6_.col2.x);
                                             if(!_loc17_)
                                             {
                                                addr175:
                                                §§push(§§pop() + §§pop() * _loc7_.y);
                                             }
                                             §§goto(addr175);
                                          }
                                          §§push(§§pop() + §§pop());
                                          if(_loc16_)
                                          {
                                             addr179:
                                             §§push(Number(§§pop()));
                                          }
                                          var _loc10_:* = §§pop();
                                          §§push(param5.position.y);
                                          if(_loc16_)
                                          {
                                             §§push(_loc6_.col1.y);
                                             if(_loc16_ || param1)
                                             {
                                                §§push(_loc7_.x);
                                                if(!_loc17_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc16_)
                                                   {
                                                      addr213:
                                                      §§push(_loc6_.col2.y);
                                                      if(_loc16_ || param1)
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
                                                      if(_loc16_)
                                                      {
                                                         addr239:
                                                         §§push(Number(§§pop()));
                                                      }
                                                      var _loc12_:* = §§pop();
                                                      §§push(_loc11_);
                                                      if(_loc16_)
                                                      {
                                                         §§push(§§pop() - _loc9_);
                                                         if(_loc16_)
                                                         {
                                                            addr248:
                                                            §§push(Number(§§pop()));
                                                         }
                                                         var _loc13_:* = §§pop();
                                                         §§push(_loc12_);
                                                         if(!(_loc17_ && param2))
                                                         {
                                                            §§push(_loc12_);
                                                            if(!_loc17_)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(_loc16_)
                                                               {
                                                                  §§push(_loc13_);
                                                                  if(!(_loc17_ && param3))
                                                                  {
                                                                     addr272:
                                                                     §§push(§§pop() * _loc13_);
                                                                  }
                                                                  §§push(§§pop() + §§pop());
                                                                  if(!_loc17_)
                                                                  {
                                                                     addr277:
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                               }
                                                               var _loc14_:* = §§pop();
                                                               var _loc15_:Number = param2.§=!W§ + param4.§=!W§;
                                                               if(_loc16_ || param1)
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
                                                                        param1.§3c§ = b2Manifold.§<'§;
                                                                        loop1:
                                                                        while(true)
                                                                        {
                                                                           param1.m_localPoint.SetV(param2.§?8§);
                                                                           loop2:
                                                                           while(true)
                                                                           {
                                                                              param1.§39§.§^!#§();
                                                                              loop3:
                                                                              while(!(_loc17_ && param1))
                                                                              {
                                                                                 if(!_loc17_)
                                                                                 {
                                                                                    param1.§in § = 1;
                                                                                    loop4:
                                                                                    while(!(_loc17_ && param1))
                                                                                    {
                                                                                       param1.§+!S§[0].m_localPoint.SetV(param4.§?8§);
                                                                                       loop5:
                                                                                       while(_loc16_)
                                                                                       {
                                                                                          continue loop2;
                                                                                          while(true)
                                                                                          {
                                                                                             param1.§+!S§[0].m_id.key = 0;
                                                                                             if(!(_loc17_ && param3))
                                                                                             {
                                                                                                if(!_loc17_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                continue loop4;
                                                                                             }
                                                                                             continue loop5;
                                                                                          }
                                                                                          return;
                                                                                       }
                                                                                       continue loop3;
                                                                                    }
                                                                                    continue loop0;
                                                                                 }
                                                                              }
                                                                              continue loop1;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  return;
                                                               }
                                                               §§goto(addr334);
                                                            }
                                                            §§goto(addr272);
                                                         }
                                                         §§goto(addr277);
                                                      }
                                                      §§goto(addr248);
                                                   }
                                                   §§goto(addr239);
                                                }
                                                §§goto(addr223);
                                             }
                                             §§goto(addr213);
                                          }
                                          §§goto(addr230);
                                       }
                                       §§goto(addr175);
                                    }
                                    §§goto(addr167);
                                 }
                                 §§goto(addr179);
                              }
                              §§goto(addr121);
                           }
                           §§goto(addr108);
                        }
                        §§goto(addr103);
                     }
                     §§goto(addr121);
                  }
                  §§goto(addr85);
               }
               §§goto(addr72);
            }
            §§goto(addr67);
         }
         §§goto(addr85);
      }
      
      public static function §^!2§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2CircleShape, param5:b2Transform) : void
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
         if(_loc35_)
         {
            param1.§in § = 0;
         }
         _loc12_ = param5.R;
         _loc11_ = param4.§?8§;
         §§push(param5.position.x);
         if(_loc35_)
         {
            §§push(_loc12_.col1.x);
            if(_loc35_)
            {
               §§push(_loc11_.x);
               if(_loc35_ || b2Collision)
               {
                  addr91:
                  §§push(§§pop() * §§pop());
                  if(!(_loc34_ && b2Collision))
                  {
                     §§push(_loc12_.col2.x);
                     if(!_loc34_)
                     {
                        §§push(§§pop() * _loc11_.y);
                     }
                  }
                  §§push(§§pop() + §§pop());
                  if(!_loc34_)
                  {
                     addr94:
                     §§push(Number(§§pop()));
                  }
                  var _loc13_:* = §§pop();
                  §§push(param5.position.y);
                  if(!_loc34_)
                  {
                     §§push(_loc12_.col1.y);
                     if(_loc35_ || param1)
                     {
                        §§push(_loc11_.x);
                        if(!_loc34_)
                        {
                           §§push(§§pop() * §§pop());
                           if(!_loc34_)
                           {
                              addr127:
                              §§push(_loc12_.col2.y);
                              if(_loc35_)
                              {
                                 addr123:
                                 §§push(§§pop() * _loc11_.y);
                              }
                              §§push(§§pop() + (§§pop() + §§pop()));
                              if(!(_loc34_ && param2))
                              {
                                 addr136:
                                 var _loc14_:Number = §§pop();
                                 if(!_loc34_)
                                 {
                                    §§push(_loc13_);
                                    if(!_loc34_)
                                    {
                                       §§push(param3.position);
                                       if(_loc35_)
                                       {
                                          §§push(§§pop().x);
                                          if(!(_loc34_ && b2Collision))
                                          {
                                             §§push(§§pop() - §§pop());
                                             if(!(_loc34_ && param1))
                                             {
                                                §§push(Number(§§pop()));
                                                if(!_loc34_)
                                                {
                                                   addr165:
                                                   _loc7_ = §§pop();
                                                   if(!_loc34_)
                                                   {
                                                      addr168:
                                                      §§push(_loc14_);
                                                      if(_loc35_ || param3)
                                                      {
                                                         addr176:
                                                         §§push(§§pop() - param3.position.y);
                                                         if(!_loc34_)
                                                         {
                                                            addr182:
                                                            §§push(Number(§§pop()));
                                                         }
                                                      }
                                                      _loc8_ = §§pop();
                                                   }
                                                   _loc12_ = param3.R;
                                                   §§push(_loc7_);
                                                   if(_loc35_)
                                                   {
                                                      §§push(_loc12_.col1.x);
                                                      if(!_loc34_)
                                                      {
                                                         addr214:
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc35_)
                                                         {
                                                            §§push(_loc8_);
                                                            if(_loc35_ || param1)
                                                            {
                                                               §§push(§§pop() * _loc12_.col1.y);
                                                            }
                                                         }
                                                         var _loc15_:Number = §§pop();
                                                         §§push(_loc7_);
                                                         if(!(_loc34_ && param3))
                                                         {
                                                            §§push(_loc12_.col2.x);
                                                            if(!(_loc34_ && b2Collision))
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(!_loc34_)
                                                               {
                                                                  §§push(_loc8_);
                                                                  if(_loc35_ || param3)
                                                                  {
                                                                     addr245:
                                                                     §§push(§§pop() * _loc12_.col2.y);
                                                                  }
                                                                  §§push(§§pop() + §§pop());
                                                                  if(_loc35_)
                                                                  {
                                                                     addr253:
                                                                     var _loc16_:Number = §§pop();
                                                                     var _loc18_:* = 0;
                                                                     §§push(-Number.MAX_VALUE);
                                                                     if(!_loc34_)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                     var _loc19_:* = §§pop();
                                                                     var _loc20_:Number = param2.§=!W§ + param4.§=!W§;
                                                                     §§push(param2.§^L§);
                                                                     if(_loc35_ || param2)
                                                                     {
                                                                        §§push(int(§§pop()));
                                                                     }
                                                                     var _loc21_:* = §§pop();
                                                                     var _loc22_:Vector.<b2Vec2> = param2.§3!S§;
                                                                     var _loc23_:Vector.<b2Vec2> = param2.§0!'§;
                                                                     var _loc24_:int = 0;
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc24_);
                                                                        if(_loc35_)
                                                                        {
                                                                           §§push(_loc21_);
                                                                           if(!(_loc34_ && param2))
                                                                           {
                                                                              if(§§pop() >= §§pop())
                                                                              {
                                                                                 §§push(_loc18_);
                                                                                 if(!_loc34_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 addr495:
                                                                                 §§push(§§pop());
                                                                              }
                                                                              else
                                                                              {
                                                                                 _loc11_ = _loc22_[_loc24_];
                                                                                 if(!_loc34_)
                                                                                 {
                                                                                    §§push(_loc15_);
                                                                                    if(!(_loc34_ && param3))
                                                                                    {
                                                                                       §§push(_loc11_.x);
                                                                                       if(!(_loc34_ && param3))
                                                                                       {
                                                                                          §§push(§§pop() - §§pop());
                                                                                          if(!(_loc34_ && param2))
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             if(!_loc34_)
                                                                                             {
                                                                                                _loc7_ = §§pop();
                                                                                                if(!(_loc34_ && param2))
                                                                                                {
                                                                                                   §§push(_loc16_);
                                                                                                   if(_loc35_)
                                                                                                   {
                                                                                                      addr339:
                                                                                                      §§push(§§pop() - _loc11_.y);
                                                                                                      if(!(_loc34_ && param3))
                                                                                                      {
                                                                                                         addr349:
                                                                                                         §§push(Number(§§pop()));
                                                                                                      }
                                                                                                   }
                                                                                                   _loc8_ = §§pop();
                                                                                                   addr351:
                                                                                                   §§push((_loc11_ = _loc23_[_loc24_]).x);
                                                                                                   if(_loc35_ || param3)
                                                                                                   {
                                                                                                      §§push(_loc7_);
                                                                                                      if(_loc35_)
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         if(_loc35_)
                                                                                                         {
                                                                                                            §§push(_loc11_.y);
                                                                                                            if(!_loc34_)
                                                                                                            {
                                                                                                               §§push(§§pop() * _loc8_);
                                                                                                               if(!(_loc34_ && param2))
                                                                                                               {
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  if(!(_loc34_ && b2Collision))
                                                                                                                  {
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     if(!_loc34_)
                                                                                                                     {
                                                                                                                        §§push(§§pop());
                                                                                                                        if(!(_loc34_ && param1))
                                                                                                                        {
                                                                                                                           addr403:
                                                                                                                           _loc31_ = §§pop();
                                                                                                                           if(_loc35_ || param3)
                                                                                                                           {
                                                                                                                              §§push(_loc20_);
                                                                                                                              if(_loc34_)
                                                                                                                              {
                                                                                                                              }
                                                                                                                              addr472:
                                                                                                                              if(§§pop() > §§pop())
                                                                                                                              {
                                                                                                                                 loop1:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc31_);
                                                                                                                                    if(!_loc34_)
                                                                                                                                    {
                                                                                                                                       addr476:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                          addr477:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             _loc19_ = §§pop();
                                                                                                                                             addr478:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                addr444:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc24_);
                                                                                                                                                   if(_loc35_ || b2Collision)
                                                                                                                                                   {
                                                                                                                                                      §§push(int(§§pop()));
                                                                                                                                                   }
                                                                                                                                                   _loc18_ = §§pop();
                                                                                                                                                   continue loop1;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr476:
                                                                                                                                    }
                                                                                                                                    §§goto(addr477);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 _loc24_++;
                                                                                                                                 if(!(_loc34_ && param3))
                                                                                                                                 {
                                                                                                                                    if(_loc35_ || b2Collision)
                                                                                                                                    {
                                                                                                                                       if(true)
                                                                                                                                       {
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       §§goto(addr444);
                                                                                                                                    }
                                                                                                                                    §§goto(addr478);
                                                                                                                                 }
                                                                                                                                 §§goto(addr455);
                                                                                                                                 §§goto(addr455);
                                                                                                                              }
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                           §§goto(addr476);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr476);
                                                                                                                  }
                                                                                                                  §§goto(addr477);
                                                                                                               }
                                                                                                               if(§§pop() > §§pop())
                                                                                                               {
                                                                                                                  if(!_loc34_)
                                                                                                                  {
                                                                                                                     return;
                                                                                                                  }
                                                                                                               }
                                                                                                               §§push(_loc31_);
                                                                                                               if(_loc35_ || param1)
                                                                                                               {
                                                                                                                  §§push(_loc19_);
                                                                                                               }
                                                                                                               §§goto(addr477);
                                                                                                            }
                                                                                                            §§goto(addr472);
                                                                                                         }
                                                                                                         §§goto(addr476);
                                                                                                      }
                                                                                                      §§goto(addr403);
                                                                                                   }
                                                                                                   §§goto(addr477);
                                                                                                }
                                                                                                §§goto(addr351);
                                                                                             }
                                                                                             §§goto(addr339);
                                                                                          }
                                                                                          §§goto(addr349);
                                                                                       }
                                                                                       §§goto(addr339);
                                                                                    }
                                                                                    §§goto(addr349);
                                                                                 }
                                                                                 §§goto(addr351);
                                                                              }
                                                                           }
                                                                           var _loc25_:* = §§pop();
                                                                           if(!_loc34_)
                                                                           {
                                                                              §§push(1);
                                                                              if(!_loc34_)
                                                                              {
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(!_loc34_)
                                                                                 {
                                                                                    if(§§pop() < _loc21_)
                                                                                    {
                                                                                       §§push(_loc25_);
                                                                                       if(_loc35_)
                                                                                       {
                                                                                          addr513:
                                                                                          addr512:
                                                                                          addr511:
                                                                                          §§push(int(§§pop() + 1));
                                                                                          if(_loc34_)
                                                                                          {
                                                                                          }
                                                                                          addr526:
                                                                                          var _loc26_:* = §§pop();
                                                                                          var _loc27_:b2Vec2 = _loc22_[_loc25_];
                                                                                          var _loc28_:b2Vec2 = _loc22_[_loc26_];
                                                                                          if(_loc35_)
                                                                                          {
                                                                                             §§push(_loc19_);
                                                                                             if(_loc35_)
                                                                                             {
                                                                                                if(§§pop() < Number.MIN_VALUE)
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      param1.§in § = 1;
                                                                                                      param1.§3c§ = b2Manifold.§-b§;
                                                                                                      while(!_loc34_)
                                                                                                      {
                                                                                                         param1.§39§.SetV(_loc23_[_loc18_]);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(param1.m_localPoint);
                                                                                                            loop50:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(0.5);
                                                                                                               addr647:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc27_.x);
                                                                                                                  if(!(_loc34_ && param1))
                                                                                                                  {
                                                                                                                     §§push(_loc28_.x);
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                     }
                                                                                                                     addr658:
                                                                                                                  }
                                                                                                                  addr659:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     addr660:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§pop().x = §§pop();
                                                                                                                        continue loop50;
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            addr642:
                                                                                                            param1.§+!S§[0].m_localPoint.SetV(param4.§?8§);
                                                                                                            param1.§+!S§[0].m_id.key = 0;
                                                                                                            if(_loc34_ && param3)
                                                                                                            {
                                                                                                               continue;
                                                                                                            }
                                                                                                            §§goto(addr584);
                                                                                                         }
                                                                                                         §§pop().y = §§pop();
                                                                                                         if(!(_loc35_ || param1))
                                                                                                         {
                                                                                                            continue;
                                                                                                         }
                                                                                                         §§goto(addr642);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§push(_loc15_);
                                                                                                   if(!_loc34_)
                                                                                                   {
                                                                                                      §§push(_loc27_.x);
                                                                                                      if(!(_loc34_ && param2))
                                                                                                      {
                                                                                                         §§push(§§pop() - §§pop());
                                                                                                         if(_loc35_ || param3)
                                                                                                         {
                                                                                                            §§push(_loc28_.x);
                                                                                                            if(!(_loc34_ && param1))
                                                                                                            {
                                                                                                               §§push(_loc27_.x);
                                                                                                               if(_loc35_)
                                                                                                               {
                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                  if(_loc35_ || param3)
                                                                                                                  {
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     if(!(_loc34_ && param2))
                                                                                                                     {
                                                                                                                        addr737:
                                                                                                                        §§push(_loc16_);
                                                                                                                        if(!(_loc34_ && param3))
                                                                                                                        {
                                                                                                                           addr745:
                                                                                                                           §§push(_loc27_.y);
                                                                                                                           if(_loc35_)
                                                                                                                           {
                                                                                                                              addr765:
                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                              if(_loc35_)
                                                                                                                              {
                                                                                                                                 addr752:
                                                                                                                                 §§push(_loc28_.y);
                                                                                                                                 if(!(_loc34_ && param2))
                                                                                                                                 {
                                                                                                                                    addr761:
                                                                                                                                    §§push(§§pop() - _loc27_.y);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              if(_loc35_)
                                                                                                                              {
                                                                                                                                 addr768:
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                              }
                                                                                                                              var _loc29_:* = §§pop();
                                                                                                                              §§push(_loc15_);
                                                                                                                              if(_loc35_)
                                                                                                                              {
                                                                                                                                 §§push(_loc28_.x);
                                                                                                                                 if(_loc35_ || param2)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() - §§pop());
                                                                                                                                    if(!(_loc34_ && param3))
                                                                                                                                    {
                                                                                                                                       §§push(_loc27_.x);
                                                                                                                                       if(!(_loc34_ && b2Collision))
                                                                                                                                       {
                                                                                                                                          §§push(_loc28_.x);
                                                                                                                                          if(!(_loc34_ && param3))
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() - §§pop());
                                                                                                                                             if(_loc35_ || param3)
                                                                                                                                             {
                                                                                                                                                addr826:
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                if(!(_loc34_ && b2Collision))
                                                                                                                                                {
                                                                                                                                                   §§push(_loc16_);
                                                                                                                                                   if(_loc35_)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc28_.y);
                                                                                                                                                      if(!(_loc34_ && param2))
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                         if(_loc35_)
                                                                                                                                                         {
                                                                                                                                                            addr849:
                                                                                                                                                            §§push(_loc27_.y);
                                                                                                                                                            if(!_loc34_)
                                                                                                                                                            {
                                                                                                                                                               addr856:
                                                                                                                                                               §§push(§§pop() * (§§pop() - _loc28_.y));
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr856);
                                                                                                                                                         }
                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                         if(!_loc34_)
                                                                                                                                                         {
                                                                                                                                                            addr861:
                                                                                                                                                            var _loc30_:Number = §§pop();
                                                                                                                                                            if(!_loc34_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc29_);
                                                                                                                                                               loop8:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(0);
                                                                                                                                                                  loop9:
                                                                                                                                                                  while(§§pop() > §§pop())
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc30_);
                                                                                                                                                                     loop10:
                                                                                                                                                                     while(§§pop() > 0)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(0.5);
                                                                                                                                                                        loop11:
                                                                                                                                                                        for(; _loc35_; if(!(_loc35_ || param1))
                                                                                                                                                                        {
                                                                                                                                                                           continue;
                                                                                                                                                                        },if(!_loc34_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() * _loc23_[_loc25_].x);
                                                                                                                                                                           if(!(_loc34_ && b2Collision))
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc35_ || param1)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc16_);
                                                                                                                                                                                 if(!(_loc34_ && b2Collision))
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc35_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr1094);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1224);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1180);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1239);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1159);
                                                                                                                                                                        },§§goto(addr1642))
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc35_)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop10;
                                                                                                                                                                           }
                                                                                                                                                                           §§push(_loc27_.x);
                                                                                                                                                                           loop12:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc34_ && param1))
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc35_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc28_.x);
                                                                                                                                                                                    loop13:
                                                                                                                                                                                    for(; !_loc34_; while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!(_loc34_ && b2Collision))
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc35_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc34_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr1238);
                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1619);
                                                                                                                                                                                          }
                                                                                                                                                                                          break;
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop13;
                                                                                                                                                                                    },§§goto(addr1642))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                       loop14:
                                                                                                                                                                                       while(!_loc34_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                          if(!_loc34_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!(_loc34_ && param3))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                                                                loop15:
                                                                                                                                                                                                while(_loc35_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   _loc32_ = §§pop();
                                                                                                                                                                                                   loop16:
                                                                                                                                                                                                   while(!(_loc34_ && b2Collision))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(0.5);
                                                                                                                                                                                                      while(!_loc34_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc27_.y);
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc28_.y);
                                                                                                                                                                                                            continue loop13;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(_loc34_ && param1)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                                                                         if(_loc35_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr1169:
                                                                                                                                                                                                            §§push(§§pop());
                                                                                                                                                                                                            if(!_loc34_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr1172:
                                                                                                                                                                                                               if(_loc35_ || param2)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  _loc19_ = §§pop();
                                                                                                                                                                                                                  addr1180:
                                                                                                                                                                                                                  §§push(_loc20_);
                                                                                                                                                                                                                  if(!_loc34_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc35_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!(_loc34_ && param3))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(§§pop() > §§pop())
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!_loc35_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr1238:
                                                                                                                                                                                                                                 loop24:
                                                                                                                                                                                                                                 for(; !(_loc34_ && param2); if(!(_loc35_ || b2Collision))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue;
                                                                                                                                                                                                                                 },param1.§+!S§[0].m_localPoint.SetV(param4.§?8§),§§goto(addr891))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       param1.§in § = 1;
                                                                                                                                                                                                                                       loop26:
                                                                                                                                                                                                                                       while(_loc35_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!_loc35_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             param1.§39§.Normalize();
                                                                                                                                                                                                                                             param1.m_localPoint.SetV(_loc27_);
                                                                                                                                                                                                                                             addr1581:
                                                                                                                                                                                                                                             if(!(_loc35_ || param3))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr1568:
                                                                                                                                                                                                                                                §§push(param1.§39§);
                                                                                                                                                                                                                                                §§push(_loc16_);
                                                                                                                                                                                                                                                if(!(_loc34_ && param3))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr1577:
                                                                                                                                                                                                                                                   §§push(_loc27_.y);
                                                                                                                                                                                                                                                   if(!_loc34_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr1580:
                                                                                                                                                                                                                                                      §§pop().y = §§pop() - §§pop();
                                                                                                                                                                                                                                                      §§goto(addr1581);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr1588:
                                                                                                                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§pop().x = §§pop();
                                                                                                                                                                                                                                                addr1590:
                                                                                                                                                                                                                                                §§goto(addr1590);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr1551:
                                                                                                                                                                                                                                             addr1545:
                                                                                                                                                                                                                                             addr1549:
                                                                                                                                                                                                                                             addr1563:
                                                                                                                                                                                                                                             addr1535:
                                                                                                                                                                                                                                             addr1562:
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          param1.§3c§ = b2Manifold.§-b§;
                                                                                                                                                                                                                                          continue;
                                                                                                                                                                                                                                          param1.§+!S§[0].m_localPoint.SetV(param4.§?8§);
                                                                                                                                                                                                                                          param1.§+!S§[0].m_id.key = 0;
                                                                                                                                                                                                                                          loop27:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!(_loc35_ || b2Collision))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop26;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             if(_loc34_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop16;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             if(!_loc35_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!(_loc34_ && param2))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr1426:
                                                                                                                                                                                                                                                   param1.§in § = 1;
                                                                                                                                                                                                                                                   loop36:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      param1.§3c§ = b2Manifold.§-b§;
                                                                                                                                                                                                                                                      §§goto(addr1425);
                                                                                                                                                                                                                                                      addr1317:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!(_loc35_ || b2Collision))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue loop36;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         param1.§+!S§[0].m_id.key = 0;
                                                                                                                                                                                                                                                         §§goto(addr1307);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                break;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§push(param1.§39§);
                                                                                                                                                                                                                                             loop28:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!_loc34_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc35_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§pop().x = _loc23_[_loc25_].x;
                                                                                                                                                                                                                                                      loop29:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc35_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!(_loc34_ && param2))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!_loc34_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(param1.§39§);
                                                                                                                                                                                                                                                                  loop30:
                                                                                                                                                                                                                                                                  for(; _loc35_; §§push(param1.§39§),if(!_loc34_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     continue loop28;
                                                                                                                                                                                                                                                                  })
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc35_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§pop().y = _loc23_[_loc25_].y;
                                                                                                                                                                                                                                                                        while(!_loc34_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!_loc34_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop30;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1551);
                                                                                                                                                                                                                                                                           loop33:
                                                                                                                                                                                                                                                                           while(_loc35_ || b2Collision)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop24;
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc34_ && param1)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    continue loop33;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 if(_loc34_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    continue loop29;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 if(!_loc34_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    continue;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1545);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1551);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!(_loc35_ || param2))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              break loop9;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1328);
                                                                                                                                                                                                                                                                           §§push(param1.m_localPoint);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        addr1335:
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1568);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1562);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1412);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            break;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         continue loop27;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1551);
                                                                                                                                                                                                                                                      addr1307:
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1346);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                break;
                                                                                                                                                                                                                                                if(_loc34_ && param2)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                if(_loc35_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§pop().Normalize();
                                                                                                                                                                                                                                                   §§goto(addr953);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1379);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§pop().Normalize();
                                                                                                                                                                                                                                                §§goto(addr1335);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1379);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          if(!_loc35_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§goto(addr1649);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          param1.§3c§ = b2Manifold.§-b§;
                                                                                                                                                                                                                                          §§goto(addr1379);
                                                                                                                                                                                                                                          §§push(param1.§39§);
                                                                                                                                                                                                                                          return;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          param1.§+!S§[0].m_localPoint.SetV(param4.§?8§);
                                                                                                                                                                                                                                          §§goto(addr1317);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 loop23:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc35_ || param3)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc15_);
                                                                                                                                                                                                                                       if(_loc34_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop11;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       if(!_loc34_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc35_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(_loc32_);
                                                                                                                                                                                                                                             if(!_loc34_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!(_loc34_ && param3))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                   if(!(_loc34_ && b2Collision))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop11;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1180);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr1516:
                                                                                                                                                                                                                                                §§push(§§pop() * _loc20_);
                                                                                                                                                                                                                                                break loop14;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1180);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr1464:
                                                                                                                                                                                                                                          §§push(_loc16_);
                                                                                                                                                                                                                                          if(_loc35_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc35_ || param2)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(_loc28_.y);
                                                                                                                                                                                                                                                if(_loc35_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                   if(_loc35_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc35_ || param2)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!_loc34_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(_loc16_);
                                                                                                                                                                                                                                                            if(!(_loc34_ && param1))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!_loc34_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§goto(addr1642);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               addr1619:
                                                                                                                                                                                                                                                               §§push(§§pop() * (§§pop() - §§pop()));
                                                                                                                                                                                                                                                               §§push(_loc16_ - _loc27_.y);
                                                                                                                                                                                                                                                               §§push(_loc16_);
                                                                                                                                                                                                                                                               if(!(_loc34_ && param3))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr1642:
                                                                                                                                                                                                                                                                  §§push(_loc28_.y);
                                                                                                                                                                                                                                                                  if(!(_loc34_ && param1))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                     break loop13;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  if(§§pop() + §§pop() * (§§pop() - §§pop()) <= _loc20_ * _loc20_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     break loop16;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr1649:
                                                                                                                                                                                                                                                                  return;
                                                                                                                                                                                                                                                                  §§push(_loc27_.y);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1642);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            break loop13;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         continue loop9;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1619);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   break loop12;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1516);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1642);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          break loop14;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       while(_loc35_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          _loc33_ = §§pop();
                                                                                                                                                                                                                                          continue loop23;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       if(!_loc34_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§goto(addr1516);
                                                                                                                                                                                                                                          §§push(_loc20_);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1619);
                                                                                                                                                                                                                                       §§push(_loc15_);
                                                                                                                                                                                                                                       §§push(_loc27_.x);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1317);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr1210:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                    addr1239:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§goto(addr1240);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr1238:
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              if(!(_loc35_ || param1))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§goto(addr1518);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              if(!(_loc34_ && param1))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 return;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1596);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1021);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr1612:
                                                                                                                                                                                                                        §§goto(addr1613);
                                                                                                                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1642);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1238);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr1446:
                                                                                                                                                                                                               §§push(_loc28_.x);
                                                                                                                                                                                                               if(!(_loc34_ && param1))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr1456:
                                                                                                                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                                                                                                                  if(!(_loc34_ && b2Collision))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr1464);
                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1642);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               break loop13;
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1180);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop15;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   param1.§in § = 1;
                                                                                                                                                                                                   §§goto(addr1601);
                                                                                                                                                                                                }
                                                                                                                                                                                                addr1443:
                                                                                                                                                                                                if(!_loc35_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop8;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1446);
                                                                                                                                                                                                §§push(_loc15_);
                                                                                                                                                                                                addr1288:
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1619);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1288);
                                                                                                                                                                                       }
                                                                                                                                                                                       if(§§pop() <= §§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr1426);
                                                                                                                                                                                       }
                                                                                                                                                                                       addr1518:
                                                                                                                                                                                       return;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                    break;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1613);
                                                                                                                                                                              }
                                                                                                                                                                              break;
                                                                                                                                                                              addr1094:
                                                                                                                                                                              if(_loc34_ && param2)
                                                                                                                                                                              {
                                                                                                                                                                                 continue;
                                                                                                                                                                              }
                                                                                                                                                                              if(!(_loc34_ && b2Collision))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc33_);
                                                                                                                                                                                 if(_loc35_ || b2Collision)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc34_ && b2Collision))
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!(_loc34_ && b2Collision))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                                                                          if(!(_loc34_ && param1))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() * _loc23_[_loc25_].y);
                                                                                                                                                                                             if(!_loc34_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr1145:
                                                                                                                                                                                                if(_loc35_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc34_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!_loc34_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                         if(!(_loc34_ && param1))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr1159);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1169);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1619);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1456);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1275);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1172);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1145);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1642);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1516);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1226);
                                                                                                                                                                              }
                                                                                                                                                                              if(_loc35_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr1443);
                                                                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1619);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1613);
                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1440);
                                                                                                                                                                        §§push(_loc28_.x);
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr1438);
                                                                                                                                                                        §§goto(addr1412);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1619);
                                                                                                                                                                  }
                                                                                                                                                                  §§push(_loc15_);
                                                                                                                                                                  if(!_loc34_)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr1612);
                                                                                                                                                                     §§push(_loc27_.x);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1619);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1419);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr861);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr849);
                                                                                                                                                }
                                                                                                                                                §§goto(addr861);
                                                                                                                                             }
                                                                                                                                             §§goto(addr849);
                                                                                                                                          }
                                                                                                                                          §§goto(addr856);
                                                                                                                                       }
                                                                                                                                       §§goto(addr826);
                                                                                                                                    }
                                                                                                                                    §§goto(addr861);
                                                                                                                                 }
                                                                                                                                 §§goto(addr849);
                                                                                                                              }
                                                                                                                              §§goto(addr861);
                                                                                                                           }
                                                                                                                           §§goto(addr765);
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr768);
                                                                                                                  }
                                                                                                                  §§goto(addr752);
                                                                                                               }
                                                                                                               §§goto(addr761);
                                                                                                            }
                                                                                                            §§goto(addr765);
                                                                                                         }
                                                                                                         §§goto(addr768);
                                                                                                      }
                                                                                                      §§goto(addr745);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr737);
                                                                                          }
                                                                                          §§goto(addr661);
                                                                                       }
                                                                                       addr525:
                                                                                       §§push(int(§§pop()));
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push(0);
                                                                                       if(_loc35_ || param3)
                                                                                       {
                                                                                          §§goto(addr525);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr526);
                                                                                 }
                                                                                 §§goto(addr513);
                                                                              }
                                                                              §§goto(addr512);
                                                                           }
                                                                           §§goto(addr511);
                                                                        }
                                                                        break;
                                                                     }
                                                                     §§goto(addr495);
                                                                     §§push(int(§§pop()));
                                                                  }
                                                               }
                                                               §§goto(addr253);
                                                            }
                                                            §§goto(addr245);
                                                         }
                                                         §§goto(addr253);
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                      if(!_loc35_)
                                                      {
                                                      }
                                                   }
                                                   §§goto(addr214);
                                                }
                                                §§goto(addr176);
                                             }
                                             §§goto(addr182);
                                          }
                                       }
                                       §§goto(addr176);
                                    }
                                    §§goto(addr165);
                                 }
                                 §§goto(addr168);
                              }
                              §§goto(addr136);
                           }
                           §§goto(addr127);
                        }
                        §§goto(addr123);
                     }
                     §§goto(addr127);
                  }
                  §§goto(addr136);
               }
               §§push(§§pop() + §§pop());
            }
            §§goto(addr91);
         }
         §§goto(addr94);
      }
      
      public static function §;!4§(param1:b2AABB, param2:b2AABB) : Boolean
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc3_:b2Vec2 = param2.§ 1§;
         var _loc4_:b2Vec2 = param1.§,e§;
         §§push(_loc3_.x);
         if(!(_loc10_ && param2))
         {
            §§push(§§pop() - _loc4_.x);
            if(_loc9_ || b2Collision)
            {
               addr43:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            §§push(_loc3_.y);
            if(_loc9_ || param2)
            {
               §§push(§§pop() - _loc4_.y);
               if(_loc9_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc6_:* = §§pop();
            _loc3_ = param1.§ 1§;
            _loc4_ = param2.§,e§;
            §§push(_loc3_.x);
            if(_loc9_ || param2)
            {
               §§push(§§pop() - _loc4_.x);
               if(_loc9_ || param1)
               {
                  addr88:
                  §§push(Number(§§pop()));
               }
               var _loc7_:* = §§pop();
               §§push(_loc3_.y);
               if(_loc9_)
               {
                  §§push(§§pop() - _loc4_.y);
                  if(!(_loc10_ && _loc3_))
                  {
                     addr104:
                     §§push(Number(§§pop()));
                  }
                  var _loc8_:* = §§pop();
                  if(!(_loc10_ && param1))
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
                                       addr271:
                                       while(true)
                                       {
                                          §§push(_loc6_);
                                          addr246:
                                          while(true)
                                          {
                                             §§push(0);
                                             addr247:
                                             while(true)
                                             {
                                                §§push(§§pop() > §§pop());
                                             }
                                          }
                                       }
                                    }
                                    addr270:
                                 }
                                 while(true)
                                 {
                                    loop6:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc9_)
                                          {
                                             §§push(false);
                                             break;
                                          }
                                          loop7:
                                          while(true)
                                          {
                                             addr200:
                                             if(_loc10_ && param2)
                                             {
                                                continue;
                                             }
                                             addr114:
                                             §§push(true);
                                             if(!(_loc10_ && _loc3_))
                                             {
                                                addr123:
                                                if(_loc10_ && param1)
                                                {
                                                   loop12:
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      loop13:
                                                      while(_loc9_ || param1)
                                                      {
                                                         addr243:
                                                         §§push(_loc8_);
                                                         if(_loc9_ || param1)
                                                         {
                                                            if(_loc9_ || _loc3_)
                                                            {
                                                               if(_loc10_)
                                                               {
                                                                  continue loop0;
                                                               }
                                                               §§push(0);
                                                               if(_loc9_)
                                                               {
                                                                  if(_loc10_)
                                                                  {
                                                                     continue loop1;
                                                                  }
                                                                  §§push(§§pop() > §§pop());
                                                                  if(!_loc10_)
                                                                  {
                                                                     if(_loc9_)
                                                                     {
                                                                        if(_loc10_ && param2)
                                                                        {
                                                                           continue loop2;
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        while(_loc9_ || param1)
                                                                        {
                                                                           §§push(§§pop());
                                                                           if(!(_loc9_ || param1))
                                                                           {
                                                                              continue loop3;
                                                                           }
                                                                           if(!§§pop())
                                                                           {
                                                                              continue loop12;
                                                                           }
                                                                        }
                                                                        continue loop6;
                                                                        addr219:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           if(_loc9_)
                                                                           {
                                                                              addr190:
                                                                              §§push(false);
                                                                              if(!_loc10_)
                                                                              {
                                                                                 return §§pop();
                                                                              }
                                                                              break loop6;
                                                                           }
                                                                           if(!(_loc9_ || param2))
                                                                           {
                                                                              continue loop13;
                                                                           }
                                                                           §§goto(addr200);
                                                                           §§goto(addr190);
                                                                        }
                                                                        §§goto(addr114);
                                                                     }
                                                                     continue loop7;
                                                                  }
                                                                  §§goto(addr190);
                                                               }
                                                               else
                                                               {
                                                                  while(!(_loc10_ && param2))
                                                                  {
                                                                     §§push(§§pop() > §§pop());
                                                                  }
                                                                  §§goto(addr247);
                                                                  addr211:
                                                               }
                                                               §§goto(addr219);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr246);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               §§goto(addr243);
                                                            }
                                                            addr210:
                                                         }
                                                         §§goto(addr211);
                                                      }
                                                      §§goto(addr271);
                                                   }
                                                }
                                                if(!(_loc10_ && _loc3_))
                                                {
                                                   return §§pop();
                                                }
                                                §§goto(addr270);
                                             }
                                             §§goto(addr190);
                                          }
                                       }
                                       while(true)
                                       {
                                          §§goto(addr210);
                                       }
                                    }
                                    return §§pop();
                                 }
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr271);
               }
               §§goto(addr104);
            }
            §§goto(addr88);
         }
         §§goto(addr43);
      }
   }
}
