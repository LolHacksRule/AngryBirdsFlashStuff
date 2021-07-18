package §^9§
{
   import §"y§.*;
   import §'F§.*;
   import §6Z§.*;
   
   use namespace b2internal;
   
   public class b2Collision
   {
      
      public static const b2_nullFeature:uint = 255;
      
      private static var §0!6§:Vector.<§6! §>;
      
      private static var s_clipPoints1:Vector.<§6! §>;
      
      private static var s_clipPoints2:Vector.<§6! §>;
      
      private static var §=!1§:Vector.<int>;
      
      private static var §&-§:Vector.<int>;
      
      private static var §8a§:b2Vec2;
      
      private static var §5!>§:b2Vec2;
      
      private static var §@w§:b2Vec2;
      
      private static var §?!H§:b2Vec2;
      
      private static var §`!J§:b2Vec2;
      
      private static var s_tangent2:b2Vec2;
      
      private static var s_v11:b2Vec2;
      
      private static var s_v12:b2Vec2;
      
      private static var b2CollidePolyTempVec:b2Vec2;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            b2_nullFeature = 255;
            loop0:
            while(true)
            {
               §0!6§ = §'R§();
               addr196:
               while(true)
               {
                  s_clipPoints1 = §'R§();
                  addr180:
                  while(true)
                  {
                     s_clipPoints2 = §'R§();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr79);
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
      
      public static function §?q§(param1:Vector.<§6! §>, param2:Vector.<§6! §>, param3:b2Vec2, param4:Number) : int
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc5_:§6! § = null;
         var _loc6_:int = 0;
         var _loc7_:b2Vec2 = null;
         var _loc9_:* = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:b2Vec2 = null;
         var _loc13_:§6! § = null;
         if(_loc15_ || b2Collision)
         {
            _loc6_ = 0;
         }
         _loc7_ = (_loc5_ = param2[0]).v;
         var _loc8_:b2Vec2 = (_loc5_ = param2[1]).v;
         if(_loc15_)
         {
            §§push(param3.x);
            if(!(_loc14_ && param1))
            {
               §§push(_loc7_.x);
               if(_loc15_ || param3)
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc14_ && param2))
                  {
                     §§push(param3.y);
                     if(_loc15_)
                     {
                        §§push(_loc7_.y);
                        if(_loc15_)
                        {
                           §§push(§§pop() * §§pop());
                           if(!(_loc14_ && param1))
                           {
                              §§push(§§pop() + §§pop());
                              if(_loc15_ || param2)
                              {
                                 §§push(param4);
                                 if(!_loc14_)
                                 {
                                    §§push(§§pop() - §§pop());
                                    if(_loc15_ || param1)
                                    {
                                       §§push(Number(§§pop()));
                                       if(!(_loc14_ && param3))
                                       {
                                          addr133:
                                          _loc9_ = §§pop();
                                          addr134:
                                          §§push(param3.x);
                                          if(_loc15_ || param2)
                                          {
                                          }
                                          addr160:
                                          §§push(param3.y);
                                          if(_loc15_)
                                          {
                                             addr164:
                                             addr166:
                                             §§push(§§pop() * _loc8_.y);
                                             if(_loc14_ && param2)
                                             {
                                             }
                                             addr178:
                                             §§push(§§pop() - §§pop());
                                             if(_loc15_ || param3)
                                             {
                                                addr187:
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
                                                               addr321:
                                                               while(true)
                                                               {
                                                               }
                                                            }
                                                            addr311:
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
                                                                     while(_loc15_ || b2Collision)
                                                                     {
                                                                        if(_loc15_)
                                                                        {
                                                                           param1[_loc6_++].Set(param2[1]);
                                                                           loop9:
                                                                           while(true)
                                                                           {
                                                                              addr191:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc9_);
                                                                                 if(_loc15_)
                                                                                 {
                                                                                    §§push(_loc10_);
                                                                                    if(!(_loc14_ && param3))
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(!(_loc15_ || b2Collision))
                                                                                       {
                                                                                          continue loop0;
                                                                                       }
                                                                                       §§push(0);
                                                                                       if(!(_loc14_ && b2Collision))
                                                                                       {
                                                                                          §§goto(addr229);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr262:
                                                                                          §§push(§§pop() - _loc10_);
                                                                                          if(_loc14_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          §§push(§§pop() / §§pop());
                                                                                          if(!_loc14_)
                                                                                          {
                                                                                             §§goto(addr269);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr272);
                                                                                    }
                                                                                    addr229:
                                                                                    if(!(_loc14_ && b2Collision))
                                                                                    {
                                                                                       if(§§pop() < §§pop())
                                                                                       {
                                                                                          if(_loc15_ || param3)
                                                                                          {
                                                                                             §§push(_loc9_);
                                                                                             if(_loc15_)
                                                                                             {
                                                                                                continue loop0;
                                                                                             }
                                                                                             addr269:
                                                                                             if(!_loc15_)
                                                                                             {
                                                                                                continue loop5;
                                                                                             }
                                                                                             addr272:
                                                                                             _loc11_ = §§pop();
                                                                                          }
                                                                                          if(_loc14_)
                                                                                          {
                                                                                             continue loop9;
                                                                                          }
                                                                                          if(!(_loc15_ || b2Collision))
                                                                                          {
                                                                                             continue loop7;
                                                                                          }
                                                                                          if(false)
                                                                                          {
                                                                                             continue loop4;
                                                                                          }
                                                                                          §§push(_loc12_ = (_loc5_ = param1[_loc6_]).v);
                                                                                          §§push(_loc7_.x);
                                                                                          if(_loc15_)
                                                                                          {
                                                                                             §§push(_loc11_);
                                                                                             if(!(_loc14_ && param3))
                                                                                             {
                                                                                                §§push(_loc8_.x);
                                                                                                if(_loc15_ || param3)
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
                                                                                             if(!_loc14_)
                                                                                             {
                                                                                                §§push(_loc11_);
                                                                                                if(_loc15_ || param3)
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
                                                                                          if(_loc15_)
                                                                                          {
                                                                                             if(_loc9_ > 0)
                                                                                             {
                                                                                                addr394:
                                                                                                _loc13_ = param2[0];
                                                                                                if(_loc15_)
                                                                                                {
                                                                                                   _loc5_.id = _loc13_.id;
                                                                                                   if(_loc14_)
                                                                                                   {
                                                                                                   }
                                                                                                   §§goto(addr430);
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                _loc13_ = param2[1];
                                                                                                if(_loc15_)
                                                                                                {
                                                                                                   _loc5_.id = _loc13_.id;
                                                                                                }
                                                                                             }
                                                                                             _loc6_++;
                                                                                             §§goto(addr430);
                                                                                          }
                                                                                          §§goto(addr394);
                                                                                       }
                                                                                       addr430:
                                                                                    }
                                                                                    continue loop6;
                                                                                    return _loc6_;
                                                                                 }
                                                                                 §§goto(addr269);
                                                                              }
                                                                              continue loop1;
                                                                           }
                                                                           addr307:
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr311);
                                                                        }
                                                                     }
                                                                     §§goto(addr321);
                                                                  }
                                                                  §§goto(addr191);
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr307);
                                             }
                                             §§goto(addr187);
                                          }
                                          §§push(§§pop() + §§pop());
                                          if(!_loc14_)
                                          {
                                             §§goto(addr178);
                                             §§push(param4);
                                          }
                                          §§goto(addr187);
                                       }
                                       §§push(_loc8_.x);
                                       if(!(_loc14_ && b2Collision))
                                       {
                                          addr152:
                                          §§push(§§pop() * §§pop());
                                          if(_loc15_ || param1)
                                          {
                                             §§goto(addr160);
                                          }
                                          §§goto(addr187);
                                       }
                                       §§goto(addr164);
                                    }
                                    §§goto(addr187);
                                 }
                                 §§goto(addr164);
                              }
                              §§goto(addr133);
                           }
                           §§goto(addr152);
                        }
                        §§goto(addr166);
                     }
                     §§goto(addr152);
                  }
                  §§goto(addr133);
               }
               §§goto(addr164);
            }
            §§goto(addr133);
         }
         §§goto(addr134);
      }
      
      public static function §&!C§(param1:b2PolygonShape, param2:b2Transform, param3:int, param4:b2PolygonShape, param5:b2Transform) : Number
      {
         var _loc26_:Boolean = false;
         var _loc27_:Boolean = true;
         var _loc11_:b2Mat22 = null;
         var _loc12_:b2Vec2 = null;
         var _loc25_:* = NaN;
         §§push(param1.§!1§);
         if(_loc27_ || b2Collision)
         {
            §§push(int(§§pop()));
         }
         var _loc6_:* = §§pop();
         var _loc7_:Vector.<b2Vec2> = param1.§-!L§;
         var _loc8_:Vector.<b2Vec2> = param1.§0!O§;
         §§push(param4.§!1§);
         if(_loc27_)
         {
            §§push(int(§§pop()));
         }
         var _loc9_:* = §§pop();
         var _loc10_:Vector.<b2Vec2> = param4.§-!L§;
         _loc11_ = param2.R;
         _loc12_ = _loc8_[param3];
         §§push(_loc11_.col1.x);
         if(_loc27_)
         {
            §§push(_loc12_.x);
            if(!_loc26_)
            {
               §§push(§§pop() * §§pop());
               if(_loc27_)
               {
                  §§push(_loc11_.col2.x);
                  if(_loc27_ || param1)
                  {
                     addr85:
                     §§push(§§pop() * _loc12_.y);
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc27_ || param3)
                  {
                     addr97:
                     var _loc13_:Number = §§pop();
                     §§push(_loc11_.col1.y);
                     if(!_loc26_)
                     {
                        §§push(_loc12_.x);
                        if(_loc27_)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc27_ || param3)
                           {
                              addr115:
                              §§push(_loc11_.col2.y);
                              if(_loc27_)
                              {
                                 addr123:
                                 §§push(§§pop() + §§pop() * _loc12_.y);
                                 if(!(_loc26_ && b2Collision))
                                 {
                                    §§push(Number(§§pop()));
                                 }
                              }
                              §§goto(addr123);
                           }
                           var _loc14_:* = §§pop();
                           §§push((_loc11_ = param5.R).col1.x);
                           if(_loc27_)
                           {
                              §§push(_loc13_);
                              if(!(_loc26_ && param3))
                              {
                                 §§push(§§pop() * §§pop());
                                 if(_loc27_ || param1)
                                 {
                                    §§push(_loc11_.col1.y);
                                    if(!(_loc26_ && param2))
                                    {
                                       addr168:
                                       §§push(§§pop() * _loc14_);
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(_loc27_ || param3)
                                    {
                                       addr178:
                                       §§push(Number(§§pop()));
                                    }
                                 }
                                 var _loc15_:* = §§pop();
                                 §§push(_loc11_.col2.x);
                                 if(!(_loc26_ && b2Collision))
                                 {
                                    §§push(_loc13_);
                                    if(!_loc26_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(_loc27_ || param1)
                                       {
                                          §§push(_loc11_.col2.y);
                                          if(_loc27_)
                                          {
                                             addr206:
                                             §§push(§§pop() * _loc14_);
                                          }
                                          §§push(§§pop() + §§pop());
                                          if(_loc27_)
                                          {
                                             addr212:
                                             var _loc16_:Number = §§pop();
                                             var _loc17_:* = 0;
                                             var _loc18_:Number = Number.MAX_VALUE;
                                             var _loc19_:int = 0;
                                             while(_loc19_ < _loc9_)
                                             {
                                                §§push((_loc12_ = _loc10_[_loc19_]).x);
                                                if(_loc27_)
                                                {
                                                   §§push(_loc15_);
                                                   if(!(_loc26_ && param3))
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc27_)
                                                      {
                                                         §§push(_loc12_.y);
                                                         if(!_loc26_)
                                                         {
                                                            addr247:
                                                            §§push(§§pop() * _loc16_);
                                                            if(!(_loc26_ && param3))
                                                            {
                                                               addr256:
                                                               §§push(§§pop() + §§pop());
                                                               if(!_loc26_)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  if(_loc27_ || param2)
                                                                  {
                                                                     addr267:
                                                                     §§push(§§pop());
                                                                     if(_loc27_)
                                                                     {
                                                                        _loc25_ = §§pop();
                                                                        if(!(_loc26_ && b2Collision))
                                                                        {
                                                                           addr279:
                                                                           if(§§pop() < _loc18_)
                                                                           {
                                                                              if(_loc27_ || param3)
                                                                              {
                                                                                 §§push(_loc25_);
                                                                                 if(!(_loc26_ && param1))
                                                                                 {
                                                                                    addr296:
                                                                                    _loc18_ = §§pop();
                                                                                    if(_loc27_)
                                                                                    {
                                                                                       §§push(_loc19_);
                                                                                       if(!_loc26_)
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
                                                                                 §§goto(addr296);
                                                                              }
                                                                           }
                                                                           _loc19_++;
                                                                           continue;
                                                                        }
                                                                        §§goto(addr296);
                                                                     }
                                                                  }
                                                                  §§goto(addr296);
                                                               }
                                                               §§goto(addr267);
                                                            }
                                                            §§goto(addr279);
                                                         }
                                                         §§goto(addr256);
                                                      }
                                                      §§goto(addr296);
                                                   }
                                                   §§goto(addr247);
                                                }
                                                §§goto(addr267);
                                             }
                                             _loc12_ = _loc7_[param3];
                                             _loc11_ = param2.R;
                                             §§push(param2.position.x);
                                             if(!(_loc26_ && b2Collision))
                                             {
                                                §§push(_loc11_.col1.x);
                                                if(!(_loc26_ && b2Collision))
                                                {
                                                   §§push(_loc12_.x);
                                                   if(_loc27_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(!(_loc26_ && param3))
                                                      {
                                                         addr370:
                                                         §§push(_loc11_.col2.x);
                                                         if(_loc27_)
                                                         {
                                                            addr366:
                                                            §§push(§§pop() * _loc12_.y);
                                                         }
                                                         §§push(§§pop() + (§§pop() + §§pop()));
                                                         if(_loc27_ || b2Collision)
                                                         {
                                                            addr378:
                                                            §§push(Number(§§pop()));
                                                         }
                                                         var _loc20_:* = §§pop();
                                                         §§push(param2.position.y);
                                                         if(!_loc26_)
                                                         {
                                                            §§push(_loc11_.col1.y);
                                                            if(_loc27_)
                                                            {
                                                               §§push(_loc12_.x);
                                                               if(_loc27_)
                                                               {
                                                                  addr416:
                                                                  §§push(§§pop() * §§pop());
                                                                  if(_loc27_ || param2)
                                                                  {
                                                                     §§push(_loc11_.col2.y);
                                                                     if(!(_loc26_ && b2Collision))
                                                                     {
                                                                        §§push(§§pop() * _loc12_.y);
                                                                     }
                                                                  }
                                                                  §§push(§§pop() + §§pop());
                                                                  if(_loc27_ || param3)
                                                                  {
                                                                     addr425:
                                                                     var _loc21_:Number = §§pop();
                                                                     _loc12_ = _loc10_[_loc17_];
                                                                     _loc11_ = param5.R;
                                                                     §§push(param5.position.x);
                                                                     if(!(_loc26_ && param2))
                                                                     {
                                                                        §§push(_loc11_.col1.x);
                                                                        if(_loc27_)
                                                                        {
                                                                           §§push(_loc12_.x);
                                                                           if(_loc27_)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              if(_loc27_ || b2Collision)
                                                                              {
                                                                                 addr462:
                                                                                 §§push(_loc11_.col2.x);
                                                                                 if(!(_loc26_ && param1))
                                                                                 {
                                                                                    addr475:
                                                                                    §§push(§§pop() + §§pop() * _loc12_.y);
                                                                                 }
                                                                                 §§goto(addr475);
                                                                              }
                                                                              §§push(§§pop() + §§pop());
                                                                              if(!(_loc26_ && param1))
                                                                              {
                                                                                 addr484:
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                              var _loc22_:* = §§pop();
                                                                              §§push(param5.position.y);
                                                                              if(_loc27_ || param2)
                                                                              {
                                                                                 §§push(_loc11_.col1.y);
                                                                                 if(_loc27_ || b2Collision)
                                                                                 {
                                                                                    §§push(_loc12_.x);
                                                                                    if(_loc27_)
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(!(_loc26_ && b2Collision))
                                                                                       {
                                                                                          addr532:
                                                                                          §§push(_loc11_.col2.y);
                                                                                          if(!(_loc26_ && param1))
                                                                                          {
                                                                                             addr528:
                                                                                             §§push(§§pop() * _loc12_.y);
                                                                                          }
                                                                                          §§push(§§pop() + (§§pop() + §§pop()));
                                                                                          if(!(_loc26_ && param1))
                                                                                          {
                                                                                             addr541:
                                                                                             var _loc23_:* = Number(§§pop());
                                                                                             if(!(_loc26_ && param3))
                                                                                             {
                                                                                                §§push(_loc22_);
                                                                                                if(_loc27_ || param2)
                                                                                                {
                                                                                                   §§push(_loc20_);
                                                                                                   if(_loc27_ || param2)
                                                                                                   {
                                                                                                      §§push(§§pop() - §§pop());
                                                                                                      if(_loc27_)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                         if(!(_loc26_ && param3))
                                                                                                         {
                                                                                                            addr576:
                                                                                                            _loc22_ = §§pop();
                                                                                                            if(!_loc26_)
                                                                                                            {
                                                                                                               §§push(_loc23_);
                                                                                                               if(!(_loc26_ && param1))
                                                                                                               {
                                                                                                                  addr587:
                                                                                                                  §§push(_loc21_);
                                                                                                                  if(_loc27_ || param1)
                                                                                                                  {
                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                     if(_loc26_ && param3)
                                                                                                                     {
                                                                                                                     }
                                                                                                                     §§goto(addr616);
                                                                                                                  }
                                                                                                                  §§goto(addr628);
                                                                                                               }
                                                                                                               §§push(Number(§§pop()));
                                                                                                               if(_loc27_)
                                                                                                               {
                                                                                                                  _loc23_ = §§pop();
                                                                                                                  addr607:
                                                                                                                  §§push(_loc22_);
                                                                                                                  if(_loc27_)
                                                                                                                  {
                                                                                                                     §§push(_loc13_);
                                                                                                                     if(!_loc26_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        if(!_loc26_)
                                                                                                                        {
                                                                                                                           §§goto(addr616);
                                                                                                                        }
                                                                                                                        §§goto(addr628);
                                                                                                                     }
                                                                                                                     §§goto(addr616);
                                                                                                                  }
                                                                                                                  §§goto(addr646);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr607);
                                                                                                         }
                                                                                                         addr616:
                                                                                                         §§push(_loc23_);
                                                                                                         if(_loc27_ || b2Collision)
                                                                                                         {
                                                                                                            §§push(§§pop() * _loc14_);
                                                                                                            if(!_loc26_)
                                                                                                            {
                                                                                                               addr628:
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               if(_loc27_ || param2)
                                                                                                               {
                                                                                                                  addr646:
                                                                                                                  §§push(Number(§§pop()));
                                                                                                               }
                                                                                                               §§push(§§pop());
                                                                                                            }
                                                                                                         }
                                                                                                         var _loc24_:* = §§pop();
                                                                                                         return §§pop();
                                                                                                      }
                                                                                                      §§goto(addr576);
                                                                                                   }
                                                                                                   §§goto(addr628);
                                                                                                }
                                                                                                §§goto(addr587);
                                                                                             }
                                                                                             §§goto(addr607);
                                                                                          }
                                                                                          §§goto(addr541);
                                                                                       }
                                                                                       §§goto(addr532);
                                                                                    }
                                                                                    §§goto(addr528);
                                                                                 }
                                                                                 §§goto(addr532);
                                                                              }
                                                                              §§goto(addr541);
                                                                           }
                                                                           §§goto(addr475);
                                                                        }
                                                                        §§goto(addr462);
                                                                     }
                                                                     §§goto(addr484);
                                                                  }
                                                                  §§goto(addr425);
                                                               }
                                                               §§push(§§pop() + §§pop());
                                                            }
                                                            §§goto(addr416);
                                                         }
                                                         §§goto(addr425);
                                                      }
                                                      §§goto(addr370);
                                                   }
                                                   §§goto(addr366);
                                                }
                                                §§goto(addr370);
                                             }
                                             §§goto(addr378);
                                          }
                                       }
                                       §§goto(addr212);
                                    }
                                    §§goto(addr206);
                                 }
                                 §§goto(addr212);
                              }
                              §§goto(addr168);
                           }
                           §§goto(addr178);
                        }
                        §§goto(addr123);
                     }
                     §§goto(addr115);
                  }
               }
               §§goto(addr97);
            }
            §§goto(addr85);
         }
         §§goto(addr97);
      }
      
      public static function §&!§(param1:Vector.<int>, param2:b2PolygonShape, param3:b2Transform, param4:b2PolygonShape, param5:b2Transform) : Number
      {
         var _loc26_:Boolean = true;
         var _loc27_:Boolean = false;
         var _loc8_:b2Vec2 = null;
         var _loc9_:b2Mat22 = null;
         var _loc22_:* = 0;
         var _loc23_:* = NaN;
         var _loc24_:* = 0;
         var _loc25_:* = NaN;
         §§push(param2.§!1§);
         if(!_loc27_)
         {
            §§push(int(§§pop()));
         }
         var _loc6_:* = §§pop();
         var _loc7_:Vector.<b2Vec2> = param2.§0!O§;
         _loc9_ = param5.R;
         _loc8_ = param4.§7N§;
         §§push(param5.position.x);
         if(!_loc27_)
         {
            §§push(_loc9_.col1.x);
            if(!_loc27_)
            {
               §§push(_loc8_.x);
               if(!(_loc27_ && param2))
               {
                  addr79:
                  §§push(§§pop() * §§pop());
                  if(!_loc27_)
                  {
                     §§push(_loc9_.col2.x);
                     if(!_loc27_)
                     {
                        §§push(§§pop() * _loc8_.y);
                     }
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc26_)
                  {
                     addr82:
                     §§push(Number(§§pop()));
                  }
                  var _loc10_:* = §§pop();
                  §§push(param5.position.y);
                  if(_loc26_ || param2)
                  {
                     §§push(_loc9_.col1.y);
                     if(_loc26_ || b2Collision)
                     {
                        §§push(_loc8_.x);
                        if(_loc26_ || param3)
                        {
                           addr125:
                           §§push(§§pop() * §§pop());
                           if(!_loc27_)
                           {
                              §§push(_loc9_.col2.y);
                              if(!_loc27_)
                              {
                                 §§push(§§pop() * _loc8_.y);
                              }
                           }
                           §§push(§§pop() + §§pop());
                           if(_loc26_ || param3)
                           {
                              addr134:
                              var _loc11_:* = Number(§§pop());
                              _loc9_ = param3.R;
                              _loc8_ = param2.§7N§;
                              if(_loc26_)
                              {
                                 §§push(_loc10_);
                                 if(!(_loc27_ && param1))
                                 {
                                    §§push(param3.position);
                                    if(!_loc27_)
                                    {
                                       §§push(§§pop().x);
                                       if(_loc26_)
                                       {
                                          §§push(_loc9_.col1);
                                          if(!_loc27_)
                                          {
                                             §§push(§§pop().x);
                                             if(!_loc27_)
                                             {
                                                §§push(_loc8_.x);
                                                if(_loc26_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(!_loc27_)
                                                   {
                                                      §§push(_loc9_.col2);
                                                      if(_loc26_ || b2Collision)
                                                      {
                                                         §§push(§§pop().x);
                                                         if(_loc26_ || param2)
                                                         {
                                                            §§push(_loc8_.y);
                                                            if(_loc26_)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(_loc26_)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  if(!_loc27_)
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     if(!_loc27_)
                                                                     {
                                                                        §§push(§§pop() - §§pop());
                                                                        if(!(_loc27_ && b2Collision))
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           if(_loc26_)
                                                                           {
                                                                              _loc10_ = §§pop();
                                                                              if(!_loc27_)
                                                                              {
                                                                                 addr218:
                                                                                 §§push(_loc11_);
                                                                                 if(_loc26_ || param3)
                                                                                 {
                                                                                    addr228:
                                                                                    §§push(param3.position.y);
                                                                                    if(_loc26_ || b2Collision)
                                                                                    {
                                                                                       §§push(_loc9_.col1);
                                                                                       if(!_loc27_)
                                                                                       {
                                                                                          addr240:
                                                                                          §§push(§§pop().y);
                                                                                          if(_loc26_)
                                                                                          {
                                                                                             §§push(_loc8_.x);
                                                                                             if(!_loc27_)
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(_loc26_ || param1)
                                                                                                {
                                                                                                   addr255:
                                                                                                   §§push(_loc9_.col2.y);
                                                                                                   if(!_loc27_)
                                                                                                   {
                                                                                                      addr263:
                                                                                                      addr260:
                                                                                                      addr262:
                                                                                                      §§push(§§pop() + §§pop() * _loc8_.y);
                                                                                                      if(_loc27_)
                                                                                                      {
                                                                                                      }
                                                                                                      §§push(§§pop() + §§pop() * §§pop());
                                                                                                      if(_loc26_)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                      }
                                                                                                      var _loc12_:* = §§pop();
                                                                                                      §§push(_loc10_);
                                                                                                      if(!_loc27_)
                                                                                                      {
                                                                                                         §§push(param3.R.col2.x);
                                                                                                         if(_loc26_ || param3)
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            if(_loc26_ || param2)
                                                                                                            {
                                                                                                               §§push(_loc11_);
                                                                                                               if(_loc26_)
                                                                                                               {
                                                                                                                  addr341:
                                                                                                                  §§push(§§pop() * param3.R.col2.y);
                                                                                                               }
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               if(_loc26_ || param1)
                                                                                                               {
                                                                                                                  addr354:
                                                                                                                  §§push(Number(§§pop()));
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
                                                                                                                     if(_loc26_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        if(!_loc27_)
                                                                                                                        {
                                                                                                                           §§push(_loc8_.y);
                                                                                                                           if(!(_loc27_ && param2))
                                                                                                                           {
                                                                                                                              §§push(§§pop() * _loc13_);
                                                                                                                              if(_loc26_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                 if(_loc26_)
                                                                                                                                 {
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                    if(_loc26_ || param3)
                                                                                                                                    {
                                                                                                                                       addr408:
                                                                                                                                       §§push(§§pop());
                                                                                                                                       if(_loc26_ || param3)
                                                                                                                                       {
                                                                                                                                          addr416:
                                                                                                                                          _loc25_ = §§pop();
                                                                                                                                          addr436:
                                                                                                                                          if(!(_loc27_ && param2))
                                                                                                                                          {
                                                                                                                                             addr424:
                                                                                                                                             §§push(_loc15_);
                                                                                                                                          }
                                                                                                                                          _loc15_ = Number(§§pop());
                                                                                                                                          if(_loc26_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc16_);
                                                                                                                                             if(!(_loc27_ && param1))
                                                                                                                                             {
                                                                                                                                                §§push(int(§§pop()));
                                                                                                                                             }
                                                                                                                                             _loc14_ = §§pop();
                                                                                                                                             if(!_loc27_)
                                                                                                                                             {
                                                                                                                                                addr452:
                                                                                                                                                _loc16_++;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          continue;
                                                                                                                                       }
                                                                                                                                       if(§§pop() > §§pop())
                                                                                                                                       {
                                                                                                                                          if(_loc27_)
                                                                                                                                          {
                                                                                                                                             continue;
                                                                                                                                          }
                                                                                                                                          §§push(_loc25_);
                                                                                                                                          if(_loc27_ && b2Collision)
                                                                                                                                          {
                                                                                                                                          }
                                                                                                                                          §§goto(addr436);
                                                                                                                                       }
                                                                                                                                       §§goto(addr452);
                                                                                                                                    }
                                                                                                                                    §§goto(addr436);
                                                                                                                                 }
                                                                                                                                 §§goto(addr424);
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr416);
                                                                                                                  }
                                                                                                                  §§goto(addr408);
                                                                                                               }
                                                                                                               §§push(§&!C§(param2,param3,_loc14_,param4,param5));
                                                                                                               if(_loc26_)
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                               }
                                                                                                               var _loc17_:* = §§pop();
                                                                                                               if(_loc26_ || param1)
                                                                                                               {
                                                                                                                  §§push(_loc14_);
                                                                                                                  if(!(_loc27_ && b2Collision))
                                                                                                                  {
                                                                                                                     §§push(§§pop() - 1);
                                                                                                                     if(!_loc27_)
                                                                                                                     {
                                                                                                                        if(§§pop() >= 0)
                                                                                                                        {
                                                                                                                           addr488:
                                                                                                                           §§push(_loc14_);
                                                                                                                           if(!(_loc27_ && b2Collision))
                                                                                                                           {
                                                                                                                              §§push(§§pop() - 1);
                                                                                                                              if(_loc26_)
                                                                                                                              {
                                                                                                                                 addr499:
                                                                                                                                 §§push(int(§§pop()));
                                                                                                                                 if(!_loc27_)
                                                                                                                                 {
                                                                                                                                    addr530:
                                                                                                                                    §§push(int(§§pop()));
                                                                                                                                    addr502:
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    addr522:
                                                                                                                                    §§push(int(§§pop() - 1));
                                                                                                                                    if(_loc26_ || b2Collision)
                                                                                                                                    {
                                                                                                                                       §§goto(addr530);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 var _loc18_:* = §§pop();
                                                                                                                                 §§push(§&!C§(param2,param3,_loc18_,param4,param5));
                                                                                                                                 if(!_loc27_)
                                                                                                                                 {
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                 }
                                                                                                                                 var _loc19_:* = §§pop();
                                                                                                                                 if(_loc26_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc14_);
                                                                                                                                    if(!_loc27_)
                                                                                                                                    {
                                                                                                                                       §§push(1);
                                                                                                                                       if(_loc26_ || param2)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                          if(_loc26_ || param2)
                                                                                                                                          {
                                                                                                                                             if(§§pop() < _loc6_)
                                                                                                                                             {
                                                                                                                                                addr567:
                                                                                                                                                §§push(_loc14_);
                                                                                                                                                if(!(_loc27_ && param2))
                                                                                                                                                {
                                                                                                                                                   addr577:
                                                                                                                                                   addr576:
                                                                                                                                                   §§push(int(§§pop() + 1));
                                                                                                                                                   if(!(_loc27_ && param1))
                                                                                                                                                   {
                                                                                                                                                      addr585:
                                                                                                                                                   }
                                                                                                                                                   addr590:
                                                                                                                                                   var _loc20_:int = §§pop();
                                                                                                                                                   addr589:
                                                                                                                                                   §§push(§&!C§(param2,param3,_loc20_,param4,param5));
                                                                                                                                                   if(_loc26_)
                                                                                                                                                   {
                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                   }
                                                                                                                                                   var _loc21_:* = §§pop();
                                                                                                                                                   if(!(_loc27_ && param2))
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
                                                                                                                                                                     addr1057:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc19_);
                                                                                                                                                                        addr1025:
                                                                                                                                                                        while(!_loc27_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc21_);
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() > §§pop());
                                                                                                                                                                              addr1029:
                                                                                                                                                                              while(!(_loc27_ && param3))
                                                                                                                                                                              {
                                                                                                                                                                              }
                                                                                                                                                                              continue loop4;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        continue loop1;
                                                                                                                                                                     }
                                                                                                                                                                  }
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
                                                                                                                                                                        loop11:
                                                                                                                                                                        while(_loc26_)
                                                                                                                                                                        {
                                                                                                                                                                           if(§§pop() <= §§pop())
                                                                                                                                                                           {
                                                                                                                                                                              param1[0] = _loc14_;
                                                                                                                                                                              loop12:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc26_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc17_);
                                                                                                                                                                                    break;
                                                                                                                                                                                 }
                                                                                                                                                                                 addr1038:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(-1);
                                                                                                                                                                                    loop58:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       _loc24_ = §§pop();
                                                                                                                                                                                       loop59:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc18_);
                                                                                                                                                                                          loop60:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(int(§§pop()));
                                                                                                                                                                                             loop61:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                _loc22_ = §§pop();
                                                                                                                                                                                                loop62:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc19_);
                                                                                                                                                                                                   loop63:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                      loop64:
                                                                                                                                                                                                      while(_loc26_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         _loc23_ = §§pop();
                                                                                                                                                                                                         loop56:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            loop21:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               loop22:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc24_);
                                                                                                                                                                                                                  if(_loc26_ || param2)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(-1);
                                                                                                                                                                                                                     loop23:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(§§pop() == §§pop())
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop12;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§push(_loc22_);
                                                                                                                                                                                                                        if(_loc26_ || b2Collision)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc26_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!_loc26_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop58;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§push(1);
                                                                                                                                                                                                                              if(_loc26_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                 loop24:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc6_);
                                                                                                                                                                                                                                    if(_loc26_ || param3)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop() < §§pop());
                                                                                                                                                                                                                                       if(_loc26_ || b2Collision)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!§§pop())
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(0);
                                                                                                                                                                                                                                             loop25:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc26_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!(_loc27_ && param2))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!_loc26_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop60;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      loop26:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(int(§§pop()));
                                                                                                                                                                                                                                                         loop27:
                                                                                                                                                                                                                                                         while(_loc26_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            _loc14_ = §§pop();
                                                                                                                                                                                                                                                            loop28:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!_loc27_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(_loc27_ && b2Collision)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     continue loop62;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  if(_loc26_ || b2Collision)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     loop29:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(§&!C§(param2,param3,_loc14_,param4,param5));
                                                                                                                                                                                                                                                                        loop30:
                                                                                                                                                                                                                                                                        while(!(_loc27_ && param2))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                           loop31:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(_loc26_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(!(_loc26_ || param2))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    break;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 if(!(_loc27_ && param3))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(§§pop());
                                                                                                                                                                                                                                                                                    if(!(_loc27_ && param2))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(!_loc26_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          continue loop11;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       _loc17_ = §§pop();
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!(_loc26_ || b2Collision))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             break loop12;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§push(_loc23_);
                                                                                                                                                                                                                                                                                          addr650:
                                                                                                                                                                                                                                                                                          if(_loc26_ || b2Collision)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(!(_loc27_ && b2Collision))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                continue loop31;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             continue loop30;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    while(_loc26_ || param2)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(§§pop() <= §§pop())
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          param1[0] = _loc22_;
                                                                                                                                                                                                                                                                                          if(!(_loc27_ && param3))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(!(_loc26_ || b2Collision))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                continue loop12;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§push(_loc23_);
                                                                                                                                                                                                                                                                                             if(_loc27_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                continue loop31;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             if(!_loc27_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(_loc26_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   return §§pop();
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                addr976:
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                _loc23_ = §§pop();
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             loop35:
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(!(_loc27_ && b2Collision))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(_loc26_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(!_loc27_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         continue loop22;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      continue loop28;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   addr748:
                                                                                                                                                                                                                                                                                                   loop36:
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(_loc14_);
                                                                                                                                                                                                                                                                                                      if(!(_loc27_ && b2Collision))
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(!_loc27_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            continue loop25;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         continue loop27;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      addr768:
                                                                                                                                                                                                                                                                                                      if(!(_loc26_ || b2Collision))
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         break;
                                                                                                                                                                                                                                                                                                         addr939:
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      if(!_loc27_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         _loc22_ = §§pop();
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(_loc27_ && param3)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               while(_loc26_ || param2)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(_loc22_);
                                                                                                                                                                                                                                                                                                                  if(_loc27_ && param3)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     continue loop26;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  if(!_loc27_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(1);
                                                                                                                                                                                                                                                                                                                     while(_loc26_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(int(§§pop()));
                                                                                                                                                                                                                                                                                                                           continue loop26;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     continue loop23;
                                                                                                                                                                                                                                                                                                                     addr842:
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     addr901:
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(§§pop() - 1);
                                                                                                                                                                                                                                                                                                                     addr902:
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(0);
                                                                                                                                                                                                                                                                                                                        addr903:
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(§§pop() >= §§pop());
                                                                                                                                                                                                                                                                                                                           addr904:
                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              if(!(_loc27_ && param1))
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(_loc27_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    break;
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 if(§§pop())
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    while(_loc26_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       if(!_loc26_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          continue loop59;
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§push(_loc22_);
                                                                                                                                                                                                                                                                                                                                       if(!(_loc27_ && param3))
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§push(§§pop() - 1);
                                                                                                                                                                                                                                                                                                                                          break loop30;
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       addr930:
                                                                                                                                                                                                                                                                                                                                       addr930:
                                                                                                                                                                                                                                                                                                                                       addr930:
                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§push(§§pop() - 1);
                                                                                                                                                                                                                                                                                                                                          break loop31;
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       if(!(_loc27_ && param2))
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          break loop23;
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       continue loop56;
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    addr914:
                                                                                                                                                                                                                                                                                                                                    addr1001:
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§goto(addr930);
                                                                                                                                                                                                                                                                                                                                    §§push(_loc6_);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr930);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§goto(addr1029);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           continue loop3;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               break loop35;
                                                                                                                                                                                                                                                                                                               addr824:
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            if(_loc26_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(_loc17_);
                                                                                                                                                                                                                                                                                                               if(!_loc26_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  continue loop31;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr650);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr914);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         addr778:
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(_loc27_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            continue loop61;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(int(§§pop()));
                                                                                                                                                                                                                                                                                                            break loop36;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      continue loop61;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      _loc14_ = §§pop();
                                                                                                                                                                                                                                                                                                      break loop35;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr778);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             while(_loc26_ || param1)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                continue loop29;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             if(!(_loc27_ && param2))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                continue loop21;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             addr677:
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             continue loop21;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr748);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    continue loop2;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 continue loop64;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              continue loop24;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(!(_loc26_ || param1))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 continue loop63;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr939);
                                                                                                                                                                                                                                                                              §§push(int(§§pop()));
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           continue loop63;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(int(§§pop()));
                                                                                                                                                                                                                                                                           addr928:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§goto(addr941);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1057);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               addr990:
                                                                                                                                                                                                                                                               addr1010:
                                                                                                                                                                                                                                                               while(_loc26_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§goto(addr976);
                                                                                                                                                                                                                                                                  §§push(_loc21_);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(_loc20_);
                                                                                                                                                                                                                                                                  if(_loc26_ || b2Collision)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(int(§§pop()));
                                                                                                                                                                                                                                                                     break loop27;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  break loop27;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            continue loop62;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            _loc22_ = §§pop();
                                                                                                                                                                                                                                                            §§goto(addr990);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr928);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr930);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             continue loop60;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr824);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr904);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr903);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr842);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr846);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        _loc24_ = §§pop();
                                                                                                                                                                                                                        §§goto(addr1010);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr930);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1025);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              if(_loc26_)
                                                                                                                                                                              {
                                                                                                                                                                                 return §§pop();
                                                                                                                                                                              }
                                                                                                                                                                              continue loop10;
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1001);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1028);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1038);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr688);
                                                                                                                                                }
                                                                                                                                                §§goto(addr585);
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§push(0);
                                                                                                                                                if(!_loc27_)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr589);
                                                                                                                                                }
                                                                                                                                                §§goto(addr590);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr577);
                                                                                                                                       }
                                                                                                                                       §§goto(addr576);
                                                                                                                                    }
                                                                                                                                    §§goto(addr577);
                                                                                                                                 }
                                                                                                                                 §§goto(addr567);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr522);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§push(_loc6_);
                                                                                                                           if(_loc26_ || param3)
                                                                                                                           {
                                                                                                                              §§goto(addr522);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr530);
                                                                                                                     }
                                                                                                                     §§goto(addr499);
                                                                                                                  }
                                                                                                                  §§goto(addr502);
                                                                                                               }
                                                                                                               §§goto(addr488);
                                                                                                            }
                                                                                                            §§goto(addr354);
                                                                                                         }
                                                                                                         §§goto(addr341);
                                                                                                      }
                                                                                                      §§goto(addr354);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr263);
                                                                                             }
                                                                                             §§goto(addr260);
                                                                                          }
                                                                                          §§push(§§pop() + §§pop());
                                                                                          if(!_loc27_)
                                                                                          {
                                                                                             addr269:
                                                                                             §§push(§§pop() - §§pop());
                                                                                             if(!(_loc27_ && b2Collision))
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                if(_loc26_ || param2)
                                                                                                {
                                                                                                   _loc11_ = §§pop();
                                                                                                   addr286:
                                                                                                   §§push(_loc10_);
                                                                                                   if(_loc26_)
                                                                                                   {
                                                                                                      addr289:
                                                                                                      §§push(param3.R.col1.x);
                                                                                                      if(!_loc27_)
                                                                                                      {
                                                                                                         addr295:
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         if(_loc26_ || param2)
                                                                                                         {
                                                                                                            §§push(_loc11_);
                                                                                                            if(_loc26_)
                                                                                                            {
                                                                                                               addr306:
                                                                                                               §§goto(addr263);
                                                                                                               §§push(param3.R.col1.y);
                                                                                                            }
                                                                                                            §§goto(addr263);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr306);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr289);
                                                                                             }
                                                                                             §§goto(addr263);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr306);
                                                                                    }
                                                                                    §§goto(addr295);
                                                                                 }
                                                                                 §§goto(addr289);
                                                                              }
                                                                              §§goto(addr286);
                                                                           }
                                                                        }
                                                                        §§goto(addr289);
                                                                     }
                                                                     §§goto(addr269);
                                                                  }
                                                                  §§goto(addr255);
                                                               }
                                                               §§goto(addr263);
                                                            }
                                                            §§goto(addr262);
                                                         }
                                                         §§goto(addr263);
                                                      }
                                                      §§goto(addr255);
                                                   }
                                                }
                                                §§goto(addr263);
                                             }
                                             §§goto(addr255);
                                          }
                                          §§goto(addr240);
                                       }
                                       §§goto(addr263);
                                    }
                                 }
                                 §§goto(addr228);
                              }
                              §§goto(addr218);
                           }
                           §§goto(addr134);
                        }
                        §§push(§§pop() + §§pop());
                     }
                     §§goto(addr125);
                  }
                  §§goto(addr134);
               }
               §§push(§§pop() + §§pop());
            }
            §§goto(addr79);
         }
         §§goto(addr82);
      }
      
      public static function §4!`§(param1:Vector.<§6! §>, param2:b2PolygonShape, param3:b2Transform, param4:int, param5:b2PolygonShape, param6:b2Transform) : void
      {
         var _loc24_:Boolean = true;
         var _loc25_:Boolean = false;
         var _loc12_:b2Mat22 = null;
         var _loc13_:b2Vec2 = null;
         var _loc20_:§6! § = null;
         var _loc23_:* = NaN;
         §§push(param2.§!1§);
         if(!(_loc25_ && param1))
         {
            §§push(int(§§pop()));
         }
         var _loc7_:* = §§pop();
         var _loc8_:Vector.<b2Vec2> = param2.§0!O§;
         §§push(param5.§!1§);
         if(!_loc25_)
         {
            §§push(int(§§pop()));
         }
         var _loc9_:* = §§pop();
         var _loc10_:Vector.<b2Vec2> = param5.§-!L§;
         var _loc11_:Vector.<b2Vec2> = param5.§0!O§;
         _loc12_ = param3.R;
         _loc13_ = _loc8_[param4];
         §§push(_loc12_.col1.x);
         if(_loc24_ || param2)
         {
            §§push(_loc13_.x);
            if(!_loc25_)
            {
               §§push(§§pop() * §§pop());
               if(!(_loc25_ && param1))
               {
                  §§push(_loc12_.col2.x);
                  if(!(_loc25_ && param2))
                  {
                     addr97:
                     §§push(§§pop() * _loc13_.y);
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc24_ || param3)
                  {
                     addr108:
                     §§push(Number(§§pop()));
                  }
                  var _loc14_:* = §§pop();
                  §§push(_loc12_.col1.y);
                  if(!(_loc25_ && param2))
                  {
                     §§push(_loc13_.x);
                     if(!(_loc25_ && param2))
                     {
                        §§push(§§pop() * §§pop());
                        if(!(_loc25_ && b2Collision))
                        {
                           addr137:
                           §§push(_loc12_.col2.y);
                           if(!(_loc25_ && param2))
                           {
                              addr150:
                              §§push(§§pop() + §§pop() * _loc13_.y);
                              if(_loc24_)
                              {
                                 addr153:
                                 §§push(Number(§§pop()));
                              }
                              var _loc15_:* = §§pop();
                              §§push((_loc12_ = param6.R).col1.x);
                              if(!(_loc25_ && param3))
                              {
                                 §§push(_loc14_);
                                 if(!_loc25_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(_loc24_ || b2Collision)
                                    {
                                       §§push(_loc12_.col1.y);
                                       if(_loc24_ || param3)
                                       {
                                          addr190:
                                          §§push(§§pop() * _loc15_);
                                       }
                                       §§push(§§pop() + §§pop());
                                       if(_loc25_ && param1)
                                       {
                                       }
                                       addr201:
                                       var _loc16_:* = §§pop();
                                       if(!_loc25_)
                                       {
                                          §§push(_loc12_.col2.x);
                                          if(_loc24_)
                                          {
                                             §§push(_loc14_);
                                             if(_loc24_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!(_loc25_ && param3))
                                                {
                                                   §§push(_loc12_.col2.y);
                                                   if(_loc24_ || b2Collision)
                                                   {
                                                      addr230:
                                                      §§push(§§pop() * _loc15_);
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                   if(_loc24_ || b2Collision)
                                                   {
                                                      addr240:
                                                      §§push(Number(§§pop()));
                                                      if(!(_loc25_ && param1))
                                                      {
                                                         addr248:
                                                         _loc15_ = §§pop();
                                                         if(!(_loc25_ && param2))
                                                         {
                                                            addr256:
                                                            §§push(_loc16_);
                                                            if(_loc24_ || b2Collision)
                                                            {
                                                               addr265:
                                                               _loc14_ = Number(§§pop());
                                                            }
                                                            §§goto(addr265);
                                                         }
                                                         var _loc17_:* = 0;
                                                         var _loc18_:* = Number(Number.MAX_VALUE);
                                                         var _loc19_:int = 0;
                                                         loop0:
                                                         while(true)
                                                         {
                                                            §§push(_loc19_);
                                                            if(_loc24_)
                                                            {
                                                               §§push(_loc9_);
                                                               if(_loc24_)
                                                               {
                                                                  if(§§pop() >= §§pop())
                                                                  {
                                                                     §§push(_loc17_);
                                                                     if(_loc24_ || param1)
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
                                                                     if(!(_loc25_ && param2))
                                                                     {
                                                                        §§push(_loc13_.x);
                                                                        if(_loc24_ || param2)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(_loc24_ || param2)
                                                                           {
                                                                              addr331:
                                                                              §§push(_loc15_);
                                                                              if(!(_loc25_ && b2Collision))
                                                                              {
                                                                                 §§push(§§pop() * _loc13_.y);
                                                                                 if(_loc24_)
                                                                                 {
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(!_loc25_)
                                                                                    {
                                                                                       addr347:
                                                                                       §§push(Number(§§pop()));
                                                                                       if(_loc24_)
                                                                                       {
                                                                                          addr350:
                                                                                          §§push(§§pop());
                                                                                          if(_loc24_)
                                                                                          {
                                                                                             addr353:
                                                                                             _loc23_ = §§pop();
                                                                                             if(!_loc25_)
                                                                                             {
                                                                                                §§push(_loc18_);
                                                                                             }
                                                                                             loop5:
                                                                                             while(true)
                                                                                             {
                                                                                                _loc18_ = §§pop();
                                                                                                loop3:
                                                                                                while(true)
                                                                                                {
                                                                                                   loop2:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc19_);
                                                                                                      if(_loc24_)
                                                                                                      {
                                                                                                         §§push(int(§§pop()));
                                                                                                      }
                                                                                                      _loc17_ = §§pop();
                                                                                                      addr303:
                                                                                                      addr305:
                                                                                                      while(_loc25_)
                                                                                                      {
                                                                                                         continue loop3;
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc19_++;
                                                                                                         if(!(_loc25_ && param1))
                                                                                                         {
                                                                                                            if(!_loc25_)
                                                                                                            {
                                                                                                               if(true)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               continue loop2;
                                                                                                            }
                                                                                                            addr358:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc23_);
                                                                                                               if(!_loc25_)
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                               }
                                                                                                               continue loop5;
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr303);
                                                                                                         }
                                                                                                         §§goto(addr305);
                                                                                                      }
                                                                                                      continue loop0;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             addr362:
                                                                                          }
                                                                                          if(§§pop() < §§pop())
                                                                                          {
                                                                                             §§goto(addr358);
                                                                                          }
                                                                                          §§goto(addr305);
                                                                                       }
                                                                                       §§goto(addr362);
                                                                                    }
                                                                                    §§goto(addr350);
                                                                                 }
                                                                              }
                                                                              §§goto(addr353);
                                                                           }
                                                                           §§goto(addr347);
                                                                        }
                                                                        §§goto(addr353);
                                                                     }
                                                                     §§goto(addr331);
                                                                  }
                                                                  §§goto(addr358);
                                                               }
                                                               addr381:
                                                               var _loc21_:* = §§pop();
                                                               if(_loc24_)
                                                               {
                                                                  §§push(1);
                                                                  if(!_loc25_)
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     if(_loc24_)
                                                                     {
                                                                        if(§§pop() < _loc9_)
                                                                        {
                                                                           §§push(_loc21_);
                                                                           if(!_loc25_)
                                                                           {
                                                                              addr398:
                                                                              addr397:
                                                                              §§push(int(§§pop() + 1));
                                                                              if(_loc24_)
                                                                              {
                                                                                 addr401:
                                                                              }
                                                                              addr406:
                                                                              var _loc22_:* = §§pop();
                                                                              _loc20_ = param1[0];
                                                                              _loc13_ = _loc10_[_loc21_];
                                                                              _loc12_ = param6.R;
                                                                              if(_loc24_ || param2)
                                                                              {
                                                                                 §§push(_loc20_.v);
                                                                                 loop7:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(param6.position);
                                                                                    addr599:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().x);
                                                                                       addr600:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc12_.col1);
                                                                                          addr602:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop().x);
                                                                                             addr603:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc13_.x);
                                                                                                if(_loc24_ || param2)
                                                                                                {
                                                                                                   addr627:
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(_loc24_ || param3)
                                                                                                   {
                                                                                                      §§push(_loc12_.col2);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop().x);
                                                                                                         addr623:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc13_.y);
                                                                                                            addr625:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               addr626:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      addr622:
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      addr628:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§pop().x = §§pop();
                                                                                                         continue loop7;
                                                                                                      }
                                                                                                   }
                                                                                                   addr627:
                                                                                                }
                                                                                                §§goto(addr623);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr486);
                                                                           }
                                                                           addr405:
                                                                           §§push(int(§§pop()));
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(0);
                                                                           if(_loc24_)
                                                                           {
                                                                              §§goto(addr405);
                                                                           }
                                                                        }
                                                                        §§goto(addr406);
                                                                     }
                                                                     §§goto(addr398);
                                                                  }
                                                                  §§goto(addr397);
                                                               }
                                                               §§goto(addr401);
                                                            }
                                                            break;
                                                         }
                                                         §§goto(addr381);
                                                         §§push(§§pop());
                                                      }
                                                      §§goto(addr265);
                                                   }
                                                   §§goto(addr248);
                                                }
                                                §§goto(addr240);
                                             }
                                             §§goto(addr230);
                                          }
                                          §§goto(addr240);
                                       }
                                       §§goto(addr256);
                                    }
                                    §§goto(addr201);
                                    §§push(Number(§§pop()));
                                 }
                                 §§goto(addr190);
                              }
                              §§goto(addr201);
                           }
                           §§goto(addr150);
                        }
                        §§goto(addr153);
                     }
                     §§goto(addr150);
                  }
                  §§goto(addr137);
               }
               §§goto(addr108);
            }
            §§goto(addr97);
         }
         §§goto(addr108);
      }
      
      private static function §'R§() : Vector.<§6! §>
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Vector.<§6! §> = new Vector.<§6! §>(2);
         if(!(_loc3_ && b2Collision))
         {
            _loc1_[0] = new §6! §();
            do
            {
               _loc1_[1] = new §6! §();
            }
            while(_loc3_ && _loc2_);
            
         }
         return _loc1_;
      }
      
      public static function §#!s§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2PolygonShape, param5:b2Transform) : void
      {
         var _loc46_:Boolean = true;
         var _loc47_:Boolean = false;
         var _loc6_:§6! § = null;
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
            param1.§26§ = 0;
         }
         var _loc7_:Number = param2.§,!;§ + param4.§,!;§;
         var _loc8_:* = 0;
         if(!(_loc47_ && param1))
         {
            §=!1§[0] = _loc8_;
         }
         §§push(§&!§(§=!1§,param2,param3,param4,param5));
         if(_loc46_ || param3)
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         if(!(_loc47_ && param1))
         {
            §§push(int(§=!1§[0]));
            if(!_loc47_)
            {
               _loc8_ = §§pop();
               if(!_loc47_)
               {
                  addr110:
                  if(_loc9_ > _loc7_)
                  {
                     if(!(_loc47_ && param2))
                     {
                        §§goto(addr120);
                     }
                  }
                  §§goto(addr122);
               }
               addr120:
               return;
            }
            addr122:
            var _loc10_:int = 0;
            if(_loc46_)
            {
               §&-§[0] = _loc10_;
            }
            §§push(§&!§(§&-§,param4,param5,param2,param3));
            if(_loc46_)
            {
               §§push(Number(§§pop()));
            }
            var _loc11_:* = §§pop();
            if(!(_loc47_ && param2))
            {
               _loc10_ = §&-§[0];
               if(_loc46_ || param2)
               {
                  §§push(_loc11_);
                  if(_loc46_ || param1)
                  {
                     if(§§pop() > _loc7_)
                     {
                        if(!_loc47_)
                        {
                           §§goto(addr171);
                        }
                        else
                        {
                           addr172:
                           §§push(0.98);
                           if(!_loc47_)
                           {
                              addr175:
                              §§push(Number(§§pop()));
                           }
                           var _loc18_:* = §§pop();
                           §§push(0.001);
                           if(!_loc47_)
                           {
                              §§push(Number(§§pop()));
                           }
                           var _loc19_:* = §§pop();
                           if(_loc46_ || param1)
                           {
                              §§push(_loc11_);
                              §§push(_loc18_);
                              if(!(_loc47_ && param1))
                              {
                                 §§push(_loc9_);
                                 if(!(_loc47_ && b2Collision))
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(!_loc47_)
                                    {
                                       addr210:
                                       §§push(§§pop() + _loc19_);
                                    }
                                    if(§§pop() > §§pop())
                                    {
                                       addr212:
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
                                             addr264:
                                             while(true)
                                             {
                                                _loc16_ = §§pop();
                                             }
                                             addr236:
                                             if(!(_loc46_ || param1))
                                             {
                                                continue;
                                             }
                                             _loc17_ = §§pop();
                                             if(!(_loc47_ && param3))
                                             {
                                                if(_loc46_)
                                                {
                                                   if(false)
                                                   {
                                                      while(true)
                                                      {
                                                         param1.§6m§ = b2Manifold.§8!p§;
                                                         addr261:
                                                         while(true)
                                                         {
                                                            §§push(1);
                                                            if(_loc47_ && param2)
                                                            {
                                                               break;
                                                            }
                                                            §§goto(addr236);
                                                         }
                                                         §§goto(addr264);
                                                      }
                                                      addr256:
                                                   }
                                                   addr316:
                                                   var _loc21_:Vector.<§6! §> = §0!6§;
                                                   if(_loc46_)
                                                   {
                                                      §4!`§(_loc21_,_loc12_,_loc14_,_loc16_,_loc13_,_loc15_);
                                                   }
                                                   §§push(_loc12_.§!1§);
                                                   if(_loc46_)
                                                   {
                                                      §§push(int(§§pop()));
                                                   }
                                                   var _loc22_:* = §§pop();
                                                   var _loc23_:Vector.<b2Vec2>;
                                                   var _loc24_:b2Vec2 = (_loc23_ = _loc12_.§-!L§)[_loc16_];
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
                                                      §§push(_loc26_ = §8a§);
                                                      §§push(_loc25_.x);
                                                      if(_loc46_)
                                                      {
                                                         §§push(_loc24_.x);
                                                         if(!_loc47_)
                                                         {
                                                            addr379:
                                                            §§push(§§pop() - §§pop());
                                                            §§push(_loc25_.y);
                                                            if(!(_loc47_ && param1))
                                                            {
                                                               addr388:
                                                               §§push(§§pop() - _loc24_.y);
                                                            }
                                                            §§pop().Set(§§pop(),§§pop());
                                                            if(!(_loc47_ && b2Collision))
                                                            {
                                                               _loc26_.Normalize();
                                                            }
                                                            var _loc27_:b2Vec2;
                                                            (_loc27_ = §5!>§).x = _loc26_.y;
                                                            if(_loc46_ || b2Collision)
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
                                                            §§push(_loc28_ = §@w§);
                                                            §§push(0.5);
                                                            if(_loc46_ || b2Collision)
                                                            {
                                                               §§push(_loc24_.x);
                                                               if(_loc46_ || param2)
                                                               {
                                                                  §§push(_loc25_.x);
                                                                  if(_loc46_ || param2)
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     if(!_loc47_)
                                                                     {
                                                                        addr461:
                                                                        §§push(§§pop() * §§pop());
                                                                        §§push(0.5);
                                                                        if(_loc46_)
                                                                        {
                                                                           addr464:
                                                                           §§push(_loc24_.y);
                                                                           if(!_loc47_)
                                                                           {
                                                                              addr468:
                                                                              §§push(§§pop() + _loc25_.y);
                                                                           }
                                                                           §§push(§§pop() * §§pop());
                                                                        }
                                                                        §§pop().Set(§§pop(),§§pop());
                                                                        var _loc29_:b2Vec2 = §`!J§;
                                                                        _loc20_ = _loc14_.R;
                                                                        if(!_loc47_)
                                                                        {
                                                                           §§push(_loc29_);
                                                                           §§push(_loc20_.col1.x);
                                                                           if(_loc46_)
                                                                           {
                                                                              §§push(_loc26_.x);
                                                                              if(_loc46_ || b2Collision)
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(_loc46_)
                                                                                 {
                                                                                    addr500:
                                                                                    §§push(_loc20_.col2.x);
                                                                                    if(!_loc47_)
                                                                                    {
                                                                                       addr505:
                                                                                       §§push(§§pop() * _loc26_.y);
                                                                                    }
                                                                                    §§push(§§pop() + §§pop());
                                                                                 }
                                                                                 §§pop().x = §§pop();
                                                                                 if(!(_loc47_ && param2))
                                                                                 {
                                                                                    §§push(_loc29_);
                                                                                    §§push(_loc20_.col1.y);
                                                                                    if(_loc46_)
                                                                                    {
                                                                                       §§push(_loc26_.x);
                                                                                       if(_loc46_ || b2Collision)
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(!_loc47_)
                                                                                          {
                                                                                             addr535:
                                                                                             §§push(_loc20_.col2.y);
                                                                                             if(!_loc47_)
                                                                                             {
                                                                                                addr540:
                                                                                                §§push(§§pop() * _loc26_.y);
                                                                                             }
                                                                                             §§push(§§pop() + §§pop());
                                                                                          }
                                                                                          §§pop().y = §§pop();
                                                                                          addr545:
                                                                                          var _loc30_:b2Vec2;
                                                                                          §§push(_loc30_ = s_tangent2);
                                                                                          §§push(_loc29_.x);
                                                                                          if(!(_loc47_ && param3))
                                                                                          {
                                                                                             §§push(-§§pop());
                                                                                          }
                                                                                          §§pop().x = §§pop();
                                                                                          if(!(_loc47_ && b2Collision))
                                                                                          {
                                                                                             §§push(_loc30_);
                                                                                             §§push(_loc29_.y);
                                                                                             if(!(_loc47_ && b2Collision))
                                                                                             {
                                                                                                §§push(-§§pop());
                                                                                             }
                                                                                             §§pop().y = §§pop();
                                                                                          }
                                                                                          var _loc31_:b2Vec2;
                                                                                          (_loc31_ = §?!H§).x = _loc29_.y;
                                                                                          if(!_loc47_)
                                                                                          {
                                                                                             §§push(_loc31_);
                                                                                             §§push(_loc29_.x);
                                                                                             if(_loc46_ || param3)
                                                                                             {
                                                                                                §§push(-§§pop());
                                                                                             }
                                                                                             §§pop().y = §§pop();
                                                                                          }
                                                                                          var _loc32_:b2Vec2 = s_v11;
                                                                                          var _loc33_:b2Vec2 = s_v12;
                                                                                          if(!(_loc47_ && param1))
                                                                                          {
                                                                                             §§push(_loc32_);
                                                                                             §§push(_loc14_.position.x);
                                                                                             if(_loc46_)
                                                                                             {
                                                                                                §§push(_loc20_.col1.x);
                                                                                                if(!_loc47_)
                                                                                                {
                                                                                                   §§push(_loc24_.x);
                                                                                                   if(!(_loc47_ && param1))
                                                                                                   {
                                                                                                      addr797:
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      if(!_loc47_)
                                                                                                      {
                                                                                                         addr787:
                                                                                                         §§push(_loc20_.col2.x);
                                                                                                         if(!_loc47_)
                                                                                                         {
                                                                                                            addr792:
                                                                                                            §§push(§§pop() * _loc24_.y);
                                                                                                         }
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                      }
                                                                                                      §§pop().x = §§pop() + §§pop();
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc32_);
                                                                                                         §§push(_loc14_.position.y);
                                                                                                         if(_loc46_ || param3)
                                                                                                         {
                                                                                                            §§push(_loc20_.col1.y);
                                                                                                            if(!(_loc47_ && param1))
                                                                                                            {
                                                                                                               §§push(_loc24_.x);
                                                                                                               if(!(_loc47_ && param2))
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(_loc46_)
                                                                                                                  {
                                                                                                                     addr759:
                                                                                                                     §§push(_loc20_.col2.y);
                                                                                                                     if(!(_loc47_ && b2Collision))
                                                                                                                     {
                                                                                                                        addr755:
                                                                                                                        §§push(§§pop() * _loc24_.y);
                                                                                                                     }
                                                                                                                     §§pop().y = §§pop() + (§§pop() + §§pop());
                                                                                                                     loop7:
                                                                                                                     while(_loc46_)
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc33_);
                                                                                                                              §§push(_loc14_.position.x);
                                                                                                                              if(_loc46_)
                                                                                                                              {
                                                                                                                                 §§push(_loc20_.col1.x);
                                                                                                                                 if(_loc46_ || param1)
                                                                                                                                 {
                                                                                                                                    §§push(_loc25_.x);
                                                                                                                                    if(!(_loc47_ && param1))
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       if(_loc46_)
                                                                                                                                       {
                                                                                                                                          addr708:
                                                                                                                                          §§push(_loc20_.col2.x);
                                                                                                                                          if(_loc46_)
                                                                                                                                          {
                                                                                                                                             addr704:
                                                                                                                                             §§push(§§pop() * _loc25_.y);
                                                                                                                                          }
                                                                                                                                          §§pop().x = §§pop() + (§§pop() + §§pop());
                                                                                                                                          do
                                                                                                                                          {
                                                                                                                                             §§push(_loc33_);
                                                                                                                                             §§push(_loc14_.position.y);
                                                                                                                                             if(!(_loc46_ || param3))
                                                                                                                                             {
                                                                                                                                                continue;
                                                                                                                                             }
                                                                                                                                             §§push(_loc20_.col1.y);
                                                                                                                                             if(!(_loc47_ && param2))
                                                                                                                                             {
                                                                                                                                                §§push(_loc25_.x);
                                                                                                                                                if(!_loc47_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                   if(_loc46_)
                                                                                                                                                   {
                                                                                                                                                      addr643:
                                                                                                                                                      §§push(_loc20_.col2.y);
                                                                                                                                                      if(!_loc47_)
                                                                                                                                                      {
                                                                                                                                                         addr651:
                                                                                                                                                         §§push(§§pop() + §§pop() * _loc25_.y);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr651);
                                                                                                                                                   }
                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                   continue;
                                                                                                                                                }
                                                                                                                                                §§goto(addr651);
                                                                                                                                             }
                                                                                                                                             §§goto(addr643);
                                                                                                                                          }
                                                                                                                                          while(§§pop().y = §§pop(), _loc47_);
                                                                                                                                          
                                                                                                                                          continue;
                                                                                                                                       }
                                                                                                                                       §§goto(addr708);
                                                                                                                                    }
                                                                                                                                    §§goto(addr704);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr708);
                                                                                                                           }
                                                                                                                           continue loop7;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  §§goto(addr759);
                                                                                                               }
                                                                                                               §§goto(addr755);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr759);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr792);
                                                                                                }
                                                                                                §§goto(addr787);
                                                                                             }
                                                                                             §§goto(addr797);
                                                                                          }
                                                                                          §§goto(addr763);
                                                                                       }
                                                                                       §§goto(addr540);
                                                                                    }
                                                                                    §§goto(addr535);
                                                                                 }
                                                                                 §§goto(addr545);
                                                                              }
                                                                              §§goto(addr505);
                                                                           }
                                                                           §§goto(addr500);
                                                                        }
                                                                        §§goto(addr545);
                                                                     }
                                                                     §§goto(addr464);
                                                                  }
                                                                  §§goto(addr468);
                                                               }
                                                               §§goto(addr464);
                                                            }
                                                            §§goto(addr461);
                                                         }
                                                         §§goto(addr388);
                                                      }
                                                      §§goto(addr379);
                                                   }
                                                   §§goto(addr351);
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr256);
                                                }
                                                addr265:
                                             }
                                             §§goto(addr261);
                                          }
                                       }
                                       §§goto(addr265);
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
                                          while(true)
                                          {
                                             §§push(int(§§pop()));
                                             addr314:
                                             while(true)
                                             {
                                                _loc16_ = §§pop();
                                                addr315:
                                                loop2:
                                                while(true)
                                                {
                                                   addr304:
                                                   while(true)
                                                   {
                                                      param1.§6m§ = b2Manifold.§3!u§;
                                                      addr309:
                                                      while(_loc46_)
                                                      {
                                                      }
                                                      continue loop2;
                                                   }
                                                }
                                             }
                                          }
                                          addr313:
                                       }
                                       while(true)
                                       {
                                          §§push(0);
                                          if(!_loc47_)
                                          {
                                             if(!_loc47_)
                                             {
                                                _loc17_ = §§pop();
                                                if(!(_loc47_ && param1))
                                                {
                                                   if(true)
                                                   {
                                                      break;
                                                   }
                                                   §§goto(addr304);
                                                }
                                                §§goto(addr309);
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
                              }
                              §§goto(addr210);
                           }
                           §§goto(addr212);
                        }
                     }
                     §§goto(addr172);
                  }
                  §§goto(addr175);
               }
               §§goto(addr172);
            }
            addr171:
            return;
         }
         §§goto(addr110);
      }
      
      public static function §"D§(param1:b2Manifold, param2:b2CircleShape, param3:b2Transform, param4:b2CircleShape, param5:b2Transform) : void
      {
         var _loc16_:Boolean = true;
         var _loc17_:Boolean = false;
         var _loc6_:b2Mat22 = null;
         var _loc7_:b2Vec2 = null;
         if(!_loc17_)
         {
            param1.§26§ = 0;
         }
         _loc6_ = param3.R;
         _loc7_ = param2.§4b§;
         §§push(param3.position.x);
         if(_loc16_ || param1)
         {
            §§push(_loc6_.col1.x);
            if(_loc16_)
            {
               §§push(_loc7_.x);
               if(_loc16_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc16_)
                  {
                     addr57:
                     §§push(_loc6_.col2.x);
                     if(!_loc17_)
                     {
                        addr65:
                        §§push(§§pop() + §§pop() * _loc7_.y);
                     }
                     §§goto(addr65);
                  }
                  §§push(§§pop() + §§pop());
                  if(!_loc17_)
                  {
                     addr69:
                     §§push(Number(§§pop()));
                  }
                  var _loc8_:* = §§pop();
                  §§push(param3.position.y);
                  if(_loc16_)
                  {
                     §§push(_loc6_.col1.y);
                     if(_loc16_ || param1)
                     {
                        §§push(_loc7_.x);
                        if(!_loc17_)
                        {
                           addr107:
                           §§push(§§pop() * §§pop());
                           if(_loc16_ || param1)
                           {
                              §§push(_loc6_.col2.y);
                              if(!_loc17_)
                              {
                                 §§push(§§pop() * _loc7_.y);
                              }
                           }
                           §§push(§§pop() + §§pop());
                           if(_loc16_)
                           {
                              addr111:
                              var _loc9_:Number = §§pop();
                              _loc6_ = param5.R;
                              _loc7_ = param4.§4b§;
                              §§push(param5.position.x);
                              if(_loc16_ || b2Collision)
                              {
                                 §§push(_loc6_.col1.x);
                                 if(_loc16_ || param2)
                                 {
                                    §§push(_loc7_.x);
                                    if(!(_loc17_ && b2Collision))
                                    {
                                       addr161:
                                       §§push(§§pop() * §§pop());
                                       if(!_loc17_)
                                       {
                                          §§push(_loc6_.col2.x);
                                          if(!_loc17_)
                                          {
                                             §§push(§§pop() * _loc7_.y);
                                          }
                                       }
                                       §§push(§§pop() + §§pop());
                                       if(_loc16_ || param3)
                                       {
                                          addr169:
                                          §§push(Number(§§pop()));
                                       }
                                       var _loc10_:* = §§pop();
                                       §§push(param5.position.y);
                                       if(!(_loc17_ && b2Collision))
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
                                                   addr227:
                                                   §§push(_loc6_.col2.y);
                                                   if(_loc16_ || param3)
                                                   {
                                                      addr223:
                                                      §§push(§§pop() * _loc7_.y);
                                                   }
                                                   §§push(§§pop() + (§§pop() + §§pop()));
                                                   if(!_loc17_)
                                                   {
                                                      addr231:
                                                      var _loc11_:Number = §§pop();
                                                      §§push(_loc10_);
                                                      if(!_loc17_)
                                                      {
                                                         §§push(§§pop() - _loc8_);
                                                         if(_loc16_ || b2Collision)
                                                         {
                                                            §§push(Number(§§pop()));
                                                         }
                                                      }
                                                      var _loc12_:* = §§pop();
                                                      §§push(_loc11_);
                                                      if(!(_loc17_ && param3))
                                                      {
                                                         §§push(§§pop() - _loc9_);
                                                         if(!_loc17_)
                                                         {
                                                            addr258:
                                                            §§push(Number(§§pop()));
                                                         }
                                                         var _loc13_:* = §§pop();
                                                         §§push(_loc12_);
                                                         if(_loc16_)
                                                         {
                                                            §§push(_loc12_);
                                                            if(!_loc17_)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(!(_loc17_ && param2))
                                                               {
                                                                  §§push(_loc13_);
                                                                  if(_loc16_ || b2Collision)
                                                                  {
                                                                     addr282:
                                                                     §§push(§§pop() * _loc13_);
                                                                  }
                                                                  §§push(§§pop() + §§pop());
                                                                  if(_loc17_ && param2)
                                                                  {
                                                                  }
                                                               }
                                                               §§goto(addr293);
                                                            }
                                                            §§goto(addr282);
                                                         }
                                                         addr293:
                                                         var _loc14_:Number = §§pop();
                                                         var _loc15_:Number = param2.§,!;§ + param4.§,!;§;
                                                         if(!(_loc17_ && param2))
                                                         {
                                                            §§push(_loc14_);
                                                            §§push(_loc15_);
                                                            if(!(_loc17_ && param1))
                                                            {
                                                               §§push(§§pop() * _loc15_);
                                                            }
                                                            if(§§pop() <= §§pop())
                                                            {
                                                               while(true)
                                                               {
                                                                  param1.§6m§ = b2Manifold.§1K§;
                                                                  while(true)
                                                                  {
                                                                     param1.m_localPoint.SetV(param2.§4b§);
                                                                     while(true)
                                                                     {
                                                                        param1.§'c§.§5!H§();
                                                                        §§goto(addr370);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            return;
                                                         }
                                                         addr370:
                                                         loop3:
                                                         while(true)
                                                         {
                                                            param1.§26§ = 1;
                                                            loop4:
                                                            while(!_loc17_)
                                                            {
                                                               param1.§"A§[0].m_localPoint.SetV(param4.§4b§);
                                                               while(true)
                                                               {
                                                                  if(_loc16_ || param1)
                                                                  {
                                                                     continue loop3;
                                                                  }
                                                                  continue loop4;
                                                                  addr358:
                                                                  param1.§"A§[0].m_id.key = 0;
                                                                  if(!_loc17_)
                                                                  {
                                                                     continue loop2;
                                                                  }
                                                               }
                                                               continue loop3;
                                                            }
                                                            continue loop1;
                                                         }
                                                         addr332:
                                                         return;
                                                      }
                                                      §§goto(addr258);
                                                   }
                                                   §§goto(addr231);
                                                }
                                                §§goto(addr227);
                                             }
                                             §§goto(addr223);
                                          }
                                          §§goto(addr227);
                                       }
                                       §§goto(addr231);
                                    }
                                    §§push(§§pop() + §§pop());
                                 }
                                 §§goto(addr161);
                              }
                              §§goto(addr169);
                           }
                           §§goto(addr111);
                        }
                        §§push(§§pop() + §§pop());
                     }
                     §§goto(addr107);
                  }
                  §§goto(addr111);
               }
               §§goto(addr65);
            }
            §§goto(addr57);
         }
         §§goto(addr69);
      }
      
      public static function §@8§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2CircleShape, param5:b2Transform) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfuscation" for better results.
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public static function §]",§(param1:b2AABB, param2:b2AABB) : Boolean
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc3_:b2Vec2 = param2.§?J§;
         var _loc4_:b2Vec2 = param1.§1^§;
         §§push(_loc3_.x);
         if(!(_loc9_ && param1))
         {
            §§push(§§pop() - _loc4_.x);
            if(_loc10_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         §§push(_loc3_.y);
         if(_loc10_)
         {
            §§push(§§pop() - _loc4_.y);
            if(!(_loc9_ && param2))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc6_:* = §§pop();
         _loc3_ = param1.§?J§;
         _loc4_ = param2.§1^§;
         §§push(_loc3_.x);
         if(_loc10_ || param2)
         {
            §§push(§§pop() - _loc4_.x);
            if(_loc10_ || param2)
            {
               addr84:
               §§push(Number(§§pop()));
            }
            var _loc7_:* = §§pop();
            §§push(_loc3_.y);
            if(!(_loc9_ && b2Collision))
            {
               §§push(§§pop() - _loc4_.y);
               if(!_loc9_)
               {
                  addr100:
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
                                       while(_loc10_)
                                       {
                                          §§push(0);
                                          while(true)
                                          {
                                             §§push(§§pop() > §§pop());
                                             loop12:
                                             while(!(_loc9_ && _loc3_))
                                             {
                                                if(!(_loc9_ && param1))
                                                {
                                                   §§push(§§pop() > §§pop());
                                                   loop13:
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      if(_loc9_)
                                                      {
                                                         break;
                                                      }
                                                      if(!§§pop())
                                                      {
                                                         loop14:
                                                         while(!(_loc9_ && param1))
                                                         {
                                                            §§pop();
                                                            loop15:
                                                            while(true)
                                                            {
                                                               §§push(_loc8_);
                                                               if(!_loc9_)
                                                               {
                                                                  if(!_loc10_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§push(0);
                                                                  if(_loc9_ && param2)
                                                                  {
                                                                     continue loop12;
                                                                  }
                                                                  §§push(§§pop() > §§pop());
                                                                  if(_loc10_)
                                                                  {
                                                                     if(_loc10_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(_loc9_)
                                                                              {
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 if(!(_loc10_ || b2Collision))
                                                                                 {
                                                                                    continue loop5;
                                                                                 }
                                                                              }
                                                                              if(!_loc10_)
                                                                              {
                                                                                 continue loop15;
                                                                                 addr161:
                                                                              }
                                                                              if(_loc9_)
                                                                              {
                                                                                 §§goto(addr161);
                                                                              }
                                                                              addr218:
                                                                              addr229:
                                                                              addr161:
                                                                              §§push(false);
                                                                              if(_loc10_ || param1)
                                                                              {
                                                                                 return §§pop();
                                                                              }
                                                                              continue loop4;
                                                                              return false;
                                                                           }
                                                                           §§push(true);
                                                                           if(_loc10_)
                                                                           {
                                                                              if(_loc10_)
                                                                              {
                                                                                 if(_loc10_)
                                                                                 {
                                                                                    if(_loc10_ || _loc3_)
                                                                                    {
                                                                                       return §§pop();
                                                                                    }
                                                                                    continue loop2;
                                                                                 }
                                                                                 continue loop13;
                                                                              }
                                                                              continue loop14;
                                                                           }
                                                                           §§goto(addr161);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           addr179:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc7_);
                                                                              addr181:
                                                                              while(true)
                                                                              {
                                                                                 continue loop12;
                                                                              }
                                                                           }
                                                                        }
                                                                        addr152:
                                                                        addr230:
                                                                     }
                                                                     §§goto(addr229);
                                                                  }
                                                                  §§goto(addr161);
                                                               }
                                                               §§goto(addr181);
                                                            }
                                                            continue loop6;
                                                         }
                                                         while(!§§pop())
                                                         {
                                                            §§goto(addr179);
                                                            §§goto(addr201);
                                                         }
                                                         addr201:
                                                         §§goto(addr218);
                                                         addr217:
                                                      }
                                                      §§goto(addr152);
                                                   }
                                                   continue loop3;
                                                }
                                                continue loop1;
                                             }
                                          }
                                       }
                                       continue loop0;
                                    }
                                 }
                              }
                              while(true)
                              {
                                 §§goto(addr217);
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr230);
            }
            §§goto(addr100);
         }
         §§goto(addr84);
      }
   }
}
