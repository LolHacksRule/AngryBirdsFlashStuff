package §!4§
{
   import §6A§.*;
   import §7q§.*;
   import §^P§.*;
   
   use namespace b2internal;
   
   public class b2Collision
   {
      
      public static const b2_nullFeature:uint = 255;
      
      private static var §`!I§:Vector.<§+!>§>;
      
      private static var s_clipPoints1:Vector.<§+!>§>;
      
      private static var s_clipPoints2:Vector.<§+!>§>;
      
      private static var §7!@§:Vector.<int>;
      
      private static var §3o§:Vector.<int>;
      
      private static var §5e§:b2Vec2;
      
      private static var §['§:b2Vec2;
      
      private static var §3W§:b2Vec2;
      
      private static var §^O§:b2Vec2;
      
      private static var §'§:b2Vec2;
      
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
            while(true)
            {
               §`!I§ = §<m§();
            }
            addr189:
         }
         loop1:
         while(true)
         {
            s_clipPoints1 = §<m§();
            loop2:
            while(true)
            {
               s_clipPoints2 = §<m§();
               while(true)
               {
                  §7!@§ = new Vector.<int>(1);
                  while(true)
                  {
                     §3o§ = new Vector.<int>(1);
                     while(_loc1_)
                     {
                        §5e§ = new b2Vec2();
                        continue loop2;
                        if(_loc1_ || _loc1_)
                        {
                           return;
                        }
                     }
                  }
                  addr115:
                  loop7:
                  while(_loc1_ || b2Collision)
                  {
                     §3W§ = new b2Vec2();
                     loop8:
                     while(true)
                     {
                        §^O§ = new b2Vec2();
                        loop9:
                        while(true)
                        {
                           if(!_loc1_)
                           {
                              continue loop2;
                           }
                           if(!_loc1_)
                           {
                              break;
                           }
                           §'§ = new b2Vec2();
                           loop10:
                           while(true)
                           {
                              s_tangent2 = new b2Vec2();
                              while(true)
                              {
                                 if(!_loc2_)
                                 {
                                    if(_loc2_)
                                    {
                                       break;
                                    }
                                    s_v11 = new b2Vec2();
                                    while(true)
                                    {
                                       if(_loc1_)
                                       {
                                          if(_loc2_)
                                          {
                                             break;
                                          }
                                          continue;
                                       }
                                       continue loop10;
                                    }
                                    continue loop9;
                                 }
                                 continue loop8;
                                 if(_loc2_ && _loc2_)
                                 {
                                    continue;
                                 }
                                 §§goto(addr44);
                              }
                              continue loop7;
                           }
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
      }
      
      public function b2Collision()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super();
         }
      }
      
      public static function §;y§(param1:Vector.<§+!>§>, param2:Vector.<§+!>§>, param3:b2Vec2, param4:Number) : int
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc5_:§+!>§ = null;
         var _loc6_:int = 0;
         var _loc7_:b2Vec2 = null;
         var _loc9_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:b2Vec2 = null;
         var _loc13_:§+!>§ = null;
         if(_loc15_ || param2)
         {
            _loc6_ = 0;
         }
         _loc7_ = (_loc5_ = param2[0]).v;
         var _loc8_:b2Vec2 = (_loc5_ = param2[1]).v;
         if(_loc15_)
         {
            §§push(param3.x);
            if(!_loc14_)
            {
               §§push(_loc7_.x);
               if(!(_loc14_ && param2))
               {
                  §§push(§§pop() * §§pop());
                  if(_loc15_)
                  {
                     §§push(param3.y);
                     if(_loc15_)
                     {
                        §§push(_loc7_.y);
                        if(!(_loc14_ && param2))
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc15_ || param1)
                           {
                              §§push(§§pop() + §§pop());
                              if(!_loc14_)
                              {
                                 §§push(param4);
                                 if(!_loc14_)
                                 {
                                    §§push(§§pop() - §§pop());
                                    if(!_loc14_)
                                    {
                                       addr110:
                                       §§push(Number(§§pop()));
                                       if(_loc15_ || param3)
                                       {
                                          _loc9_ = §§pop();
                                          addr119:
                                          §§push(param3.x);
                                          if(!(_loc14_ && param1))
                                          {
                                             addr128:
                                             §§push(_loc8_.x);
                                             if(!_loc14_)
                                             {
                                                addr132:
                                                §§push(§§pop() * §§pop());
                                                if(!_loc14_)
                                                {
                                                   §§push(param3.y);
                                                   if(!_loc14_)
                                                   {
                                                      addr139:
                                                      addr141:
                                                      §§push(§§pop() * _loc8_.y);
                                                      if(_loc15_ || param2)
                                                      {
                                                      }
                                                      addr153:
                                                      §§push(§§pop() - §§pop());
                                                      if(!_loc14_)
                                                      {
                                                         addr157:
                                                         var _loc10_:Number = §§pop();
                                                         if(!_loc14_)
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
                                                                        addr296:
                                                                        while(true)
                                                                        {
                                                                        }
                                                                     }
                                                                     addr286:
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
                                                                              while(true)
                                                                              {
                                                                                 if(_loc14_)
                                                                                 {
                                                                                    break loop4;
                                                                                 }
                                                                                 param1[_loc6_++].Set(param2[1]);
                                                                                 while(_loc15_ || param3)
                                                                                 {
                                                                                 }
                                                                                 §§goto(addr296);
                                                                              }
                                                                              addr263:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc9_);
                                                                              if(!(_loc14_ && param2))
                                                                              {
                                                                                 §§push(_loc10_);
                                                                                 if(!(_loc14_ && b2Collision))
                                                                                 {
                                                                                    if(_loc14_ && b2Collision)
                                                                                    {
                                                                                       continue loop1;
                                                                                    }
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(!(_loc14_ && param1))
                                                                                    {
                                                                                       if(_loc15_)
                                                                                       {
                                                                                          continue loop0;
                                                                                       }
                                                                                       continue loop3;
                                                                                    }
                                                                                    addr253:
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr243:
                                                                                    if(!(_loc15_ || param3))
                                                                                    {
                                                                                       continue loop4;
                                                                                    }
                                                                                    §§push(§§pop() / §§pop());
                                                                                    if(!_loc14_)
                                                                                    {
                                                                                       §§goto(addr253);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              addr254:
                                                                              addr255:
                                                                              _loc11_ = §§pop();
                                                                              if(_loc15_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§goto(addr275);
                                                                           }
                                                                           if(true)
                                                                           {
                                                                              §§push(_loc12_ = (_loc5_ = param1[_loc6_]).v);
                                                                              §§push(_loc7_.x);
                                                                              if(_loc15_)
                                                                              {
                                                                                 §§push(_loc11_);
                                                                                 if(!(_loc14_ && b2Collision))
                                                                                 {
                                                                                    §§push(_loc8_.x);
                                                                                    if(_loc15_ || param2)
                                                                                    {
                                                                                       §§push(§§pop() - _loc7_.x);
                                                                                    }
                                                                                    §§push(§§pop() * §§pop());
                                                                                 }
                                                                                 §§push(§§pop() + §§pop());
                                                                              }
                                                                              §§pop().x = §§pop();
                                                                              if(!(_loc14_ && param2))
                                                                              {
                                                                                 §§push(_loc12_);
                                                                                 §§push(_loc7_.y);
                                                                                 if(_loc15_ || param1)
                                                                                 {
                                                                                    §§push(_loc11_);
                                                                                    if(_loc15_ || b2Collision)
                                                                                    {
                                                                                       §§push(_loc8_.y);
                                                                                       if(_loc15_ || param2)
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
                                                                           continue loop2;
                                                                           if(!_loc14_)
                                                                           {
                                                                              if(_loc9_ > 0)
                                                                              {
                                                                                 §§goto(addr384);
                                                                              }
                                                                              _loc13_ = param2[1];
                                                                              if(!(_loc14_ && b2Collision))
                                                                              {
                                                                                 _loc5_.id = _loc13_.id;
                                                                              }
                                                                              §§goto(addr429);
                                                                           }
                                                                           addr384:
                                                                           _loc13_ = param2[0];
                                                                           if(!(_loc14_ && b2Collision))
                                                                           {
                                                                              _loc5_.id = _loc13_.id;
                                                                              if(_loc15_)
                                                                              {
                                                                                 addr429:
                                                                                 _loc6_++;
                                                                              }
                                                                           }
                                                                           return _loc6_;
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr286);
                                                      }
                                                      §§goto(addr157);
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                   if(!_loc14_)
                                                   {
                                                      §§push(param4);
                                                   }
                                                }
                                                §§goto(addr157);
                                             }
                                             §§goto(addr153);
                                          }
                                          §§goto(addr157);
                                       }
                                    }
                                    §§goto(addr128);
                                 }
                                 §§goto(addr139);
                              }
                              §§goto(addr157);
                           }
                           §§goto(addr132);
                        }
                        §§goto(addr141);
                     }
                     §§goto(addr139);
                  }
                  §§goto(addr157);
               }
               §§goto(addr139);
            }
            §§goto(addr110);
         }
         §§goto(addr119);
      }
      
      public static function §9!$§(param1:b2PolygonShape, param2:b2Transform, param3:int, param4:b2PolygonShape, param5:b2Transform) : Number
      {
         var _loc26_:Boolean = true;
         var _loc27_:Boolean = false;
         var _loc11_:b2Mat22 = null;
         var _loc12_:b2Vec2 = null;
         var _loc25_:* = NaN;
         §§push(param1.§6!U§);
         if(!(_loc27_ && param1))
         {
            §§push(int(§§pop()));
         }
         var _loc6_:* = §§pop();
         var _loc7_:Vector.<b2Vec2> = param1.§+!f§;
         var _loc8_:Vector.<b2Vec2> = param1.§%!L§;
         §§push(param4.§6!U§);
         if(_loc26_)
         {
            §§push(int(§§pop()));
         }
         var _loc9_:* = §§pop();
         var _loc10_:Vector.<b2Vec2> = param4.§+!f§;
         _loc11_ = param2.R;
         _loc12_ = _loc8_[param3];
         §§push(_loc11_.col1.x);
         if(_loc26_ || b2Collision)
         {
            §§push(_loc12_.x);
            if(!(_loc27_ && param1))
            {
               addr106:
               §§push(§§pop() * §§pop());
               if(_loc26_)
               {
                  §§push(_loc11_.col2.x);
                  if(_loc26_ || param3)
                  {
                     §§push(§§pop() * _loc12_.y);
                  }
               }
               var _loc13_:* = §§pop();
               §§push(_loc11_.col1.y);
               if(_loc26_)
               {
                  §§push(_loc12_.x);
                  if(_loc26_)
                  {
                     §§push(§§pop() * §§pop());
                     if(_loc26_)
                     {
                        addr119:
                        §§push(_loc11_.col2.y);
                        if(_loc26_ || b2Collision)
                        {
                           addr129:
                           §§push(§§pop() * _loc12_.y);
                        }
                        §§push(§§pop() + §§pop());
                        if(!(_loc27_ && param1))
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                     var _loc14_:* = §§pop();
                     §§push((_loc11_ = param5.R).col1.x);
                     if(_loc26_ || b2Collision)
                     {
                        §§push(_loc13_);
                        if(!_loc27_)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc26_)
                           {
                              §§push(_loc11_.col1.y);
                              if(_loc26_)
                              {
                                 addr169:
                                 §§push(§§pop() + §§pop() * _loc14_);
                                 if(!_loc26_)
                                 {
                                 }
                                 var _loc15_:* = §§pop();
                                 §§push(_loc11_.col2.x);
                                 if(_loc26_)
                                 {
                                    §§push(_loc13_);
                                    if(!(_loc27_ && param3))
                                    {
                                       addr206:
                                       §§push(§§pop() * §§pop());
                                       if(_loc26_ || b2Collision)
                                       {
                                          §§push(_loc11_.col2.y);
                                          if(!_loc27_)
                                          {
                                             §§push(§§pop() * _loc14_);
                                          }
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
                                             if(!(_loc27_ && param2))
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!(_loc27_ && param3))
                                                {
                                                   §§push(_loc12_.y);
                                                   if(!(_loc27_ && b2Collision))
                                                   {
                                                      addr256:
                                                      §§push(§§pop() * _loc16_);
                                                      if(!_loc27_)
                                                      {
                                                         addr260:
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc26_)
                                                         {
                                                            addr263:
                                                            §§push(Number(§§pop()));
                                                            if(_loc26_)
                                                            {
                                                               addr266:
                                                               §§push(§§pop());
                                                               if(_loc26_)
                                                               {
                                                                  addr269:
                                                                  _loc25_ = §§pop();
                                                                  if(_loc26_)
                                                                  {
                                                                     addr273:
                                                                     if(§§pop() < _loc18_)
                                                                     {
                                                                        if(!_loc27_)
                                                                        {
                                                                           §§push(_loc25_);
                                                                           if(!_loc27_)
                                                                           {
                                                                              addr280:
                                                                              _loc18_ = §§pop();
                                                                              addr279:
                                                                              if(_loc27_ && param2)
                                                                              {
                                                                              }
                                                                              _loc19_++;
                                                                              continue;
                                                                           }
                                                                           §§goto(addr280);
                                                                        }
                                                                        §§push(_loc19_);
                                                                        if(_loc26_ || param1)
                                                                        {
                                                                           §§push(int(§§pop()));
                                                                        }
                                                                        _loc17_ = §§pop();
                                                                        if(!_loc26_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                     }
                                                                     §§goto(addr280);
                                                                  }
                                                                  §§goto(addr279);
                                                               }
                                                               §§goto(addr273);
                                                            }
                                                            §§goto(addr280);
                                                         }
                                                         §§goto(addr266);
                                                      }
                                                      §§goto(addr269);
                                                   }
                                                   §§goto(addr260);
                                                }
                                                §§goto(addr273);
                                             }
                                             §§goto(addr256);
                                          }
                                          §§goto(addr263);
                                       }
                                       _loc12_ = _loc7_[param3];
                                       _loc11_ = param2.R;
                                       §§push(param2.position.x);
                                       if(!(_loc27_ && param3))
                                       {
                                          §§push(_loc11_.col1.x);
                                          if(_loc26_ || b2Collision)
                                          {
                                             §§push(_loc12_.x);
                                             if(!_loc27_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!(_loc27_ && param2))
                                                {
                                                   addr355:
                                                   §§push(_loc11_.col2.x);
                                                   if(!(_loc27_ && param3))
                                                   {
                                                      addr368:
                                                      §§push(§§pop() + §§pop() * _loc12_.y);
                                                   }
                                                   §§goto(addr368);
                                                }
                                                §§push(§§pop() + §§pop());
                                                if(!(_loc27_ && param1))
                                                {
                                                   addr378:
                                                   var _loc20_:Number = §§pop();
                                                   §§push(param2.position.y);
                                                   if(!(_loc27_ && param3))
                                                   {
                                                      §§push(_loc11_.col1.y);
                                                      if(!_loc27_)
                                                      {
                                                         §§push(_loc12_.x);
                                                         if(_loc26_)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(!(_loc27_ && param3))
                                                            {
                                                               addr406:
                                                               §§push(_loc11_.col2.y);
                                                               if(!_loc27_)
                                                               {
                                                                  addr411:
                                                                  §§push(§§pop() * _loc12_.y);
                                                               }
                                                               §§push(§§pop() + §§pop());
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc26_ || param2)
                                                            {
                                                               addr424:
                                                               var _loc21_:Number = §§pop();
                                                               _loc12_ = _loc10_[_loc17_];
                                                               _loc11_ = param5.R;
                                                               §§push(param5.position.x);
                                                               if(_loc26_)
                                                               {
                                                                  §§push(_loc11_.col1.x);
                                                                  if(_loc26_ || b2Collision)
                                                                  {
                                                                     §§push(_loc12_.x);
                                                                     if(_loc26_)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc26_)
                                                                        {
                                                                           addr470:
                                                                           §§push(_loc11_.col2.x);
                                                                           if(_loc26_ || param3)
                                                                           {
                                                                              addr466:
                                                                              §§push(§§pop() * _loc12_.y);
                                                                           }
                                                                           §§push(§§pop() + (§§pop() + §§pop()));
                                                                           if(!(_loc27_ && b2Collision))
                                                                           {
                                                                              addr479:
                                                                              var _loc22_:* = Number(§§pop());
                                                                              §§push(param5.position.y);
                                                                              if(!_loc27_)
                                                                              {
                                                                                 §§push(_loc11_.col1.y);
                                                                                 if(!(_loc27_ && param3))
                                                                                 {
                                                                                    §§push(_loc12_.x);
                                                                                    if(_loc26_ || b2Collision)
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(!(_loc27_ && param3))
                                                                                       {
                                                                                          addr512:
                                                                                          §§push(_loc11_.col2.y);
                                                                                          if(_loc26_ || param2)
                                                                                          {
                                                                                             addr522:
                                                                                             §§push(§§pop() * _loc12_.y);
                                                                                          }
                                                                                          §§push(§§pop() + §§pop());
                                                                                       }
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(_loc26_ || param3)
                                                                                       {
                                                                                          addr535:
                                                                                          var _loc23_:* = Number(§§pop());
                                                                                          if(_loc26_ || param2)
                                                                                          {
                                                                                             §§push(_loc22_);
                                                                                             if(!(_loc27_ && param2))
                                                                                             {
                                                                                                §§push(_loc20_);
                                                                                                if(!_loc27_)
                                                                                                {
                                                                                                   §§push(§§pop() - §§pop());
                                                                                                   if(!(_loc27_ && param2))
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      if(_loc26_)
                                                                                                      {
                                                                                                         addr565:
                                                                                                         _loc22_ = §§pop();
                                                                                                         if(_loc26_)
                                                                                                         {
                                                                                                            §§push(_loc23_);
                                                                                                            if(_loc26_ || b2Collision)
                                                                                                            {
                                                                                                               §§push(_loc21_);
                                                                                                               if(!(_loc27_ && param1))
                                                                                                               {
                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                  if(!_loc27_)
                                                                                                                  {
                                                                                                                     addr587:
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     if(_loc26_)
                                                                                                                     {
                                                                                                                        addr590:
                                                                                                                        _loc23_ = §§pop();
                                                                                                                        addr591:
                                                                                                                        §§push(_loc22_);
                                                                                                                        if(_loc26_)
                                                                                                                        {
                                                                                                                           addr594:
                                                                                                                           §§push(_loc13_);
                                                                                                                           if(_loc26_ || param2)
                                                                                                                           {
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              if(_loc26_)
                                                                                                                              {
                                                                                                                                 §§push(_loc23_);
                                                                                                                                 if(!(_loc27_ && param1))
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() * _loc14_);
                                                                                                                                    if(_loc26_ || b2Collision)
                                                                                                                                    {
                                                                                                                                       addr632:
                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                       if(_loc26_)
                                                                                                                                       {
                                                                                                                                          addr636:
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                       }
                                                                                                                                       §§goto(addr636);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 var _loc24_:* = §§pop();
                                                                                                                                 return §§pop();
                                                                                                                              }
                                                                                                                              §§goto(addr636);
                                                                                                                           }
                                                                                                                           §§goto(addr632);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr636);
                                                                                                               }
                                                                                                               §§goto(addr632);
                                                                                                            }
                                                                                                            §§goto(addr594);
                                                                                                         }
                                                                                                         §§goto(addr591);
                                                                                                      }
                                                                                                      §§goto(addr590);
                                                                                                   }
                                                                                                   §§goto(addr587);
                                                                                                }
                                                                                                §§goto(addr632);
                                                                                             }
                                                                                             §§goto(addr565);
                                                                                          }
                                                                                          §§goto(addr590);
                                                                                       }
                                                                                       §§goto(addr535);
                                                                                    }
                                                                                    §§goto(addr522);
                                                                                 }
                                                                                 §§goto(addr512);
                                                                              }
                                                                              §§goto(addr535);
                                                                           }
                                                                           §§goto(addr479);
                                                                        }
                                                                        §§goto(addr470);
                                                                     }
                                                                     §§goto(addr466);
                                                                  }
                                                                  §§goto(addr470);
                                                               }
                                                               §§goto(addr479);
                                                            }
                                                            §§goto(addr424);
                                                         }
                                                         §§goto(addr411);
                                                      }
                                                      §§goto(addr406);
                                                   }
                                                   §§goto(addr424);
                                                }
                                                §§goto(addr378);
                                             }
                                             §§goto(addr368);
                                          }
                                          §§goto(addr355);
                                       }
                                       §§goto(addr378);
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(!_loc27_)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                 }
                                 §§goto(addr206);
                              }
                           }
                           §§goto(addr169);
                           §§push(Number(§§pop()));
                        }
                     }
                     §§goto(addr169);
                  }
                  §§goto(addr129);
               }
               §§goto(addr119);
            }
            §§push(§§pop() + §§pop());
            if(!(_loc27_ && b2Collision))
            {
               §§push(Number(§§pop()));
            }
         }
         §§goto(addr106);
      }
      
      public static function §,5§(param1:Vector.<int>, param2:b2PolygonShape, param3:b2Transform, param4:b2PolygonShape, param5:b2Transform) : Number
      {
         var _loc26_:Boolean = true;
         var _loc27_:Boolean = false;
         var _loc8_:b2Vec2 = null;
         var _loc9_:b2Mat22 = null;
         var _loc22_:* = 0;
         var _loc23_:* = NaN;
         var _loc24_:* = 0;
         var _loc25_:* = NaN;
         §§push(param2.§6!U§);
         if(_loc26_)
         {
            §§push(int(§§pop()));
         }
         var _loc6_:* = §§pop();
         var _loc7_:Vector.<b2Vec2> = param2.§%!L§;
         _loc9_ = param5.R;
         _loc8_ = param4.§!p§;
         §§push(param5.position.x);
         if(_loc26_)
         {
            §§push(_loc9_.col1.x);
            if(!_loc27_)
            {
               §§push(_loc8_.x);
               if(_loc26_)
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc27_ && param1))
                  {
                     addr84:
                     §§push(_loc9_.col2.x);
                     if(!(_loc27_ && param3))
                     {
                        addr80:
                        §§push(§§pop() * _loc8_.y);
                     }
                     §§push(§§pop() + (§§pop() + §§pop()));
                     if(!(_loc27_ && b2Collision))
                     {
                        addr93:
                        var _loc10_:* = Number(§§pop());
                        §§push(param5.position.y);
                        if(_loc26_ || param2)
                        {
                           §§push(_loc9_.col1.y);
                           if(!(_loc27_ && param3))
                           {
                              §§push(_loc8_.x);
                              if(!_loc27_)
                              {
                                 addr140:
                                 §§push(§§pop() * §§pop());
                                 if(!(_loc27_ && param2))
                                 {
                                    §§push(_loc9_.col2.y);
                                    if(!(_loc27_ && param2))
                                    {
                                       §§push(§§pop() * _loc8_.y);
                                    }
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(_loc26_ || b2Collision)
                                 {
                                    addr148:
                                    §§push(Number(§§pop()));
                                 }
                                 var _loc11_:* = §§pop();
                                 _loc9_ = param3.R;
                                 _loc8_ = param2.§!p§;
                                 if(_loc26_)
                                 {
                                    §§push(_loc10_);
                                    if(_loc26_)
                                    {
                                       §§push(param3.position);
                                       if(_loc26_)
                                       {
                                          §§push(§§pop().x);
                                          if(!_loc27_)
                                          {
                                             §§push(_loc9_.col1);
                                             if(!(_loc27_ && b2Collision))
                                             {
                                                §§push(§§pop().x);
                                                if(!(_loc27_ && param2))
                                                {
                                                   §§push(_loc8_.x);
                                                   if(!(_loc27_ && param2))
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc26_)
                                                      {
                                                         §§push(_loc9_.col2);
                                                         if(_loc26_ || param2)
                                                         {
                                                            §§push(§§pop().x);
                                                            if(!_loc27_)
                                                            {
                                                               §§push(_loc8_.y);
                                                               if(_loc26_ || param1)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(!(_loc27_ && param1))
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     if(_loc26_)
                                                                     {
                                                                        addr231:
                                                                        §§push(§§pop() + §§pop());
                                                                        if(!_loc27_)
                                                                        {
                                                                           §§push(§§pop() - §§pop());
                                                                           if(_loc26_ || param1)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              if(!(_loc27_ && param3))
                                                                              {
                                                                                 _loc10_ = §§pop();
                                                                                 if(_loc26_ || param1)
                                                                                 {
                                                                                    §§push(_loc11_);
                                                                                    if(_loc26_ || param1)
                                                                                    {
                                                                                       addr266:
                                                                                       §§push(param3.position.y);
                                                                                       if(!(_loc27_ && b2Collision))
                                                                                       {
                                                                                          §§push(_loc9_.col1);
                                                                                          if(!_loc27_)
                                                                                          {
                                                                                             addr280:
                                                                                             §§push(§§pop().y);
                                                                                             if(_loc26_ || param2)
                                                                                             {
                                                                                                addr288:
                                                                                                §§push(_loc8_.x);
                                                                                                if(_loc26_)
                                                                                                {
                                                                                                   addr292:
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(_loc26_)
                                                                                                   {
                                                                                                      addr295:
                                                                                                      addr297:
                                                                                                      §§push(_loc9_.col2.y);
                                                                                                      if(!(_loc27_ && b2Collision))
                                                                                                      {
                                                                                                         addr305:
                                                                                                         §§push(§§pop() * _loc8_.y);
                                                                                                      }
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      if(_loc27_ && param3)
                                                                                                      {
                                                                                                      }
                                                                                                      addr350:
                                                                                                      §§push(§§pop() + §§pop() * §§pop());
                                                                                                      if(_loc26_)
                                                                                                      {
                                                                                                         addr354:
                                                                                                         §§push(Number(§§pop()));
                                                                                                      }
                                                                                                      var _loc12_:* = §§pop();
                                                                                                      §§push(_loc10_);
                                                                                                      if(_loc26_ || b2Collision)
                                                                                                      {
                                                                                                         §§push(param3.R.col2.x);
                                                                                                         if(!_loc27_)
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            if(!_loc27_)
                                                                                                            {
                                                                                                               §§push(_loc11_);
                                                                                                               if(!_loc27_)
                                                                                                               {
                                                                                                                  addr376:
                                                                                                                  §§push(§§pop() * param3.R.col2.y);
                                                                                                               }
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               if(_loc26_ || param3)
                                                                                                               {
                                                                                                                  addr389:
                                                                                                                  §§push(Number(§§pop()));
                                                                                                               }
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
                                                                                                               if(!_loc27_)
                                                                                                               {
                                                                                                                  §§push(_loc12_);
                                                                                                                  if(!(_loc27_ && param2))
                                                                                                                  {
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     if(_loc26_ || param1)
                                                                                                                     {
                                                                                                                        §§push(_loc8_.y);
                                                                                                                        if(!_loc27_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * _loc13_);
                                                                                                                           if(_loc26_)
                                                                                                                           {
                                                                                                                              addr437:
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              if(!_loc27_)
                                                                                                                              {
                                                                                                                                 addr440:
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                 if(!(_loc27_ && param2))
                                                                                                                                 {
                                                                                                                                    addr448:
                                                                                                                                    §§push(§§pop());
                                                                                                                                    if(_loc26_ || b2Collision)
                                                                                                                                    {
                                                                                                                                       addr456:
                                                                                                                                       _loc25_ = §§pop();
                                                                                                                                       if(_loc26_)
                                                                                                                                       {
                                                                                                                                          addr460:
                                                                                                                                          if(§§pop() > _loc15_)
                                                                                                                                          {
                                                                                                                                             if(!(_loc26_ || b2Collision))
                                                                                                                                             {
                                                                                                                                                continue;
                                                                                                                                             }
                                                                                                                                             §§push(_loc25_);
                                                                                                                                             if(!_loc27_)
                                                                                                                                             {
                                                                                                                                                addr472:
                                                                                                                                                _loc15_ = Number(§§pop());
                                                                                                                                                if(_loc26_)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc16_);
                                                                                                                                                   if(_loc26_)
                                                                                                                                                   {
                                                                                                                                                      §§push(int(§§pop()));
                                                                                                                                                   }
                                                                                                                                                   _loc14_ = §§pop();
                                                                                                                                                   if(_loc27_ && b2Collision)
                                                                                                                                                   {
                                                                                                                                                      continue;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr472);
                                                                                                                                          }
                                                                                                                                          _loc16_++;
                                                                                                                                          continue;
                                                                                                                                       }
                                                                                                                                       §§goto(addr472);
                                                                                                                                    }
                                                                                                                                    §§goto(addr460);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr472);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr456);
                                                                                                                     }
                                                                                                                     §§goto(addr440);
                                                                                                                  }
                                                                                                                  §§goto(addr437);
                                                                                                               }
                                                                                                               §§goto(addr448);
                                                                                                            }
                                                                                                            §§push(§9!$§(param2,param3,_loc14_,param4,param5));
                                                                                                            if(_loc26_)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                            }
                                                                                                            var _loc17_:* = §§pop();
                                                                                                            if(!(_loc27_ && param3))
                                                                                                            {
                                                                                                               §§push(_loc14_);
                                                                                                               if(_loc26_)
                                                                                                               {
                                                                                                                  §§push(§§pop() - 1);
                                                                                                                  if(!(_loc27_ && param2))
                                                                                                                  {
                                                                                                                     if(§§pop() >= 0)
                                                                                                                     {
                                                                                                                        addr523:
                                                                                                                        §§push(_loc14_);
                                                                                                                        if(_loc26_ || param1)
                                                                                                                        {
                                                                                                                           §§push(§§pop() - 1);
                                                                                                                           if(!_loc27_)
                                                                                                                           {
                                                                                                                              §§push(int(§§pop()));
                                                                                                                              if(_loc26_)
                                                                                                                              {
                                                                                                                                 addr561:
                                                                                                                                 var _loc18_:int = §§pop();
                                                                                                                                 §§push(§9!$§(param2,param3,_loc18_,param4,param5));
                                                                                                                                 if(_loc26_)
                                                                                                                                 {
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                 }
                                                                                                                                 var _loc19_:* = §§pop();
                                                                                                                                 if(!_loc27_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc14_);
                                                                                                                                    if(!_loc27_)
                                                                                                                                    {
                                                                                                                                       §§push(1);
                                                                                                                                       if(!_loc27_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                          if(_loc26_ || b2Collision)
                                                                                                                                          {
                                                                                                                                             if(§§pop() < _loc6_)
                                                                                                                                             {
                                                                                                                                                addr592:
                                                                                                                                                §§push(_loc14_);
                                                                                                                                                if(_loc26_ || param3)
                                                                                                                                                {
                                                                                                                                                   addr602:
                                                                                                                                                   addr601:
                                                                                                                                                   §§push(int(§§pop() + 1));
                                                                                                                                                   if(_loc26_)
                                                                                                                                                   {
                                                                                                                                                      addr605:
                                                                                                                                                   }
                                                                                                                                                   addr614:
                                                                                                                                                   §§push(int(§§pop()));
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§push(0);
                                                                                                                                                if(_loc26_ || param2)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr614);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             var _loc20_:* = §§pop();
                                                                                                                                             §§push(§9!$§(param2,param3,_loc20_,param4,param5));
                                                                                                                                             if(!(_loc27_ && param1))
                                                                                                                                             {
                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                             }
                                                                                                                                             var _loc21_:* = §§pop();
                                                                                                                                             if(_loc26_)
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
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc21_);
                                                                                                                                                                     loop7:
                                                                                                                                                                     while(_loc26_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() > §§pop());
                                                                                                                                                                        loop8:
                                                                                                                                                                        while(_loc26_ || b2Collision)
                                                                                                                                                                        {
                                                                                                                                                                           loop42:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc27_ && param1)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop8;
                                                                                                                                                                              }
                                                                                                                                                                              if(_loc27_ && param1)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop3;
                                                                                                                                                                              }
                                                                                                                                                                              if(!§§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc6_);
                                                                                                                                                                                 loop48:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() - 1);
                                                                                                                                                                                    loop49:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(int(§§pop()));
                                                                                                                                                                                       loop26:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(int(§§pop()));
                                                                                                                                                                                          loop27:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             _loc14_ = §§pop();
                                                                                                                                                                                             loop28:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                loop29:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§9!$§(param2,param3,_loc14_,param4,param5));
                                                                                                                                                                                                   loop30:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc26_ || param1)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                                                                         loop31:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc26_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop());
                                                                                                                                                                                                               if(!(_loc27_ && param3))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc26_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!_loc26_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     _loc17_ = §§pop();
                                                                                                                                                                                                                     loop32:
                                                                                                                                                                                                                     while(!_loc27_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc23_);
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(§§pop() <= §§pop())
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              param1[0] = _loc22_;
                                                                                                                                                                                                                              if(!_loc27_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!_loc27_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc23_);
                                                                                                                                                                                                                                    if(_loc26_ || param2)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc26_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!_loc27_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             return §§pop();
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue loop30;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       continue loop32;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr690);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§goto(addr772);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              break;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           if(_loc26_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc26_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc26_ || param2)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!_loc27_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc14_);
                                                                                                                                                                                                                                       if(_loc26_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!_loc27_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc26_ || param3)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr764:
                                                                                                                                                                                                                                                §§push(int(§§pop()));
                                                                                                                                                                                                                                                if(!(_loc27_ && param2))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   _loc22_ = §§pop();
                                                                                                                                                                                                                                                   addr772:
                                                                                                                                                                                                                                                   if(!(_loc26_ || param2))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop28;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   if(!_loc27_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(_loc17_);
                                                                                                                                                                                                                                                      if(!(_loc27_ && b2Collision))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop31;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr690:
                                                                                                                                                                                                                                                      addr690:
                                                                                                                                                                                                                                                      if(!_loc27_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!_loc27_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            _loc23_ = §§pop();
                                                                                                                                                                                                                                                            break;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr992);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      loop24:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!_loc27_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc27_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               break;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§push(int(§§pop()));
                                                                                                                                                                                                                                                            loop25:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc26_ || b2Collision)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(_loc26_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     continue loop26;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr1039:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     _loc24_ = §§pop();
                                                                                                                                                                                                                                                                     addr1040:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(_loc20_);
                                                                                                                                                                                                                                                                        addr1029:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(int(§§pop()));
                                                                                                                                                                                                                                                                           break loop25;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               break;
                                                                                                                                                                                                                                                               addr891:
                                                                                                                                                                                                                                                               if(_loc27_ && param2)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  continue;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               loop37:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(int(§§pop()));
                                                                                                                                                                                                                                                                  addr899:
                                                                                                                                                                                                                                                                  loop38:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc26_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        _loc14_ = §§pop();
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc27_ && b2Collision)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              break loop29;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           if(!_loc27_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop29;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           loop19:
                                                                                                                                                                                                                                                                           while(_loc26_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              loop20:
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(_loc24_);
                                                                                                                                                                                                                                                                                    if(_loc27_ && param1)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       continue loop48;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§push(-1);
                                                                                                                                                                                                                                                                                    for(; §§pop() != §§pop(); if(!(_loc26_ || b2Collision))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       continue;
                                                                                                                                                                                                                                                                                    },§§push(§§pop() + §§pop()),while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(!_loc27_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(_loc6_);
                                                                                                                                                                                                                                                                                          if(!(_loc27_ && param2))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(§§pop() < §§pop());
                                                                                                                                                                                                                                                                                             if(_loc27_ && param2)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                continue loop42;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             if(§§pop())
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(!(_loc27_ && param1))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(_loc22_);
                                                                                                                                                                                                                                                                                                      if(_loc27_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         continue loop38;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr841);
                                                                                                                                                                                                                                                                                                      §§push(1);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1052);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                addr830:
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(0);
                                                                                                                                                                                                                                                                                                if(!(_loc26_ || param3))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   continue loop38;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                if(_loc27_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   continue loop48;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr891);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(0);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          addr941:
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          continue loop42;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    })
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(_loc22_);
                                                                                                                                                                                                                                                                                       if(_loc27_ && param3)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          continue loop38;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       if(!_loc27_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(1);
                                                                                                                                                                                                                                                                                          if(!(_loc27_ && param3))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             continue;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          addr841:
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                             addr842:
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(_loc26_ || b2Collision)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(_loc26_ || param3)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(int(§§pop()));
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(!(_loc26_ || param2))
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            continue loop27;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         if(!(_loc26_ || param1))
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            continue loop26;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         if(_loc26_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(_loc26_ || b2Collision)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               continue loop37;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            addr1050:
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(int(§§pop()));
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            _loc22_ = §§pop();
                                                                                                                                                                                                                                                                                                            addr1052:
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(_loc19_);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      addr857:
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                      addr1044:
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         _loc23_ = §§pop();
                                                                                                                                                                                                                                                                                                         continue loop19;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr1025:
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      _loc23_ = §§pop();
                                                                                                                                                                                                                                                                                                      break loop28;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   addr1025:
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             continue loop24;
                                                                                                                                                                                                                                                                                             addr967:
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(!(_loc26_ || param1))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!_loc27_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(!_loc27_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(!(_loc26_ || param1))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   continue loop5;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   continue loop20;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§goto(addr1040);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          break loop28;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§push(_loc22_);
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!(_loc27_ && param2))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§goto(addr941);
                                                                                                                                                                                                                                                                                             §§push(§§pop() - 1);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                _loc24_ = §§pop();
                                                                                                                                                                                                                                                                                                break loop19;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             addr1079:
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    addr702:
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§goto(addr1050);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        addr990:
                                                                                                                                                                                                                                                                        addr992:
                                                                                                                                                                                                                                                                        return §§pop();
                                                                                                                                                                                                                                                                        §§push(_loc17_);
                                                                                                                                                                                                                                                                        addr902:
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1029);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               _loc22_ = §§pop();
                                                                                                                                                                                                                                                               addr1031:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(_loc21_);
                                                                                                                                                                                                                                                                  if(!(_loc27_ && param1))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc26_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§goto(addr1025);
                                                                                                                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1044);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1025);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(_loc17_);
                                                                                                                                                                                                                                                               addr1037:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(§§pop() <= §§pop())
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     param1[0] = _loc14_;
                                                                                                                                                                                                                                                                     break loop29;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr1036:
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1039);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      continue loop6;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr925);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr933);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr857);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr899);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr764);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1031);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    while(_loc26_ || param1)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!_loc27_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§goto(addr967);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr1068:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1079);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr958:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1038);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr830);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr772);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        if(!(_loc27_ && b2Collision))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr702);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr902);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     continue loop1;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1037);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr737);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr842);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop7;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop49;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   continue loop49;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr990);
                                                                                                                                                                                             }
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr912);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop3;
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr958);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        continue loop4;
                                                                                                                                                                     }
                                                                                                                                                                     continue loop2;
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!§§pop())
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr1036);
                                                                                                                                                               §§push(_loc21_);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1068);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr1004);
                                                                                                                                          }
                                                                                                                                          §§goto(addr602);
                                                                                                                                       }
                                                                                                                                       §§goto(addr601);
                                                                                                                                    }
                                                                                                                                    §§goto(addr605);
                                                                                                                                 }
                                                                                                                                 §§goto(addr592);
                                                                                                                              }
                                                                                                                              §§goto(addr561);
                                                                                                                           }
                                                                                                                           addr552:
                                                                                                                           §§push(int(§§pop()));
                                                                                                                           if(_loc26_ || param3)
                                                                                                                           {
                                                                                                                           }
                                                                                                                           §§goto(addr561);
                                                                                                                        }
                                                                                                                        addr551:
                                                                                                                        §§goto(addr552);
                                                                                                                        §§push(§§pop() - 1);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§push(_loc6_);
                                                                                                                        if(!_loc27_)
                                                                                                                        {
                                                                                                                           §§goto(addr551);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr561);
                                                                                                                  }
                                                                                                                  §§goto(addr552);
                                                                                                               }
                                                                                                               §§goto(addr561);
                                                                                                            }
                                                                                                            §§goto(addr523);
                                                                                                         }
                                                                                                         §§goto(addr376);
                                                                                                      }
                                                                                                      §§goto(addr389);
                                                                                                   }
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(_loc26_)
                                                                                                   {
                                                                                                      addr319:
                                                                                                      §§push(§§pop() - §§pop());
                                                                                                      if(_loc26_)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                         if(!_loc27_)
                                                                                                         {
                                                                                                            addr325:
                                                                                                            _loc11_ = §§pop();
                                                                                                            addr326:
                                                                                                            §§push(_loc10_);
                                                                                                            if(_loc26_)
                                                                                                            {
                                                                                                               §§push(param3.R.col1.x);
                                                                                                               if(!(_loc27_ && param3))
                                                                                                               {
                                                                                                                  addr340:
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(_loc26_)
                                                                                                                  {
                                                                                                                     addr343:
                                                                                                                     §§push(_loc11_);
                                                                                                                     if(!_loc27_)
                                                                                                                     {
                                                                                                                        addr346:
                                                                                                                        §§goto(addr350);
                                                                                                                        §§push(param3.R.col1.y);
                                                                                                                     }
                                                                                                                     §§goto(addr350);
                                                                                                                  }
                                                                                                                  §§goto(addr354);
                                                                                                               }
                                                                                                               §§goto(addr346);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr343);
                                                                                                   }
                                                                                                   §§goto(addr346);
                                                                                                }
                                                                                                §§goto(addr305);
                                                                                             }
                                                                                             §§goto(addr295);
                                                                                          }
                                                                                          §§goto(addr346);
                                                                                       }
                                                                                       §§goto(addr340);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr326);
                                                                              }
                                                                              §§goto(addr325);
                                                                           }
                                                                           §§goto(addr266);
                                                                        }
                                                                        §§goto(addr319);
                                                                     }
                                                                     §§goto(addr295);
                                                                  }
                                                                  §§goto(addr292);
                                                               }
                                                            }
                                                            §§goto(addr305);
                                                         }
                                                         §§goto(addr297);
                                                      }
                                                      §§goto(addr231);
                                                   }
                                                   §§goto(addr305);
                                                }
                                                §§goto(addr288);
                                             }
                                             §§goto(addr280);
                                          }
                                          §§goto(addr346);
                                       }
                                    }
                                    §§goto(addr266);
                                 }
                                 §§goto(addr325);
                              }
                              §§push(§§pop() + §§pop());
                           }
                           §§goto(addr140);
                        }
                        §§goto(addr148);
                     }
                     §§goto(addr93);
                  }
                  §§goto(addr84);
               }
               §§goto(addr80);
            }
            §§goto(addr84);
         }
         §§goto(addr93);
      }
      
      public static function §9'§(param1:Vector.<§+!>§>, param2:b2PolygonShape, param3:b2Transform, param4:int, param5:b2PolygonShape, param6:b2Transform) : void
      {
         var _loc24_:Boolean = false;
         var _loc25_:Boolean = true;
         var _loc12_:b2Mat22 = null;
         var _loc13_:b2Vec2 = null;
         var _loc20_:§+!>§ = null;
         var _loc23_:* = NaN;
         §§push(param2.§6!U§);
         if(_loc25_)
         {
            §§push(int(§§pop()));
         }
         var _loc7_:* = §§pop();
         var _loc8_:Vector.<b2Vec2> = param2.§%!L§;
         §§push(param5.§6!U§);
         if(!_loc24_)
         {
            §§push(int(§§pop()));
         }
         var _loc9_:* = §§pop();
         var _loc10_:Vector.<b2Vec2> = param5.§+!f§;
         var _loc11_:Vector.<b2Vec2> = param5.§%!L§;
         _loc12_ = param3.R;
         _loc13_ = _loc8_[param4];
         §§push(_loc12_.col1.x);
         if(!(_loc24_ && param1))
         {
            §§push(_loc13_.x);
            if(_loc25_ || param3)
            {
               §§push(§§pop() * §§pop());
               if(_loc25_ || param2)
               {
                  addr88:
                  §§push(_loc12_.col2.x);
                  if(_loc25_)
                  {
                     addr93:
                     §§push(§§pop() * _loc13_.y);
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc25_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var _loc14_:* = §§pop();
               §§push(_loc12_.col1.y);
               if(_loc25_ || param3)
               {
                  §§push(_loc13_.x);
                  if(_loc25_ || b2Collision)
                  {
                     addr139:
                     §§push(§§pop() * §§pop());
                     if(_loc25_)
                     {
                        §§push(_loc12_.col2.y);
                        if(!_loc24_)
                        {
                           §§push(§§pop() * _loc13_.y);
                        }
                     }
                     var _loc15_:* = Number(§§pop());
                     §§push((_loc12_ = param6.R).col1.x);
                     if(_loc25_ || param1)
                     {
                        §§push(_loc14_);
                        if(_loc25_)
                        {
                           addr176:
                           §§push(§§pop() * §§pop());
                           if(_loc25_ || param3)
                           {
                              §§push(_loc12_.col1.y);
                              if(_loc25_)
                              {
                                 §§push(§§pop() * _loc15_);
                              }
                           }
                           var _loc16_:Number = §§pop();
                           if(_loc25_ || param1)
                           {
                              §§push(_loc12_.col2.x);
                              if(!_loc24_)
                              {
                                 §§push(_loc14_);
                                 if(!(_loc24_ && param1))
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(!(_loc24_ && b2Collision))
                                    {
                                       addr206:
                                       §§push(_loc12_.col2.y);
                                       if(!(_loc24_ && param1))
                                       {
                                          addr216:
                                          §§push(§§pop() * _loc15_);
                                       }
                                       §§push(§§pop() + §§pop());
                                       if(_loc25_ || param1)
                                       {
                                          §§push(Number(§§pop()));
                                          if(!(_loc24_ && param2))
                                          {
                                             _loc15_ = §§pop();
                                             if(_loc25_)
                                             {
                                                §§push(_loc16_);
                                                if(_loc24_ && param2)
                                                {
                                                }
                                                addr246:
                                                _loc14_ = §§pop();
                                                addr247:
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
                                                      if(!(_loc24_ && param1))
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
                                                         if(!_loc24_)
                                                         {
                                                            §§push(_loc14_);
                                                            if(_loc25_)
                                                            {
                                                               §§push(_loc13_.x);
                                                               if(!(_loc24_ && param3))
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(_loc25_)
                                                                  {
                                                                     §§push(_loc15_);
                                                                     if(_loc25_ || b2Collision)
                                                                     {
                                                                        §§push(§§pop() * _loc13_.y);
                                                                        if(_loc25_ || param3)
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           if(_loc25_)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              if(_loc25_)
                                                                              {
                                                                                 addr341:
                                                                                 §§push(§§pop());
                                                                                 if(_loc25_ || param3)
                                                                                 {
                                                                                    addr349:
                                                                                    _loc23_ = §§pop();
                                                                                    if(!_loc24_)
                                                                                    {
                                                                                       addr353:
                                                                                       if(§§pop() < _loc18_)
                                                                                       {
                                                                                          loop5:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc23_);
                                                                                             if(!(_loc24_ && b2Collision))
                                                                                             {
                                                                                                addr362:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                   addr363:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc18_ = §§pop();
                                                                                                      while(true)
                                                                                                      {
                                                                                                         loop3:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc19_);
                                                                                                            if(!(_loc24_ && param2))
                                                                                                            {
                                                                                                               §§push(int(§§pop()));
                                                                                                            }
                                                                                                            _loc17_ = §§pop();
                                                                                                            loop4:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               addr265:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc19_++;
                                                                                                                  if(!(_loc24_ && param3))
                                                                                                                  {
                                                                                                                     break loop4;
                                                                                                                  }
                                                                                                                  continue loop4;
                                                                                                               }
                                                                                                            }
                                                                                                            if(_loc24_ && param2)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            if(!(_loc24_ && param2))
                                                                                                            {
                                                                                                               while(false)
                                                                                                               {
                                                                                                                  continue loop3;
                                                                                                               }
                                                                                                               continue loop0;
                                                                                                               addr288:
                                                                                                            }
                                                                                                            continue loop5;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                addr362:
                                                                                             }
                                                                                             §§goto(addr363);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr265);
                                                                                    }
                                                                                    §§goto(addr363);
                                                                                 }
                                                                              }
                                                                              §§goto(addr353);
                                                                           }
                                                                           §§goto(addr362);
                                                                        }
                                                                        §§goto(addr353);
                                                                     }
                                                                     §§goto(addr349);
                                                                  }
                                                                  §§goto(addr341);
                                                               }
                                                               §§goto(addr353);
                                                            }
                                                            §§goto(addr362);
                                                         }
                                                         §§goto(addr288);
                                                      }
                                                      addr382:
                                                      var _loc21_:* = §§pop();
                                                      if(!(_loc24_ && param3))
                                                      {
                                                         §§push(1);
                                                         if(_loc25_ || param1)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc25_ || param2)
                                                            {
                                                               if(§§pop() < _loc9_)
                                                               {
                                                                  §§push(_loc21_);
                                                                  if(_loc25_ || param2)
                                                                  {
                                                                     addr419:
                                                                     §§push(int(§§pop() + 1));
                                                                     if(!(_loc24_ && param3))
                                                                     {
                                                                        addr446:
                                                                        §§push(int(§§pop()));
                                                                        addr437:
                                                                     }
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§push(0);
                                                                  if(!(_loc24_ && param3))
                                                                  {
                                                                     §§goto(addr446);
                                                                  }
                                                               }
                                                               var _loc22_:* = §§pop();
                                                               _loc20_ = param1[0];
                                                               _loc13_ = _loc10_[_loc21_];
                                                               _loc12_ = param6.R;
                                                               if(_loc25_ || param3)
                                                               {
                                                                  §§push(_loc20_.v);
                                                                  loop9:
                                                                  while(true)
                                                                  {
                                                                     §§push(param6.position);
                                                                     addr620:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().x);
                                                                        if(_loc25_)
                                                                        {
                                                                           §§push(_loc12_.col1);
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().x);
                                                                              addr626:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc13_.x);
                                                                                 addr628:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    addr629:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc12_.col2);
                                                                                       addr631:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop().x);
                                                                                          if(_loc25_ || param1)
                                                                                          {
                                                                                             §§push(_loc13_.y);
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                             }
                                                                                             addr641:
                                                                                          }
                                                                                          addr642:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() + §§pop());
                                                                                             addr643:
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
                                                                           addr625:
                                                                        }
                                                                        addr644:
                                                                        while(true)
                                                                        {
                                                                           §§pop().x = §§pop();
                                                                           continue loop9;
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr522);
                                                            }
                                                         }
                                                         §§goto(addr419);
                                                      }
                                                      §§goto(addr437);
                                                   }
                                                   break;
                                                }
                                                §§goto(addr382);
                                                §§push(§§pop());
                                             }
                                             §§goto(addr247);
                                          }
                                          §§goto(addr246);
                                       }
                                       §§push(Number(§§pop()));
                                    }
                                    §§goto(addr246);
                                 }
                                 §§goto(addr216);
                              }
                              §§goto(addr206);
                           }
                           §§goto(addr246);
                        }
                        §§push(§§pop() + §§pop());
                        if(!_loc25_)
                        {
                        }
                     }
                     §§goto(addr176);
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc24_ && param1)
                  {
                  }
               }
               §§goto(addr139);
            }
            §§goto(addr93);
         }
         §§goto(addr88);
      }
      
      private static function §<m§() : Vector.<§+!>§>
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Vector.<§+!>§> = new Vector.<§+!>§>(2);
         if(!(_loc3_ && _loc3_))
         {
            _loc1_[0] = new §+!>§();
         }
         do
         {
            _loc1_[1] = new §+!>§();
         }
         while(!(_loc2_ || _loc1_));
         
         return _loc1_;
      }
      
      public static function §!!U§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2PolygonShape, param5:b2Transform) : void
      {
         var _loc46_:Boolean = true;
         var _loc47_:Boolean = false;
         var _loc6_:§+!>§ = null;
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
            param1.§;6§ = 0;
         }
         var _loc7_:Number = param2.§'m§ + param4.§'m§;
         var _loc8_:* = 0;
         if(!_loc47_)
         {
            §7!@§[0] = _loc8_;
         }
         §§push(§,5§(§7!@§,param2,param3,param4,param5));
         if(_loc46_ || b2Collision)
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         if(!(_loc47_ && param1))
         {
            §§push(int(§7!@§[0]));
            if(!_loc47_)
            {
               _loc8_ = §§pop();
               if(!_loc47_)
               {
                  if(_loc9_ > _loc7_)
                  {
                     if(_loc46_)
                     {
                        return;
                     }
                     addr111:
                     §§push(0);
                  }
               }
               §§goto(addr111);
            }
            var _loc10_:* = §§pop();
            if(_loc46_)
            {
               §3o§[0] = _loc10_;
            }
            §§push(§,5§(§3o§,param4,param5,param2,param3));
            if(!(_loc47_ && param2))
            {
               §§push(Number(§§pop()));
            }
            var _loc11_:* = §§pop();
            if(_loc46_ || b2Collision)
            {
               _loc10_ = int(§3o§[0]);
               if(_loc46_ || param1)
               {
                  §§push(_loc11_);
                  if(!_loc47_)
                  {
                     if(§§pop() > _loc7_)
                     {
                        if(!(_loc47_ && param2))
                        {
                           §§goto(addr166);
                        }
                     }
                     §§push(0.98);
                     if(!(_loc47_ && param3))
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  var _loc18_:* = §§pop();
                  §§push(0.001);
                  if(!_loc47_)
                  {
                     §§push(Number(§§pop()));
                  }
                  var _loc19_:* = §§pop();
                  if(!_loc47_)
                  {
                     §§push(_loc11_);
                     §§push(_loc18_);
                     if(_loc46_ || b2Collision)
                     {
                        §§push(_loc9_);
                        if(_loc46_ || param3)
                        {
                           addr211:
                           §§push(§§pop() * §§pop());
                           if(!(_loc47_ && param3))
                           {
                              §§push(_loc19_);
                           }
                           if(§§pop() > §§pop())
                           {
                              addr212:
                              _loc12_ = param4;
                              _loc13_ = param2;
                              _loc14_ = param5;
                              _loc15_ = param3;
                              if(!(_loc47_ && b2Collision))
                              {
                                 §§push(_loc10_);
                                 loop9:
                                 while(true)
                                 {
                                    §§push(int(§§pop()));
                                    loop10:
                                    while(true)
                                    {
                                       _loc16_ = §§pop();
                                       addr265:
                                       while(true)
                                       {
                                          addr256:
                                          while(true)
                                          {
                                             param1.§2!]§ = b2Manifold.§9!M§;
                                             addr261:
                                             while(true)
                                             {
                                                §§push(1);
                                                if(!(_loc46_ || b2Collision))
                                                {
                                                   break;
                                                }
                                                continue loop9;
                                             }
                                             continue loop10;
                                          }
                                       }
                                    }
                                 }
                              }
                              §§goto(addr254);
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
                                 if(!(_loc47_ && param2))
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
                                          param1.§2!]§ = b2Manifold.§%!"§;
                                          addr302:
                                          while(true)
                                          {
                                             if(_loc46_)
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
                        }
                        §§push(§§pop() + §§pop());
                     }
                     §§goto(addr211);
                  }
                  §§goto(addr212);
               }
            }
            addr166:
            return;
         }
         §§goto(addr111);
      }
      
      public static function §5i§(param1:b2Manifold, param2:b2CircleShape, param3:b2Transform, param4:b2CircleShape, param5:b2Transform) : void
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         var _loc6_:b2Mat22 = null;
         var _loc7_:b2Vec2 = null;
         if(!(_loc16_ && param1))
         {
            param1.§;6§ = 0;
         }
         _loc6_ = param3.R;
         _loc7_ = param2.§7]§;
         §§push(param3.position.x);
         if(!_loc16_)
         {
            §§push(_loc6_.col1.x);
            if(!(_loc16_ && param3))
            {
               §§push(_loc7_.x);
               if(!(_loc16_ && param1))
               {
                  §§push(§§pop() * §§pop());
                  if(_loc17_ || param3)
                  {
                     addr87:
                     §§push(_loc6_.col2.x);
                     if(!(_loc16_ && param2))
                     {
                        addr83:
                        §§push(§§pop() * _loc7_.y);
                     }
                     §§push(§§pop() + (§§pop() + §§pop()));
                     if(_loc17_ || param1)
                     {
                        addr96:
                        var _loc8_:Number = §§pop();
                        §§push(param3.position.y);
                        if(_loc17_ || param2)
                        {
                           §§push(_loc6_.col1.y);
                           if(!(_loc16_ && param3))
                           {
                              §§push(_loc7_.x);
                              if(!_loc16_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(!(_loc16_ && param1))
                                 {
                                    addr143:
                                    §§push(_loc6_.col2.y);
                                    if(!(_loc16_ && param1))
                                    {
                                       addr139:
                                       §§push(§§pop() * _loc7_.y);
                                    }
                                    §§push(§§pop() + (§§pop() + §§pop()));
                                    if(!(_loc16_ && param1))
                                    {
                                       addr151:
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc9_:* = §§pop();
                                    _loc6_ = param5.R;
                                    _loc7_ = param4.§7]§;
                                    §§push(param5.position.x);
                                    if(!(_loc16_ && param3))
                                    {
                                       §§push(_loc6_.col1.x);
                                       if(_loc17_ || param3)
                                       {
                                          §§push(_loc7_.x);
                                          if(_loc17_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(_loc17_ || param1)
                                             {
                                                addr202:
                                                §§push(_loc6_.col2.x);
                                                if(_loc17_)
                                                {
                                                   addr198:
                                                   §§push(§§pop() * _loc7_.y);
                                                }
                                                §§push(§§pop() + (§§pop() + §§pop()));
                                                if(_loc17_)
                                                {
                                                   addr215:
                                                   §§push(Number(§§pop()));
                                                }
                                                var _loc10_:* = §§pop();
                                                §§push(param5.position.y);
                                                if(!_loc16_)
                                                {
                                                   §§push(_loc6_.col1.y);
                                                   if(_loc17_ || param1)
                                                   {
                                                      §§push(_loc7_.x);
                                                      if(!(_loc16_ && b2Collision))
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(!_loc16_)
                                                         {
                                                            addr258:
                                                            §§push(_loc6_.col2.y);
                                                            if(!(_loc16_ && param1))
                                                            {
                                                               addr254:
                                                               §§push(§§pop() * _loc7_.y);
                                                            }
                                                            §§push(§§pop() + (§§pop() + §§pop()));
                                                            if(_loc17_)
                                                            {
                                                               addr262:
                                                               var _loc11_:Number = §§pop();
                                                               §§push(_loc10_);
                                                               if(!_loc16_)
                                                               {
                                                                  §§push(§§pop() - _loc8_);
                                                                  if(!(_loc16_ && param3))
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                               }
                                                               var _loc12_:* = §§pop();
                                                               §§push(_loc11_);
                                                               if(_loc17_ || b2Collision)
                                                               {
                                                                  §§push(§§pop() - _loc9_);
                                                                  if(!(_loc16_ && b2Collision))
                                                                  {
                                                                     addr294:
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  var _loc13_:* = §§pop();
                                                                  §§push(_loc12_);
                                                                  if(_loc17_)
                                                                  {
                                                                     §§push(_loc12_);
                                                                     if(_loc17_)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc17_ || b2Collision)
                                                                        {
                                                                           addr310:
                                                                           §§push(_loc13_);
                                                                           if(!_loc16_)
                                                                           {
                                                                              addr313:
                                                                              §§push(§§pop() * _loc13_);
                                                                           }
                                                                           §§push(§§pop() + §§pop());
                                                                           if(!(_loc16_ && param1))
                                                                           {
                                                                              addr323:
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                           var _loc14_:* = §§pop();
                                                                           var _loc15_:Number = param2.§'m§ + param4.§'m§;
                                                                           if(!_loc16_)
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
                                                                                    param1.§2!]§ = b2Manifold.§;N§;
                                                                                    loop1:
                                                                                    while(true)
                                                                                    {
                                                                                       param1.m_localPoint.SetV(param2.§7]§);
                                                                                       while(true)
                                                                                       {
                                                                                          param1.§&h§.§^!,§();
                                                                                          loop3:
                                                                                          while(_loc17_)
                                                                                          {
                                                                                             if(!(_loc16_ && b2Collision))
                                                                                             {
                                                                                                param1.§;6§ = 1;
                                                                                                loop4:
                                                                                                for(; _loc17_ || param2; while(true)
                                                                                                {
                                                                                                   param1.§7! §[0].m_id.key = 0;
                                                                                                   if(_loc17_ || param1)
                                                                                                   {
                                                                                                      if(!(_loc16_ && param1))
                                                                                                      {
                                                                                                         if(_loc17_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         continue loop3;
                                                                                                      }
                                                                                                      continue loop4;
                                                                                                   }
                                                                                                },return)
                                                                                                {
                                                                                                   if(!_loc16_)
                                                                                                   {
                                                                                                      param1.§7! §[0].m_localPoint.SetV(param4.§7]§);
                                                                                                      continue;
                                                                                                   }
                                                                                                }
                                                                                                continue loop1;
                                                                                             }
                                                                                             continue loop0;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              return;
                                                                           }
                                                                           §§goto(addr373);
                                                                        }
                                                                        §§goto(addr323);
                                                                     }
                                                                     §§goto(addr313);
                                                                  }
                                                                  §§goto(addr310);
                                                               }
                                                               §§goto(addr294);
                                                            }
                                                            §§goto(addr262);
                                                         }
                                                         §§goto(addr258);
                                                      }
                                                      §§goto(addr254);
                                                   }
                                                   §§goto(addr258);
                                                }
                                                §§goto(addr262);
                                             }
                                             §§goto(addr202);
                                          }
                                          §§goto(addr198);
                                       }
                                       §§goto(addr202);
                                    }
                                    §§goto(addr215);
                                 }
                                 §§goto(addr143);
                              }
                              §§goto(addr139);
                           }
                           §§goto(addr143);
                        }
                        §§goto(addr151);
                     }
                     §§goto(addr96);
                  }
                  §§goto(addr87);
               }
               §§goto(addr83);
            }
            §§goto(addr87);
         }
         §§goto(addr96);
      }
      
      public static function §null§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2CircleShape, param5:b2Transform) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfuscation" for better results.
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public static function §+!;§(param1:b2AABB, param2:b2AABB) : Boolean
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc3_:b2Vec2 = param2.§?`§;
         var _loc4_:b2Vec2 = param1.§[O§;
         §§push(_loc3_.x);
         if(_loc10_)
         {
            §§push(§§pop() - _loc4_.x);
            if(_loc10_ || _loc3_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         §§push(_loc3_.y);
         if(_loc10_ || param2)
         {
            §§push(§§pop() - _loc4_.y);
            if(!_loc9_)
            {
               addr55:
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            _loc3_ = param1.§?`§;
            _loc4_ = param2.§[O§;
            §§push(_loc3_.x);
            if(_loc10_)
            {
               §§push(§§pop() - _loc4_.x);
               if(!(_loc9_ && b2Collision))
               {
                  addr79:
                  §§push(Number(§§pop()));
               }
               var _loc7_:* = §§pop();
               §§push(_loc3_.y);
               if(_loc10_ || param1)
               {
                  §§push(§§pop() - _loc4_.y);
                  if(_loc10_)
                  {
                     §§push(Number(§§pop()));
                  }
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
                                    addr252:
                                    while(true)
                                    {
                                       §§push(_loc6_);
                                       addr213:
                                       while(true)
                                       {
                                          §§push(0);
                                          addr214:
                                          while(true)
                                          {
                                             §§push(§§pop() > §§pop());
                                             addr215:
                                             while(_loc10_ || _loc3_)
                                             {
                                             }
                                             continue loop2;
                                          }
                                       }
                                    }
                                 }
                                 addr251:
                              }
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
                                       while(!_loc9_)
                                       {
                                          §§push(0);
                                          loop12:
                                          for(; !(_loc9_ && _loc3_); §§push(0),if(_loc9_ && _loc3_)
                                          {
                                             continue;
                                          },§§goto(addr150))
                                          {
                                             if(_loc9_)
                                             {
                                                continue loop1;
                                             }
                                             §§push(§§pop() > §§pop());
                                             if(_loc10_ || param2)
                                             {
                                                §§push(§§pop());
                                                if(_loc9_)
                                                {
                                                   continue loop3;
                                                }
                                                if(§§pop())
                                                {
                                                   loop13:
                                                   do
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(_loc10_ || b2Collision)
                                                         {
                                                            if(!_loc9_)
                                                            {
                                                               if(_loc10_ || _loc3_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(false);
                                                                     break loop13;
                                                                  }
                                                                  addr171:
                                                               }
                                                               else
                                                               {
                                                                  addr225:
                                                                  §§push(false);
                                                                  if(!_loc9_)
                                                                  {
                                                                     break loop9;
                                                                  }
                                                                  §§goto(addr251);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr208:
                                                               while(true)
                                                               {
                                                                  if(_loc10_)
                                                                  {
                                                                     §§push(_loc8_);
                                                                     if(_loc10_)
                                                                     {
                                                                        if(!_loc9_)
                                                                        {
                                                                           continue loop12;
                                                                        }
                                                                        continue loop0;
                                                                     }
                                                                     continue loop11;
                                                                  }
                                                                  if(_loc10_ || b2Collision)
                                                                  {
                                                                     continue loop10;
                                                                  }
                                                               }
                                                               addr208:
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr100:
                                                            §§push(true);
                                                            if(_loc9_ && param2)
                                                            {
                                                               break;
                                                            }
                                                            if(!(_loc9_ && b2Collision))
                                                            {
                                                               if(!(_loc9_ && _loc3_))
                                                               {
                                                                  return §§pop();
                                                               }
                                                               §§goto(addr225);
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  §§goto(addr208);
                                                               }
                                                               addr207:
                                                            }
                                                         }
                                                         §§goto(addr252);
                                                      }
                                                      §§goto(addr100);
                                                      §§push(§§pop() > §§pop());
                                                   }
                                                   while(_loc10_);
                                                   
                                                   while(_loc9_ && b2Collision)
                                                   {
                                                      §§goto(addr215);
                                                   }
                                                   return §§pop();
                                                }
                                             }
                                             §§goto(addr207);
                                          }
                                          §§goto(addr214);
                                       }
                                       §§goto(addr213);
                                    }
                                 }
                                 §§goto(addr225);
                              }
                              return §§pop();
                           }
                        }
                     }
                  }
               }
               §§goto(addr171);
            }
            §§goto(addr79);
         }
         §§goto(addr55);
      }
   }
}
