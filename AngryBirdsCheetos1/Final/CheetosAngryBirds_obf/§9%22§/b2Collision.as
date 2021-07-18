package §9"§
{
   import §&U§.*;
   import §0!G§.*;
   import §2!F§.*;
   
   use namespace b2internal;
   
   public class b2Collision
   {
      
      public static const b2_nullFeature:uint = 255;
      
      private static var §'!6§:Vector.<§>I§>;
      
      private static var s_clipPoints1:Vector.<§>I§>;
      
      private static var s_clipPoints2:Vector.<§>I§>;
      
      private static var §8!N§:Vector.<int>;
      
      private static var §9!?§:Vector.<int>;
      
      private static var §7!>§:b2Vec2;
      
      private static var §=`§:b2Vec2;
      
      private static var §;!0§:b2Vec2;
      
      private static var §#=§:b2Vec2;
      
      private static var §<!V§:b2Vec2;
      
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
            loop0:
            while(true)
            {
               §'!6§ = §;0§();
               loop1:
               while(true)
               {
                  s_clipPoints1 = §;0§();
                  loop2:
                  while(true)
                  {
                     s_clipPoints2 = §;0§();
                     loop3:
                     while(true)
                     {
                        §8!N§ = new Vector.<int>(1);
                        while(true)
                        {
                           §9!?§ = new Vector.<int>(1);
                           while(!(_loc2_ && b2Collision))
                           {
                              §7!>§ = new b2Vec2();
                              loop6:
                              while(true)
                              {
                                 §=`§ = new b2Vec2();
                                 while(true)
                                 {
                                    §;!0§ = new b2Vec2();
                                    loop8:
                                    while(true)
                                    {
                                       §#=§ = new b2Vec2();
                                       loop9:
                                       while(!_loc2_)
                                       {
                                          if(_loc1_)
                                          {
                                             if(!_loc2_)
                                             {
                                                continue loop1;
                                             }
                                             continue loop2;
                                          }
                                          continue loop3;
                                          addr90:
                                          if(_loc1_ || _loc1_)
                                          {
                                             if(_loc1_)
                                             {
                                                s_v11 = new b2Vec2();
                                                while(true)
                                                {
                                                   if(_loc1_)
                                                   {
                                                      continue loop8;
                                                   }
                                                   loop11:
                                                   while(true)
                                                   {
                                                      if(_loc1_ || _loc2_)
                                                      {
                                                         §§goto(addr90);
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            s_tangent2 = new b2Vec2();
                                                            continue loop11;
                                                         }
                                                         addr115:
                                                      }
                                                   }
                                                   continue loop9;
                                                   addr40:
                                                   if(!(_loc2_ && _loc2_))
                                                   {
                                                      return;
                                                      addr47:
                                                   }
                                                }
                                                continue loop8;
                                             }
                                             continue loop0;
                                          }
                                       }
                                       continue loop6;
                                    }
                                    loop13:
                                    while(_loc1_ || _loc1_)
                                    {
                                       while(true)
                                       {
                                          b2CollidePolyTempVec = new b2Vec2();
                                          if(!(_loc1_ || b2Collision))
                                          {
                                             continue loop13;
                                          }
                                          §§goto(addr40);
                                       }
                                       §§goto(addr47);
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
         §§goto(addr60);
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
      
      public static function §<B§(param1:Vector.<§>I§>, param2:Vector.<§>I§>, param3:b2Vec2, param4:Number) : int
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc5_:§>I§ = null;
         var _loc6_:int = 0;
         var _loc7_:b2Vec2 = null;
         var _loc9_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:b2Vec2 = null;
         var _loc13_:§>I§ = null;
         if(_loc14_)
         {
            _loc6_ = 0;
         }
         _loc7_ = (_loc5_ = param2[0]).v;
         var _loc8_:b2Vec2 = (_loc5_ = param2[1]).v;
         if(_loc14_)
         {
            §§push(param3.x);
            if(!(_loc15_ && b2Collision))
            {
               §§push(_loc7_.x);
               if(!(_loc15_ && b2Collision))
               {
                  §§push(§§pop() * §§pop());
                  if(_loc14_ || param1)
                  {
                     §§push(param3.y);
                     if(!_loc15_)
                     {
                        §§push(_loc7_.y);
                        if(_loc14_)
                        {
                           §§push(§§pop() * §§pop());
                           if(!(_loc15_ && param3))
                           {
                              addr100:
                              §§push(§§pop() + §§pop());
                              if(_loc14_ || b2Collision)
                              {
                                 §§push(param4);
                                 if(_loc14_)
                                 {
                                    §§push(§§pop() - §§pop());
                                    if(_loc14_ || b2Collision)
                                    {
                                       §§push(Number(§§pop()));
                                       if(_loc14_ || param1)
                                       {
                                          addr127:
                                          _loc9_ = §§pop();
                                          addr128:
                                          §§push(param3.x);
                                          if(!_loc15_)
                                          {
                                             §§push(_loc8_.x);
                                             if(_loc14_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!_loc15_)
                                                {
                                                   addr139:
                                                   §§push(param3.y);
                                                   if(!_loc15_)
                                                   {
                                                      addr143:
                                                      addr145:
                                                      §§push(§§pop() * _loc8_.y);
                                                      if(_loc14_ || param2)
                                                      {
                                                         addr153:
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc15_)
                                                         {
                                                         }
                                                         addr166:
                                                         var _loc10_:* = §§pop();
                                                         if(_loc14_ || param2)
                                                         {
                                                            §§push(_loc9_);
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
                                                                     while(true)
                                                                     {
                                                                        §§push(0);
                                                                        loop6:
                                                                        while(true)
                                                                        {
                                                                           if(§§pop() <= §§pop())
                                                                           {
                                                                              while(_loc14_ || param1)
                                                                              {
                                                                                 param1[_loc6_++].Set(param2[1]);
                                                                                 loop8:
                                                                                 while(true)
                                                                                 {
                                                                                    addr175:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc9_);
                                                                                       if(_loc15_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §§push(_loc10_);
                                                                                       if(!_loc15_)
                                                                                       {
                                                                                          addr267:
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(_loc14_)
                                                                                          {
                                                                                             §§push(0);
                                                                                             if(_loc14_ || param2)
                                                                                             {
                                                                                                if(§§pop() < §§pop())
                                                                                                {
                                                                                                   if(!(_loc15_ && param3))
                                                                                                   {
                                                                                                      continue loop8;
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(false)
                                                                                                      {
                                                                                                         continue loop4;
                                                                                                      }
                                                                                                      §§push(_loc12_ = (_loc5_ = param1[_loc6_]).v);
                                                                                                      §§push(_loc7_.x);
                                                                                                      if(!_loc15_)
                                                                                                      {
                                                                                                         §§push(_loc11_);
                                                                                                         if(_loc14_ || param3)
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
                                                                                                         if(!(_loc15_ && param2))
                                                                                                         {
                                                                                                            §§push(_loc11_);
                                                                                                            if(!_loc15_)
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
                                                                                                      if(!(_loc15_ && b2Collision))
                                                                                                      {
                                                                                                         if(_loc9_ > 0)
                                                                                                         {
                                                                                                            addr383:
                                                                                                            _loc13_ = param2[0];
                                                                                                            if(!_loc15_)
                                                                                                            {
                                                                                                               _loc5_.id = _loc13_.id;
                                                                                                               if(_loc15_ && param1)
                                                                                                               {
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr424);
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
                                                                                                         §§goto(addr424);
                                                                                                      }
                                                                                                      §§goto(addr383);
                                                                                                   }
                                                                                                   addr268:
                                                                                                }
                                                                                                addr424:
                                                                                                return _loc6_;
                                                                                             }
                                                                                             addr245:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc14_)
                                                                                                {
                                                                                                   break loop6;
                                                                                                }
                                                                                                continue loop6;
                                                                                             }
                                                                                             addr245:
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             _loc11_ = §§pop();
                                                                                             §§goto(addr268);
                                                                                          }
                                                                                          addr267:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                          }
                                                                                          addr243:
                                                                                       }
                                                                                       §§goto(addr245);
                                                                                    }
                                                                                    addr235:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc9_);
                                                                                       if(_loc14_ || b2Collision)
                                                                                       {
                                                                                          §§goto(addr243);
                                                                                       }
                                                                                       §§goto(addr245);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr305);
                                                                           }
                                                                           §§goto(addr175);
                                                                        }
                                                                        if(_loc15_ && b2Collision)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§push(§§pop() / §§pop());
                                                                        if(!_loc15_)
                                                                        {
                                                                           §§goto(addr257);
                                                                        }
                                                                        §§goto(addr267);
                                                                     }
                                                                     continue loop1;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr232);
                                                      }
                                                      addr157:
                                                      §§push(§§pop() - §§pop());
                                                      if(!(_loc15_ && b2Collision))
                                                      {
                                                         addr165:
                                                         §§goto(addr166);
                                                         §§push(Number(§§pop()));
                                                      }
                                                      §§goto(addr166);
                                                   }
                                                   §§goto(addr157);
                                                }
                                                §§goto(addr165);
                                             }
                                             §§goto(addr153);
                                          }
                                          §§goto(addr157);
                                          §§push(param4);
                                       }
                                       §§goto(addr165);
                                    }
                                    §§goto(addr139);
                                 }
                                 §§goto(addr143);
                              }
                              §§goto(addr153);
                           }
                           §§goto(addr143);
                        }
                        §§goto(addr145);
                     }
                     §§goto(addr153);
                  }
                  §§goto(addr139);
               }
               §§goto(addr100);
            }
            §§goto(addr127);
         }
         §§goto(addr128);
      }
      
      public static function §%I§(param1:b2PolygonShape, param2:b2Transform, param3:int, param4:b2PolygonShape, param5:b2Transform) : Number
      {
         var _loc26_:Boolean = false;
         var _loc27_:Boolean = true;
         var _loc11_:b2Mat22 = null;
         var _loc12_:b2Vec2 = null;
         var _loc25_:* = NaN;
         §§push(param1.§9X§);
         if(_loc27_ || param3)
         {
            §§push(int(§§pop()));
         }
         var _loc6_:* = §§pop();
         var _loc7_:Vector.<b2Vec2> = param1.§9Z§;
         var _loc8_:Vector.<b2Vec2> = param1.§&b§;
         §§push(param4.§9X§);
         if(!(_loc26_ && param2))
         {
            §§push(int(§§pop()));
         }
         var _loc9_:* = §§pop();
         var _loc10_:Vector.<b2Vec2> = param4.§9Z§;
         _loc11_ = param2.R;
         _loc12_ = _loc8_[param3];
         §§push(_loc11_.col1.x);
         if(!_loc26_)
         {
            §§push(_loc12_.x);
            if(!_loc26_)
            {
               §§push(§§pop() * §§pop());
               if(!_loc26_)
               {
                  §§push(_loc11_.col2.x);
                  if(_loc27_ || param3)
                  {
                     addr90:
                     §§push(§§pop() * _loc12_.y);
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc27_ || b2Collision)
                  {
                     addr101:
                     §§push(Number(§§pop()));
                  }
               }
               var _loc13_:* = §§pop();
               §§push(_loc11_.col1.y);
               if(!(_loc26_ && param2))
               {
                  §§push(_loc12_.x);
                  if(_loc27_ || param3)
                  {
                     §§push(§§pop() * §§pop());
                     if(!_loc26_)
                     {
                        §§push(_loc11_.col2.y);
                        if(!_loc26_)
                        {
                           addr130:
                           §§push(§§pop() * _loc12_.y);
                        }
                        §§push(§§pop() + §§pop());
                        if(_loc26_)
                        {
                        }
                        addr137:
                        var _loc14_:* = §§pop();
                        §§push((_loc11_ = param5.R).col1.x);
                        if(_loc27_)
                        {
                           §§push(_loc13_);
                           if(_loc27_)
                           {
                              addr179:
                              §§push(§§pop() * §§pop());
                              if(_loc27_ || b2Collision)
                              {
                                 §§push(_loc11_.col1.y);
                                 if(!(_loc26_ && param3))
                                 {
                                    §§push(§§pop() * _loc14_);
                                 }
                              }
                              var _loc15_:* = §§pop();
                              §§push(_loc11_.col2.x);
                              if(_loc27_ || param3)
                              {
                                 §§push(_loc13_);
                                 if(!_loc26_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(!(_loc26_ && param3))
                                    {
                                       §§push(_loc11_.col2.y);
                                       if(_loc27_ || b2Collision)
                                       {
                                          addr211:
                                          §§push(§§pop() * _loc14_);
                                       }
                                       §§push(§§pop() + §§pop());
                                       if(_loc27_)
                                       {
                                          addr217:
                                          var _loc16_:Number = §§pop();
                                          var _loc17_:* = 0;
                                          var _loc18_:Number = Number.MAX_VALUE;
                                          var _loc19_:int = 0;
                                          while(_loc19_ < _loc9_)
                                          {
                                             §§push((_loc12_ = _loc10_[_loc19_]).x);
                                             if(_loc27_ || param1)
                                             {
                                                §§push(_loc15_);
                                                if(!_loc26_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc27_)
                                                   {
                                                      §§push(_loc12_.y);
                                                      if(!_loc26_)
                                                      {
                                                         §§push(§§pop() * _loc16_);
                                                         if(!_loc26_)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(!(_loc26_ && param1))
                                                            {
                                                               §§push(Number(§§pop()));
                                                               if(_loc27_)
                                                               {
                                                                  §§push(§§pop());
                                                                  if(!(_loc26_ && b2Collision))
                                                                  {
                                                                     _loc25_ = §§pop();
                                                                     if(!_loc26_)
                                                                     {
                                                                        addr279:
                                                                        addr278:
                                                                        if(§§pop() < _loc18_)
                                                                        {
                                                                           if(!_loc26_)
                                                                           {
                                                                              §§push(_loc25_);
                                                                              if(!(_loc26_ && param1))
                                                                              {
                                                                                 addr291:
                                                                                 _loc18_ = §§pop();
                                                                                 if(!(_loc26_ && param2))
                                                                                 {
                                                                                    §§push(_loc19_);
                                                                                    if(_loc27_)
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
                                                                              §§goto(addr291);
                                                                           }
                                                                        }
                                                                        _loc19_++;
                                                                        continue;
                                                                     }
                                                                     §§goto(addr291);
                                                                  }
                                                                  §§goto(addr279);
                                                               }
                                                            }
                                                            §§goto(addr291);
                                                         }
                                                      }
                                                      §§goto(addr279);
                                                   }
                                                   §§goto(addr278);
                                                }
                                                §§goto(addr279);
                                             }
                                             §§goto(addr291);
                                          }
                                          _loc12_ = _loc7_[param3];
                                          _loc11_ = param2.R;
                                          §§push(param2.position.x);
                                          if(_loc27_)
                                          {
                                             §§push(_loc11_.col1.x);
                                             if(_loc27_ || param3)
                                             {
                                                §§push(_loc12_.x);
                                                if(_loc27_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc27_)
                                                   {
                                                      addr365:
                                                      §§push(_loc11_.col2.x);
                                                      if(_loc27_)
                                                      {
                                                         addr361:
                                                         §§push(§§pop() * _loc12_.y);
                                                      }
                                                      §§push(§§pop() + (§§pop() + §§pop()));
                                                      if(!(_loc26_ && param2))
                                                      {
                                                         addr374:
                                                         var _loc20_:Number = §§pop();
                                                         §§push(param2.position.y);
                                                         if(_loc27_ || b2Collision)
                                                         {
                                                            §§push(_loc11_.col1.y);
                                                            if(_loc27_)
                                                            {
                                                               §§push(_loc12_.x);
                                                               if(_loc27_)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(!_loc26_)
                                                                  {
                                                                     addr406:
                                                                     §§push(_loc11_.col2.y);
                                                                     if(!_loc26_)
                                                                     {
                                                                        addr402:
                                                                        §§push(§§pop() * _loc12_.y);
                                                                     }
                                                                     §§push(§§pop() + (§§pop() + §§pop()));
                                                                     if(!_loc26_)
                                                                     {
                                                                        addr409:
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                     var _loc21_:* = §§pop();
                                                                     _loc12_ = _loc10_[_loc17_];
                                                                     _loc11_ = param5.R;
                                                                     §§push(param5.position.x);
                                                                     if(!(_loc26_ && param1))
                                                                     {
                                                                        §§push(_loc11_.col1.x);
                                                                        if(_loc27_ || param3)
                                                                        {
                                                                           §§push(_loc12_.x);
                                                                           if(!_loc26_)
                                                                           {
                                                                              addr466:
                                                                              §§push(§§pop() * §§pop());
                                                                              if(!(_loc26_ && param3))
                                                                              {
                                                                                 §§push(_loc11_.col2.x);
                                                                                 if(_loc27_ || param2)
                                                                                 {
                                                                                    §§push(§§pop() * _loc12_.y);
                                                                                 }
                                                                              }
                                                                              §§push(§§pop() + §§pop());
                                                                              if(_loc27_)
                                                                              {
                                                                                 addr470:
                                                                                 var _loc22_:* = Number(§§pop());
                                                                                 §§push(param5.position.y);
                                                                                 if(!(_loc26_ && param1))
                                                                                 {
                                                                                    §§push(_loc11_.col1.y);
                                                                                    if(_loc27_)
                                                                                    {
                                                                                       §§push(_loc12_.x);
                                                                                       if(!(_loc26_ && b2Collision))
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(_loc27_)
                                                                                          {
                                                                                             addr498:
                                                                                             §§push(_loc11_.col2.y);
                                                                                             if(_loc27_ || b2Collision)
                                                                                             {
                                                                                                addr508:
                                                                                                §§push(§§pop() * _loc12_.y);
                                                                                             }
                                                                                             §§push(§§pop() + §§pop());
                                                                                          }
                                                                                          §§push(§§pop() + §§pop());
                                                                                          if(!(_loc26_ && b2Collision))
                                                                                          {
                                                                                             addr520:
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                          var _loc23_:* = §§pop();
                                                                                          if(!(_loc26_ && param3))
                                                                                          {
                                                                                             §§push(_loc22_);
                                                                                             if(_loc27_)
                                                                                             {
                                                                                                §§push(_loc20_);
                                                                                                if(_loc27_ || param3)
                                                                                                {
                                                                                                   §§push(§§pop() - §§pop());
                                                                                                   if(!_loc26_)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      if(!_loc26_)
                                                                                                      {
                                                                                                         addr546:
                                                                                                         _loc22_ = §§pop();
                                                                                                         if(_loc27_)
                                                                                                         {
                                                                                                            §§push(_loc23_);
                                                                                                            if(!_loc26_)
                                                                                                            {
                                                                                                               addr552:
                                                                                                               §§push(_loc21_);
                                                                                                               if(_loc27_ || param1)
                                                                                                               {
                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                  if(_loc27_ || b2Collision)
                                                                                                                  {
                                                                                                                     addr568:
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     if(_loc27_ || param2)
                                                                                                                     {
                                                                                                                        _loc23_ = §§pop();
                                                                                                                        addr577:
                                                                                                                        §§push(_loc22_);
                                                                                                                        if(!(_loc26_ && param1))
                                                                                                                        {
                                                                                                                           addr585:
                                                                                                                           §§push(_loc13_);
                                                                                                                           if(!_loc26_)
                                                                                                                           {
                                                                                                                              addr588:
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              if(!_loc26_)
                                                                                                                              {
                                                                                                                                 §§push(_loc23_);
                                                                                                                                 if(_loc27_)
                                                                                                                                 {
                                                                                                                                    addr594:
                                                                                                                                    §§push(§§pop() * _loc14_);
                                                                                                                                    if(!_loc26_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                       if(!(_loc26_ && b2Collision))
                                                                                                                                       {
                                                                                                                                          addr616:
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                       }
                                                                                                                                       §§push(§§pop());
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 var _loc24_:* = §§pop();
                                                                                                                                 return §§pop();
                                                                                                                              }
                                                                                                                              §§goto(addr616);
                                                                                                                           }
                                                                                                                           §§goto(addr594);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr585);
                                                                                                                  }
                                                                                                                  §§goto(addr616);
                                                                                                               }
                                                                                                               §§goto(addr588);
                                                                                                            }
                                                                                                            §§goto(addr568);
                                                                                                         }
                                                                                                         §§goto(addr577);
                                                                                                      }
                                                                                                      §§goto(addr552);
                                                                                                   }
                                                                                                   §§goto(addr546);
                                                                                                }
                                                                                                §§goto(addr588);
                                                                                             }
                                                                                             §§goto(addr585);
                                                                                          }
                                                                                          §§goto(addr577);
                                                                                       }
                                                                                       §§goto(addr508);
                                                                                    }
                                                                                    §§goto(addr498);
                                                                                 }
                                                                                 §§goto(addr520);
                                                                              }
                                                                              §§goto(addr470);
                                                                           }
                                                                           §§push(§§pop() + §§pop());
                                                                        }
                                                                        §§goto(addr466);
                                                                     }
                                                                     §§goto(addr470);
                                                                  }
                                                                  §§goto(addr406);
                                                               }
                                                               §§goto(addr402);
                                                            }
                                                            §§goto(addr406);
                                                         }
                                                         §§goto(addr409);
                                                      }
                                                      §§goto(addr374);
                                                   }
                                                   §§goto(addr365);
                                                }
                                                §§goto(addr361);
                                             }
                                             §§goto(addr365);
                                          }
                                          §§goto(addr374);
                                       }
                                    }
                                    §§goto(addr217);
                                 }
                                 §§goto(addr211);
                              }
                              §§goto(addr217);
                           }
                           §§push(§§pop() + §§pop());
                           if(_loc27_ || param2)
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                        §§goto(addr179);
                     }
                     §§goto(addr137);
                     §§push(Number(§§pop()));
                  }
                  §§goto(addr130);
               }
               §§goto(addr137);
            }
            §§goto(addr90);
         }
         §§goto(addr101);
      }
      
      public static function §"x§(param1:Vector.<int>, param2:b2PolygonShape, param3:b2Transform, param4:b2PolygonShape, param5:b2Transform) : Number
      {
         var _loc26_:Boolean = false;
         var _loc27_:Boolean = true;
         var _loc8_:b2Vec2 = null;
         var _loc9_:b2Mat22 = null;
         var _loc22_:* = 0;
         var _loc23_:* = NaN;
         var _loc24_:* = 0;
         var _loc25_:* = NaN;
         §§push(param2.§9X§);
         if(_loc27_ || param3)
         {
            §§push(int(§§pop()));
         }
         var _loc6_:* = §§pop();
         var _loc7_:Vector.<b2Vec2> = param2.§&b§;
         _loc9_ = param5.R;
         _loc8_ = param4.§3§;
         §§push(param5.position.x);
         if(!_loc26_)
         {
            §§push(_loc9_.col1.x);
            if(_loc27_)
            {
               §§push(_loc8_.x);
               if(_loc27_)
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc26_ && param2))
                  {
                     addr76:
                     §§push(_loc9_.col2.x);
                     if(!(_loc26_ && b2Collision))
                     {
                        addr86:
                        §§push(§§pop() * _loc8_.y);
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc27_ || param1)
                  {
                     addr99:
                     var _loc10_:* = Number(§§pop());
                     §§push(param5.position.y);
                     if(!(_loc26_ && b2Collision))
                     {
                        §§push(_loc9_.col1.y);
                        if(!_loc26_)
                        {
                           §§push(_loc8_.x);
                           if(_loc27_ || param2)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc27_)
                              {
                                 addr127:
                                 §§push(_loc9_.col2.y);
                                 if(!_loc26_)
                                 {
                                    addr135:
                                    §§push(§§pop() + §§pop() * _loc8_.y);
                                 }
                                 §§goto(addr135);
                              }
                              §§push(§§pop() + §§pop());
                              if(_loc27_)
                              {
                                 addr140:
                                 var _loc11_:* = Number(§§pop());
                                 _loc9_ = param3.R;
                                 _loc8_ = param2.§3§;
                                 if(_loc27_ || b2Collision)
                                 {
                                    §§push(_loc10_);
                                    if(_loc27_ || param3)
                                    {
                                       §§push(param3.position);
                                       if(_loc27_ || param2)
                                       {
                                          §§push(§§pop().x);
                                          if(_loc27_ || param3)
                                          {
                                             §§push(_loc9_.col1);
                                             if(!_loc26_)
                                             {
                                                §§push(§§pop().x);
                                                if(!(_loc26_ && param2))
                                                {
                                                   §§push(_loc8_.x);
                                                   if(!(_loc26_ && param2))
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(!(_loc26_ && param2))
                                                      {
                                                         §§push(_loc9_.col2);
                                                         if(!_loc26_)
                                                         {
                                                            §§push(§§pop().x);
                                                            if(!_loc26_)
                                                            {
                                                               §§push(_loc8_.y);
                                                               if(_loc27_ || param2)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(_loc27_ || param2)
                                                                  {
                                                                     addr234:
                                                                     §§push(§§pop() + §§pop());
                                                                     if(!_loc26_)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        if(_loc27_)
                                                                        {
                                                                           §§push(§§pop() - §§pop());
                                                                           if(_loc27_ || param2)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              if(_loc27_ || param2)
                                                                              {
                                                                                 _loc10_ = §§pop();
                                                                                 if(!(_loc26_ && b2Collision))
                                                                                 {
                                                                                    addr264:
                                                                                    §§push(_loc11_);
                                                                                    if(!_loc26_)
                                                                                    {
                                                                                       addr269:
                                                                                       §§push(param3.position.y);
                                                                                       if(_loc27_ || param1)
                                                                                       {
                                                                                          addr277:
                                                                                          §§push(_loc9_.col1);
                                                                                          if(_loc27_ || param3)
                                                                                          {
                                                                                             addr286:
                                                                                             §§push(§§pop().y);
                                                                                             if(!(_loc26_ && param3))
                                                                                             {
                                                                                                §§push(_loc8_.x);
                                                                                                if(!(_loc26_ && b2Collision))
                                                                                                {
                                                                                                   addr361:
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(_loc27_)
                                                                                                   {
                                                                                                      addr306:
                                                                                                      §§push(_loc9_.col2.y);
                                                                                                      if(_loc27_)
                                                                                                      {
                                                                                                         addr313:
                                                                                                         §§push(§§pop() * _loc8_.y);
                                                                                                      }
                                                                                                   }
                                                                                                   §§push(§§pop() + §§pop() * §§pop());
                                                                                                   if(_loc27_ || param3)
                                                                                                   {
                                                                                                      addr370:
                                                                                                      §§push(Number(§§pop()));
                                                                                                   }
                                                                                                   var _loc12_:* = §§pop();
                                                                                                   §§push(_loc10_);
                                                                                                   if(!(_loc26_ && param3))
                                                                                                   {
                                                                                                      §§push(param3.R.col2.x);
                                                                                                      if(_loc27_)
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         if(!(_loc26_ && param1))
                                                                                                         {
                                                                                                            §§push(_loc11_);
                                                                                                            if(!(_loc26_ && param1))
                                                                                                            {
                                                                                                               addr402:
                                                                                                               §§push(§§pop() * param3.R.col2.y);
                                                                                                            }
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            if(!(_loc26_ && param1))
                                                                                                            {
                                                                                                               addr415:
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
                                                                                                               if(_loc27_ || param2)
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(_loc27_)
                                                                                                                  {
                                                                                                                     §§push(_loc8_.y);
                                                                                                                     if(_loc27_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * _loc13_);
                                                                                                                        if(_loc26_)
                                                                                                                        {
                                                                                                                        }
                                                                                                                        addr482:
                                                                                                                        _loc25_ = §§pop();
                                                                                                                        if(!_loc26_)
                                                                                                                        {
                                                                                                                           addr486:
                                                                                                                           if(§§pop() > _loc15_)
                                                                                                                           {
                                                                                                                              if(!_loc26_)
                                                                                                                              {
                                                                                                                                 §§push(_loc25_);
                                                                                                                                 if(_loc27_)
                                                                                                                                 {
                                                                                                                                    addr493:
                                                                                                                                    _loc15_ = Number(§§pop());
                                                                                                                                    addr492:
                                                                                                                                    if(_loc27_ || param2)
                                                                                                                                    {
                                                                                                                                    }
                                                                                                                                    _loc16_++;
                                                                                                                                    continue;
                                                                                                                                 }
                                                                                                                                 §§goto(addr493);
                                                                                                                              }
                                                                                                                              §§push(_loc16_);
                                                                                                                              if(!_loc26_)
                                                                                                                              {
                                                                                                                                 §§push(int(§§pop()));
                                                                                                                              }
                                                                                                                              _loc14_ = §§pop();
                                                                                                                              if(_loc26_)
                                                                                                                              {
                                                                                                                                 continue;
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr493);
                                                                                                                     }
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     if(!(_loc26_ && param1))
                                                                                                                     {
                                                                                                                        addr471:
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                        if(_loc27_)
                                                                                                                        {
                                                                                                                           addr474:
                                                                                                                           §§push(§§pop());
                                                                                                                           if(_loc27_ || param1)
                                                                                                                           {
                                                                                                                              §§goto(addr482);
                                                                                                                           }
                                                                                                                           §§goto(addr486);
                                                                                                                        }
                                                                                                                        §§goto(addr493);
                                                                                                                     }
                                                                                                                     §§goto(addr492);
                                                                                                                  }
                                                                                                                  §§goto(addr471);
                                                                                                               }
                                                                                                               §§goto(addr482);
                                                                                                            }
                                                                                                            §§goto(addr474);
                                                                                                         }
                                                                                                         §§push(§%I§(param2,param3,_loc14_,param4,param5));
                                                                                                         if(!_loc26_)
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                         }
                                                                                                         var _loc17_:* = §§pop();
                                                                                                         if(!(_loc26_ && b2Collision))
                                                                                                         {
                                                                                                            §§push(_loc14_);
                                                                                                            if(_loc27_ || param3)
                                                                                                            {
                                                                                                               §§push(§§pop() - 1);
                                                                                                               if(!_loc26_)
                                                                                                               {
                                                                                                                  if(§§pop() >= 0)
                                                                                                                  {
                                                                                                                     addr544:
                                                                                                                     §§push(_loc14_);
                                                                                                                     if(_loc27_ || param3)
                                                                                                                     {
                                                                                                                        §§push(§§pop() - 1);
                                                                                                                        if(!(_loc26_ && param2))
                                                                                                                        {
                                                                                                                           addr570:
                                                                                                                           §§push(int(§§pop()));
                                                                                                                           if(_loc27_)
                                                                                                                           {
                                                                                                                              addr586:
                                                                                                                              §§push(int(§§pop()));
                                                                                                                           }
                                                                                                                           §§goto(addr586);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           addr578:
                                                                                                                           §§push(int(§§pop()));
                                                                                                                           if(_loc27_ || param3)
                                                                                                                           {
                                                                                                                              §§goto(addr586);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        var _loc18_:* = §§pop();
                                                                                                                        §§push(§%I§(param2,param3,_loc18_,param4,param5));
                                                                                                                        if(_loc27_ || param2)
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                        }
                                                                                                                        var _loc19_:* = §§pop();
                                                                                                                        if(!_loc26_)
                                                                                                                        {
                                                                                                                           §§push(_loc14_);
                                                                                                                           if(!(_loc26_ && param1))
                                                                                                                           {
                                                                                                                              §§push(1);
                                                                                                                              if(!(_loc26_ && param1))
                                                                                                                              {
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                 if(!(_loc26_ && param1))
                                                                                                                                 {
                                                                                                                                    if(§§pop() < _loc6_)
                                                                                                                                    {
                                                                                                                                       addr633:
                                                                                                                                       §§push(_loc14_);
                                                                                                                                       if(!(_loc26_ && b2Collision))
                                                                                                                                       {
                                                                                                                                          addr643:
                                                                                                                                          §§push(int(§§pop() + 1));
                                                                                                                                          if(_loc27_ || param1)
                                                                                                                                          {
                                                                                                                                             addr651:
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr655:
                                                                                                                                       §§push(int(§§pop()));
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§push(0);
                                                                                                                                       if(!_loc26_)
                                                                                                                                       {
                                                                                                                                          §§goto(addr655);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    var _loc20_:* = §§pop();
                                                                                                                                    §§push(§%I§(param2,param3,_loc20_,param4,param5));
                                                                                                                                    if(!_loc26_)
                                                                                                                                    {
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                    }
                                                                                                                                    var _loc21_:* = §§pop();
                                                                                                                                    if(!(_loc26_ && b2Collision))
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
                                                                                                                                                      addr1133:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc19_);
                                                                                                                                                         addr1103:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc21_);
                                                                                                                                                            addr1104:
                                                                                                                                                            while(!(_loc26_ && param1))
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() > §§pop());
                                                                                                                                                            }
                                                                                                                                                            continue loop2;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   addr1132:
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
                                                                                                                                                               if(§§pop() <= §§pop())
                                                                                                                                                               {
                                                                                                                                                                  param1[0] = _loc14_;
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc27_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc17_);
                                                                                                                                                                        while(!_loc27_)
                                                                                                                                                                        {
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
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc24_);
                                                                                                                                                                                       loop18:
                                                                                                                                                                                       for(; _loc27_ || param2; while(_loc27_ || param3)
                                                                                                                                                                                       {
                                                                                                                                                                                          _loc14_ = §§pop();
                                                                                                                                                                                          §§goto(addr959);
                                                                                                                                                                                       })
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(-1);
                                                                                                                                                                                          loop19:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(§§pop() != §§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc22_);
                                                                                                                                                                                                if(_loc27_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc27_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc27_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc27_ || param1)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(1);
                                                                                                                                                                                                            if(!(_loc26_ && param2))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc27_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr890);
                                                                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr926);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1024);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1033);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1034);
                                                                                                                                                                                                }
                                                                                                                                                                                                break;
                                                                                                                                                                                             }
                                                                                                                                                                                             if(!_loc26_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc27_ || b2Collision)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc22_);
                                                                                                                                                                                                   if(_loc27_ || b2Collision)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() - 1);
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(0);
                                                                                                                                                                                                         loop42:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() >= §§pop());
                                                                                                                                                                                                            loop38:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!§§pop())
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc6_);
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() - 1);
                                                                                                                                                                                                                     loop24:
                                                                                                                                                                                                                     while(_loc27_ || param1)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(int(§§pop()));
                                                                                                                                                                                                                        loop25:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(int(§§pop()));
                                                                                                                                                                                                                           addr1034:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              _loc14_ = §§pop();
                                                                                                                                                                                                                              addr1035:
                                                                                                                                                                                                                              loop26:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 loop27:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§%I§(param2,param3,_loc14_,param4,param5));
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc27_ || param3)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                                                                          loop29:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc26_ && param3)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc6_);
                                                                                                                                                                                                                                                   if(!(_loc27_ || param2))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop42;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§push(§§pop() < §§pop());
                                                                                                                                                                                                                                                   if(_loc26_ && param3)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop38;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   if(!_loc27_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop9;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   if(!_loc26_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!_loc27_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         break;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      if(§§pop())
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!_loc26_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(_loc22_);
                                                                                                                                                                                                                                                            if(_loc27_ || param1)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!_loc27_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  continue loop25;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§push(1);
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§goto(addr927);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§goto(addr959);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(0);
                                                                                                                                                                                                                                                         if(_loc26_ && param2)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue loop18;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(int(§§pop()));
                                                                                                                                                                                                                                                         continue loop18;
                                                                                                                                                                                                                                                         addr941:
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§goto(addr1132);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   continue loop29;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                continue loop3;
                                                                                                                                                                                                                                                addr890:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             if(_loc27_ || b2Collision)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(§§pop());
                                                                                                                                                                                                                                                if(_loc27_ || param3)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!(_loc26_ && b2Collision))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      _loc17_ = §§pop();
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(_loc23_);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr808:
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§goto(addr1104);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                loop31:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!(_loc27_ || b2Collision))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop11;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   if(§§pop() <= §§pop())
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      param1[0] = _loc22_;
                                                                                                                                                                                                                                                      if(!_loc26_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!_loc27_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue loop15;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         if(_loc27_ || b2Collision)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(_loc23_);
                                                                                                                                                                                                                                                            if(_loc27_ || param2)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc27_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(_loc27_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     return §§pop();
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr927:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(!_loc26_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!_loc26_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(int(§§pop()));
                                                                                                                                                                                                                                                                           break loop19;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     continue loop24;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  continue loop10;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               continue;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr749);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(-1);
                                                                                                                                                                                                                                                               addr1125:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  _loc24_ = §§pop();
                                                                                                                                                                                                                                                                  §§goto(addr1126);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr1114:
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1126);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      break;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   if(!(_loc26_ && param3))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc26_ && b2Collision)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         while(!(_loc26_ && param3))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!_loc26_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               continue loop27;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         addr959:
                                                                                                                                                                                                                                                         continue loop16;
                                                                                                                                                                                                                                                         addr959:
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§push(_loc14_);
                                                                                                                                                                                                                                                      if(_loc27_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc26_ && param2)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            break loop19;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         if(!(_loc26_ && param2))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr849:
                                                                                                                                                                                                                                                            §§push(int(§§pop()));
                                                                                                                                                                                                                                                            if(!_loc27_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               continue loop18;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            _loc22_ = §§pop();
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!(_loc26_ && param1))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!_loc26_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(_loc17_);
                                                                                                                                                                                                                                                                     if(!_loc26_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        continue loop29;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     addr749:
                                                                                                                                                                                                                                                                     addr1084:
                                                                                                                                                                                                                                                                     addr1003:
                                                                                                                                                                                                                                                                     addr749:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        _loc23_ = §§pop();
                                                                                                                                                                                                                                                                        break loop31;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!_loc26_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(_loc20_);
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(int(§§pop()));
                                                                                                                                                                                                                                                                              addr1060:
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 _loc22_ = §§pop();
                                                                                                                                                                                                                                                                                 addr1061:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(_loc27_ || param1)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(_loc21_);
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                          addr1055:
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             _loc23_ = §§pop();
                                                                                                                                                                                                                                                                                             addr1056:
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                continue loop16;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       addr1054:
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr1100:
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(_loc19_);
                                                                                                                                                                                                                                                                                          break loop24;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       addr1100:
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           addr1059:
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr1126:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(_loc18_);
                                                                                                                                                                                                                                                                              break loop29;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           addr1126:
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     addr1003:
                                                                                                                                                                                                                                                                     addr1084:
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        break loop18;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     addr1075:
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§goto(addr1003);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               if(§§pop())
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(_loc22_);
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(!_loc26_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(_loc26_ && param1)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§push(§§pop() - 1);
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(int(§§pop()));
                                                                                                                                                                                                                                                                           continue loop25;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     _loc22_ = §§pop();
                                                                                                                                                                                                                                                                     §§goto(addr1100);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr1011:
                                                                                                                                                                                                                                                                  addr1099:
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§goto(addr1084);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1059);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr852:
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1011);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr849);
                                                                                                                                                                                                                                                      §§goto(addr1056);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr852);
                                                                                                                                                                                                                                                   §§goto(addr1126);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc27_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop26;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr852);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1021);
                                                                                                                                                                                                                                             §§goto(addr959);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§goto(addr1099);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr1098:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1055);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc27_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                                                                           continue loop14;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        continue loop1;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr1024:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1003);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1022);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1133);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1035);
                                                                                                                                                                                             §§goto(addr1034);
                                                                                                                                                                                          }
                                                                                                                                                                                          while(_loc27_ || b2Collision)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc27_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr941);
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr1125);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1060);
                                                                                                                                                                                       }
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc26_ && param1))
                                                                                                                                                                                          {
                                                                                                                                                                                             _loc24_ = §§pop();
                                                                                                                                                                                             §§goto(addr1084);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1098);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1103);
                                                                                                                                                                           if(!(_loc27_ || param3))
                                                                                                                                                                           {
                                                                                                                                                                              continue;
                                                                                                                                                                           }
                                                                                                                                                                           if(!(_loc26_ && param2))
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr749);
                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1054);
                                                                                                                                                                        }
                                                                                                                                                                        return §§pop();
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1061);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1075);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1114);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr1100);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr643);
                                                                                                                           }
                                                                                                                           §§goto(addr651);
                                                                                                                        }
                                                                                                                        §§goto(addr633);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§push(_loc6_);
                                                                                                                     if(_loc27_)
                                                                                                                     {
                                                                                                                        §§goto(addr578);
                                                                                                                        §§push(§§pop() - 1);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr586);
                                                                                                               }
                                                                                                               §§goto(addr570);
                                                                                                            }
                                                                                                            §§goto(addr586);
                                                                                                         }
                                                                                                         §§goto(addr544);
                                                                                                      }
                                                                                                      §§goto(addr402);
                                                                                                   }
                                                                                                   §§goto(addr415);
                                                                                                }
                                                                                                §§push(§§pop() + §§pop());
                                                                                                if(_loc27_ || param1)
                                                                                                {
                                                                                                   addr322:
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(!(_loc26_ && param2))
                                                                                                   {
                                                                                                      addr330:
                                                                                                      §§push(§§pop() - §§pop());
                                                                                                      if(_loc27_)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                         if(_loc27_ || param3)
                                                                                                         {
                                                                                                            _loc11_ = §§pop();
                                                                                                            addr342:
                                                                                                            §§push(_loc10_);
                                                                                                            if(!_loc26_)
                                                                                                            {
                                                                                                               addr345:
                                                                                                               §§push(param3.R.col1.x);
                                                                                                               if(_loc27_)
                                                                                                               {
                                                                                                                  addr351:
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(!_loc26_)
                                                                                                                  {
                                                                                                                     addr354:
                                                                                                                     §§push(_loc11_);
                                                                                                                     if(_loc27_)
                                                                                                                     {
                                                                                                                        addr357:
                                                                                                                        §§goto(addr361);
                                                                                                                        §§push(param3.R.col1.y);
                                                                                                                     }
                                                                                                                     §§goto(addr361);
                                                                                                                  }
                                                                                                                  §§goto(addr370);
                                                                                                               }
                                                                                                               §§goto(addr357);
                                                                                                            }
                                                                                                            §§goto(addr361);
                                                                                                         }
                                                                                                         §§goto(addr354);
                                                                                                      }
                                                                                                      §§goto(addr345);
                                                                                                   }
                                                                                                   §§goto(addr351);
                                                                                                }
                                                                                                §§goto(addr361);
                                                                                             }
                                                                                             §§goto(addr306);
                                                                                          }
                                                                                          §§goto(addr357);
                                                                                       }
                                                                                       §§goto(addr330);
                                                                                    }
                                                                                    §§goto(addr345);
                                                                                 }
                                                                                 §§goto(addr342);
                                                                              }
                                                                              §§goto(addr354);
                                                                           }
                                                                           §§goto(addr345);
                                                                        }
                                                                        §§goto(addr277);
                                                                     }
                                                                     §§goto(addr322);
                                                                  }
                                                                  §§goto(addr361);
                                                               }
                                                               §§goto(addr313);
                                                            }
                                                            §§goto(addr234);
                                                         }
                                                         §§goto(addr306);
                                                      }
                                                      §§goto(addr361);
                                                   }
                                                   §§goto(addr313);
                                                }
                                                §§goto(addr361);
                                             }
                                             §§goto(addr286);
                                          }
                                          §§goto(addr351);
                                       }
                                       §§goto(addr269);
                                    }
                                    §§goto(addr354);
                                 }
                                 §§goto(addr264);
                              }
                              §§goto(addr140);
                           }
                           §§goto(addr135);
                        }
                        §§goto(addr127);
                     }
                     §§goto(addr140);
                  }
                  §§goto(addr99);
               }
               §§goto(addr86);
            }
            §§goto(addr76);
         }
         §§goto(addr99);
      }
      
      public static function §'H§(param1:Vector.<§>I§>, param2:b2PolygonShape, param3:b2Transform, param4:int, param5:b2PolygonShape, param6:b2Transform) : void
      {
         var _loc24_:Boolean = true;
         var _loc25_:Boolean = false;
         var _loc12_:b2Mat22 = null;
         var _loc13_:b2Vec2 = null;
         var _loc20_:§>I§ = null;
         var _loc23_:* = NaN;
         §§push(param2.§9X§);
         if(!_loc25_)
         {
            §§push(int(§§pop()));
         }
         var _loc7_:* = §§pop();
         var _loc8_:Vector.<b2Vec2> = param2.§&b§;
         §§push(param5.§9X§);
         if(_loc24_ || param1)
         {
            §§push(int(§§pop()));
         }
         var _loc9_:* = §§pop();
         var _loc10_:Vector.<b2Vec2> = param5.§9Z§;
         var _loc11_:Vector.<b2Vec2> = param5.§&b§;
         _loc12_ = param3.R;
         _loc13_ = _loc8_[param4];
         §§push(_loc12_.col1.x);
         if(_loc24_ || param3)
         {
            §§push(_loc13_.x);
            if(!_loc25_)
            {
               addr99:
               §§push(§§pop() * §§pop());
               if(_loc24_ || param1)
               {
                  §§push(_loc12_.col2.x);
                  if(!_loc25_)
                  {
                     §§push(§§pop() * _loc13_.y);
                  }
               }
               var _loc14_:* = §§pop();
               §§push(_loc12_.col1.y);
               if(!_loc25_)
               {
                  §§push(_loc13_.x);
                  if(_loc24_ || param1)
                  {
                     addr139:
                     §§push(§§pop() * §§pop());
                     if(_loc24_ || param2)
                     {
                        §§push(_loc12_.col2.y);
                        if(_loc24_)
                        {
                           §§push(§§pop() * _loc13_.y);
                        }
                     }
                     var _loc15_:* = §§pop();
                     §§push((_loc12_ = param6.R).col1.x);
                     if(!_loc25_)
                     {
                        §§push(_loc14_);
                        if(_loc24_ || b2Collision)
                        {
                           §§push(§§pop() * §§pop());
                           if(!(_loc25_ && b2Collision))
                           {
                              addr165:
                              §§push(_loc12_.col1.y);
                              if(!_loc25_)
                              {
                                 addr172:
                                 §§push(§§pop() + §§pop() * _loc15_);
                                 if(!(_loc25_ && param2))
                                 {
                                    addr180:
                                    §§push(Number(§§pop()));
                                 }
                                 var _loc16_:* = §§pop();
                                 if(!(_loc25_ && param1))
                                 {
                                    §§push(_loc12_.col2.x);
                                    if(_loc24_)
                                    {
                                       §§push(_loc14_);
                                       if(_loc24_)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(_loc24_)
                                          {
                                             §§push(_loc12_.col2.y);
                                             if(!(_loc25_ && param1))
                                             {
                                                addr210:
                                                §§push(§§pop() * _loc15_);
                                             }
                                             §§push(§§pop() + §§pop());
                                             if(!(_loc25_ && param3))
                                             {
                                                addr220:
                                                §§push(Number(§§pop()));
                                                if(_loc24_ || param1)
                                                {
                                                }
                                                addr235:
                                                _loc14_ = Number(§§pop());
                                                addr236:
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
                                                      if(!_loc25_)
                                                      {
                                                         if(§§pop() >= §§pop())
                                                         {
                                                            §§push(_loc17_);
                                                            if(!_loc25_)
                                                            {
                                                               break;
                                                            }
                                                            addr370:
                                                            §§push(§§pop());
                                                         }
                                                         else
                                                         {
                                                            _loc13_ = _loc11_[_loc19_];
                                                            if(!_loc25_)
                                                            {
                                                               §§push(_loc14_);
                                                               if(_loc24_ || b2Collision)
                                                               {
                                                                  §§push(_loc13_.x);
                                                                  if(_loc24_ || param2)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(_loc24_ || param1)
                                                                     {
                                                                        §§push(_loc15_);
                                                                        if(!(_loc25_ && b2Collision))
                                                                        {
                                                                           §§push(§§pop() * _loc13_.y);
                                                                           if(!(_loc25_ && param3))
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              if(_loc24_)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 if(!_loc25_)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    if(_loc24_ || param2)
                                                                                    {
                                                                                    }
                                                                                    addr342:
                                                                                    if(§§pop() < §§pop())
                                                                                    {
                                                                                       loop5:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc23_);
                                                                                          if(!(_loc25_ && b2Collision))
                                                                                          {
                                                                                             addr351:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                             }
                                                                                             addr351:
                                                                                          }
                                                                                          addr352:
                                                                                          while(true)
                                                                                          {
                                                                                             _loc18_ = §§pop();
                                                                                             addr353:
                                                                                             while(true)
                                                                                             {
                                                                                                addr267:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc19_);
                                                                                                   if(!_loc25_)
                                                                                                   {
                                                                                                      §§push(int(§§pop()));
                                                                                                   }
                                                                                                   _loc17_ = §§pop();
                                                                                                   addr273:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!(_loc24_ || b2Collision))
                                                                                                      {
                                                                                                         continue loop5;
                                                                                                      }
                                                                                                   }
                                                                                                   continue loop5;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       _loc19_++;
                                                                                       if(!_loc25_)
                                                                                       {
                                                                                          if(!(_loc25_ && param1))
                                                                                          {
                                                                                             while(false)
                                                                                             {
                                                                                                §§goto(addr267);
                                                                                             }
                                                                                             continue loop0;
                                                                                             addr265:
                                                                                          }
                                                                                          §§goto(addr353);
                                                                                       }
                                                                                       §§goto(addr273);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr351);
                                                                           }
                                                                           §§goto(addr342);
                                                                        }
                                                                        _loc23_ = §§pop();
                                                                        if(!_loc25_)
                                                                        {
                                                                           addr341:
                                                                           §§goto(addr342);
                                                                           §§push(_loc18_);
                                                                        }
                                                                        §§goto(addr352);
                                                                     }
                                                                     §§goto(addr341);
                                                                  }
                                                                  §§goto(addr342);
                                                               }
                                                               §§goto(addr351);
                                                            }
                                                            §§goto(addr265);
                                                         }
                                                      }
                                                      var _loc21_:* = §§pop();
                                                      if(!_loc25_)
                                                      {
                                                         §§push(1);
                                                         if(_loc24_ || param3)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(!(_loc25_ && param2))
                                                            {
                                                               if(§§pop() < _loc9_)
                                                               {
                                                                  §§push(_loc21_);
                                                                  if(!(_loc25_ && param2))
                                                                  {
                                                                     addr413:
                                                                     addr412:
                                                                     §§push(int(§§pop() + 1));
                                                                     if(!_loc25_)
                                                                     {
                                                                        addr416:
                                                                     }
                                                                     addr420:
                                                                     §§push(int(§§pop()));
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§push(0);
                                                                  if(_loc24_)
                                                                  {
                                                                     §§goto(addr420);
                                                                  }
                                                               }
                                                               var _loc22_:* = §§pop();
                                                               _loc20_ = param1[0];
                                                               _loc13_ = _loc10_[_loc21_];
                                                               _loc12_ = param6.R;
                                                               if(_loc24_)
                                                               {
                                                                  §§push(_loc20_.v);
                                                                  loop9:
                                                                  while(true)
                                                                  {
                                                                     §§push(param6.position);
                                                                     addr601:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().x);
                                                                        addr602:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc12_.col1);
                                                                           addr604:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().x);
                                                                              addr605:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc13_.x);
                                                                                 if(_loc24_ || param1)
                                                                                 {
                                                                                    addr615:
                                                                                    §§push(§§pop() * §§pop());
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc12_.col2);
                                                                                       addr617:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop().x);
                                                                                          addr618:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc13_.y);
                                                                                             addr620:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr615:
                                                                                 }
                                                                                 addr621:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() + §§pop());
                                                                                    addr622:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() + §§pop());
                                                                                       addr623:
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop().x = §§pop();
                                                                                          continue loop9;
                                                                                       }
                                                                                       §§goto(addr615);
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr596);
                                                            }
                                                            §§goto(addr413);
                                                         }
                                                         §§goto(addr412);
                                                      }
                                                      §§goto(addr416);
                                                   }
                                                   break;
                                                }
                                                §§goto(addr370);
                                                §§push(int(§§pop()));
                                                addr234:
                                             }
                                             _loc15_ = §§pop();
                                             if(_loc24_)
                                             {
                                                §§push(_loc16_);
                                                if(!_loc25_)
                                                {
                                                   §§goto(addr234);
                                                }
                                                §§goto(addr235);
                                             }
                                             §§goto(addr236);
                                          }
                                          §§goto(addr235);
                                       }
                                       §§goto(addr210);
                                    }
                                 }
                                 §§goto(addr220);
                              }
                              §§goto(addr172);
                           }
                           §§goto(addr180);
                        }
                        §§goto(addr172);
                     }
                     §§goto(addr165);
                  }
                  §§push(§§pop() + §§pop());
                  if(!(_loc25_ && b2Collision))
                  {
                     §§push(Number(§§pop()));
                  }
               }
               §§goto(addr139);
            }
            §§push(§§pop() + §§pop());
            if(!_loc25_)
            {
               §§push(Number(§§pop()));
            }
         }
         §§goto(addr99);
      }
      
      private static function §;0§() : Vector.<§>I§>
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Vector.<§>I§> = new Vector.<§>I§>(2);
         if(!(_loc2_ && _loc2_))
         {
            _loc1_[0] = new §>I§();
            do
            {
               _loc1_[1] = new §>I§();
            }
            while(!_loc3_);
            
         }
         return _loc1_;
      }
      
      public static function §`6§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2PolygonShape, param5:b2Transform) : void
      {
         var _loc46_:Boolean = true;
         var _loc47_:Boolean = false;
         var _loc6_:§>I§ = null;
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
            param1.§!$§ = 0;
         }
         var _loc7_:Number = param2.§@s§ + param4.§@s§;
         var _loc8_:* = 0;
         if(!(_loc47_ && param1))
         {
            §8!N§[0] = _loc8_;
         }
         §§push(§"x§(§8!N§,param2,param3,param4,param5));
         if(_loc46_)
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         if(_loc46_ || b2Collision)
         {
            §§push(int(§8!N§[0]));
            if(_loc46_ || param2)
            {
               _loc8_ = §§pop();
               if(!(_loc47_ && param1))
               {
                  if(_loc9_ > _loc7_)
                  {
                     if(!_loc47_)
                     {
                        §§goto(addr120);
                     }
                  }
                  §§push(0);
               }
               §§goto(addr120);
            }
            var _loc10_:* = §§pop();
            if(!_loc47_)
            {
               §9!?§[0] = _loc10_;
            }
            §§push(§"x§(§9!?§,param4,param5,param2,param3));
            if(_loc46_ || param3)
            {
               §§push(Number(§§pop()));
            }
            var _loc11_:* = §§pop();
            if(_loc46_ || param3)
            {
               _loc10_ = int(§9!?§[0]);
               if(_loc46_ || param1)
               {
                  addr164:
                  §§push(_loc11_);
                  if(_loc46_ || param3)
                  {
                     if(§§pop() > _loc7_)
                     {
                        if(!(_loc47_ && param2))
                        {
                           §§goto(addr181);
                        }
                     }
                     §§push(0.98);
                     if(_loc46_)
                     {
                        addr185:
                        §§push(Number(§§pop()));
                     }
                     var _loc18_:* = §§pop();
                     §§push(0.001);
                     if(_loc46_ || param2)
                     {
                        §§push(Number(§§pop()));
                     }
                     var _loc19_:* = §§pop();
                     if(_loc46_ || param1)
                     {
                        §§push(_loc11_);
                        §§push(_loc18_);
                        if(_loc46_ || param2)
                        {
                           §§push(_loc9_);
                           if(_loc46_)
                           {
                              §§push(§§pop() * §§pop());
                              if(!_loc47_)
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
                                 if(_loc46_ || param3)
                                 {
                                    §§push(_loc10_);
                                    if(!(_loc47_ && b2Collision))
                                    {
                                       §§push(int(§§pop()));
                                    }
                                    loop40:
                                    while(true)
                                    {
                                       _loc16_ = §§pop();
                                       addr280:
                                       loop41:
                                       while(true)
                                       {
                                          addr262:
                                          while(true)
                                          {
                                             param1.§8!J§ = b2Manifold.§5!8§;
                                             addr267:
                                             while(!_loc47_)
                                             {
                                                continue loop40;
                                             }
                                             continue loop41;
                                          }
                                       }
                                    }
                                    addr279:
                                 }
                                 while(true)
                                 {
                                    §§push(1);
                                    if(!(_loc47_ && param3))
                                    {
                                       _loc17_ = §§pop();
                                       if(_loc46_ || param1)
                                       {
                                          if(true)
                                          {
                                             break;
                                          }
                                          §§goto(addr262);
                                       }
                                       §§goto(addr267);
                                    }
                                    else
                                    {
                                       §§goto(addr279);
                                    }
                                 }
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
                                       addr330:
                                       while(true)
                                       {
                                          addr314:
                                          while(true)
                                          {
                                             param1.§8!J§ = b2Manifold.§0!&§;
                                             continue loop0;
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr312);
                              }
                              §§goto(addr331);
                           }
                        }
                        §§goto(addr220);
                     }
                     §§goto(addr222);
                  }
                  §§goto(addr185);
               }
               addr181:
               return;
            }
            §§goto(addr164);
         }
         addr120:
      }
      
      public static function §-!%§(param1:b2Manifold, param2:b2CircleShape, param3:b2Transform, param4:b2CircleShape, param5:b2Transform) : void
      {
         var _loc16_:Boolean = true;
         var _loc17_:Boolean = false;
         var _loc6_:b2Mat22 = null;
         var _loc7_:b2Vec2 = null;
         if(_loc16_)
         {
            param1.§!$§ = 0;
         }
         _loc6_ = param3.R;
         _loc7_ = param2.§[I§;
         §§push(param3.position.x);
         if(!(_loc17_ && param3))
         {
            §§push(_loc6_.col1.x);
            if(!(_loc17_ && b2Collision))
            {
               §§push(_loc7_.x);
               if(!_loc17_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc16_)
                  {
                     addr76:
                     §§push(_loc6_.col2.x);
                     if(!(_loc17_ && param2))
                     {
                        addr72:
                        §§push(§§pop() * _loc7_.y);
                     }
                     §§push(§§pop() + (§§pop() + §§pop()));
                     if(!_loc17_)
                     {
                        addr79:
                        §§push(Number(§§pop()));
                     }
                     var _loc8_:* = §§pop();
                     §§push(param3.position.y);
                     if(_loc16_ || param1)
                     {
                        §§push(_loc6_.col1.y);
                        if(_loc16_ || param3)
                        {
                           §§push(_loc7_.x);
                           if(_loc16_ || param1)
                           {
                              addr127:
                              §§push(§§pop() * §§pop());
                              if(_loc16_)
                              {
                                 §§push(_loc6_.col2.y);
                                 if(_loc16_ || param1)
                                 {
                                    §§push(§§pop() * _loc7_.y);
                                 }
                              }
                              §§push(§§pop() + §§pop());
                              if(_loc16_)
                              {
                                 addr131:
                                 var _loc9_:Number = §§pop();
                                 _loc6_ = param5.R;
                                 _loc7_ = param4.§[I§;
                                 §§push(param5.position.x);
                                 if(_loc16_ || param3)
                                 {
                                    §§push(_loc6_.col1.x);
                                    if(_loc16_ || b2Collision)
                                    {
                                       §§push(_loc7_.x);
                                       if(_loc16_)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(_loc16_)
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
                                          if(!(_loc17_ && param3))
                                          {
                                             addr184:
                                             §§push(Number(§§pop()));
                                          }
                                          var _loc10_:* = §§pop();
                                          §§push(param5.position.y);
                                          if(_loc16_)
                                          {
                                             §§push(_loc6_.col1.y);
                                             if(!(_loc17_ && param3))
                                             {
                                                §§push(_loc7_.x);
                                                if(!_loc17_)
                                                {
                                                   addr237:
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc16_ || b2Collision)
                                                   {
                                                      §§push(_loc6_.col2.y);
                                                      if(_loc16_ || param1)
                                                      {
                                                         §§push(§§pop() * _loc7_.y);
                                                      }
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                   if(_loc16_)
                                                   {
                                                      addr241:
                                                      var _loc11_:Number = §§pop();
                                                      §§push(_loc10_);
                                                      if(!(_loc17_ && param2))
                                                      {
                                                         §§push(§§pop() - _loc8_);
                                                         if(_loc16_ || b2Collision)
                                                         {
                                                            addr259:
                                                            §§push(Number(§§pop()));
                                                         }
                                                         var _loc12_:* = §§pop();
                                                         §§push(_loc11_);
                                                         if(_loc16_)
                                                         {
                                                            §§push(§§pop() - _loc9_);
                                                            if(_loc16_)
                                                            {
                                                               addr268:
                                                               §§push(Number(§§pop()));
                                                            }
                                                            var _loc13_:* = §§pop();
                                                            §§push(_loc12_);
                                                            if(!_loc17_)
                                                            {
                                                               §§push(_loc12_);
                                                               if(_loc16_ || param1)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(_loc16_)
                                                                  {
                                                                     addr284:
                                                                     §§push(_loc13_);
                                                                     if(!(_loc17_ && param1))
                                                                     {
                                                                        addr294:
                                                                        §§push(§§pop() + §§pop() * _loc13_);
                                                                        if(!(_loc17_ && b2Collision))
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                     }
                                                                     §§goto(addr294);
                                                                  }
                                                                  var _loc14_:* = §§pop();
                                                                  var _loc15_:Number = param2.§@s§ + param4.§@s§;
                                                                  if(_loc16_ || param3)
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
                                                                           param1.§8!J§ = b2Manifold.§4A§;
                                                                           loop1:
                                                                           while(true)
                                                                           {
                                                                              param1.m_localPoint.SetV(param2.§[I§);
                                                                              while(true)
                                                                              {
                                                                                 param1.§9]§.§3a§();
                                                                                 loop3:
                                                                                 while(_loc16_)
                                                                                 {
                                                                                    param1.§!$§ = 1;
                                                                                    while(_loc16_ || b2Collision)
                                                                                    {
                                                                                       param1.§<s§[0].m_localPoint.SetV(param4.§[I§);
                                                                                       loop5:
                                                                                       while(!(_loc17_ && b2Collision))
                                                                                       {
                                                                                          if(!(_loc17_ && param3))
                                                                                          {
                                                                                             if(_loc16_ || param2)
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   param1.§<s§[0].m_id.key = 0;
                                                                                                   if(!_loc17_)
                                                                                                   {
                                                                                                      if(_loc16_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      continue loop3;
                                                                                                   }
                                                                                                   continue loop5;
                                                                                                }
                                                                                                return;
                                                                                                continue;
                                                                                             }
                                                                                             continue loop0;
                                                                                          }
                                                                                          continue loop1;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     return;
                                                                  }
                                                                  §§goto(addr366);
                                                               }
                                                               §§goto(addr294);
                                                            }
                                                            §§goto(addr284);
                                                         }
                                                         §§goto(addr268);
                                                      }
                                                      §§goto(addr259);
                                                   }
                                                   §§goto(addr241);
                                                }
                                                §§push(§§pop() + §§pop());
                                             }
                                             §§goto(addr237);
                                          }
                                          §§goto(addr241);
                                       }
                                       §§goto(addr175);
                                    }
                                    §§goto(addr167);
                                 }
                                 §§goto(addr184);
                              }
                              §§goto(addr131);
                           }
                           §§push(§§pop() + §§pop());
                        }
                        §§goto(addr127);
                     }
                     §§goto(addr131);
                  }
                  §§goto(addr76);
               }
               §§goto(addr72);
            }
            §§goto(addr76);
         }
         §§goto(addr79);
      }
      
      public static function §3s§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2CircleShape, param5:b2Transform) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfuscation" for better results.
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public static function §[!K§(param1:b2AABB, param2:b2AABB) : Boolean
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc3_:b2Vec2 = param2.§!!C§;
         var _loc4_:b2Vec2 = param1.§<0§;
         §§push(_loc3_.x);
         if(!(_loc10_ && b2Collision))
         {
            §§push(§§pop() - _loc4_.x);
            if(_loc9_ || _loc3_)
            {
               addr43:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            §§push(_loc3_.y);
            if(_loc9_)
            {
               §§push(§§pop() - _loc4_.y);
               if(_loc9_)
               {
                  addr54:
                  §§push(Number(§§pop()));
               }
               var _loc6_:* = §§pop();
               _loc3_ = param1.§!!C§;
               _loc4_ = param2.§<0§;
               §§push(_loc3_.x);
               if(_loc9_ || _loc3_)
               {
                  §§push(§§pop() - _loc4_.x);
                  if(!_loc10_)
                  {
                     addr78:
                     §§push(Number(§§pop()));
                  }
                  var _loc7_:* = §§pop();
                  §§push(_loc3_.y);
                  if(_loc9_ || _loc3_)
                  {
                     §§push(§§pop() - _loc4_.y);
                     if(!(_loc10_ && param2))
                     {
                        addr99:
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
                                       loop4:
                                       while(true)
                                       {
                                          §§pop();
                                          addr256:
                                          while(true)
                                          {
                                             §§push(_loc6_);
                                             addr231:
                                             while(true)
                                             {
                                                §§push(0);
                                                addr232:
                                                while(true)
                                                {
                                                   §§push(§§pop() > §§pop());
                                                   addr233:
                                                   while(!_loc10_)
                                                   {
                                                   }
                                                   continue loop4;
                                                }
                                             }
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          loop10:
                                          while(true)
                                          {
                                             §§push(_loc7_);
                                             loop11:
                                             while(_loc9_)
                                             {
                                                §§push(0);
                                                while(!(_loc10_ && b2Collision))
                                                {
                                                   §§push(§§pop() > §§pop());
                                                   loop13:
                                                   while(_loc9_ || _loc3_)
                                                   {
                                                      §§push(§§pop());
                                                      if(!_loc10_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            while(true)
                                                            {
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(!(_loc10_ && param1))
                                                                     {
                                                                        addr173:
                                                                        if(_loc10_ && _loc3_)
                                                                        {
                                                                           while(_loc9_ || _loc3_)
                                                                           {
                                                                              §§push(_loc8_);
                                                                              if(_loc9_)
                                                                              {
                                                                                 continue loop0;
                                                                              }
                                                                              continue loop11;
                                                                              §§goto(addr173);
                                                                           }
                                                                           continue loop10;
                                                                           addr221:
                                                                        }
                                                                        if(_loc10_)
                                                                        {
                                                                           addr237:
                                                                           §§push(false);
                                                                           break loop13;
                                                                        }
                                                                        §§push(false);
                                                                     }
                                                                     else
                                                                     {
                                                                        if(_loc10_ && param1)
                                                                        {
                                                                           break;
                                                                        }
                                                                        addr109:
                                                                        §§push(true);
                                                                        if(!(_loc10_ && b2Collision))
                                                                        {
                                                                           continue;
                                                                        }
                                                                     }
                                                                     if(!_loc10_)
                                                                     {
                                                                        return §§pop();
                                                                     }
                                                                     continue loop13;
                                                                  }
                                                                  §§goto(addr109);
                                                               }
                                                               §§goto(addr256);
                                                            }
                                                            addr164:
                                                         }
                                                         while(_loc9_)
                                                         {
                                                            §§pop();
                                                            §§goto(addr221);
                                                         }
                                                         continue loop2;
                                                      }
                                                      continue loop3;
                                                   }
                                                   return §§pop();
                                                }
                                                continue loop1;
                                             }
                                             §§goto(addr231);
                                          }
                                       }
                                       §§goto(addr237);
                                    }
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr249);
                  }
                  §§goto(addr99);
               }
               §§goto(addr78);
            }
            §§goto(addr54);
         }
         §§goto(addr43);
      }
   }
}
