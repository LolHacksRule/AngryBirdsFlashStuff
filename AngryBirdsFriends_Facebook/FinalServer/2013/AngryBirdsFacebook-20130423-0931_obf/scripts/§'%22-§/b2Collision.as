package §'"-§
{
   import §!"3§.*;
   import §,"[§.*;
   import §6!^§.*;
   
   use namespace b2internal;
   
   public class b2Collision
   {
      
      public static const b2_nullFeature:uint = 255;
      
      private static var §"!'§:Vector.<§^!`§>;
      
      private static var s_clipPoints1:Vector.<§^!`§>;
      
      private static var s_clipPoints2:Vector.<§^!`§>;
      
      private static var §'"2§:Vector.<int>;
      
      private static var §=P§:Vector.<int>;
      
      private static var §=D§:b2Vec2;
      
      private static var §6Q§:b2Vec2;
      
      private static var §=x§:b2Vec2;
      
      private static var §2H§:b2Vec2;
      
      private static var §]!E§:b2Vec2;
      
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
               §"!'§ = §>c§();
               while(true)
               {
                  s_clipPoints1 = §>c§();
                  while(true)
                  {
                     s_clipPoints2 = §>c§();
                     while(true)
                     {
                        §'"2§ = new Vector.<int>(1);
                        while(true)
                        {
                           §=P§ = new Vector.<int>(1);
                           loop5:
                           while(true)
                           {
                              §=D§ = new b2Vec2();
                              addr147:
                              while(!_loc2_)
                              {
                                 if(_loc1_ || b2Collision)
                                 {
                                    continue loop5;
                                 }
                              }
                              continue loop0;
                           }
                        }
                     }
                     if(!(_loc1_ || _loc1_))
                     {
                        continue;
                     }
                     §=x§ = new b2Vec2();
                     §§goto(addr126);
                  }
               }
            }
         }
         while(true)
         {
            §6Q§ = new b2Vec2();
            §§goto(addr132);
         }
      }
      
      public function b2Collision()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super();
         }
      }
      
      public static function §0L§(param1:Vector.<§^!`§>, param2:Vector.<§^!`§>, param3:b2Vec2, param4:Number) : int
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc5_:§^!`§ = null;
         var _loc6_:int = 0;
         var _loc7_:b2Vec2 = null;
         var _loc9_:* = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:b2Vec2 = null;
         var _loc13_:§^!`§ = null;
         if(!_loc15_)
         {
            _loc6_ = 0;
         }
         _loc7_ = (_loc5_ = param2[0]).v;
         var _loc8_:b2Vec2 = (_loc5_ = param2[1]).v;
         if(!_loc15_)
         {
            §§push(param3.x);
            if(!_loc15_)
            {
               §§push(_loc7_.x);
               if(!_loc15_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc14_ || b2Collision)
                  {
                     §§push(param3.y);
                     if(!(_loc15_ && param1))
                     {
                        §§push(_loc7_.y);
                        if(!(_loc15_ && param1))
                        {
                           §§push(§§pop() * §§pop());
                           if(!_loc15_)
                           {
                              addr95:
                              §§push(§§pop() + §§pop());
                              if(!(_loc15_ && b2Collision))
                              {
                                 §§push(param4);
                                 if(_loc14_ || param1)
                                 {
                                    §§push(§§pop() - §§pop());
                                    if(_loc14_)
                                    {
                                       addr114:
                                       §§push(Number(§§pop()));
                                       if(_loc14_ || param2)
                                       {
                                          _loc9_ = §§pop();
                                          addr123:
                                          §§push(param3.x);
                                          if(!_loc15_)
                                          {
                                             addr127:
                                             §§push(_loc8_.x);
                                             if(_loc14_)
                                             {
                                                addr131:
                                                §§push(§§pop() * §§pop());
                                                if(!_loc15_)
                                                {
                                                   addr134:
                                                   §§push(param3.y);
                                                   if(_loc14_)
                                                   {
                                                      addr138:
                                                      addr140:
                                                      §§push(§§pop() * _loc8_.y);
                                                      if(!_loc14_)
                                                      {
                                                      }
                                                      addr147:
                                                      §§push(§§pop() - §§pop());
                                                      if(!_loc15_)
                                                      {
                                                         addr151:
                                                         var _loc10_:Number = §§pop();
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
                                                                        addr255:
                                                                        while(true)
                                                                        {
                                                                        }
                                                                     }
                                                                     addr245:
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
                                                                                 if(_loc14_ || param1)
                                                                                 {
                                                                                    param1[_loc6_++].Set(param2[1]);
                                                                                    loop7:
                                                                                    while(true)
                                                                                    {
                                                                                       addr155:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc9_);
                                                                                          if(_loc14_)
                                                                                          {
                                                                                             §§push(_loc10_);
                                                                                             if(_loc14_)
                                                                                             {
                                                                                                if(_loc14_ || param2)
                                                                                                {
                                                                                                   if(_loc14_)
                                                                                                   {
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      if(_loc14_)
                                                                                                      {
                                                                                                         if(!_loc14_)
                                                                                                         {
                                                                                                            continue loop0;
                                                                                                         }
                                                                                                         §§push(0);
                                                                                                         if(_loc14_)
                                                                                                         {
                                                                                                            if(§§pop() < §§pop())
                                                                                                            {
                                                                                                               if(!(_loc15_ && param3))
                                                                                                               {
                                                                                                                  if(!_loc14_)
                                                                                                                  {
                                                                                                                     continue loop7;
                                                                                                                  }
                                                                                                                  if(_loc14_)
                                                                                                                  {
                                                                                                                     §§push(_loc9_);
                                                                                                                     if(_loc14_)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     addr215:
                                                                                                                     _loc11_ = §§pop();
                                                                                                                     addr214:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(false)
                                                                                                                        {
                                                                                                                           continue loop4;
                                                                                                                        }
                                                                                                                        §§push(_loc12_ = (_loc5_ = param1[_loc6_]).v);
                                                                                                                        §§push(_loc7_.x);
                                                                                                                        if(!(_loc15_ && b2Collision))
                                                                                                                        {
                                                                                                                           §§push(_loc11_);
                                                                                                                           if(_loc14_ || b2Collision)
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
                                                                                                                        if(_loc14_ || param1)
                                                                                                                        {
                                                                                                                           §§push(_loc12_);
                                                                                                                           §§push(_loc7_.y);
                                                                                                                           if(!(_loc15_ && b2Collision))
                                                                                                                           {
                                                                                                                              §§push(_loc11_);
                                                                                                                              if(_loc14_ || b2Collision)
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
                                                                                                                              addr338:
                                                                                                                              if(_loc14_)
                                                                                                                              {
                                                                                                                                 _loc5_.id = _loc13_.id;
                                                                                                                                 if(!_loc14_)
                                                                                                                                 {
                                                                                                                                 }
                                                                                                                                 §§goto(addr379);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              _loc13_ = param2[1];
                                                                                                                              if(_loc14_ || param1)
                                                                                                                              {
                                                                                                                                 _loc5_.id = _loc13_.id;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           _loc6_++;
                                                                                                                           §§goto(addr379);
                                                                                                                        }
                                                                                                                        §§goto(addr338);
                                                                                                                     }
                                                                                                                     addr216:
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr245);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr216);
                                                                                                            }
                                                                                                            addr379:
                                                                                                            return _loc6_;
                                                                                                         }
                                                                                                         addr211:
                                                                                                         §§push(§§pop() / §§pop());
                                                                                                         if(_loc14_)
                                                                                                         {
                                                                                                            §§goto(addr214);
                                                                                                         }
                                                                                                         §§goto(addr215);
                                                                                                      }
                                                                                                      break;
                                                                                                   }
                                                                                                   continue loop1;
                                                                                                }
                                                                                                continue loop6;
                                                                                             }
                                                                                             addr209:
                                                                                             §§goto(addr211);
                                                                                             §§push(§§pop() - _loc10_);
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       if(_loc15_)
                                                                                       {
                                                                                          continue loop5;
                                                                                       }
                                                                                       §§push(_loc9_);
                                                                                       if(!_loc15_)
                                                                                       {
                                                                                          §§goto(addr209);
                                                                                       }
                                                                                       §§goto(addr211);
                                                                                    }
                                                                                    addr241:
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              §§goto(addr241);
                                                                           }
                                                                           §§goto(addr155);
                                                                        }
                                                                        §§goto(addr255);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr215);
                                                      }
                                                      §§goto(addr151);
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                   if(!_loc15_)
                                                   {
                                                      §§goto(addr147);
                                                      §§push(param4);
                                                   }
                                                }
                                                §§goto(addr151);
                                             }
                                             §§goto(addr147);
                                          }
                                          §§goto(addr134);
                                       }
                                    }
                                    §§goto(addr127);
                                 }
                                 §§goto(addr138);
                              }
                              §§goto(addr114);
                           }
                           §§goto(addr131);
                        }
                        §§goto(addr140);
                     }
                     §§goto(addr95);
                  }
                  §§goto(addr127);
               }
               §§goto(addr95);
            }
            §§goto(addr151);
         }
         §§goto(addr123);
      }
      
      public static function §5"-§(param1:b2PolygonShape, param2:b2Transform, param3:int, param4:b2PolygonShape, param5:b2Transform) : Number
      {
         var _loc26_:Boolean = false;
         var _loc27_:Boolean = true;
         var _loc11_:b2Mat22 = null;
         var _loc12_:b2Vec2 = null;
         var _loc25_:* = NaN;
         §§push(param1.§4C§);
         if(_loc27_ || param3)
         {
            §§push(int(§§pop()));
         }
         var _loc6_:* = §§pop();
         var _loc7_:Vector.<b2Vec2> = param1.§["8§;
         var _loc8_:Vector.<b2Vec2> = param1.§0!3§;
         §§push(param4.§4C§);
         if(!(_loc26_ && param1))
         {
            §§push(int(§§pop()));
         }
         var _loc9_:* = §§pop();
         var _loc10_:Vector.<b2Vec2> = param4.§["8§;
         _loc11_ = param2.R;
         _loc12_ = _loc8_[param3];
         §§push(_loc11_.col1.x);
         if(!_loc26_)
         {
            §§push(_loc12_.x);
            if(!(_loc26_ && param3))
            {
               §§push(§§pop() * §§pop());
               if(_loc27_ || param1)
               {
                  §§push(_loc11_.col2.x);
                  if(!_loc26_)
                  {
                     addr95:
                     §§push(§§pop() * _loc12_.y);
                  }
                  §§push(§§pop() + §§pop());
                  if(!(_loc26_ && param1))
                  {
                     addr106:
                     §§push(Number(§§pop()));
                  }
                  var _loc13_:* = §§pop();
                  §§push(_loc11_.col1.y);
                  if(!(_loc26_ && param2))
                  {
                     §§push(_loc12_.x);
                     if(!(_loc26_ && param2))
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc27_)
                        {
                           §§push(_loc11_.col2.y);
                           if(_loc27_)
                           {
                              addr138:
                              §§push(§§pop() + §§pop() * _loc12_.y);
                              if(_loc27_ || b2Collision)
                              {
                                 addr146:
                                 §§push(Number(§§pop()));
                              }
                           }
                           §§goto(addr138);
                        }
                        var _loc14_:* = §§pop();
                        §§push((_loc11_ = param5.R).col1.x);
                        if(!(_loc26_ && param1))
                        {
                           §§push(_loc13_);
                           if(_loc27_)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc27_ || param1)
                              {
                                 §§push(_loc11_.col1.y);
                                 if(!_loc26_)
                                 {
                                    addr178:
                                    §§push(§§pop() * _loc14_);
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(!(_loc26_ && b2Collision))
                                 {
                                    addr188:
                                    §§push(Number(§§pop()));
                                 }
                                 var _loc15_:* = §§pop();
                                 §§push(_loc11_.col2.x);
                                 if(!_loc26_)
                                 {
                                    §§push(_loc13_);
                                    if(_loc27_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(!_loc26_)
                                       {
                                          addr201:
                                          §§push(_loc11_.col2.y);
                                          if(_loc27_)
                                          {
                                             addr208:
                                             §§push(§§pop() + §§pop() * _loc14_);
                                             if(!_loc26_)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                          }
                                          §§goto(addr208);
                                       }
                                       var _loc16_:* = §§pop();
                                       var _loc17_:* = 0;
                                       var _loc18_:Number = Number.MAX_VALUE;
                                       var _loc19_:int = 0;
                                       while(_loc19_ < _loc9_)
                                       {
                                          §§push((_loc12_ = _loc10_[_loc19_]).x);
                                          if(!(_loc26_ && param3))
                                          {
                                             §§push(_loc15_);
                                             if(_loc27_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!_loc26_)
                                                {
                                                   §§push(_loc12_.y);
                                                   if(!_loc26_)
                                                   {
                                                      §§push(§§pop() * _loc16_);
                                                      if(_loc27_)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc27_ || param2)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            if(_loc27_)
                                                            {
                                                               §§push(§§pop());
                                                               if(_loc27_)
                                                               {
                                                                  addr265:
                                                                  _loc25_ = §§pop();
                                                                  if(!(_loc26_ && param1))
                                                                  {
                                                                     addr274:
                                                                     if(§§pop() < _loc18_)
                                                                     {
                                                                        if(_loc27_ || b2Collision)
                                                                        {
                                                                           §§push(_loc25_);
                                                                           if(_loc27_)
                                                                           {
                                                                              addr286:
                                                                              _loc18_ = §§pop();
                                                                              addr285:
                                                                              if(!_loc27_)
                                                                              {
                                                                              }
                                                                              _loc19_++;
                                                                              continue;
                                                                           }
                                                                           §§goto(addr286);
                                                                        }
                                                                        §§push(_loc19_);
                                                                        if(_loc27_)
                                                                        {
                                                                           §§push(int(§§pop()));
                                                                        }
                                                                        _loc17_ = §§pop();
                                                                        if(_loc26_ && b2Collision)
                                                                        {
                                                                           continue;
                                                                        }
                                                                     }
                                                                     §§goto(addr286);
                                                                  }
                                                                  §§goto(addr285);
                                                               }
                                                               §§goto(addr274);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr274);
                                                   }
                                                }
                                                §§goto(addr286);
                                             }
                                             §§goto(addr265);
                                          }
                                          §§goto(addr286);
                                       }
                                       _loc12_ = _loc7_[param3];
                                       _loc11_ = param2.R;
                                       §§push(param2.position.x);
                                       if(!(_loc26_ && b2Collision))
                                       {
                                          §§push(_loc11_.col1.x);
                                          if(!_loc26_)
                                          {
                                             §§push(_loc12_.x);
                                             if(!(_loc26_ && b2Collision))
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(_loc27_)
                                                {
                                                   addr360:
                                                   §§push(_loc11_.col2.x);
                                                   if(_loc27_)
                                                   {
                                                      addr356:
                                                      §§push(§§pop() * _loc12_.y);
                                                   }
                                                   §§push(§§pop() + (§§pop() + §§pop()));
                                                   if(!_loc26_)
                                                   {
                                                      addr363:
                                                      §§push(Number(§§pop()));
                                                   }
                                                   var _loc20_:* = §§pop();
                                                   §§push(param2.position.y);
                                                   if(_loc27_ || b2Collision)
                                                   {
                                                      §§push(_loc11_.col1.y);
                                                      if(_loc27_ || b2Collision)
                                                      {
                                                         §§push(_loc12_.x);
                                                         if(_loc27_ || param3)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc27_ || b2Collision)
                                                            {
                                                               addr411:
                                                               §§push(_loc11_.col2.y);
                                                               if(_loc27_)
                                                               {
                                                                  addr407:
                                                                  §§push(§§pop() * _loc12_.y);
                                                               }
                                                               §§push(§§pop() + (§§pop() + §§pop()));
                                                               if(_loc27_)
                                                               {
                                                                  addr415:
                                                                  var _loc21_:Number = §§pop();
                                                                  _loc12_ = _loc10_[_loc17_];
                                                                  _loc11_ = param5.R;
                                                                  §§push(param5.position.x);
                                                                  if(!_loc26_)
                                                                  {
                                                                     §§push(_loc11_.col1.x);
                                                                     if(!(_loc26_ && param3))
                                                                     {
                                                                        §§push(_loc12_.x);
                                                                        if(_loc27_)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(!(_loc26_ && param1))
                                                                           {
                                                                              addr452:
                                                                              §§push(_loc11_.col2.x);
                                                                              if(_loc27_)
                                                                              {
                                                                                 addr460:
                                                                                 §§push(§§pop() + §§pop() * _loc12_.y);
                                                                              }
                                                                              §§goto(addr460);
                                                                           }
                                                                           §§push(§§pop() + §§pop());
                                                                           if(!(_loc26_ && b2Collision))
                                                                           {
                                                                              addr470:
                                                                              var _loc22_:* = Number(§§pop());
                                                                              §§push(param5.position.y);
                                                                              if(!_loc26_)
                                                                              {
                                                                                 §§push(_loc11_.col1.y);
                                                                                 if(_loc27_)
                                                                                 {
                                                                                    §§push(_loc12_.x);
                                                                                    if(_loc27_)
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(_loc27_ || param1)
                                                                                       {
                                                                                          addr493:
                                                                                          §§push(_loc11_.col2.y);
                                                                                          if(!(_loc26_ && b2Collision))
                                                                                          {
                                                                                             addr506:
                                                                                             §§push(§§pop() + §§pop() * _loc12_.y);
                                                                                          }
                                                                                          §§goto(addr506);
                                                                                       }
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(!_loc26_)
                                                                                       {
                                                                                          addr511:
                                                                                          var _loc23_:* = Number(§§pop());
                                                                                          if(!_loc26_)
                                                                                          {
                                                                                             §§push(_loc22_);
                                                                                             if(!_loc26_)
                                                                                             {
                                                                                                §§push(_loc20_);
                                                                                                if(_loc27_ || param1)
                                                                                                {
                                                                                                   §§push(§§pop() - §§pop());
                                                                                                   if(!_loc26_)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      if(_loc27_)
                                                                                                      {
                                                                                                         _loc22_ = §§pop();
                                                                                                         if(_loc27_ || param3)
                                                                                                         {
                                                                                                            §§push(_loc23_);
                                                                                                            if(_loc27_ || param3)
                                                                                                            {
                                                                                                               addr547:
                                                                                                               §§push(_loc21_);
                                                                                                               if(!(_loc26_ && param3))
                                                                                                               {
                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                  if(!_loc26_)
                                                                                                                  {
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     if(_loc27_)
                                                                                                                     {
                                                                                                                        _loc23_ = §§pop();
                                                                                                                        addr562:
                                                                                                                        §§push(_loc22_);
                                                                                                                        if(!_loc26_)
                                                                                                                        {
                                                                                                                           §§goto(addr565);
                                                                                                                        }
                                                                                                                        §§goto(addr607);
                                                                                                                     }
                                                                                                                     addr565:
                                                                                                                     §§push(_loc13_);
                                                                                                                     if(_loc27_ || param2)
                                                                                                                     {
                                                                                                                        addr583:
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        if(!(_loc26_ && param2))
                                                                                                                        {
                                                                                                                           addr591:
                                                                                                                           §§push(_loc23_);
                                                                                                                           if(_loc27_)
                                                                                                                           {
                                                                                                                              §§goto(addr594);
                                                                                                                           }
                                                                                                                           §§goto(addr603);
                                                                                                                        }
                                                                                                                        §§goto(addr607);
                                                                                                                     }
                                                                                                                     addr594:
                                                                                                                     §§push(§§pop() * _loc14_);
                                                                                                                     if(!(_loc26_ && b2Collision))
                                                                                                                     {
                                                                                                                        addr603:
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                        if(_loc27_)
                                                                                                                        {
                                                                                                                           addr607:
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                        }
                                                                                                                        §§goto(addr607);
                                                                                                                     }
                                                                                                                     var _loc24_:* = §§pop();
                                                                                                                     return §§pop();
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr583);
                                                                                                            }
                                                                                                            §§goto(addr591);
                                                                                                         }
                                                                                                         §§goto(addr562);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr547);
                                                                                                }
                                                                                                §§goto(addr583);
                                                                                             }
                                                                                             §§goto(addr607);
                                                                                          }
                                                                                          §§goto(addr562);
                                                                                       }
                                                                                       §§goto(addr511);
                                                                                    }
                                                                                    §§goto(addr506);
                                                                                 }
                                                                                 §§goto(addr493);
                                                                              }
                                                                              §§goto(addr511);
                                                                           }
                                                                           §§goto(addr470);
                                                                        }
                                                                        §§goto(addr460);
                                                                     }
                                                                     §§goto(addr452);
                                                                  }
                                                                  §§goto(addr470);
                                                               }
                                                               §§goto(addr415);
                                                            }
                                                            §§goto(addr411);
                                                         }
                                                         §§goto(addr407);
                                                      }
                                                      §§goto(addr411);
                                                   }
                                                   §§goto(addr415);
                                                }
                                                §§goto(addr360);
                                             }
                                             §§goto(addr356);
                                          }
                                          §§goto(addr360);
                                       }
                                       §§goto(addr363);
                                    }
                                    §§goto(addr208);
                                 }
                                 §§goto(addr201);
                              }
                              §§goto(addr188);
                           }
                           §§goto(addr178);
                        }
                        §§goto(addr188);
                     }
                     §§goto(addr138);
                  }
                  §§goto(addr146);
               }
               §§goto(addr106);
            }
            §§goto(addr95);
         }
         §§goto(addr106);
      }
      
      public static function §5;§(param1:Vector.<int>, param2:b2PolygonShape, param3:b2Transform, param4:b2PolygonShape, param5:b2Transform) : Number
      {
         var _loc26_:Boolean = false;
         var _loc27_:Boolean = true;
         var _loc8_:b2Vec2 = null;
         var _loc9_:b2Mat22 = null;
         var _loc22_:* = 0;
         var _loc23_:* = NaN;
         var _loc24_:* = 0;
         var _loc25_:* = NaN;
         §§push(param2.§4C§);
         if(!_loc26_)
         {
            §§push(int(§§pop()));
         }
         var _loc6_:* = §§pop();
         var _loc7_:Vector.<b2Vec2> = param2.§0!3§;
         _loc9_ = param5.R;
         _loc8_ = param4.§1!F§;
         §§push(param5.position.x);
         if(_loc27_)
         {
            §§push(_loc9_.col1.x);
            if(!_loc26_)
            {
               §§push(_loc8_.x);
               if(!_loc26_)
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc26_ && param1))
                  {
                     addr80:
                     §§push(_loc9_.col2.x);
                     if(_loc27_)
                     {
                        addr76:
                        §§push(§§pop() * _loc8_.y);
                     }
                     §§push(§§pop() + (§§pop() + §§pop()));
                     if(!_loc26_)
                     {
                        addr83:
                        §§push(Number(§§pop()));
                     }
                     var _loc10_:* = §§pop();
                     §§push(param5.position.y);
                     if(!(_loc26_ && param2))
                     {
                        §§push(_loc9_.col1.y);
                        if(_loc27_ || param1)
                        {
                           §§push(_loc8_.x);
                           if(_loc27_ || param2)
                           {
                              §§push(§§pop() * §§pop());
                              if(!(_loc26_ && param3))
                              {
                                 addr122:
                                 §§push(_loc9_.col2.y);
                                 if(_loc27_ || b2Collision)
                                 {
                                    addr132:
                                    §§push(§§pop() * _loc8_.y);
                                 }
                                 §§push(§§pop() + §§pop());
                              }
                              §§push(§§pop() + §§pop());
                              if(!_loc26_)
                              {
                                 addr139:
                                 §§push(Number(§§pop()));
                              }
                              var _loc11_:* = §§pop();
                              _loc9_ = param3.R;
                              _loc8_ = param2.§1!F§;
                              if(_loc27_)
                              {
                                 §§push(_loc10_);
                                 if(!(_loc26_ && b2Collision))
                                 {
                                    §§push(param3.position);
                                    if(!_loc26_)
                                    {
                                       §§push(§§pop().x);
                                       if(!(_loc26_ && param2))
                                       {
                                          §§push(_loc9_.col1);
                                          if(_loc27_ || param3)
                                          {
                                             §§push(§§pop().x);
                                             if(!_loc26_)
                                             {
                                                §§push(_loc8_.x);
                                                if(!(_loc26_ && param1))
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(!(_loc26_ && param3))
                                                   {
                                                      §§push(_loc9_.col2);
                                                      if(!_loc26_)
                                                      {
                                                         §§push(§§pop().x);
                                                         if(_loc27_ || b2Collision)
                                                         {
                                                            §§push(_loc8_.y);
                                                            if(_loc27_ || param3)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(!_loc26_)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  if(!(_loc26_ && param2))
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     if(_loc27_)
                                                                     {
                                                                        §§push(§§pop() - §§pop());
                                                                        if(_loc27_ || param2)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           if(!(_loc26_ && param3))
                                                                           {
                                                                              _loc10_ = §§pop();
                                                                              if(!(_loc26_ && b2Collision))
                                                                              {
                                                                                 §§push(_loc11_);
                                                                                 if(!(_loc26_ && param3))
                                                                                 {
                                                                                    addr267:
                                                                                    §§push(param3.position.y);
                                                                                    if(!(_loc26_ && param3))
                                                                                    {
                                                                                       addr277:
                                                                                       §§push(_loc9_.col1);
                                                                                       if(_loc27_)
                                                                                       {
                                                                                          addr281:
                                                                                          §§push(§§pop().y);
                                                                                          if(!(_loc26_ && param3))
                                                                                          {
                                                                                             addr289:
                                                                                             §§push(_loc8_.x);
                                                                                             if(_loc27_)
                                                                                             {
                                                                                                addr293:
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(!_loc26_)
                                                                                                {
                                                                                                   addr296:
                                                                                                   §§push(_loc9_.col2.y);
                                                                                                   if(!(_loc26_ && param3))
                                                                                                   {
                                                                                                      addr309:
                                                                                                      addr308:
                                                                                                      addr306:
                                                                                                      §§push(§§pop() + §§pop() * _loc8_.y);
                                                                                                      if(_loc26_)
                                                                                                      {
                                                                                                      }
                                                                                                      §§push(§§pop() + §§pop() * §§pop());
                                                                                                      if(!_loc26_)
                                                                                                      {
                                                                                                         addr350:
                                                                                                         §§push(Number(§§pop()));
                                                                                                      }
                                                                                                      var _loc12_:* = §§pop();
                                                                                                      §§push(_loc10_);
                                                                                                      if(_loc27_)
                                                                                                      {
                                                                                                         §§push(param3.R.col2.x);
                                                                                                         if(_loc27_)
                                                                                                         {
                                                                                                            addr386:
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            if(_loc27_ || param2)
                                                                                                            {
                                                                                                               §§push(_loc11_);
                                                                                                               if(_loc27_)
                                                                                                               {
                                                                                                                  §§push(§§pop() * param3.R.col2.y);
                                                                                                               }
                                                                                                            }
                                                                                                            var _loc13_:* = §§pop();
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
                                                                                                               if(!_loc26_)
                                                                                                               {
                                                                                                                  §§push(_loc12_);
                                                                                                                  if(_loc27_ || param3)
                                                                                                                  {
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     if(_loc27_)
                                                                                                                     {
                                                                                                                        §§push(_loc8_.y);
                                                                                                                        if(!_loc26_)
                                                                                                                        {
                                                                                                                           addr424:
                                                                                                                           §§push(§§pop() * _loc13_);
                                                                                                                           if(!_loc26_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              if(!(_loc26_ && param1))
                                                                                                                              {
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                 if(_loc27_ || param1)
                                                                                                                                 {
                                                                                                                                    addr444:
                                                                                                                                    §§push(§§pop());
                                                                                                                                    if(_loc27_)
                                                                                                                                    {
                                                                                                                                       addr447:
                                                                                                                                       _loc25_ = §§pop();
                                                                                                                                       addr463:
                                                                                                                                       if(!_loc26_)
                                                                                                                                       {
                                                                                                                                          addr450:
                                                                                                                                          §§push(_loc15_);
                                                                                                                                       }
                                                                                                                                       _loc15_ = §§pop();
                                                                                                                                       if(_loc27_ || param3)
                                                                                                                                       {
                                                                                                                                          addr471:
                                                                                                                                          §§push(_loc16_);
                                                                                                                                          if(_loc27_)
                                                                                                                                          {
                                                                                                                                             §§push(int(§§pop()));
                                                                                                                                          }
                                                                                                                                          _loc14_ = §§pop();
                                                                                                                                          if(_loc26_ && param1)
                                                                                                                                          {
                                                                                                                                             continue;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       _loc16_++;
                                                                                                                                       continue;
                                                                                                                                    }
                                                                                                                                    if(§§pop() > §§pop())
                                                                                                                                    {
                                                                                                                                       if(_loc27_ || param3)
                                                                                                                                       {
                                                                                                                                          §§push(_loc25_);
                                                                                                                                          if(_loc27_)
                                                                                                                                          {
                                                                                                                                             addr462:
                                                                                                                                             §§goto(addr463);
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                          }
                                                                                                                                          §§goto(addr463);
                                                                                                                                       }
                                                                                                                                       §§goto(addr471);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr463);
                                                                                                                              }
                                                                                                                              §§goto(addr444);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr447);
                                                                                                                     }
                                                                                                                     §§goto(addr450);
                                                                                                                  }
                                                                                                                  §§goto(addr424);
                                                                                                               }
                                                                                                               §§goto(addr462);
                                                                                                            }
                                                                                                            §§push(§5"-§(param2,param3,_loc14_,param4,param5));
                                                                                                            if(!(_loc26_ && b2Collision))
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                            }
                                                                                                            var _loc17_:* = §§pop();
                                                                                                            if(_loc27_ || param3)
                                                                                                            {
                                                                                                               §§push(_loc14_);
                                                                                                               if(_loc27_)
                                                                                                               {
                                                                                                                  §§push(§§pop() - 1);
                                                                                                                  if(!(_loc26_ && param1))
                                                                                                                  {
                                                                                                                     if(§§pop() >= 0)
                                                                                                                     {
                                                                                                                        addr534:
                                                                                                                        §§push(_loc14_);
                                                                                                                        if(!_loc26_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() - 1);
                                                                                                                           if(!(_loc26_ && param1))
                                                                                                                           {
                                                                                                                              §§push(int(§§pop()));
                                                                                                                              if(_loc26_ && b2Collision)
                                                                                                                              {
                                                                                                                              }
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              addr558:
                                                                                                                              §§push(int(§§pop()));
                                                                                                                              if(_loc26_ && param2)
                                                                                                                              {
                                                                                                                              }
                                                                                                                              addr567:
                                                                                                                              var _loc18_:* = §§pop();
                                                                                                                              §§push(§5"-§(param2,param3,_loc18_,param4,param5));
                                                                                                                              if(_loc27_)
                                                                                                                              {
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                              }
                                                                                                                              var _loc19_:* = §§pop();
                                                                                                                              if(_loc27_)
                                                                                                                              {
                                                                                                                                 §§push(_loc14_);
                                                                                                                                 if(!(_loc26_ && b2Collision))
                                                                                                                                 {
                                                                                                                                    §§push(1);
                                                                                                                                    if(!_loc26_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                       if(_loc27_)
                                                                                                                                       {
                                                                                                                                          if(§§pop() < _loc6_)
                                                                                                                                          {
                                                                                                                                             addr598:
                                                                                                                                             §§push(_loc14_);
                                                                                                                                             if(!(_loc26_ && b2Collision))
                                                                                                                                             {
                                                                                                                                                addr608:
                                                                                                                                                §§push(int(§§pop() + 1));
                                                                                                                                                if(_loc27_ || param3)
                                                                                                                                                {
                                                                                                                                                   addr625:
                                                                                                                                                   §§push(int(§§pop()));
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§push(0);
                                                                                                                                             if(!(_loc26_ && b2Collision))
                                                                                                                                             {
                                                                                                                                                §§goto(addr625);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          var _loc20_:* = §§pop();
                                                                                                                                          §§push(§5"-§(param2,param3,_loc20_,param4,param5));
                                                                                                                                          if(!_loc26_)
                                                                                                                                          {
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                          }
                                                                                                                                          var _loc21_:* = §§pop();
                                                                                                                                          if(!_loc26_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc19_);
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
                                                                                                                                                            addr1063:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc19_);
                                                                                                                                                               addr1048:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc21_);
                                                                                                                                                                  addr1049:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() > §§pop());
                                                                                                                                                                     addr1050:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc26_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop3;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         addr1062:
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!§§pop())
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc21_);
                                                                                                                                                            loop6:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc17_);
                                                                                                                                                               loop7:
                                                                                                                                                               while(_loc27_)
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop() <= §§pop())
                                                                                                                                                                  {
                                                                                                                                                                     param1[0] = _loc14_;
                                                                                                                                                                     loop8:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc26_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc17_);
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           loop9:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              loop10:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 loop11:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc24_);
                                                                                                                                                                                    loop12:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(-1);
                                                                                                                                                                                       loop13:
                                                                                                                                                                                       while(§§pop() != §§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc22_);
                                                                                                                                                                                          if(!_loc26_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!(_loc26_ && b2Collision))
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc27_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(1);
                                                                                                                                                                                                   if(!_loc26_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc26_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                      loop41:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc27_ || param2)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc6_);
                                                                                                                                                                                                            if(_loc27_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() < §§pop());
                                                                                                                                                                                                               if(!(_loc26_ && param1))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc26_ && param2)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     break loop12;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  if(§§pop())
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!(_loc26_ && param1))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc27_ || param3)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!(_loc26_ && param1))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc27_ || param3)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc22_);
                                                                                                                                                                                                                                 if(_loc27_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc27_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(1);
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                          loop27:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!_loc26_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc27_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(int(§§pop()));
                                                                                                                                                                                                                                                   if(_loc27_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr916:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(int(§§pop()));
                                                                                                                                                                                                                                                            addr917:
                                                                                                                                                                                                                                                            loop30:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!_loc26_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!_loc26_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     _loc14_ = §§pop();
                                                                                                                                                                                                                                                                     loop31:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        loop18:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(§5"-§(param2,param3,_loc14_,param4,param5));
                                                                                                                                                                                                                                                                           if(_loc26_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              loop25:
                                                                                                                                                                                                                                                                              while(_loc27_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr759:
                                                                                                                                                                                                                                                                                 §§push(_loc23_);
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(!_loc27_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       continue loop7;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    if(§§pop() <= §§pop())
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       param1[0] = _loc22_;
                                                                                                                                                                                                                                                                                       if(_loc27_ || param1)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(_loc27_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(_loc23_);
                                                                                                                                                                                                                                                                                             if(!_loc26_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(_loc27_ || param2)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(_loc26_ && b2Collision)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      continue loop25;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   if(_loc27_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(_loc27_ || b2Collision)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         return §§pop();
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1048);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§goto(addr944);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§goto(addr693);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr701);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§goto(addr943);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             addr942:
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr944);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       break;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    if(_loc27_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(_loc26_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          continue loop31;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       if(_loc26_ && b2Collision)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          break loop13;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       if(!_loc26_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(_loc27_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(_loc14_);
                                                                                                                                                                                                                                                                                             if(!(_loc26_ && b2Collision))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(_loc26_ && param3)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   continue loop30;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                if(_loc26_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(_loc27_ || param3)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         continue loop12;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      addr943:
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(§§pop() - 1);
                                                                                                                                                                                                                                                                                                         addr944:
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(!(_loc26_ && b2Collision))
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               addr951:
                                                                                                                                                                                                                                                                                                               §§push(int(§§pop()));
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§goto(addr958);
                                                                                                                                                                                                                                                                                                                  §§goto(addr951);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               addr952:
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   continue loop12;
                                                                                                                                                                                                                                                                                                   addr900:
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                if(!_loc26_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr798:
                                                                                                                                                                                                                                                                                                   §§push(int(§§pop()));
                                                                                                                                                                                                                                                                                                   if(_loc27_ || param2)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      _loc22_ = §§pop();
                                                                                                                                                                                                                                                                                                      addr806:
                                                                                                                                                                                                                                                                                                      loop21:
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(!_loc27_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            continue loop10;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§push(_loc17_);
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(!(_loc27_ || param3))
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(!_loc26_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(!_loc26_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        continue loop6;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     continue loop41;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  continue loop27;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               continue loop27;
                                                                                                                                                                                                                                                                                                               addr728:
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               _loc23_ = §§pop();
                                                                                                                                                                                                                                                                                                               continue loop21;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      continue loop11;
                                                                                                                                                                                                                                                                                                      addr806:
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         _loc24_ = §§pop();
                                                                                                                                                                                                                                                                                                         loop46:
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(_loc27_ || b2Collision)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(_loc20_);
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(!(_loc26_ && b2Collision))
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(int(§§pop()));
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        _loc22_ = §§pop();
                                                                                                                                                                                                                                                                                                                        continue loop46;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     addr997:
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               addr989:
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(_loc18_);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               addr1056:
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(int(§§pop()));
                                                                                                                                                                                                                                                                                                               addr1042:
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  _loc22_ = §§pop();
                                                                                                                                                                                                                                                                                                                  addr1043:
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(_loc26_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        break loop41;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§push(_loc19_);
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                        break loop18;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      addr1015:
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr958:
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(int(§§pop()));
                                                                                                                                                                                                                                                                                                      addr959:
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         _loc14_ = §§pop();
                                                                                                                                                                                                                                                                                                         addr960:
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            continue loop18;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   addr958:
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   _loc23_ = §§pop();
                                                                                                                                                                                                                                                                                                   addr979:
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(!(_loc26_ && param3))
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         continue loop10;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      addr1054:
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(-1);
                                                                                                                                                                                                                                                                                                         addr1055:
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            _loc24_ = §§pop();
                                                                                                                                                                                                                                                                                                            §§goto(addr1056);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr798);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1043);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr998);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr806);
                                                                                                                                                                                                                                                                                    §§goto(addr943);
                                                                                                                                                                                                                                                                                    §§goto(addr759);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(_loc27_ || param1)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       continue loop11;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr806);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              addr963:
                                                                                                                                                                                                                                                                              return §§pop();
                                                                                                                                                                                                                                                                              addr757:
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           if(_loc26_ && b2Collision)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              break;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                           §§goto(addr728);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           _loc23_ = §§pop();
                                                                                                                                                                                                                                                                           continue loop9;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     addr922:
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr989);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               addr932:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!_loc26_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(§§pop() - 1);
                                                                                                                                                                                                                                                                     while(_loc27_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(0);
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(§§pop() >= §§pop());
                                                                                                                                                                                                                                                                           addr939:
                                                                                                                                                                                                                                                                           while(!_loc26_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(!§§pop())
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(_loc6_);
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(_loc27_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(§§pop() - 1);
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§goto(addr958);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       addr957:
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1042);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 addr954:
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr942);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1050);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1036);
                                                                                                                                                                                                                                                                     addr935:
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1055);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr898:
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr917);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr977);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr935);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr890:
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr959);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr898);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              else
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr1014:
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1015);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr979);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr960);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr922);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  else
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(0);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr900);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr939);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr938);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr957);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1063);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr890);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr952);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr954);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr917);
                                                                                                                                                                                       }
                                                                                                                                                                                       while(!_loc26_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr932);
                                                                                                                                                                                          §§push(_loc22_);
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop8;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1062);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr963);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1014);
                                                                                                                                                               }
                                                                                                                                                               continue loop2;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1054);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                if(_loc26_ && param2)
                                                                                                                                                {
                                                                                                                                                   continue;
                                                                                                                                                }
                                                                                                                                                §§push(§§pop());
                                                                                                                                                if(!(_loc26_ && b2Collision))
                                                                                                                                                {
                                                                                                                                                   if(!_loc26_)
                                                                                                                                                   {
                                                                                                                                                      _loc17_ = §§pop();
                                                                                                                                                      §§goto(addr757);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1049);
                                                                                                                                                }
                                                                                                                                                §§goto(addr760);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr1063);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr608);
                                                                                                                              }
                                                                                                                              §§goto(addr598);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr567);
                                                                                                                        §§push(int(§§pop()));
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§push(_loc6_);
                                                                                                                        if(_loc27_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() - 1);
                                                                                                                        }
                                                                                                                        §§goto(addr567);
                                                                                                                     }
                                                                                                                     §§goto(addr567);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr558);
                                                                                                            }
                                                                                                            §§goto(addr534);
                                                                                                         }
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         if(!(_loc26_ && b2Collision))
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr386);
                                                                                                   }
                                                                                                   §§goto(addr309);
                                                                                                }
                                                                                                §§push(§§pop() + §§pop());
                                                                                                if(!_loc26_)
                                                                                                {
                                                                                                   addr315:
                                                                                                   §§push(§§pop() - §§pop());
                                                                                                   if(!_loc26_)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      if(!_loc26_)
                                                                                                      {
                                                                                                         _loc11_ = §§pop();
                                                                                                         addr322:
                                                                                                         §§push(_loc10_);
                                                                                                         if(!_loc26_)
                                                                                                         {
                                                                                                            addr325:
                                                                                                            §§push(param3.R.col1.x);
                                                                                                            if(!_loc26_)
                                                                                                            {
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               if(_loc27_)
                                                                                                               {
                                                                                                                  addr334:
                                                                                                                  §§push(_loc11_);
                                                                                                                  if(_loc27_ || param3)
                                                                                                                  {
                                                                                                                     addr342:
                                                                                                                     §§goto(addr309);
                                                                                                                     §§push(param3.R.col1.y);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr309);
                                                                                                            }
                                                                                                            §§goto(addr342);
                                                                                                         }
                                                                                                         §§goto(addr350);
                                                                                                      }
                                                                                                      §§goto(addr334);
                                                                                                   }
                                                                                                   §§goto(addr325);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr309);
                                                                                          }
                                                                                          §§goto(addr296);
                                                                                       }
                                                                                       §§goto(addr342);
                                                                                    }
                                                                                    §§goto(addr315);
                                                                                 }
                                                                                 §§goto(addr334);
                                                                              }
                                                                              §§goto(addr322);
                                                                           }
                                                                           §§goto(addr325);
                                                                        }
                                                                        §§goto(addr267);
                                                                     }
                                                                  }
                                                                  §§goto(addr309);
                                                               }
                                                               §§goto(addr293);
                                                            }
                                                            §§goto(addr308);
                                                         }
                                                         §§goto(addr309);
                                                      }
                                                   }
                                                   §§goto(addr296);
                                                }
                                                §§goto(addr306);
                                             }
                                             §§goto(addr289);
                                          }
                                          §§goto(addr281);
                                       }
                                       §§goto(addr277);
                                    }
                                    §§goto(addr267);
                                 }
                                 §§goto(addr325);
                              }
                              §§goto(addr322);
                           }
                           §§goto(addr132);
                        }
                        §§goto(addr122);
                     }
                     §§goto(addr139);
                  }
                  §§goto(addr80);
               }
               §§goto(addr76);
            }
            §§goto(addr80);
         }
         §§goto(addr83);
      }
      
      public static function §7">§(param1:Vector.<§^!`§>, param2:b2PolygonShape, param3:b2Transform, param4:int, param5:b2PolygonShape, param6:b2Transform) : void
      {
         var _loc24_:Boolean = false;
         var _loc25_:Boolean = true;
         var _loc12_:b2Mat22 = null;
         var _loc13_:b2Vec2 = null;
         var _loc20_:§^!`§ = null;
         var _loc23_:* = NaN;
         §§push(param2.§4C§);
         if(_loc25_ || param1)
         {
            §§push(int(§§pop()));
         }
         var _loc7_:* = §§pop();
         var _loc8_:Vector.<b2Vec2> = param2.§0!3§;
         §§push(param5.§4C§);
         if(!_loc24_)
         {
            §§push(int(§§pop()));
         }
         var _loc9_:* = §§pop();
         var _loc10_:Vector.<b2Vec2> = param5.§["8§;
         var _loc11_:Vector.<b2Vec2> = param5.§0!3§;
         _loc12_ = param3.R;
         _loc13_ = _loc8_[param4];
         §§push(_loc12_.col1.x);
         if(!_loc24_)
         {
            §§push(_loc13_.x);
            if(_loc25_ || param2)
            {
               addr104:
               §§push(§§pop() * §§pop());
               if(!_loc24_)
               {
                  §§push(_loc12_.col2.x);
                  if(!(_loc24_ && b2Collision))
                  {
                     §§push(§§pop() * _loc13_.y);
                  }
               }
               var _loc14_:* = Number(§§pop());
               §§push(_loc12_.col1.y);
               if(!_loc24_)
               {
                  §§push(_loc13_.x);
                  if(_loc25_ || param3)
                  {
                     §§push(§§pop() * §§pop());
                     if(_loc25_ || param3)
                     {
                        §§push(_loc12_.col2.y);
                        if(_loc25_ || param3)
                        {
                           addr141:
                           §§push(§§pop() + §§pop() * _loc13_.y);
                           if(!(_loc24_ && param3))
                           {
                              addr149:
                              §§push(Number(§§pop()));
                           }
                        }
                        §§goto(addr141);
                     }
                     var _loc15_:* = §§pop();
                     §§push((_loc12_ = param6.R).col1.x);
                     if(!_loc24_)
                     {
                        §§push(_loc14_);
                        if(_loc25_)
                        {
                           §§push(§§pop() * §§pop());
                           if(!(_loc24_ && param2))
                           {
                              addr171:
                              §§push(_loc12_.col1.y);
                              if(!(_loc24_ && param2))
                              {
                                 addr181:
                                 §§push(§§pop() * _loc15_);
                              }
                              §§push(§§pop() + §§pop());
                              if(!(_loc24_ && param1))
                              {
                                 addr191:
                                 §§push(Number(§§pop()));
                              }
                              var _loc16_:* = §§pop();
                              if(!_loc24_)
                              {
                                 §§push(_loc12_.col2.x);
                                 if(!_loc24_)
                                 {
                                    §§push(_loc14_);
                                    if(!_loc24_)
                                    {
                                       addr229:
                                       §§push(§§pop() * §§pop());
                                       if(!_loc24_)
                                       {
                                          §§push(_loc12_.col2.y);
                                          if(_loc25_)
                                          {
                                             §§push(§§pop() * _loc15_);
                                          }
                                       }
                                       _loc15_ = §§pop();
                                       if(!_loc24_)
                                       {
                                          addr236:
                                          §§push(_loc16_);
                                          if(!_loc24_)
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                          _loc14_ = §§pop();
                                          addr237:
                                          var _loc17_:* = 0;
                                          var _loc18_:* = Number(Number.MAX_VALUE);
                                          var _loc19_:int = 0;
                                          loop0:
                                          while(true)
                                          {
                                             §§push(_loc19_);
                                             if(_loc25_ || param3)
                                             {
                                                §§push(_loc9_);
                                                if(!(_loc24_ && param3))
                                                {
                                                   if(§§pop() >= §§pop())
                                                   {
                                                      §§push(_loc17_);
                                                      if(_loc25_ || b2Collision)
                                                      {
                                                         break;
                                                      }
                                                      addr376:
                                                      §§push(§§pop());
                                                   }
                                                   else
                                                   {
                                                      _loc13_ = _loc11_[_loc19_];
                                                      if(_loc25_)
                                                      {
                                                         §§push(_loc14_);
                                                         if(_loc25_ || param1)
                                                         {
                                                            §§push(_loc13_.x);
                                                            if(!_loc24_)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(_loc25_ || param2)
                                                               {
                                                                  §§push(_loc15_);
                                                                  if(!(_loc24_ && b2Collision))
                                                                  {
                                                                     addr310:
                                                                     §§push(§§pop() * _loc13_.y);
                                                                     if(!_loc24_)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        if(_loc25_ || param1)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           if(_loc25_)
                                                                           {
                                                                              addr326:
                                                                              §§push(§§pop());
                                                                              if(_loc25_)
                                                                              {
                                                                                 addr329:
                                                                                 _loc23_ = §§pop();
                                                                                 if(!(_loc24_ && param2))
                                                                                 {
                                                                                    addr338:
                                                                                    if(§§pop() < _loc18_)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc23_);
                                                                                          if(!(_loc24_ && param1))
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                addr348:
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc18_ = §§pop();
                                                                                                   addr349:
                                                                                                   loop2:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      addr263:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc19_);
                                                                                                         if(_loc25_ || param3)
                                                                                                         {
                                                                                                            §§push(int(§§pop()));
                                                                                                         }
                                                                                                         _loc17_ = §§pop();
                                                                                                         continue loop2;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             addr347:
                                                                                          }
                                                                                          §§goto(addr348);
                                                                                       }
                                                                                       addr339:
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       _loc19_++;
                                                                                       if(_loc25_)
                                                                                       {
                                                                                          if(_loc25_)
                                                                                          {
                                                                                             while(false)
                                                                                             {
                                                                                                §§goto(addr263);
                                                                                             }
                                                                                             continue loop0;
                                                                                             addr261:
                                                                                          }
                                                                                          §§goto(addr339);
                                                                                          §§goto(addr349);
                                                                                       }
                                                                                       §§goto(addr274);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr338);
                                                                           }
                                                                           §§goto(addr348);
                                                                        }
                                                                        §§goto(addr326);
                                                                     }
                                                                     §§goto(addr329);
                                                                  }
                                                                  §§goto(addr338);
                                                               }
                                                               §§goto(addr326);
                                                            }
                                                            §§goto(addr310);
                                                         }
                                                         §§goto(addr347);
                                                      }
                                                      §§goto(addr261);
                                                   }
                                                }
                                                var _loc21_:* = §§pop();
                                                if(_loc25_ || param2)
                                                {
                                                   §§push(1);
                                                   if(!_loc24_)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(!_loc24_)
                                                      {
                                                         if(§§pop() < _loc9_)
                                                         {
                                                            §§push(_loc21_);
                                                            if(_loc25_ || b2Collision)
                                                            {
                                                               addr404:
                                                               addr403:
                                                               §§push(int(§§pop() + 1));
                                                               if(!(_loc24_ && param3))
                                                               {
                                                                  addr412:
                                                               }
                                                               addr432:
                                                               var _loc22_:int = §§pop();
                                                               _loc20_ = param1[0];
                                                               _loc13_ = _loc10_[_loc21_];
                                                               _loc12_ = param6.R;
                                                               addr431:
                                                               if(_loc25_)
                                                               {
                                                                  §§push(_loc20_.v);
                                                                  loop9:
                                                                  while(true)
                                                                  {
                                                                     §§push(param6.position);
                                                                     addr629:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().x);
                                                                        addr630:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc12_.col1);
                                                                           addr632:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().x);
                                                                              addr633:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc13_.x);
                                                                                 addr635:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    addr636:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc12_.col2);
                                                                                       addr638:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop().x);
                                                                                          addr639:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc13_.y);
                                                                                             addr641:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                addr642:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   addr643:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      addr644:
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
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr481);
                                                            }
                                                            §§goto(addr412);
                                                         }
                                                         else
                                                         {
                                                            §§push(0);
                                                            if(_loc25_ || param2)
                                                            {
                                                               §§goto(addr431);
                                                            }
                                                            §§goto(addr432);
                                                         }
                                                      }
                                                      §§goto(addr404);
                                                   }
                                                   §§goto(addr403);
                                                }
                                                §§goto(addr404);
                                             }
                                             break;
                                          }
                                          §§goto(addr376);
                                          §§push(int(§§pop()));
                                       }
                                       §§goto(addr237);
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(_loc25_ || param2)
                                    {
                                       §§push(Number(§§pop()));
                                       if(!(_loc24_ && param1))
                                       {
                                          §§goto(addr229);
                                       }
                                    }
                                    §§goto(addr236);
                                 }
                                 §§goto(addr229);
                              }
                              §§goto(addr236);
                           }
                           §§goto(addr191);
                        }
                        §§goto(addr181);
                     }
                     §§goto(addr171);
                  }
                  §§goto(addr141);
               }
               §§goto(addr149);
            }
            §§push(§§pop() + §§pop());
            if(_loc25_ || param1)
            {
            }
         }
         §§goto(addr104);
      }
      
      private static function §>c§() : Vector.<§^!`§>
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Vector.<§^!`§> = new Vector.<§^!`§>(2);
         if(_loc3_ || _loc1_)
         {
            _loc1_[0] = new §^!`§();
         }
         do
         {
            _loc1_[1] = new §^!`§();
         }
         while(_loc2_);
         
         return _loc1_;
      }
      
      public static function §<!s§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2PolygonShape, param5:b2Transform) : void
      {
         var _loc46_:Boolean = true;
         var _loc47_:Boolean = false;
         var _loc6_:§^!`§ = null;
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
         if(!(_loc47_ && param2))
         {
            param1.§0,§ = 0;
         }
         var _loc7_:Number = param2.§0!_§ + param4.§0!_§;
         var _loc8_:* = 0;
         if(_loc46_)
         {
            §'"2§[0] = _loc8_;
         }
         §§push(§5;§(§'"2§,param2,param3,param4,param5));
         if(_loc46_ || b2Collision)
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         if(_loc46_ || param1)
         {
            §§push(int(§'"2§[0]));
            if(!(_loc47_ && b2Collision))
            {
               _loc8_ = §§pop();
               if(!(_loc47_ && b2Collision))
               {
                  addr120:
                  if(_loc9_ > _loc7_)
                  {
                     if(!_loc47_)
                     {
                        return;
                     }
                  }
               }
               §§push(0);
            }
            var _loc10_:* = §§pop();
            if(!(_loc47_ && param1))
            {
               §=P§[0] = _loc10_;
            }
            §§push(§5;§(§=P§,param4,param5,param2,param3));
            if(!(_loc47_ && param1))
            {
               §§push(Number(§§pop()));
            }
            var _loc11_:* = §§pop();
            if(!(_loc47_ && b2Collision))
            {
               _loc10_ = int(§=P§[0]);
               if(_loc46_)
               {
                  addr169:
                  §§push(_loc11_);
                  if(!(_loc47_ && param1))
                  {
                     if(§§pop() > _loc7_)
                     {
                        if(_loc46_)
                        {
                           return;
                        }
                        addr182:
                        §§push(0.98);
                        if(!_loc47_)
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
                        if(!(_loc47_ && b2Collision))
                        {
                           §§push(_loc11_);
                           §§push(_loc18_);
                           if(_loc46_ || b2Collision)
                           {
                              §§push(_loc9_);
                              if(!(_loc47_ && param1))
                              {
                                 §§push(§§pop() * §§pop());
                                 if(!(_loc47_ && param1))
                                 {
                                    addr225:
                                    §§push(§§pop() + _loc19_);
                                 }
                                 if(§§pop() > §§pop())
                                 {
                                    addr227:
                                    _loc12_ = param4;
                                    _loc13_ = param2;
                                    _loc14_ = param5;
                                    _loc15_ = param3;
                                    if(_loc46_)
                                    {
                                       §§push(_loc10_);
                                       if(!(_loc47_ && b2Collision))
                                       {
                                          §§push(int(§§pop()));
                                       }
                                       loop44:
                                       while(true)
                                       {
                                          _loc16_ = §§pop();
                                          loop45:
                                          while(true)
                                          {
                                             addr257:
                                             while(true)
                                             {
                                                param1.§<"@§ = b2Manifold.§?!Q§;
                                                addr262:
                                                while(true)
                                                {
                                                   if(_loc46_ || param3)
                                                   {
                                                      continue loop44;
                                                   }
                                                   continue loop45;
                                                }
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr255);
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
                                                addr314:
                                                while(true)
                                                {
                                                   param1.§<"@§ = b2Manifold.§[!7§;
                                                   while(true)
                                                   {
                                                      if(_loc46_)
                                                      {
                                                         §§push(0);
                                                         if(!(_loc47_ && param1))
                                                         {
                                                            if(!_loc47_)
                                                            {
                                                               _loc17_ = §§pop();
                                                               if(!_loc47_)
                                                               {
                                                                  break;
                                                               }
                                                               continue;
                                                            }
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
                                    while(false)
                                    {
                                       §§goto(addr314);
                                    }
                                 }
                                 §§goto(addr326);
                              }
                           }
                           §§goto(addr225);
                        }
                        §§goto(addr227);
                     }
                     §§goto(addr182);
                  }
                  §§goto(addr185);
               }
               §§goto(addr182);
            }
            §§goto(addr169);
         }
         §§goto(addr120);
      }
      
      public static function §%"G§(param1:b2Manifold, param2:b2CircleShape, param3:b2Transform, param4:b2CircleShape, param5:b2Transform) : void
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         var _loc6_:b2Mat22 = null;
         var _loc7_:b2Vec2 = null;
         if(_loc17_ || b2Collision)
         {
            param1.§0,§ = 0;
         }
         _loc6_ = param3.R;
         _loc7_ = param2.§2"9§;
         §§push(param3.position.x);
         if(!_loc16_)
         {
            §§push(_loc6_.col1.x);
            if(_loc17_ || param2)
            {
               §§push(_loc7_.x);
               if(_loc17_)
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc16_)
                  {
                     addr63:
                     §§push(_loc6_.col2.x);
                     if(_loc17_ || param3)
                     {
                        addr73:
                        §§push(§§pop() * _loc7_.y);
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc17_)
                  {
                     addr80:
                     §§push(Number(§§pop()));
                  }
                  var _loc8_:* = §§pop();
                  §§push(param3.position.y);
                  if(_loc17_ || param2)
                  {
                     §§push(_loc6_.col1.y);
                     if(!(_loc16_ && param3))
                     {
                        §§push(_loc7_.x);
                        if(!(_loc16_ && param2))
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc17_)
                           {
                              addr114:
                              §§push(_loc6_.col2.y);
                              if(!(_loc16_ && b2Collision))
                              {
                                 addr124:
                                 §§push(§§pop() * _loc7_.y);
                              }
                              §§push(§§pop() + §§pop());
                           }
                           §§push(§§pop() + §§pop());
                           if(_loc17_ || b2Collision)
                           {
                              addr136:
                              §§push(Number(§§pop()));
                           }
                           var _loc9_:* = §§pop();
                           _loc6_ = param5.R;
                           _loc7_ = param4.§2"9§;
                           §§push(param5.position.x);
                           if(_loc17_)
                           {
                              §§push(_loc6_.col1.x);
                              if(!(_loc16_ && param3))
                              {
                                 §§push(_loc7_.x);
                                 if(_loc17_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(_loc17_)
                                    {
                                       addr168:
                                       §§push(_loc6_.col2.x);
                                       if(_loc17_ || param2)
                                       {
                                          addr181:
                                          §§push(§§pop() + §§pop() * _loc7_.y);
                                       }
                                       §§goto(addr181);
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(_loc17_ || param2)
                                    {
                                       addr201:
                                       var _loc10_:Number = §§pop();
                                       §§push(param5.position.y);
                                       if(!(_loc16_ && param1))
                                       {
                                          §§push(_loc6_.col1.y);
                                          if(_loc17_)
                                          {
                                             §§push(_loc7_.x);
                                             if(!_loc16_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!(_loc16_ && param2))
                                                {
                                                   addr229:
                                                   §§push(_loc6_.col2.y);
                                                   if(!(_loc16_ && param3))
                                                   {
                                                      addr242:
                                                      §§push(§§pop() + §§pop() * _loc7_.y);
                                                   }
                                                   §§goto(addr242);
                                                }
                                                §§push(§§pop() + §§pop());
                                                if(_loc17_ || param1)
                                                {
                                                   addr251:
                                                   §§push(Number(§§pop()));
                                                }
                                                var _loc11_:* = §§pop();
                                                §§push(_loc10_);
                                                if(!(_loc16_ && param3))
                                                {
                                                   §§push(§§pop() - _loc8_);
                                                   if(!_loc16_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                   }
                                                }
                                                var _loc12_:* = §§pop();
                                                §§push(_loc11_);
                                                if(_loc17_ || param3)
                                                {
                                                   §§push(§§pop() - _loc9_);
                                                   if(_loc17_ || param2)
                                                   {
                                                      §§push(Number(§§pop()));
                                                   }
                                                }
                                                var _loc13_:* = §§pop();
                                                §§push(_loc12_);
                                                if(!(_loc16_ && b2Collision))
                                                {
                                                   §§push(_loc12_);
                                                   if(!_loc16_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc17_ || param1)
                                                      {
                                                         addr305:
                                                         §§push(_loc13_);
                                                         if(_loc17_ || param2)
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
                                                      var _loc15_:Number = param2.§0!_§ + param4.§0!_§;
                                                      if(_loc17_)
                                                      {
                                                         §§push(_loc14_);
                                                         §§push(_loc15_);
                                                         if(_loc17_)
                                                         {
                                                            §§push(§§pop() * _loc15_);
                                                         }
                                                         if(§§pop() <= §§pop())
                                                         {
                                                            loop0:
                                                            while(true)
                                                            {
                                                               param1.§<"@§ = b2Manifold.§>E§;
                                                               loop1:
                                                               while(true)
                                                               {
                                                                  param1.m_localPoint.SetV(param2.§2"9§);
                                                                  loop2:
                                                                  while(true)
                                                                  {
                                                                     param1.§3=§.§%y§();
                                                                     loop3:
                                                                     while(_loc17_ || param1)
                                                                     {
                                                                        param1.§0,§ = 1;
                                                                        while(!_loc16_)
                                                                        {
                                                                           param1.§4!_§[0].m_localPoint.SetV(param4.§2"9§);
                                                                           loop5:
                                                                           while(_loc17_)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 param1.§4!_§[0].m_id.key = 0;
                                                                                 if(_loc17_)
                                                                                 {
                                                                                    if(!(_loc17_ || param2))
                                                                                    {
                                                                                       continue loop3;
                                                                                    }
                                                                                    if(!_loc17_)
                                                                                    {
                                                                                       continue loop2;
                                                                                    }
                                                                                    §§goto(addr353);
                                                                                    continue loop3;
                                                                                 }
                                                                                 continue loop5;
                                                                              }
                                                                              if(!_loc16_)
                                                                              {
                                                                                 return;
                                                                              }
                                                                              addr417:
                                                                              return;
                                                                           }
                                                                        }
                                                                        continue loop0;
                                                                     }
                                                                     continue loop1;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr417);
                                                      }
                                                      §§goto(addr367);
                                                   }
                                                   §§goto(addr313);
                                                }
                                                §§goto(addr305);
                                             }
                                             §§goto(addr242);
                                          }
                                          §§goto(addr229);
                                       }
                                       §§goto(addr251);
                                    }
                                    §§goto(addr201);
                                 }
                                 §§goto(addr181);
                              }
                              §§goto(addr168);
                           }
                           §§goto(addr201);
                        }
                        §§goto(addr124);
                     }
                     §§goto(addr114);
                  }
                  §§goto(addr136);
               }
               §§goto(addr73);
            }
            §§goto(addr63);
         }
         §§goto(addr80);
      }
      
      public static function §;!R§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2CircleShape, param5:b2Transform) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfuscation" for better results.
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public static function §9e§(param1:b2AABB, param2:b2AABB) : Boolean
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc3_:b2Vec2 = param2.§8"S§;
         var _loc4_:b2Vec2 = param1.§4B§;
         §§push(_loc3_.x);
         if(_loc9_)
         {
            §§push(§§pop() - _loc4_.x);
            if(!(_loc10_ && param2))
            {
               addr38:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            §§push(_loc3_.y);
            if(_loc9_)
            {
               §§push(§§pop() - _loc4_.y);
               if(_loc9_ || param1)
               {
                  addr54:
                  §§push(Number(§§pop()));
               }
               var _loc6_:* = §§pop();
               _loc3_ = param1.§8"S§;
               _loc4_ = param2.§4B§;
               §§push(_loc3_.x);
               if(!_loc10_)
               {
                  §§push(§§pop() - _loc4_.x);
                  if(_loc9_)
                  {
                     addr73:
                     §§push(Number(§§pop()));
                  }
                  var _loc7_:* = §§pop();
                  §§push(_loc3_.y);
                  if(!(_loc10_ && param2))
                  {
                     §§push(§§pop() - _loc4_.y);
                     if(!_loc10_)
                     {
                        addr89:
                        §§push(Number(§§pop()));
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
                                       while(true)
                                       {
                                          §§pop();
                                          addr216:
                                          while(true)
                                          {
                                             §§push(_loc6_);
                                             addr201:
                                             while(_loc9_)
                                             {
                                                §§push(0);
                                                while(true)
                                                {
                                                   §§push(§§pop() > §§pop());
                                                }
                                             }
                                             continue loop0;
                                          }
                                       }
                                       addr215:
                                    }
                                    while(true)
                                    {
                                       loop9:
                                       while(!§§pop())
                                       {
                                          loop10:
                                          while(true)
                                          {
                                             §§push(_loc7_);
                                             loop11:
                                             while(true)
                                             {
                                                §§push(0);
                                                loop12:
                                                while(true)
                                                {
                                                   §§push(§§pop() > §§pop());
                                                   loop13:
                                                   while(true)
                                                   {
                                                      if(_loc9_ || b2Collision)
                                                      {
                                                         §§push(§§pop());
                                                         if(_loc10_)
                                                         {
                                                            break;
                                                         }
                                                         if(!§§pop())
                                                         {
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               loop15:
                                                               while(true)
                                                               {
                                                                  §§push(_loc8_);
                                                                  if(!(_loc10_ && _loc3_))
                                                                  {
                                                                     if(_loc9_)
                                                                     {
                                                                        §§push(0);
                                                                        if(!_loc9_)
                                                                        {
                                                                           continue loop12;
                                                                        }
                                                                        if(_loc9_)
                                                                        {
                                                                           if(_loc9_)
                                                                           {
                                                                              §§push(§§pop() > §§pop());
                                                                              loop16:
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc10_ && b2Collision))
                                                                                 {
                                                                                    if(_loc9_)
                                                                                    {
                                                                                       loop17:
                                                                                       while(true)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(_loc9_)
                                                                                             {
                                                                                                if(!_loc9_)
                                                                                                {
                                                                                                   continue loop15;
                                                                                                }
                                                                                                if(!(_loc9_ || param2))
                                                                                                {
                                                                                                   continue loop10;
                                                                                                }
                                                                                                if(!_loc9_)
                                                                                                {
                                                                                                   break loop9;
                                                                                                }
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(false);
                                                                                                      break loop17;
                                                                                                   }
                                                                                                   addr167:
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr216);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§push(true);
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          continue loop16;
                                                                                       }
                                                                                       while(_loc10_)
                                                                                       {
                                                                                          continue loop2;
                                                                                       }
                                                                                       return §§pop();
                                                                                       addr150:
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 continue loop13;
                                                                              }
                                                                              continue loop9;
                                                                           }
                                                                           continue loop1;
                                                                        }
                                                                        §§goto(addr204);
                                                                     }
                                                                     break;
                                                                  }
                                                                  continue loop11;
                                                               }
                                                               §§goto(addr201);
                                                            }
                                                         }
                                                         §§goto(addr150);
                                                      }
                                                      §§goto(addr208);
                                                   }
                                                   continue loop3;
                                                }
                                             }
                                          }
                                       }
                                       addr208:
                                       return §§pop();
                                    }
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr167);
                  }
                  §§goto(addr89);
               }
               §§goto(addr73);
            }
            §§goto(addr54);
         }
         §§goto(addr38);
      }
   }
}
