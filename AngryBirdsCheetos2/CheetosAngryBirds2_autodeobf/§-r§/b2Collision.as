package §-r§
{
   import §"0§.*;
   import §6!H§.*;
   import §]!S§.*;
   
   use namespace b2internal;
   
   public class b2Collision
   {
      
      public static const b2_nullFeature:uint = 255;
      
      private static var §3!f§:Vector.<§<#§>;
      
      private static var s_clipPoints1:Vector.<§<#§>;
      
      private static var s_clipPoints2:Vector.<§<#§>;
      
      private static var §??§:Vector.<int>;
      
      private static var §>!?§:Vector.<int>;
      
      private static var §14§:b2Vec2;
      
      private static var §^!4§:b2Vec2;
      
      private static var §9_§:b2Vec2;
      
      private static var §]!7§:b2Vec2;
      
      private static var §0$§:b2Vec2;
      
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
            while(true)
            {
               §3!f§ = §;w§();
               addr126:
               if(!(_loc1_ || b2Collision))
               {
                  continue;
               }
               s_tangent2 = new b2Vec2();
               loop11:
               while(true)
               {
                  if(_loc1_)
                  {
                     addr80:
                     if(!(_loc2_ && _loc1_))
                     {
                        addr87:
                        if(_loc1_ || _loc1_)
                        {
                           addr94:
                           if(_loc1_ || _loc1_)
                           {
                              s_v11 = new b2Vec2();
                              loop12:
                              while(!(_loc2_ && _loc2_))
                              {
                                 s_v12 = new b2Vec2();
                                 while(!_loc2_)
                                 {
                                    b2CollidePolyTempVec = new b2Vec2();
                                    if(!_loc1_)
                                    {
                                       continue;
                                    }
                                    if(!_loc1_)
                                    {
                                       continue loop12;
                                    }
                                    addr37:
                                    if(!(_loc2_ && _loc1_))
                                    {
                                       addr44:
                                       if(!(_loc2_ && b2Collision))
                                       {
                                          return;
                                       }
                                       addr210:
                                       while(true)
                                       {
                                          s_clipPoints1 = §;w§();
                                          addr194:
                                          while(true)
                                          {
                                             s_clipPoints2 = §;w§();
                                             addr188:
                                             while(true)
                                             {
                                                §??§ = new Vector.<int>(1);
                                                break loop12;
                                             }
                                             §§goto(addr94);
                                          }
                                          §§goto(addr44);
                                       }
                                    }
                                    while(true)
                                    {
                                       §>!?§ = new Vector.<int>(1);
                                       while(true)
                                       {
                                          §14§ = new b2Vec2();
                                          addr164:
                                          while(true)
                                          {
                                             §^!4§ = new b2Vec2();
                                             addr158:
                                             while(true)
                                             {
                                                §9_§ = new b2Vec2();
                                                break loop11;
                                                §§goto(addr87);
                                             }
                                          }
                                          addr119:
                                          if(_loc2_ && _loc2_)
                                          {
                                             continue;
                                          }
                                          §§goto(addr126);
                                       }
                                       §§goto(addr37);
                                    }
                                 }
                                 continue loop11;
                              }
                              while(_loc1_ || _loc2_)
                              {
                                 §0$§ = new b2Vec2();
                                 while(!_loc2_)
                                 {
                                    §§goto(addr119);
                                 }
                                 §§goto(addr164);
                                 §§goto(addr65);
                              }
                              addr65:
                              §§goto(addr188);
                              addr139:
                           }
                           §§goto(addr194);
                        }
                        §§goto(addr158);
                     }
                     break;
                  }
                  §§goto(addr117);
               }
               while(true)
               {
                  §]!7§ = new b2Vec2();
                  §§goto(addr139);
                  §§goto(addr80);
               }
            }
         }
         §§goto(addr210);
      }
      
      public function b2Collision()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super();
         }
      }
      
      public static function §8H§(param1:Vector.<§<#§>, param2:Vector.<§<#§>, param3:b2Vec2, param4:Number) : int
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc5_:§<#§ = null;
         var _loc6_:int = 0;
         var _loc7_:b2Vec2 = null;
         var _loc9_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:b2Vec2 = null;
         var _loc13_:§<#§ = null;
         if(_loc15_ || param2)
         {
            _loc6_ = 0;
         }
         _loc7_ = (_loc5_ = param2[0]).v;
         var _loc8_:b2Vec2 = (_loc5_ = param2[1]).v;
         if(_loc15_ || b2Collision)
         {
            §§push(param3.x);
            if(_loc15_ || param1)
            {
               §§push(_loc7_.x);
               if(!_loc14_)
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc14_)
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
                              addr101:
                              §§push(§§pop() + §§pop());
                              if(!(_loc14_ && param1))
                              {
                                 §§push(param4);
                                 if(!(_loc14_ && b2Collision))
                                 {
                                    §§push(§§pop() - §§pop());
                                    if(_loc15_)
                                    {
                                       §§push(Number(§§pop()));
                                       if(_loc15_ || param2)
                                       {
                                          _loc9_ = §§pop();
                                          addr129:
                                          §§push(param3.x);
                                          if(!_loc14_)
                                          {
                                             addr133:
                                             §§push(_loc8_.x);
                                             if(!(_loc14_ && param1))
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!(_loc14_ && param1))
                                                {
                                                   §§push(param3.y);
                                                   if(!(_loc14_ && param2))
                                                   {
                                                      addr161:
                                                      §§push(§§pop() * _loc8_.y);
                                                      if(_loc15_)
                                                      {
                                                         addr164:
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc15_ || param1)
                                                         {
                                                            addr173:
                                                            §§push(§§pop() - param4);
                                                            if(_loc15_ || param3)
                                                            {
                                                               addr181:
                                                               §§push(Number(§§pop()));
                                                            }
                                                         }
                                                         §§goto(addr181);
                                                      }
                                                      §§goto(addr173);
                                                   }
                                                   §§goto(addr164);
                                                }
                                             }
                                             §§goto(addr173);
                                          }
                                          var _loc10_:* = §§pop();
                                          if(_loc15_ || param3)
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
                                                         addr326:
                                                         while(true)
                                                         {
                                                         }
                                                      }
                                                      addr316:
                                                   }
                                                   addr298:
                                                   while(true)
                                                   {
                                                      §§push(_loc10_);
                                                      loop5:
                                                      while(true)
                                                      {
                                                         §§push(0);
                                                         addr301:
                                                         while(true)
                                                         {
                                                            if(§§pop() <= §§pop())
                                                            {
                                                               while(true)
                                                               {
                                                                  param1[_loc6_++].Set(param2[1]);
                                                                  addr312:
                                                                  while(true)
                                                                  {
                                                                  }
                                                               }
                                                               addr302:
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(_loc9_);
                                                               if(!_loc14_)
                                                               {
                                                                  if(!(_loc15_ || param1))
                                                                  {
                                                                     continue loop5;
                                                                  }
                                                                  §§push(_loc10_);
                                                                  if(!_loc14_)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(_loc14_ && param1)
                                                                     {
                                                                        continue loop0;
                                                                     }
                                                                     addr213:
                                                                     §§push(0);
                                                                     if(_loc15_ || param3)
                                                                     {
                                                                        addr231:
                                                                        if(_loc15_ || param3)
                                                                        {
                                                                           if(§§pop() < §§pop())
                                                                           {
                                                                              if(_loc15_)
                                                                              {
                                                                                 if(!(_loc14_ && b2Collision))
                                                                                 {
                                                                                    §§push(_loc9_);
                                                                                    if(!_loc14_)
                                                                                    {
                                                                                       continue loop0;
                                                                                    }
                                                                                    addr279:
                                                                                    _loc11_ = §§pop();
                                                                                    addr280:
                                                                                    if(!(_loc14_ && param2))
                                                                                    {
                                                                                       if(!(_loc14_ && param2))
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §§goto(addr302);
                                                                                    }
                                                                                    §§goto(addr312);
                                                                                 }
                                                                                 §§goto(addr326);
                                                                              }
                                                                              §§goto(addr280);
                                                                           }
                                                                           §§goto(addr455);
                                                                        }
                                                                        continue loop1;
                                                                     }
                                                                     addr270:
                                                                     §§push(§§pop() / §§pop());
                                                                     if(_loc15_ || b2Collision)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                     §§goto(addr279);
                                                                  }
                                                                  §§goto(addr231);
                                                               }
                                                               §§goto(addr213);
                                                            }
                                                            if(_loc14_)
                                                            {
                                                               §§goto(addr316);
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             if(false)
                                             {
                                                §§goto(addr298);
                                             }
                                             else
                                             {
                                                §§push(_loc12_ = (_loc5_ = param1[_loc6_]).v);
                                                §§push(_loc7_.x);
                                                if(_loc15_ || param2)
                                                {
                                                   §§push(_loc11_);
                                                   if(!(_loc14_ && param2))
                                                   {
                                                      §§push(_loc8_.x);
                                                      if(_loc15_)
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
                                                   if(_loc15_)
                                                   {
                                                      §§push(_loc11_);
                                                      if(!(_loc14_ && param3))
                                                      {
                                                         §§push(_loc8_.y);
                                                         if(!(_loc14_ && param2))
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
                                                if(!(_loc14_ && param1))
                                                {
                                                   if(_loc9_ > 0)
                                                   {
                                                      addr414:
                                                      _loc13_ = param2[0];
                                                      if(!_loc14_)
                                                      {
                                                         _loc5_.id = _loc13_.id;
                                                         if(_loc15_ || param1)
                                                         {
                                                         }
                                                      }
                                                      §§goto(addr455);
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
                                                   §§goto(addr455);
                                                }
                                                §§goto(addr414);
                                             }
                                             return _loc6_;
                                          }
                                       }
                                    }
                                    §§goto(addr133);
                                 }
                                 §§goto(addr173);
                              }
                              §§goto(addr181);
                           }
                           §§goto(addr164);
                        }
                        §§goto(addr161);
                     }
                     §§goto(addr101);
                  }
                  §§goto(addr133);
               }
               §§goto(addr101);
            }
            §§goto(addr181);
         }
         §§goto(addr129);
      }
      
      public static function §>!5§(param1:b2PolygonShape, param2:b2Transform, param3:int, param4:b2PolygonShape, param5:b2Transform) : Number
      {
         var _loc26_:Boolean = false;
         var _loc27_:Boolean = true;
         var _loc11_:b2Mat22 = null;
         var _loc12_:b2Vec2 = null;
         var _loc25_:* = NaN;
         §§push(param1.§0S§);
         if(_loc27_ || param1)
         {
            §§push(int(§§pop()));
         }
         var _loc6_:* = §§pop();
         var _loc7_:Vector.<b2Vec2> = param1.§#1§;
         var _loc8_:Vector.<b2Vec2> = param1.§07§;
         §§push(param4.§0S§);
         if(!_loc26_)
         {
            §§push(int(§§pop()));
         }
         var _loc9_:* = §§pop();
         var _loc10_:Vector.<b2Vec2> = param4.§#1§;
         _loc11_ = param2.R;
         _loc12_ = _loc8_[param3];
         §§push(_loc11_.col1.x);
         if(!(_loc26_ && param3))
         {
            §§push(_loc12_.x);
            if(!_loc26_)
            {
               §§push(§§pop() * §§pop());
               if(_loc27_ || param1)
               {
                  §§push(_loc11_.col2.x);
                  if(!(_loc26_ && b2Collision))
                  {
                     addr95:
                     §§push(§§pop() * _loc12_.y);
                  }
                  §§push(§§pop() + §§pop());
                  if(!_loc26_)
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
                  if(!_loc26_)
                  {
                     addr142:
                     §§push(§§pop() * §§pop());
                     if(!(_loc26_ && b2Collision))
                     {
                        §§push(_loc11_.col2.y);
                        if(!(_loc26_ && b2Collision))
                        {
                           §§push(§§pop() * _loc12_.y);
                        }
                     }
                     var _loc14_:* = §§pop();
                     §§push((_loc11_ = param5.R).col1.x);
                     if(!(_loc26_ && b2Collision))
                     {
                        §§push(_loc13_);
                        if(!(_loc26_ && param2))
                        {
                           §§push(§§pop() * §§pop());
                           if(!(_loc26_ && param1))
                           {
                              §§push(_loc11_.col1.y);
                              if(_loc27_)
                              {
                                 addr178:
                                 §§push(§§pop() * _loc14_);
                              }
                              §§push(§§pop() + §§pop());
                              if(_loc26_ && b2Collision)
                              {
                              }
                              addr189:
                              var _loc15_:* = §§pop();
                              §§push(_loc11_.col2.x);
                              if(_loc27_)
                              {
                                 §§push(_loc13_);
                                 if(!(_loc26_ && b2Collision))
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(_loc27_)
                                    {
                                       addr206:
                                       §§push(_loc11_.col2.y);
                                       if(!_loc26_)
                                       {
                                          addr213:
                                          §§push(§§pop() + §§pop() * _loc14_);
                                          if(_loc27_)
                                          {
                                             addr216:
                                             §§push(Number(§§pop()));
                                          }
                                          var _loc16_:* = §§pop();
                                          var _loc17_:* = 0;
                                          var _loc18_:Number = Number.MAX_VALUE;
                                          var _loc19_:int = 0;
                                          while(_loc19_ < _loc9_)
                                          {
                                             §§push((_loc12_ = _loc10_[_loc19_]).x);
                                             if(!_loc26_)
                                             {
                                                §§push(_loc15_);
                                                if(!(_loc26_ && b2Collision))
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc27_)
                                                   {
                                                      §§push(_loc12_.y);
                                                      if(!(_loc26_ && param1))
                                                      {
                                                         §§push(§§pop() * _loc16_);
                                                         if(!(_loc26_ && param3))
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(!_loc26_)
                                                            {
                                                               addr269:
                                                               §§push(Number(§§pop()));
                                                               if(_loc27_)
                                                               {
                                                                  addr272:
                                                                  §§push(§§pop());
                                                                  if(_loc27_)
                                                                  {
                                                                     addr275:
                                                                     _loc25_ = §§pop();
                                                                     if(!_loc26_)
                                                                     {
                                                                        addr279:
                                                                        if(§§pop() < _loc18_)
                                                                        {
                                                                           if(_loc27_)
                                                                           {
                                                                              §§push(_loc25_);
                                                                              if(!_loc26_)
                                                                              {
                                                                                 addr286:
                                                                                 _loc18_ = §§pop();
                                                                                 addr285:
                                                                                 if(_loc26_ && param2)
                                                                                 {
                                                                                 }
                                                                                 _loc19_++;
                                                                                 continue;
                                                                              }
                                                                              §§goto(addr286);
                                                                           }
                                                                           §§push(_loc19_);
                                                                           if(!_loc26_)
                                                                           {
                                                                              §§push(int(§§pop()));
                                                                           }
                                                                           _loc17_ = §§pop();
                                                                           if(!_loc27_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr286);
                                                                  }
                                                                  §§goto(addr279);
                                                               }
                                                               §§goto(addr285);
                                                            }
                                                            §§goto(addr279);
                                                         }
                                                         §§goto(addr275);
                                                      }
                                                      §§goto(addr279);
                                                   }
                                                   §§goto(addr272);
                                                }
                                                §§goto(addr275);
                                             }
                                             §§goto(addr269);
                                          }
                                          _loc12_ = _loc7_[param3];
                                          _loc11_ = param2.R;
                                          §§push(param2.position.x);
                                          if(!(_loc26_ && param2))
                                          {
                                             §§push(_loc11_.col1.x);
                                             if(_loc27_ || b2Collision)
                                             {
                                                §§push(_loc12_.x);
                                                if(!(_loc26_ && param2))
                                                {
                                                   addr370:
                                                   §§push(§§pop() * §§pop());
                                                   if(!(_loc26_ && b2Collision))
                                                   {
                                                      §§push(_loc11_.col2.x);
                                                      if(_loc27_)
                                                      {
                                                         §§push(§§pop() * _loc12_.y);
                                                      }
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                   if(_loc27_ || param1)
                                                   {
                                                      addr378:
                                                      §§push(Number(§§pop()));
                                                   }
                                                   var _loc20_:* = §§pop();
                                                   §§push(param2.position.y);
                                                   if(!_loc26_)
                                                   {
                                                      §§push(_loc11_.col1.y);
                                                      if(!_loc26_)
                                                      {
                                                         §§push(_loc12_.x);
                                                         if(!(_loc26_ && param1))
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(!(_loc26_ && param3))
                                                            {
                                                               addr407:
                                                               §§push(_loc11_.col2.y);
                                                               if(!_loc26_)
                                                               {
                                                                  addr415:
                                                                  §§push(§§pop() + §§pop() * _loc12_.y);
                                                               }
                                                               §§goto(addr415);
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                            if(!(_loc26_ && param3))
                                                            {
                                                               addr424:
                                                               §§push(Number(§§pop()));
                                                            }
                                                            var _loc21_:* = §§pop();
                                                            _loc12_ = _loc10_[_loc17_];
                                                            _loc11_ = param5.R;
                                                            §§push(param5.position.x);
                                                            if(_loc27_)
                                                            {
                                                               §§push(_loc11_.col1.x);
                                                               if(_loc27_ || param1)
                                                               {
                                                                  §§push(_loc12_.x);
                                                                  if(!(_loc26_ && param1))
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(!_loc26_)
                                                                     {
                                                                        addr462:
                                                                        §§push(_loc11_.col2.x);
                                                                        if(!_loc26_)
                                                                        {
                                                                           addr467:
                                                                           §§push(§§pop() * _loc12_.y);
                                                                        }
                                                                        §§push(§§pop() + §§pop());
                                                                     }
                                                                     §§push(§§pop() + §§pop());
                                                                     if(_loc27_ || param2)
                                                                     {
                                                                        addr480:
                                                                        var _loc22_:* = Number(§§pop());
                                                                        §§push(param5.position.y);
                                                                        if(_loc27_)
                                                                        {
                                                                           §§push(_loc11_.col1.y);
                                                                           if(_loc27_)
                                                                           {
                                                                              §§push(_loc12_.x);
                                                                              if(!_loc26_)
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(!(_loc26_ && param3))
                                                                                 {
                                                                                    addr512:
                                                                                    §§push(_loc11_.col2.y);
                                                                                    if(_loc27_)
                                                                                    {
                                                                                       addr508:
                                                                                       §§push(§§pop() * _loc12_.y);
                                                                                    }
                                                                                    §§push(§§pop() + (§§pop() + §§pop()));
                                                                                    if(_loc27_)
                                                                                    {
                                                                                       addr516:
                                                                                       var _loc23_:* = Number(§§pop());
                                                                                       if(_loc27_ || param2)
                                                                                       {
                                                                                          §§push(_loc22_);
                                                                                          if(_loc27_)
                                                                                          {
                                                                                             §§push(_loc20_);
                                                                                             if(!_loc26_)
                                                                                             {
                                                                                                §§push(§§pop() - §§pop());
                                                                                                if(!_loc26_)
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                   if(!(_loc26_ && param1))
                                                                                                   {
                                                                                                      _loc22_ = §§pop();
                                                                                                      if(_loc27_)
                                                                                                      {
                                                                                                         addr544:
                                                                                                         §§push(_loc23_);
                                                                                                         if(_loc27_ || b2Collision)
                                                                                                         {
                                                                                                            addr552:
                                                                                                            §§push(_loc21_);
                                                                                                            if(!_loc26_)
                                                                                                            {
                                                                                                               §§push(§§pop() - §§pop());
                                                                                                               if(!(_loc26_ && param3))
                                                                                                               {
                                                                                                                  addr563:
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  if(!_loc26_)
                                                                                                                  {
                                                                                                                     _loc23_ = §§pop();
                                                                                                                     addr567:
                                                                                                                     §§push(_loc22_);
                                                                                                                     if(_loc27_)
                                                                                                                     {
                                                                                                                        §§push(_loc13_);
                                                                                                                        if(!(_loc26_ && param1))
                                                                                                                        {
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           if(!_loc26_)
                                                                                                                           {
                                                                                                                              addr581:
                                                                                                                              §§push(_loc23_);
                                                                                                                              if(!(_loc26_ && param3))
                                                                                                                              {
                                                                                                                                 §§goto(addr608);
                                                                                                                              }
                                                                                                                              §§goto(addr603);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr603);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr581);
                                                                                                               }
                                                                                                               addr608:
                                                                                                               §§push(§§pop() * _loc14_);
                                                                                                               if(_loc27_)
                                                                                                               {
                                                                                                                  addr603:
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  if(!_loc26_)
                                                                                                                  {
                                                                                                                     addr606:
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                  }
                                                                                                               }
                                                                                                               var _loc24_:* = §§pop();
                                                                                                               return §§pop();
                                                                                                               §§push(§§pop());
                                                                                                            }
                                                                                                            §§goto(addr603);
                                                                                                         }
                                                                                                         §§goto(addr563);
                                                                                                      }
                                                                                                      §§goto(addr567);
                                                                                                   }
                                                                                                   §§goto(addr552);
                                                                                                }
                                                                                                §§goto(addr581);
                                                                                             }
                                                                                             §§goto(addr608);
                                                                                          }
                                                                                          §§goto(addr606);
                                                                                       }
                                                                                       §§goto(addr544);
                                                                                    }
                                                                                    §§goto(addr516);
                                                                                 }
                                                                                 §§goto(addr512);
                                                                              }
                                                                              §§goto(addr508);
                                                                           }
                                                                           §§goto(addr512);
                                                                        }
                                                                        §§goto(addr516);
                                                                     }
                                                                     §§goto(addr480);
                                                                  }
                                                                  §§goto(addr467);
                                                               }
                                                               §§goto(addr462);
                                                            }
                                                            §§goto(addr480);
                                                         }
                                                         §§goto(addr415);
                                                      }
                                                      §§goto(addr407);
                                                   }
                                                   §§goto(addr424);
                                                }
                                                §§push(§§pop() + §§pop());
                                             }
                                             §§goto(addr370);
                                          }
                                          §§goto(addr378);
                                       }
                                       §§goto(addr213);
                                    }
                                    §§goto(addr216);
                                 }
                                 §§goto(addr213);
                              }
                              §§goto(addr206);
                           }
                           §§goto(addr189);
                           §§push(Number(§§pop()));
                        }
                        §§goto(addr178);
                     }
                     §§goto(addr189);
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc27_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               §§goto(addr142);
            }
            §§goto(addr95);
         }
         §§goto(addr101);
      }
      
      public static function §+!+§(param1:Vector.<int>, param2:b2PolygonShape, param3:b2Transform, param4:b2PolygonShape, param5:b2Transform) : Number
      {
         var _loc26_:Boolean = true;
         var _loc27_:Boolean = false;
         var _loc8_:b2Vec2 = null;
         var _loc9_:b2Mat22 = null;
         var _loc22_:* = 0;
         var _loc23_:* = NaN;
         var _loc24_:* = 0;
         var _loc25_:* = NaN;
         §§push(param2.§0S§);
         if(!(_loc27_ && param1))
         {
            §§push(int(§§pop()));
         }
         var _loc6_:* = §§pop();
         var _loc7_:Vector.<b2Vec2> = param2.§07§;
         _loc9_ = param5.R;
         _loc8_ = param4.§<!@§;
         §§push(param5.position.x);
         if(!(_loc27_ && param3))
         {
            §§push(_loc9_.col1.x);
            if(!_loc27_)
            {
               §§push(_loc8_.x);
               if(!(_loc27_ && param3))
               {
                  §§push(§§pop() * §§pop());
                  if(_loc26_ || b2Collision)
                  {
                     addr99:
                     §§push(_loc9_.col2.x);
                     if(!(_loc27_ && param2))
                     {
                        addr95:
                        §§push(§§pop() * _loc8_.y);
                     }
                     §§push(§§pop() + (§§pop() + §§pop()));
                     if(_loc26_ || b2Collision)
                     {
                        addr107:
                        §§push(Number(§§pop()));
                     }
                     var _loc10_:* = §§pop();
                     §§push(param5.position.y);
                     if(_loc26_)
                     {
                        §§push(_loc9_.col1.y);
                        if(_loc26_ || b2Collision)
                        {
                           §§push(_loc8_.x);
                           if(!_loc27_)
                           {
                              addr150:
                              §§push(§§pop() * §§pop());
                              if(!(_loc27_ && param1))
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
                                 addr153:
                                 §§push(Number(§§pop()));
                              }
                              var _loc11_:* = §§pop();
                              _loc9_ = param3.R;
                              _loc8_ = param2.§<!@§;
                              if(!(_loc27_ && param3))
                              {
                                 §§push(_loc10_);
                                 if(_loc26_ || param1)
                                 {
                                    §§push(param3.position);
                                    if(_loc26_)
                                    {
                                       §§push(§§pop().x);
                                       if(_loc26_ || b2Collision)
                                       {
                                          §§push(_loc9_.col1);
                                          if(_loc26_)
                                          {
                                             §§push(§§pop().x);
                                             if(_loc26_ || param2)
                                             {
                                                §§push(_loc8_.x);
                                                if(!(_loc27_ && b2Collision))
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc26_)
                                                   {
                                                      §§push(_loc9_.col2);
                                                      if(!(_loc27_ && param2))
                                                      {
                                                         §§push(§§pop().x);
                                                         if(!(_loc27_ && b2Collision))
                                                         {
                                                            §§push(_loc8_.y);
                                                            if(!(_loc27_ && param3))
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(_loc26_)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  if(!_loc27_)
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     if(_loc26_ || param3)
                                                                     {
                                                                        §§push(§§pop() - §§pop());
                                                                        if(!(_loc27_ && param1))
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           if(_loc26_)
                                                                           {
                                                                              addr265:
                                                                              _loc10_ = §§pop();
                                                                              if(!_loc27_)
                                                                              {
                                                                                 addr268:
                                                                                 §§push(_loc11_);
                                                                                 if(!(_loc27_ && b2Collision))
                                                                                 {
                                                                                    addr278:
                                                                                    §§push(param3.position.y);
                                                                                    if(!(_loc27_ && param2))
                                                                                    {
                                                                                       §§push(_loc9_.col1);
                                                                                       if(!(_loc27_ && param3))
                                                                                       {
                                                                                          addr295:
                                                                                          §§push(§§pop().y);
                                                                                          if(!(_loc27_ && param1))
                                                                                          {
                                                                                             addr303:
                                                                                             §§push(_loc8_.x);
                                                                                             if(_loc26_ || param3)
                                                                                             {
                                                                                                addr312:
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(_loc26_)
                                                                                                {
                                                                                                   addr317:
                                                                                                   §§push(_loc9_.col2.y);
                                                                                                   if(!_loc27_)
                                                                                                   {
                                                                                                      addr320:
                                                                                                      §§push(§§pop() * _loc8_.y);
                                                                                                   }
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(_loc26_ || param2)
                                                                                                   {
                                                                                                      addr331:
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      if(_loc26_ || b2Collision)
                                                                                                      {
                                                                                                         addr339:
                                                                                                         §§push(§§pop() - §§pop());
                                                                                                         if(!_loc27_)
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                            if(!_loc27_)
                                                                                                            {
                                                                                                               addr345:
                                                                                                               _loc11_ = §§pop();
                                                                                                               §§push(_loc10_);
                                                                                                               if(_loc26_ || param3)
                                                                                                               {
                                                                                                                  §§push(param3.R.col1.x);
                                                                                                                  if(!_loc27_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     if(_loc26_ || param2)
                                                                                                                     {
                                                                                                                        addr368:
                                                                                                                        §§push(_loc11_);
                                                                                                                        if(_loc26_ || param2)
                                                                                                                        {
                                                                                                                           addr381:
                                                                                                                           §§push(§§pop() + §§pop() * param3.R.col1.y);
                                                                                                                           if(!(_loc27_ && b2Collision))
                                                                                                                           {
                                                                                                                              addr389:
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr381);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr381);
                                                                                                               }
                                                                                                            }
                                                                                                            var _loc12_:* = §§pop();
                                                                                                            §§push(_loc10_);
                                                                                                            if(_loc26_ || param2)
                                                                                                            {
                                                                                                               §§push(param3.R.col2.x);
                                                                                                               if(_loc26_ || param1)
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(_loc26_)
                                                                                                                  {
                                                                                                                     §§push(_loc11_);
                                                                                                                     if(_loc26_)
                                                                                                                     {
                                                                                                                        addr416:
                                                                                                                        §§push(§§pop() * param3.R.col2.y);
                                                                                                                     }
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     if(_loc26_ || param3)
                                                                                                                     {
                                                                                                                        addr429:
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                     }
                                                                                                                     var _loc13_:* = §§pop();
                                                                                                                     var _loc14_:* = 0;
                                                                                                                     §§push(-Number.MAX_VALUE);
                                                                                                                     if(!(_loc27_ && b2Collision))
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                     }
                                                                                                                     var _loc15_:* = §§pop();
                                                                                                                     var _loc16_:int = 0;
                                                                                                                     while(_loc16_ < _loc6_)
                                                                                                                     {
                                                                                                                        §§push((_loc8_ = _loc7_[_loc16_]).x);
                                                                                                                        if(_loc26_ || param3)
                                                                                                                        {
                                                                                                                           §§push(_loc12_);
                                                                                                                           if(!_loc27_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              if(_loc26_)
                                                                                                                              {
                                                                                                                                 §§push(_loc8_.y);
                                                                                                                                 if(_loc26_)
                                                                                                                                 {
                                                                                                                                    addr473:
                                                                                                                                    §§push(§§pop() * _loc13_);
                                                                                                                                    if(!(_loc27_ && param2))
                                                                                                                                    {
                                                                                                                                       addr482:
                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                       if(_loc26_)
                                                                                                                                       {
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                          if(_loc26_ || param2)
                                                                                                                                          {
                                                                                                                                             addr493:
                                                                                                                                             §§push(§§pop());
                                                                                                                                             if(!_loc27_)
                                                                                                                                             {
                                                                                                                                                _loc25_ = §§pop();
                                                                                                                                                if(!(_loc27_ && param2))
                                                                                                                                                {
                                                                                                                                                   addr505:
                                                                                                                                                   addr504:
                                                                                                                                                   if(§§pop() > _loc15_)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc27_ && param3))
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc25_);
                                                                                                                                                         if(_loc26_)
                                                                                                                                                         {
                                                                                                                                                            addr517:
                                                                                                                                                            _loc15_ = Number(§§pop());
                                                                                                                                                            if(!_loc27_)
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
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr517);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   _loc16_++;
                                                                                                                                                   continue;
                                                                                                                                                }
                                                                                                                                                §§goto(addr517);
                                                                                                                                             }
                                                                                                                                             §§goto(addr505);
                                                                                                                                          }
                                                                                                                                          §§goto(addr517);
                                                                                                                                       }
                                                                                                                                       §§goto(addr504);
                                                                                                                                    }
                                                                                                                                    §§goto(addr505);
                                                                                                                                 }
                                                                                                                                 §§goto(addr482);
                                                                                                                              }
                                                                                                                              §§goto(addr493);
                                                                                                                           }
                                                                                                                           §§goto(addr473);
                                                                                                                        }
                                                                                                                        §§goto(addr517);
                                                                                                                     }
                                                                                                                     §§push(§>!5§(param2,param3,_loc14_,param4,param5));
                                                                                                                     if(_loc26_)
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                     }
                                                                                                                     var _loc17_:* = §§pop();
                                                                                                                     if(!_loc27_)
                                                                                                                     {
                                                                                                                        §§push(_loc14_);
                                                                                                                        if(!_loc27_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() - 1);
                                                                                                                           if(!(_loc27_ && param2))
                                                                                                                           {
                                                                                                                              if(§§pop() >= 0)
                                                                                                                              {
                                                                                                                                 addr573:
                                                                                                                                 §§push(_loc14_);
                                                                                                                                 if(!(_loc27_ && b2Collision))
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() - 1);
                                                                                                                                    if(!_loc27_)
                                                                                                                                    {
                                                                                                                                       §§push(int(§§pop()));
                                                                                                                                       if(_loc26_ || param1)
                                                                                                                                       {
                                                                                                                                          addr600:
                                                                                                                                          §§push(int(§§pop()));
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          addr597:
                                                                                                                                          §§push(int(§§pop() - 1));
                                                                                                                                          if(!_loc27_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr600);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr597);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§push(_loc6_);
                                                                                                                                 if(!_loc27_)
                                                                                                                                 {
                                                                                                                                    §§goto(addr597);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              var _loc18_:* = §§pop();
                                                                                                                              §§push(§>!5§(param2,param3,_loc18_,param4,param5));
                                                                                                                              if(!(_loc27_ && param2))
                                                                                                                              {
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                              }
                                                                                                                              var _loc19_:* = §§pop();
                                                                                                                              if(_loc26_)
                                                                                                                              {
                                                                                                                                 §§push(_loc14_);
                                                                                                                                 if(_loc26_ || param1)
                                                                                                                                 {
                                                                                                                                    §§push(1);
                                                                                                                                    if(_loc26_ || b2Collision)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                       if(!_loc27_)
                                                                                                                                       {
                                                                                                                                          if(§§pop() < _loc6_)
                                                                                                                                          {
                                                                                                                                             addr642:
                                                                                                                                             §§push(_loc14_);
                                                                                                                                             if(_loc26_)
                                                                                                                                             {
                                                                                                                                                addr647:
                                                                                                                                                §§push(int(§§pop() + 1));
                                                                                                                                                if(_loc26_)
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
                                                                                                                                          §§push(§>!5§(param2,param3,_loc20_,param4,param5));
                                                                                                                                          if(_loc26_ || b2Collision)
                                                                                                                                          {
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                          }
                                                                                                                                          var _loc21_:* = §§pop();
                                                                                                                                          if(!(_loc27_ && param1))
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
                                                                                                                                                            addr1127:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc19_);
                                                                                                                                                               addr1097:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc21_);
                                                                                                                                                                  addr1098:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() > §§pop());
                                                                                                                                                                     addr1099:
                                                                                                                                                                     while(!(_loc27_ && param2))
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
                                                                                                                                                                     loop12:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc17_);
                                                                                                                                                                        loop13:
                                                                                                                                                                        while(!_loc26_)
                                                                                                                                                                        {
                                                                                                                                                                           loop14:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                              loop15:
                                                                                                                                                                              while(_loc26_)
                                                                                                                                                                              {
                                                                                                                                                                                 _loc23_ = §§pop();
                                                                                                                                                                                 loop16:
                                                                                                                                                                                 for(; _loc26_ || b2Collision; if(!(_loc26_ || param3))
                                                                                                                                                                                 {
                                                                                                                                                                                    continue;
                                                                                                                                                                                 },§§push(_loc14_),if(_loc26_ || b2Collision)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc26_ || param3)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc26_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr837:
                                                                                                                                                                                          §§push(int(§§pop()));
                                                                                                                                                                                          if(!(_loc27_ && param3))
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!(_loc27_ && b2Collision))
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc27_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc27_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      _loc22_ = §§pop();
                                                                                                                                                                                                      §§goto(addr856);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1093);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr999);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1019);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr932);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr986);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr925);
                                                                                                                                                                                 },§§goto(addr837))
                                                                                                                                                                                 {
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       loop26:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          loop27:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc24_);
                                                                                                                                                                                             if(!_loc27_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(-1);
                                                                                                                                                                                                loop28:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(§§pop() == §§pop())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!_loc27_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!(_loc26_ || param3))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            break;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§push(_loc22_);
                                                                                                                                                                                                         if(!_loc27_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc26_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() - 1);
                                                                                                                                                                                                               if(_loc26_ || param1)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(0);
                                                                                                                                                                                                                  loop53:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() >= §§pop());
                                                                                                                                                                                                                     loop54:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc26_ || param3)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!§§pop())
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr999:
                                                                                                                                                                                                                              §§push(_loc6_);
                                                                                                                                                                                                                              loop43:
                                                                                                                                                                                                                              while(_loc26_ || param3)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop() - 1);
                                                                                                                                                                                                                                 loop44:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!_loc27_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!(_loc27_ && param1))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc26_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(int(§§pop()));
                                                                                                                                                                                                                                             loop45:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(int(§§pop()));
                                                                                                                                                                                                                                                addr1020:
                                                                                                                                                                                                                                                addr1092:
                                                                                                                                                                                                                                                loop51:
                                                                                                                                                                                                                                                while(!(_loc27_ && param3))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   _loc14_ = §§pop();
                                                                                                                                                                                                                                                   loop52:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      loop33:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(§>!5§(param2,param3,_loc14_,param4,param5));
                                                                                                                                                                                                                                                         addr776:
                                                                                                                                                                                                                                                         addr879:
                                                                                                                                                                                                                                                         while(_loc26_ || param3)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(§§pop());
                                                                                                                                                                                                                                                               if(!_loc27_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!_loc26_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     break;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  _loc17_ = §§pop();
                                                                                                                                                                                                                                                                  loop36:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc26_ || param1)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!_loc27_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(_loc23_);
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(!_loc27_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc27_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    continue loop2;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 if(§§pop() <= §§pop())
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    param1[0] = _loc22_;
                                                                                                                                                                                                                                                                                    if(_loc26_ || b2Collision)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(_loc27_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          continue loop52;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       if(_loc26_ || param3)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(_loc23_);
                                                                                                                                                                                                                                                                                          if(_loc26_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(_loc26_ || param1)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                return §§pop();
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             addr987:
                                                                                                                                                                                                                                                                                             addr987:
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(_loc27_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   continue loop13;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§push(int(§§pop()));
                                                                                                                                                                                                                                                                                                if(_loc27_ && param1)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   continue loop51;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   continue loop45;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             continue loop14;
                                                                                                                                                                                                                                                                                             addr987:
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr737:
                                                                                                                                                                                                                                                                                             while(_loc26_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                _loc23_ = §§pop();
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             continue loop10;
                                                                                                                                                                                                                                                                                             addr737:
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr987);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§goto(addr1127);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(_loc26_ || param3)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!_loc27_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(!(_loc27_ && b2Collision))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(_loc27_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(!_loc26_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         continue loop12;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      if(!(_loc27_ && param3))
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(_loc26_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            addr986:
                                                                                                                                                                                                                                                                                                            §§push(_loc22_);
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§goto(addr987);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            addr986:
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(-1);
                                                                                                                                                                                                                                                                                                               addr1119:
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  _loc24_ = §§pop();
                                                                                                                                                                                                                                                                                                                  break loop16;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            addr1108:
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         loop19:
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(_loc20_);
                                                                                                                                                                                                                                                                                                            addr1057:
                                                                                                                                                                                                                                                                                                            addr1074:
                                                                                                                                                                                                                                                                                                            while(_loc26_ || b2Collision)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(int(§§pop()));
                                                                                                                                                                                                                                                                                                               break loop43;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               _loc24_ = §§pop();
                                                                                                                                                                                                                                                                                                               continue loop19;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   continue loop13;
                                                                                                                                                                                                                                                                                                   addr974:
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                if(_loc26_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(!(_loc27_ && b2Collision))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      continue loop27;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   addr1094:
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      continue loop14;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                addr933:
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   continue loop33;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                addr933:
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr932:
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(!(_loc27_ && param1))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   continue loop16;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                addr1066:
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(_loc21_);
                                                                                                                                                                                                                                                                                                   addr1052:
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                      addr1053:
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         _loc23_ = §§pop();
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                _loc14_ = §§pop();
                                                                                                                                                                                                                                                                                                §§goto(addr933);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             addr805:
                                                                                                                                                                                                                                                                                             addr932:
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             continue loop26;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(_loc17_);
                                                                                                                                                                                                                                                                                             if(_loc26_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                continue loop36;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr737);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          addr856:
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    continue loop16;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr805);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1098);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           continue loop52;
                                                                                                                                                                                                                                                                           addr800:
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1053);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!(_loc26_ || param1))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop44;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§push(int(§§pop()));
                                                                                                                                                                                                                                                                           while(!_loc27_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr927:
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§goto(addr927);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1057);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        addr917:
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr932);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  continue loop44;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr800);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            continue loop11;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(_loc6_);
                                                                                                                                                                                                                                                            if(_loc27_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               continue loop53;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§push(§§pop() < §§pop());
                                                                                                                                                                                                                                                            if(_loc27_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               continue loop54;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            if(!(_loc26_ || b2Collision))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               continue loop3;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            if(§§pop())
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc26_ || b2Collision)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(_loc22_);
                                                                                                                                                                                                                                                                  if(_loc26_ || b2Collision)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        continue loop28;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     addr908:
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§goto(addr925);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr933);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(0);
                                                                                                                                                                                                                                                               if(_loc26_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§goto(addr931);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr932);
                                                                                                                                                                                                                                                            §§goto(addr776);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1099);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(int(§§pop()));
                                                                                                                                                                                                                                                   addr1093:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      _loc22_ = §§pop();
                                                                                                                                                                                                                                                      §§goto(addr1094);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr1019:
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          break;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       continue loop15;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1052);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1097);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 _loc22_ = §§pop();
                                                                                                                                                                                                                                 §§goto(addr1066);
                                                                                                                                                                                                                                 §§goto(addr999);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr999:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr974);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1099);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr987);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1119);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr986);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1028);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   else
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc22_);
                                                                                                                                                                                                      if(!(_loc27_ && param1))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc26_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(1);
                                                                                                                                                                                                            if(!(_loc26_ || b2Collision))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr879);
                                                                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1020);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr908);
                                                                                                                                                                                                }
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr1074);
                                                                                                                                                                                                }
                                                                                                                                                                                                addr1073:
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr997);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr1092);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              continue loop1;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        return §§pop();
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1073);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1108);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr1089);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr647);
                                                                                                                                 }
                                                                                                                                 §§goto(addr654);
                                                                                                                              }
                                                                                                                              §§goto(addr642);
                                                                                                                           }
                                                                                                                           §§goto(addr597);
                                                                                                                        }
                                                                                                                        §§goto(addr600);
                                                                                                                     }
                                                                                                                     §§goto(addr573);
                                                                                                                  }
                                                                                                                  §§goto(addr429);
                                                                                                               }
                                                                                                               §§goto(addr416);
                                                                                                            }
                                                                                                            §§goto(addr429);
                                                                                                         }
                                                                                                         §§goto(addr368);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr381);
                                                                                             }
                                                                                             §§goto(addr320);
                                                                                          }
                                                                                          §§goto(addr331);
                                                                                       }
                                                                                       §§goto(addr381);
                                                                                    }
                                                                                    §§goto(addr339);
                                                                                 }
                                                                              }
                                                                              §§goto(addr345);
                                                                           }
                                                                           §§goto(addr389);
                                                                        }
                                                                        §§goto(addr265);
                                                                     }
                                                                  }
                                                                  §§goto(addr381);
                                                               }
                                                               §§goto(addr312);
                                                            }
                                                            §§goto(addr320);
                                                         }
                                                         §§goto(addr312);
                                                      }
                                                   }
                                                   §§goto(addr317);
                                                }
                                                §§goto(addr312);
                                             }
                                             §§goto(addr303);
                                          }
                                          §§goto(addr295);
                                       }
                                       §§goto(addr381);
                                    }
                                    §§goto(addr278);
                                 }
                                 §§goto(addr345);
                              }
                              §§goto(addr268);
                           }
                           §§push(§§pop() + §§pop());
                        }
                        §§goto(addr150);
                     }
                     §§goto(addr153);
                  }
                  §§goto(addr99);
               }
               §§goto(addr95);
            }
            §§goto(addr99);
         }
         §§goto(addr107);
      }
      
      public static function §@!§(param1:Vector.<§<#§>, param2:b2PolygonShape, param3:b2Transform, param4:int, param5:b2PolygonShape, param6:b2Transform) : void
      {
         var _loc24_:Boolean = false;
         var _loc25_:Boolean = true;
         var _loc12_:b2Mat22 = null;
         var _loc13_:b2Vec2 = null;
         var _loc20_:§<#§ = null;
         var _loc23_:* = NaN;
         §§push(param2.§0S§);
         if(!(_loc24_ && param1))
         {
            §§push(int(§§pop()));
         }
         var _loc7_:* = §§pop();
         var _loc8_:Vector.<b2Vec2> = param2.§07§;
         §§push(param5.§0S§);
         if(!_loc24_)
         {
            §§push(int(§§pop()));
         }
         var _loc9_:* = §§pop();
         var _loc10_:Vector.<b2Vec2> = param5.§#1§;
         var _loc11_:Vector.<b2Vec2> = param5.§07§;
         _loc12_ = param3.R;
         _loc13_ = _loc8_[param4];
         §§push(_loc12_.col1.x);
         if(_loc25_)
         {
            §§push(_loc13_.x);
            if(!_loc24_)
            {
               §§push(§§pop() * §§pop());
               if(!_loc24_)
               {
                  addr78:
                  §§push(_loc12_.col2.x);
                  if(!_loc24_)
                  {
                     addr86:
                     §§push(§§pop() + §§pop() * _loc13_.y);
                     if(!_loc24_)
                     {
                        addr89:
                        §§push(Number(§§pop()));
                     }
                     var _loc14_:* = §§pop();
                     §§push(_loc12_.col1.y);
                     if(!_loc24_)
                     {
                        §§push(_loc13_.x);
                        if(!(_loc24_ && b2Collision))
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc25_ || param3)
                           {
                              §§push(_loc12_.col2.y);
                              if(_loc25_)
                              {
                                 addr118:
                                 §§push(§§pop() * _loc13_.y);
                              }
                              §§push(§§pop() + §§pop());
                              if(!_loc24_)
                              {
                                 addr124:
                                 §§push(Number(§§pop()));
                              }
                              var _loc15_:* = §§pop();
                              §§push((_loc12_ = param6.R).col1.x);
                              if(!_loc24_)
                              {
                                 §§push(_loc14_);
                                 if(!(_loc24_ && param2))
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(_loc25_)
                                    {
                                       §§push(_loc12_.col1.y);
                                       if(!_loc24_)
                                       {
                                          addr151:
                                          §§push(§§pop() * _loc15_);
                                       }
                                       §§push(§§pop() + §§pop());
                                       if(!(_loc24_ && param3))
                                       {
                                          addr161:
                                          §§push(Number(§§pop()));
                                       }
                                    }
                                    var _loc16_:* = §§pop();
                                    if(_loc25_)
                                    {
                                       §§push(_loc12_.col2.x);
                                       if(_loc25_ || param2)
                                       {
                                          §§push(_loc14_);
                                          if(!(_loc24_ && b2Collision))
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(_loc25_ || param3)
                                             {
                                                addr191:
                                                §§push(_loc12_.col2.y);
                                                if(!(_loc24_ && param3))
                                                {
                                                   addr203:
                                                   §§push(§§pop() + §§pop() * _loc15_);
                                                   if(_loc25_ || param1)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      if(!(_loc24_ && param2))
                                                      {
                                                         addr219:
                                                         _loc15_ = §§pop();
                                                         if(!_loc24_)
                                                         {
                                                            §§push(_loc16_);
                                                            if(!_loc25_)
                                                            {
                                                            }
                                                            addr226:
                                                            _loc14_ = §§pop();
                                                            addr227:
                                                            var _loc17_:* = 0;
                                                            var _loc18_:* = Number(Number.MAX_VALUE);
                                                            var _loc19_:int = 0;
                                                            loop0:
                                                            while(true)
                                                            {
                                                               §§push(_loc19_);
                                                               if(!(_loc24_ && param1))
                                                               {
                                                                  §§push(_loc9_);
                                                                  if(_loc25_ || param1)
                                                                  {
                                                                     if(§§pop() >= §§pop())
                                                                     {
                                                                        §§push(_loc17_);
                                                                        if(_loc25_ || param2)
                                                                        {
                                                                           §§push(int(§§pop()));
                                                                           break;
                                                                        }
                                                                        break;
                                                                     }
                                                                     _loc13_ = _loc11_[_loc19_];
                                                                     if(!(_loc24_ && param2))
                                                                     {
                                                                        §§push(_loc14_);
                                                                        if(_loc25_ || b2Collision)
                                                                        {
                                                                           §§push(_loc13_.x);
                                                                           if(!_loc24_)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              if(!_loc24_)
                                                                              {
                                                                                 addr297:
                                                                                 §§push(_loc15_);
                                                                                 if(_loc25_ || b2Collision)
                                                                                 {
                                                                                    addr305:
                                                                                    §§push(§§pop() * _loc13_.y);
                                                                                    if(!_loc24_)
                                                                                    {
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(!_loc24_)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          if(!(_loc24_ && param3))
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             if(_loc24_)
                                                                                             {
                                                                                             }
                                                                                             addr328:
                                                                                             if(§§pop() < §§pop())
                                                                                             {
                                                                                                loop7:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc23_);
                                                                                                   if(_loc25_)
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                         addr333:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc18_ = §§pop();
                                                                                                            addr334:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               addr268:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc19_);
                                                                                                                  if(!(_loc24_ && param1))
                                                                                                                  {
                                                                                                                     §§push(int(§§pop()));
                                                                                                                  }
                                                                                                                  _loc17_ = §§pop();
                                                                                                                  addr279:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc25_)
                                                                                                                     {
                                                                                                                        continue;
                                                                                                                     }
                                                                                                                     continue loop7;
                                                                                                                  }
                                                                                                                  continue loop7;
                                                                                                               }
                                                                                                               continue loop0;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      addr332:
                                                                                                   }
                                                                                                   §§goto(addr333);
                                                                                                }
                                                                                                addr329:
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                _loc19_++;
                                                                                                if(!(_loc24_ && b2Collision))
                                                                                                {
                                                                                                   if(_loc25_ || b2Collision)
                                                                                                   {
                                                                                                      if(true)
                                                                                                      {
                                                                                                         continue loop0;
                                                                                                      }
                                                                                                      §§goto(addr268);
                                                                                                   }
                                                                                                   §§goto(addr334);
                                                                                                }
                                                                                                §§goto(addr279);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr333);
                                                                                    }
                                                                                    _loc23_ = §§pop();
                                                                                    if(!_loc24_)
                                                                                    {
                                                                                       §§goto(addr328);
                                                                                       §§push(_loc18_);
                                                                                    }
                                                                                    §§goto(addr332);
                                                                                 }
                                                                                 §§goto(addr328);
                                                                              }
                                                                              §§goto(addr333);
                                                                           }
                                                                           §§goto(addr305);
                                                                        }
                                                                        §§goto(addr297);
                                                                     }
                                                                     §§goto(addr329);
                                                                  }
                                                                  addr362:
                                                                  var _loc21_:* = §§pop();
                                                                  if(!_loc24_)
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
                                                                              if(_loc25_ || param3)
                                                                              {
                                                                                 addr384:
                                                                                 addr383:
                                                                                 §§push(int(§§pop() + 1));
                                                                                 if(_loc25_ || param2)
                                                                                 {
                                                                                    addr392:
                                                                                 }
                                                                                 addr401:
                                                                                 §§push(int(§§pop()));
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(0);
                                                                              if(_loc25_ || b2Collision)
                                                                              {
                                                                                 §§goto(addr401);
                                                                              }
                                                                           }
                                                                           var _loc22_:* = §§pop();
                                                                           _loc20_ = param1[0];
                                                                           _loc13_ = _loc10_[_loc21_];
                                                                           _loc12_ = param6.R;
                                                                           if(_loc25_ || param2)
                                                                           {
                                                                              §§push(_loc20_.v);
                                                                              loop8:
                                                                              while(true)
                                                                              {
                                                                                 §§push(param6.position);
                                                                                 addr592:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().x);
                                                                                    addr593:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc12_.col1);
                                                                                       addr595:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop().x);
                                                                                          addr596:
                                                                                          loop12:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc13_.x);
                                                                                             addr598:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(!_loc24_)
                                                                                                {
                                                                                                   §§push(_loc12_.col2);
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop().x);
                                                                                                      addr604:
                                                                                                      addr552:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc13_.y);
                                                                                                         addr606:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            addr607:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§push(_loc12_.col2);
                                                                                                      if(_loc24_ && param1)
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                      §§push(§§pop().y);
                                                                                                      if(_loc25_ || b2Collision)
                                                                                                      {
                                                                                                         §§push(_loc13_.y);
                                                                                                         if(_loc25_)
                                                                                                         {
                                                                                                            addr574:
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            if(!_loc24_)
                                                                                                            {
                                                                                                               if(!_loc24_)
                                                                                                               {
                                                                                                                  addr579:
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  if(!_loc24_)
                                                                                                                  {
                                                                                                                     if(!_loc25_)
                                                                                                                     {
                                                                                                                        continue loop12;
                                                                                                                     }
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     if(!_loc24_)
                                                                                                                     {
                                                                                                                        §§pop().y = §§pop();
                                                                                                                        loop21:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc20_.id);
                                                                                                                           loop22:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop().§1!e§);
                                                                                                                              loop23:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(param4);
                                                                                                                                 loop24:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§pop().§-c§ = §§pop();
                                                                                                                                    loop25:
                                                                                                                                    while(!(_loc24_ && param1))
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          loop27:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc20_.id);
                                                                                                                                             loop28:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop().§1!e§);
                                                                                                                                                loop29:
                                                                                                                                                while(!(_loc24_ && b2Collision))
                                                                                                                                                {
                                                                                                                                                   §§push(_loc21_);
                                                                                                                                                   loop30:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§pop().§+!S§ = §§pop();
                                                                                                                                                      while(_loc25_)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc20_.id);
                                                                                                                                                         if(_loc24_)
                                                                                                                                                         {
                                                                                                                                                            continue loop28;
                                                                                                                                                         }
                                                                                                                                                         if(!_loc25_)
                                                                                                                                                         {
                                                                                                                                                            continue loop22;
                                                                                                                                                         }
                                                                                                                                                         §§push(§§pop().§1!e§);
                                                                                                                                                         if(_loc24_)
                                                                                                                                                         {
                                                                                                                                                            continue loop29;
                                                                                                                                                         }
                                                                                                                                                         §§push(0);
                                                                                                                                                         if(_loc24_)
                                                                                                                                                         {
                                                                                                                                                            continue loop30;
                                                                                                                                                         }
                                                                                                                                                         if(_loc24_ && param2)
                                                                                                                                                         {
                                                                                                                                                            continue loop24;
                                                                                                                                                         }
                                                                                                                                                         §§pop().§+J§ = §§pop();
                                                                                                                                                         if(_loc24_ && param1)
                                                                                                                                                         {
                                                                                                                                                            continue;
                                                                                                                                                         }
                                                                                                                                                         if(_loc24_)
                                                                                                                                                         {
                                                                                                                                                            continue loop25;
                                                                                                                                                         }
                                                                                                                                                         if(false)
                                                                                                                                                         {
                                                                                                                                                            continue loop27;
                                                                                                                                                         }
                                                                                                                                                         _loc20_ = param1[1];
                                                                                                                                                         _loc13_ = _loc10_[_loc22_];
                                                                                                                                                         _loc12_ = param6.R;
                                                                                                                                                         if(_loc25_ || b2Collision)
                                                                                                                                                         {
                                                                                                                                                            addr830:
                                                                                                                                                            addr791:
                                                                                                                                                            addr789:
                                                                                                                                                            §§push(_loc20_.v);
                                                                                                                                                            §§push(param6.position.x);
                                                                                                                                                            if(_loc25_ || b2Collision)
                                                                                                                                                            {
                                                                                                                                                               addr802:
                                                                                                                                                               §§push(_loc12_.col1.x * _loc13_.x);
                                                                                                                                                               if(!(_loc24_ && param3))
                                                                                                                                                               {
                                                                                                                                                                  addr825:
                                                                                                                                                                  §§push(§§pop() + _loc12_.col2.x * _loc13_.y);
                                                                                                                                                               }
                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                            }
                                                                                                                                                            §§pop().x = §§pop();
                                                                                                                                                            addr831:
                                                                                                                                                            §§push(_loc20_.v);
                                                                                                                                                            if(!(_loc24_ && param2))
                                                                                                                                                            {
                                                                                                                                                               §§push(param6.position);
                                                                                                                                                               if(!_loc24_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop().y);
                                                                                                                                                                  if(!(_loc24_ && b2Collision))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc12_.col1);
                                                                                                                                                                     if(!_loc24_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop().y);
                                                                                                                                                                        if(_loc25_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc24_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc13_.x);
                                                                                                                                                                              if(_loc25_ || param2)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                 if(!(_loc24_ && param1))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc12_.col2);
                                                                                                                                                                                    if(!_loc24_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop().y);
                                                                                                                                                                                       if(!_loc24_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc25_ || param2)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc24_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc13_.y);
                                                                                                                                                                                                if(!(_loc24_ && param1))
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr775:
                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                   if(!_loc24_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr778:
                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                      if(!_loc24_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr781:
                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                         if(!_loc24_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§pop().y = §§pop();
                                                                                                                                                                                                            addr784:
                                                                                                                                                                                                            if(_loc25_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr699:
                                                                                                                                                                                                               _loc20_.id.§1!e§.§-c§ = param4;
                                                                                                                                                                                                               addr700:
                                                                                                                                                                                                               addr698:
                                                                                                                                                                                                               §§push(_loc20_.id);
                                                                                                                                                                                                               if(_loc25_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr682:
                                                                                                                                                                                                                  §§push(§§pop().§1!e§);
                                                                                                                                                                                                                  if(!_loc24_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr685:
                                                                                                                                                                                                                     §§push(_loc22_);
                                                                                                                                                                                                                     if(!(_loc24_ && param2))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§pop().§+!S§ = §§pop();
                                                                                                                                                                                                                        addr693:
                                                                                                                                                                                                                        §§push(_loc20_.id);
                                                                                                                                                                                                                        if(_loc25_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop().§1!e§);
                                                                                                                                                                                                                           if(_loc25_ || param3)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(1);
                                                                                                                                                                                                                              if(_loc25_ || param2)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§pop().§+J§ = §§pop();
                                                                                                                                                                                                                                 if(_loc25_ || param1)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc25_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!(_loc25_ || param3))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§goto(addr784);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       return;
                                                                                                                                                                                                                                       addr675:
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr700);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr693);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr685);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr682);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr700);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr699);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr698);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr697:
                                                                                                                                                                                                               §§goto(addr697);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr831);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr830);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr802);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr825);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr802);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr825);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr775);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr825);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr778);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr775);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr802);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr778);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr802);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr781);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr791);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr789);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr675);
                                                                                                                                                      }
                                                                                                                                                      continue loop21;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                continue loop23;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    continue loop8;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     addr608:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                     }
                                                                                                                     addr608:
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§pop().x = §§pop();
                                                                                                                     continue loop8;
                                                                                                                  }
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr604);
                                                                                                               }
                                                                                                               §§goto(addr608);
                                                                                                            }
                                                                                                            §§goto(addr607);
                                                                                                         }
                                                                                                         §§goto(addr606);
                                                                                                      }
                                                                                                      §§goto(addr574);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr608);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr496);
                                                                        }
                                                                        §§goto(addr384);
                                                                     }
                                                                     §§goto(addr383);
                                                                  }
                                                                  §§goto(addr392);
                                                               }
                                                               break;
                                                            }
                                                            §§goto(addr362);
                                                            §§push(§§pop());
                                                         }
                                                         §§goto(addr227);
                                                      }
                                                      §§goto(addr226);
                                                      §§push(Number(§§pop()));
                                                   }
                                                   §§goto(addr219);
                                                }
                                                §§goto(addr203);
                                             }
                                             §§goto(addr226);
                                          }
                                          §§goto(addr203);
                                       }
                                       §§goto(addr191);
                                    }
                                    §§goto(addr226);
                                 }
                                 §§goto(addr151);
                              }
                              §§goto(addr161);
                           }
                           §§goto(addr124);
                        }
                        §§goto(addr118);
                     }
                     §§goto(addr124);
                  }
                  §§goto(addr86);
               }
               §§goto(addr89);
            }
            §§goto(addr86);
         }
         §§goto(addr78);
      }
      
      private static function §;w§() : Vector.<§<#§>
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Vector.<§<#§> = new Vector.<§<#§>(2);
         if(_loc3_ || _loc1_)
         {
            _loc1_[0] = new §<#§();
            do
            {
               _loc1_[1] = new §<#§();
            }
            while(_loc2_ && b2Collision);
            
         }
         return _loc1_;
      }
      
      public static function §7c§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2PolygonShape, param5:b2Transform) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public static function §5!V§(param1:b2Manifold, param2:b2CircleShape, param3:b2Transform, param4:b2CircleShape, param5:b2Transform) : void
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         var _loc6_:b2Mat22 = null;
         var _loc7_:b2Vec2 = null;
         if(!(_loc16_ && param1))
         {
            param1.§break§ = 0;
         }
         _loc6_ = param3.R;
         _loc7_ = param2.§4Z§;
         §§push(param3.position.x);
         if(_loc17_)
         {
            §§push(_loc6_.col1.x);
            if(_loc17_ || param1)
            {
               §§push(_loc7_.x);
               if(_loc17_ || b2Collision)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc17_)
                  {
                     addr68:
                     §§push(_loc6_.col2.x);
                     if(_loc17_)
                     {
                        addr76:
                        §§push(§§pop() + §§pop() * _loc7_.y);
                     }
                     §§goto(addr76);
                  }
                  §§push(§§pop() + §§pop());
                  if(!_loc16_)
                  {
                     addr81:
                     var _loc8_:Number = §§pop();
                     §§push(param3.position.y);
                     if(_loc17_)
                     {
                        §§push(_loc6_.col1.y);
                        if(!_loc16_)
                        {
                           §§push(_loc7_.x);
                           if(_loc17_)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc17_)
                              {
                                 addr108:
                                 §§push(_loc6_.col2.y);
                                 if(_loc17_)
                                 {
                                    addr104:
                                    §§push(§§pop() * _loc7_.y);
                                 }
                                 §§push(§§pop() + (§§pop() + §§pop()));
                                 if(_loc17_ || param2)
                                 {
                                    addr117:
                                    var _loc9_:Number = §§pop();
                                    _loc6_ = param5.R;
                                    _loc7_ = param4.§4Z§;
                                    §§push(param5.position.x);
                                    if(!(_loc16_ && param2))
                                    {
                                       §§push(_loc6_.col1.x);
                                       if(_loc17_)
                                       {
                                          §§push(_loc7_.x);
                                          if(_loc17_ || b2Collision)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(_loc17_ || b2Collision)
                                             {
                                                addr158:
                                                §§push(_loc6_.col2.x);
                                                if(_loc17_ || param3)
                                                {
                                                   addr171:
                                                   §§push(§§pop() + §§pop() * _loc7_.y);
                                                }
                                                §§goto(addr171);
                                             }
                                             §§push(§§pop() + §§pop());
                                             if(_loc17_ || b2Collision)
                                             {
                                                addr181:
                                                var _loc10_:Number = §§pop();
                                                §§push(param5.position.y);
                                                if(!_loc16_)
                                                {
                                                   §§push(_loc6_.col1.y);
                                                   if(!(_loc16_ && param1))
                                                   {
                                                      §§push(_loc7_.x);
                                                      if(_loc17_ || b2Collision)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(!(_loc16_ && param1))
                                                         {
                                                            addr224:
                                                            §§push(_loc6_.col2.y);
                                                            if(!_loc16_)
                                                            {
                                                               addr229:
                                                               §§push(§§pop() * _loc7_.y);
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                         }
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc17_)
                                                         {
                                                            addr236:
                                                            §§push(Number(§§pop()));
                                                         }
                                                         var _loc11_:* = §§pop();
                                                         §§push(_loc10_);
                                                         if(!_loc16_)
                                                         {
                                                            §§push(§§pop() - _loc8_);
                                                            if(!(_loc16_ && param2))
                                                            {
                                                               §§push(Number(§§pop()));
                                                            }
                                                         }
                                                         var _loc12_:* = §§pop();
                                                         §§push(_loc11_);
                                                         if(_loc17_ || b2Collision)
                                                         {
                                                            §§push(§§pop() - _loc9_);
                                                            if(_loc17_ || param2)
                                                            {
                                                               addr269:
                                                               §§push(Number(§§pop()));
                                                            }
                                                            var _loc13_:* = §§pop();
                                                            §§push(_loc12_);
                                                            if(!_loc16_)
                                                            {
                                                               §§push(_loc12_);
                                                               if(!(_loc16_ && param2))
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(_loc17_)
                                                                  {
                                                                     §§push(_loc13_);
                                                                     if(_loc17_ || b2Collision)
                                                                     {
                                                                        addr295:
                                                                        §§push(§§pop() + §§pop() * _loc13_);
                                                                        if(_loc17_ || param1)
                                                                        {
                                                                        }
                                                                        var _loc14_:* = §§pop();
                                                                        var _loc15_:Number = param2.§#&§ + param4.§#&§;
                                                                        if(_loc17_)
                                                                        {
                                                                           §§push(_loc14_);
                                                                           §§push(_loc15_);
                                                                           if(_loc17_ || b2Collision)
                                                                           {
                                                                              §§push(§§pop() * _loc15_);
                                                                           }
                                                                           if(§§pop() <= §§pop())
                                                                           {
                                                                              loop0:
                                                                              while(true)
                                                                              {
                                                                                 param1.§#!&§ = b2Manifold.§6C§;
                                                                                 addr394:
                                                                                 while(true)
                                                                                 {
                                                                                    param1.m_localPoint.SetV(param2.§4Z§);
                                                                                    loop2:
                                                                                    for(; _loc17_ || param1; loop4:
                                                                                    while(_loc17_ || param2)
                                                                                    {
                                                                                       param1.§@Z§[0].m_localPoint.SetV(param4.§4Z§);
                                                                                       while(_loc17_)
                                                                                       {
                                                                                          param1.§@Z§[0].m_id.key = 0;
                                                                                          if(_loc17_ || param3)
                                                                                          {
                                                                                             if(!_loc16_)
                                                                                             {
                                                                                                return;
                                                                                             }
                                                                                             continue loop4;
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr365);
                                                                                    })
                                                                                    {
                                                                                       if(!(_loc17_ || b2Collision))
                                                                                       {
                                                                                          continue loop0;
                                                                                       }
                                                                                       param1.§7!A§.§7_§();
                                                                                       while(_loc17_)
                                                                                       {
                                                                                          param1.§break§ = 1;
                                                                                          continue loop2;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           return;
                                                                        }
                                                                        §§goto(addr394);
                                                                     }
                                                                  }
                                                                  §§goto(addr295);
                                                                  §§push(Number(§§pop()));
                                                               }
                                                            }
                                                            §§goto(addr295);
                                                         }
                                                         §§goto(addr269);
                                                      }
                                                      §§goto(addr229);
                                                   }
                                                   §§goto(addr224);
                                                }
                                                §§goto(addr236);
                                             }
                                             §§goto(addr181);
                                          }
                                          §§goto(addr171);
                                       }
                                       §§goto(addr158);
                                    }
                                    §§goto(addr181);
                                 }
                                 §§goto(addr117);
                              }
                              §§goto(addr108);
                           }
                           §§goto(addr104);
                        }
                        §§goto(addr108);
                     }
                     §§goto(addr117);
                  }
                  §§goto(addr81);
               }
               §§goto(addr76);
            }
            §§goto(addr68);
         }
         §§goto(addr81);
      }
      
      public static function §'d§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2CircleShape, param5:b2Transform) : void
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
         if(!_loc34_)
         {
            param1.§break§ = 0;
         }
         _loc12_ = param5.R;
         _loc11_ = param4.§4Z§;
         §§push(param5.position.x);
         if(_loc35_ || b2Collision)
         {
            §§push(_loc12_.col1.x);
            if(!_loc34_)
            {
               §§push(_loc11_.x);
               if(!(_loc34_ && param1))
               {
                  addr96:
                  §§push(§§pop() * §§pop());
                  if(!(_loc34_ && param2))
                  {
                     §§push(_loc12_.col2.x);
                     if(_loc35_)
                     {
                        §§push(§§pop() * _loc11_.y);
                     }
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc35_)
                  {
                     addr99:
                     §§push(Number(§§pop()));
                  }
                  var _loc13_:* = §§pop();
                  §§push(param5.position.y);
                  if(_loc35_)
                  {
                     §§push(_loc12_.col1.y);
                     if(!(_loc34_ && param2))
                     {
                        §§push(_loc11_.x);
                        if(!_loc34_)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc35_)
                           {
                              addr123:
                              §§push(_loc12_.col2.y);
                              if(!_loc34_)
                              {
                                 addr131:
                                 §§push(§§pop() + §§pop() * _loc11_.y);
                              }
                              §§goto(addr131);
                           }
                           §§push(§§pop() + §§pop());
                           if(!_loc34_)
                           {
                              addr135:
                              §§push(Number(§§pop()));
                           }
                           var _loc14_:* = §§pop();
                           if(!_loc34_)
                           {
                              §§push(_loc13_);
                              if(_loc35_)
                              {
                                 §§push(param3.position);
                                 if(!_loc34_)
                                 {
                                    §§push(§§pop().x);
                                    if(!_loc34_)
                                    {
                                       §§push(§§pop() - §§pop());
                                       if(_loc35_ || param2)
                                       {
                                          addr157:
                                          §§push(Number(§§pop()));
                                          if(!_loc34_)
                                          {
                                             addr160:
                                             _loc7_ = §§pop();
                                             if(!(_loc34_ && param2))
                                             {
                                                addr168:
                                                §§push(_loc14_);
                                                if(_loc35_ || param1)
                                                {
                                                   addr179:
                                                   §§push(§§pop() - param3.position.y);
                                                   if(!(_loc34_ && param2))
                                                   {
                                                      addr187:
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
                                                if(_loc35_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc35_ || param2)
                                                   {
                                                      §§push(_loc8_);
                                                      if(!_loc34_)
                                                      {
                                                         addr216:
                                                         §§push(§§pop() + §§pop() * _loc12_.col1.y);
                                                         if(!(_loc34_ && param3))
                                                         {
                                                            addr224:
                                                            §§push(Number(§§pop()));
                                                         }
                                                      }
                                                      §§goto(addr216);
                                                   }
                                                   var _loc15_:* = §§pop();
                                                   §§push(_loc7_);
                                                   if(!(_loc34_ && param1))
                                                   {
                                                      §§push(_loc12_.col2.x);
                                                      if(_loc35_)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(!_loc34_)
                                                         {
                                                            §§push(_loc8_);
                                                            if(!(_loc34_ && param1))
                                                            {
                                                               addr250:
                                                               §§push(§§pop() * _loc12_.col2.y);
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc34_ && param1)
                                                            {
                                                            }
                                                            addr263:
                                                            var _loc16_:* = §§pop();
                                                            var _loc18_:* = 0;
                                                            §§push(-Number.MAX_VALUE);
                                                            if(_loc35_)
                                                            {
                                                               §§push(Number(§§pop()));
                                                            }
                                                            var _loc19_:* = §§pop();
                                                            var _loc20_:Number = param2.§#&§ + param4.§#&§;
                                                            §§push(param2.§0S§);
                                                            if(!(_loc34_ && param2))
                                                            {
                                                               §§push(int(§§pop()));
                                                            }
                                                            var _loc21_:* = §§pop();
                                                            var _loc22_:Vector.<b2Vec2> = param2.§#1§;
                                                            var _loc23_:Vector.<b2Vec2> = param2.§07§;
                                                            var _loc24_:int = 0;
                                                            loop0:
                                                            while(true)
                                                            {
                                                               §§push(_loc24_);
                                                               if(_loc35_)
                                                               {
                                                                  §§push(_loc21_);
                                                                  if(_loc35_ || b2Collision)
                                                                  {
                                                                     if(§§pop() >= §§pop())
                                                                     {
                                                                        §§push(_loc18_);
                                                                        if(!_loc34_)
                                                                        {
                                                                           §§push(int(§§pop()));
                                                                           break;
                                                                        }
                                                                        break;
                                                                     }
                                                                     _loc11_ = _loc22_[_loc24_];
                                                                     if(!(_loc34_ && param2))
                                                                     {
                                                                        §§push(_loc15_);
                                                                        if(_loc35_)
                                                                        {
                                                                           §§push(_loc11_.x);
                                                                           if(_loc35_)
                                                                           {
                                                                              §§push(§§pop() - §§pop());
                                                                              if(!_loc34_)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 if(_loc35_)
                                                                                 {
                                                                                    _loc7_ = §§pop();
                                                                                    addr351:
                                                                                    if(_loc35_ || b2Collision)
                                                                                    {
                                                                                       §§push(_loc16_);
                                                                                       if(_loc35_)
                                                                                       {
                                                                                          addr339:
                                                                                          §§push(§§pop() - _loc11_.y);
                                                                                          if(!(_loc34_ && param3))
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§push((_loc11_ = _loc23_[_loc24_]).x);
                                                                                    if(_loc35_)
                                                                                    {
                                                                                       §§push(_loc7_);
                                                                                       if(!_loc34_)
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(_loc35_)
                                                                                          {
                                                                                             §§push(_loc11_.y);
                                                                                             if(_loc35_ || b2Collision)
                                                                                             {
                                                                                                addr375:
                                                                                                §§push(§§pop() * _loc8_);
                                                                                                if(_loc35_)
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(!_loc34_)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      if(_loc35_)
                                                                                                      {
                                                                                                         addr385:
                                                                                                         §§push(§§pop());
                                                                                                         if(!(_loc34_ && param3))
                                                                                                         {
                                                                                                            addr393:
                                                                                                            _loc31_ = §§pop();
                                                                                                            if(!(_loc34_ && param1))
                                                                                                            {
                                                                                                               §§push(_loc20_);
                                                                                                               if(!(_loc34_ && param3))
                                                                                                               {
                                                                                                                  addr409:
                                                                                                                  if(§§pop() > §§pop())
                                                                                                                  {
                                                                                                                     if(!_loc34_)
                                                                                                                     {
                                                                                                                        return;
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(true)
                                                                                                                        {
                                                                                                                           continue loop0;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr439:
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§push(_loc31_);
                                                                                                                     if(_loc35_)
                                                                                                                     {
                                                                                                                        addr452:
                                                                                                                        if(§§pop() > _loc19_)
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc31_);
                                                                                                                              if(!_loc34_)
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                    addr457:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       _loc19_ = §§pop();
                                                                                                                                       loop2:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          addr441:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc24_);
                                                                                                                                             if(_loc35_)
                                                                                                                                             {
                                                                                                                                                §§push(int(§§pop()));
                                                                                                                                             }
                                                                                                                                             _loc18_ = §§pop();
                                                                                                                                             loop4:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                addr416:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   _loc24_++;
                                                                                                                                                   if(!(_loc34_ && param2))
                                                                                                                                                   {
                                                                                                                                                      continue loop2;
                                                                                                                                                   }
                                                                                                                                                   continue loop4;
                                                                                                                                                }
                                                                                                                                                continue loop0;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr456:
                                                                                                                              }
                                                                                                                              §§goto(addr457);
                                                                                                                              if(!(_loc35_ || param2))
                                                                                                                              {
                                                                                                                                 continue;
                                                                                                                              }
                                                                                                                              §§goto(addr439);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr416);
                                                                                                                     }
                                                                                                                     §§goto(addr457);
                                                                                                                  }
                                                                                                                  §§goto(addr441);
                                                                                                               }
                                                                                                               §§goto(addr452);
                                                                                                            }
                                                                                                            §§goto(addr457);
                                                                                                         }
                                                                                                         §§goto(addr409);
                                                                                                      }
                                                                                                      §§goto(addr456);
                                                                                                   }
                                                                                                   §§goto(addr452);
                                                                                                }
                                                                                                §§goto(addr393);
                                                                                             }
                                                                                             §§goto(addr452);
                                                                                          }
                                                                                          §§goto(addr385);
                                                                                       }
                                                                                       §§goto(addr375);
                                                                                    }
                                                                                    §§goto(addr385);
                                                                                 }
                                                                                 §§goto(addr339);
                                                                              }
                                                                              _loc8_ = §§pop();
                                                                              §§goto(addr351);
                                                                           }
                                                                        }
                                                                        §§goto(addr339);
                                                                     }
                                                                     §§goto(addr351);
                                                                  }
                                                                  addr476:
                                                                  var _loc25_:* = §§pop();
                                                                  if(_loc35_)
                                                                  {
                                                                     §§push(1);
                                                                     if(_loc35_)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        if(_loc35_ || param1)
                                                                        {
                                                                           if(§§pop() < _loc21_)
                                                                           {
                                                                              §§push(_loc25_);
                                                                              if(_loc35_)
                                                                              {
                                                                                 addr498:
                                                                                 addr497:
                                                                                 addr496:
                                                                                 §§push(int(§§pop() + 1));
                                                                                 if(_loc34_)
                                                                                 {
                                                                                 }
                                                                                 addr511:
                                                                                 var _loc26_:* = §§pop();
                                                                                 var _loc27_:b2Vec2 = _loc22_[_loc25_];
                                                                                 var _loc28_:b2Vec2 = _loc22_[_loc26_];
                                                                                 if(!_loc34_)
                                                                                 {
                                                                                    §§push(_loc19_);
                                                                                    if(_loc35_ || param2)
                                                                                    {
                                                                                       if(§§pop() < Number.MIN_VALUE)
                                                                                       {
                                                                                          loop43:
                                                                                          while(true)
                                                                                          {
                                                                                             param1.§break§ = 1;
                                                                                             addr667:
                                                                                             while(true)
                                                                                             {
                                                                                                param1.§#!&§ = b2Manifold.§>E§;
                                                                                                addr652:
                                                                                                while(true)
                                                                                                {
                                                                                                   param1.§7!A§.SetV(_loc23_[_loc18_]);
                                                                                                   continue loop43;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§push(_loc15_);
                                                                                          if(_loc35_ || param3)
                                                                                          {
                                                                                             addr676:
                                                                                             §§push(_loc27_.x);
                                                                                             if(!_loc34_)
                                                                                             {
                                                                                                §§push(§§pop() - §§pop());
                                                                                                if(_loc35_ || param2)
                                                                                                {
                                                                                                   §§push(_loc28_.x);
                                                                                                   if(!(_loc34_ && param3))
                                                                                                   {
                                                                                                      addr697:
                                                                                                      §§push(_loc27_.x);
                                                                                                      if(_loc35_ || param2)
                                                                                                      {
                                                                                                         §§push(§§pop() - §§pop());
                                                                                                         if(!_loc34_)
                                                                                                         {
                                                                                                            §§goto(addr709);
                                                                                                         }
                                                                                                         §§goto(addr737);
                                                                                                      }
                                                                                                      §§goto(addr729);
                                                                                                   }
                                                                                                   addr709:
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(!(_loc34_ && param3))
                                                                                                   {
                                                                                                      addr717:
                                                                                                      §§push(_loc16_);
                                                                                                      if(!_loc34_)
                                                                                                      {
                                                                                                         §§push(_loc27_.y);
                                                                                                         if(_loc35_ || param2)
                                                                                                         {
                                                                                                            addr729:
                                                                                                            §§push(§§pop() - §§pop());
                                                                                                            if(!(_loc34_ && param1))
                                                                                                            {
                                                                                                               addr737:
                                                                                                               §§push(_loc28_.y);
                                                                                                               if(_loc35_)
                                                                                                               {
                                                                                                                  addr744:
                                                                                                                  §§push(§§pop() * (§§pop() - _loc27_.y));
                                                                                                               }
                                                                                                               §§goto(addr744);
                                                                                                            }
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            if(_loc35_ || param1)
                                                                                                            {
                                                                                                            }
                                                                                                            §§goto(addr754);
                                                                                                         }
                                                                                                         §§goto(addr744);
                                                                                                      }
                                                                                                      §§goto(addr737);
                                                                                                   }
                                                                                                   addr754:
                                                                                                   var _loc29_:Number = §§pop();
                                                                                                   §§push(_loc15_);
                                                                                                   if(_loc35_)
                                                                                                   {
                                                                                                      §§push(_loc28_.x);
                                                                                                      if(!(_loc34_ && b2Collision))
                                                                                                      {
                                                                                                         §§push(§§pop() - §§pop());
                                                                                                         if(_loc35_)
                                                                                                         {
                                                                                                            §§push(_loc27_.x);
                                                                                                            if(_loc35_)
                                                                                                            {
                                                                                                               §§push(_loc28_.x);
                                                                                                               if(!(_loc34_ && b2Collision))
                                                                                                               {
                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                  if(_loc35_)
                                                                                                                  {
                                                                                                                     addr786:
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     if(_loc35_)
                                                                                                                     {
                                                                                                                        §§push(_loc16_);
                                                                                                                        if(!(_loc34_ && param3))
                                                                                                                        {
                                                                                                                           addr807:
                                                                                                                           §§push(_loc28_.y);
                                                                                                                           if(!_loc34_)
                                                                                                                           {
                                                                                                                              §§goto(addr832);
                                                                                                                           }
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                        }
                                                                                                                        addr832:
                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                        if(!(_loc34_ && param1))
                                                                                                                        {
                                                                                                                           addr819:
                                                                                                                           §§push(_loc27_.y);
                                                                                                                           if(!(_loc34_ && param3))
                                                                                                                           {
                                                                                                                              §§push(§§pop() - _loc28_.y);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                        if(_loc34_ && b2Collision)
                                                                                                                        {
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr841);
                                                                                                                  }
                                                                                                                  §§goto(addr807);
                                                                                                               }
                                                                                                               §§goto(addr832);
                                                                                                            }
                                                                                                            §§goto(addr819);
                                                                                                         }
                                                                                                         §§goto(addr841);
                                                                                                      }
                                                                                                      §§goto(addr786);
                                                                                                   }
                                                                                                   addr841:
                                                                                                   var _loc30_:Number = §§pop();
                                                                                                   if(!_loc34_)
                                                                                                   {
                                                                                                      §§push(_loc29_);
                                                                                                      loop9:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(0);
                                                                                                         loop10:
                                                                                                         while(§§pop() > §§pop())
                                                                                                         {
                                                                                                            §§push(_loc30_);
                                                                                                            loop11:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc35_)
                                                                                                               {
                                                                                                                  if(§§pop() > 0)
                                                                                                                  {
                                                                                                                     §§push(0.5);
                                                                                                                     if(!(_loc34_ && param3))
                                                                                                                     {
                                                                                                                        §§push(_loc27_.x);
                                                                                                                        loop12:
                                                                                                                        while(!_loc34_)
                                                                                                                        {
                                                                                                                           §§push(_loc28_.x);
                                                                                                                           loop13:
                                                                                                                           for(; !(_loc34_ && b2Collision); if(_loc34_ && param1)
                                                                                                                           {
                                                                                                                              continue;
                                                                                                                           },if(_loc35_ || param1)
                                                                                                                           {
                                                                                                                              if(!(_loc34_ && param2))
                                                                                                                              {
                                                                                                                                 if(_loc35_ || param3)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() - §§pop());
                                                                                                                                    if(!(_loc34_ && b2Collision))
                                                                                                                                    {
                                                                                                                                       if(!(_loc34_ && param2))
                                                                                                                                       {
                                                                                                                                          if(_loc35_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * _loc23_[_loc25_].y);
                                                                                                                                             if(!(_loc34_ && param1))
                                                                                                                                             {
                                                                                                                                                §§goto(addr1155);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1191);
                                                                                                                                          }
                                                                                                                                          addr1510:
                                                                                                                                          if(§§pop() > §§pop())
                                                                                                                                          {
                                                                                                                                             addr1511:
                                                                                                                                             return;
                                                                                                                                          }
                                                                                                                                          §§goto(addr1421);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1202);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1180);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1608);
                                                                                                                              }
                                                                                                                              §§goto(addr1610);
                                                                                                                           },§§goto(addr1510),§§push(§§pop() * §§pop()))
                                                                                                                           {
                                                                                                                              if(_loc35_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                 loop14:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                    loop15:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                       addr1271:
                                                                                                                                       loop16:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          _loc32_ = §§pop();
                                                                                                                                          loop17:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(0.5);
                                                                                                                                             loop18:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc27_.y);
                                                                                                                                                addr1202:
                                                                                                                                                addr1499:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!_loc34_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc35_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc35_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc35_ || param3)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc28_.y);
                                                                                                                                                               loop20:
                                                                                                                                                               while(!_loc34_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                  loop21:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc34_)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop12;
                                                                                                                                                                     }
                                                                                                                                                                     if(_loc35_ || param2)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc34_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc34_ && b2Collision))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                              loop22:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                 loop23:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    _loc33_ = §§pop();
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc15_);
                                                                                                                                                                                       if(_loc35_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc32_);
                                                                                                                                                                                          if(_loc35_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc35_)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop21;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(§§pop() - §§pop());
                                                                                                                                                                                             if(_loc35_ || b2Collision)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc34_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() * _loc23_[_loc25_].x);
                                                                                                                                                                                                   if(!_loc34_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc34_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop16;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      if(!(_loc35_ || param3))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop15;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      if(_loc34_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop9;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      if(!_loc34_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!_loc35_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop11;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§push(_loc16_);
                                                                                                                                                                                                         if(_loc35_ || b2Collision)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!(_loc35_ || b2Collision))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr1478:
                                                                                                                                                                                                               §§push(_loc16_);
                                                                                                                                                                                                               if(_loc35_ || param2)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc28_.y);
                                                                                                                                                                                                                  if(_loc35_ || param3)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                                                                                                                     break loop13;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               break loop13;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(_loc35_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc33_);
                                                                                                                                                                                                               if(_loc35_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop13;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop20;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr1587:
                                                                                                                                                                                                            addr1608:
                                                                                                                                                                                                            addr1588:
                                                                                                                                                                                                            addr1586:
                                                                                                                                                                                                            §§push(§§pop() - §§pop());
                                                                                                                                                                                                            §§push(_loc15_);
                                                                                                                                                                                                            §§push(_loc27_.x);
                                                                                                                                                                                                            if(!(_loc34_ && param2))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr1612:
                                                                                                                                                                                                               addr1613:
                                                                                                                                                                                                               addr1614:
                                                                                                                                                                                                               addr1616:
                                                                                                                                                                                                               addr1615:
                                                                                                                                                                                                               §§push(§§pop() - §§pop());
                                                                                                                                                                                                               if(_loc35_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr1601:
                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                  §§push(_loc16_);
                                                                                                                                                                                                                  if(_loc35_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr1606:
                                                                                                                                                                                                                     §§push(§§pop() - _loc27_.y);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§push(_loc16_);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(§§pop() + §§pop() > _loc20_ * _loc20_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc35_ || param1)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr1634);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr1635:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               param1.§break§ = 1;
                                                                                                                                                                                                               param1.§#!&§ = b2Manifold.§>E§;
                                                                                                                                                                                                               addr1561:
                                                                                                                                                                                                               addr1567:
                                                                                                                                                                                                               §§push(param1.§7!A§);
                                                                                                                                                                                                               §§push(_loc15_);
                                                                                                                                                                                                               if(!_loc34_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr1566:
                                                                                                                                                                                                                  §§push(§§pop() - _loc27_.x);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§pop().x = §§pop();
                                                                                                                                                                                                               addr1556:
                                                                                                                                                                                                               addr1548:
                                                                                                                                                                                                               §§push(param1.§7!A§);
                                                                                                                                                                                                               §§push(_loc16_);
                                                                                                                                                                                                               if(!_loc34_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr1553:
                                                                                                                                                                                                                  §§push(_loc27_.y);
                                                                                                                                                                                                                  if(_loc34_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr1566);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§pop().y = §§pop();
                                                                                                                                                                                                               addr1543:
                                                                                                                                                                                                               param1.§7!A§.Normalize();
                                                                                                                                                                                                               addr1537:
                                                                                                                                                                                                               param1.m_localPoint.SetV(_loc27_);
                                                                                                                                                                                                               param1.§@Z§[0].m_localPoint.SetV(param4.§4Z§);
                                                                                                                                                                                                               addr1544:
                                                                                                                                                                                                               if(_loc34_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr1544);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               param1.§@Z§[0].m_id.key = 0;
                                                                                                                                                                                                               return;
                                                                                                                                                                                                               addr1574:
                                                                                                                                                                                                               addr1539:
                                                                                                                                                                                                               addr1568:
                                                                                                                                                                                                               addr1579:
                                                                                                                                                                                                               addr1557:
                                                                                                                                                                                                               addr1521:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§push(_loc27_.y);
                                                                                                                                                                                                            addr1610:
                                                                                                                                                                                                            §§goto(addr1612);
                                                                                                                                                                                                            §§push(§§pop() * (§§pop() - §§pop()));
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr1155:
                                                                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                                                                            if(!_loc34_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr1158:
                                                                                                                                                                                                               if(_loc35_ || param3)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                                                                  if(_loc34_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop22;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr1168:
                                                                                                                                                                                                                  if(_loc34_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop23;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  if(!_loc35_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop18;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§push(§§pop());
                                                                                                                                                                                                                  if(!(_loc35_ || param2))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr1191:
                                                                                                                                                                                                                     if(!_loc35_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     if(§§pop() <= §§pop())
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           param1.§break§ = 1;
                                                                                                                                                                                                                           loop26:
                                                                                                                                                                                                                           while(_loc35_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              param1.§#!&§ = b2Manifold.§>E§;
                                                                                                                                                                                                                              loop27:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc35_ || param2)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc34_ && param3)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       break;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    if(_loc35_ || param2)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!_loc34_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!_loc34_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(param1.§7!A§);
                                                                                                                                                                                                                                             loop28:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§pop().x = _loc23_[_loc25_].x;
                                                                                                                                                                                                                                                loop29:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc34_ && param2)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop26;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   if(!_loc35_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      break;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§push(param1.§7!A§);
                                                                                                                                                                                                                                                   loop30:
                                                                                                                                                                                                                                                   while(_loc35_ || param1)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!(_loc34_ && param3))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§pop().y = _loc23_[_loc25_].y;
                                                                                                                                                                                                                                                         continue loop27;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1561);
                                                                                                                                                                                                                                                      §§push(param1.§7!A§);
                                                                                                                                                                                                                                                      if(!_loc35_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      if(!_loc35_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop28;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      if(_loc35_ || param2)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!_loc34_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§pop().Normalize();
                                                                                                                                                                                                                                                            loop32:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc35_ || param1)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(_loc35_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(param1.m_localPoint);
                                                                                                                                                                                                                                                                     if(!_loc34_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§pop().Set(_loc32_,_loc33_);
                                                                                                                                                                                                                                                                        while(_loc35_ || param3)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           param1.§@Z§[0].m_localPoint.SetV(param4.§4Z§);
                                                                                                                                                                                                                                                                           loop34:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(!_loc34_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(!_loc34_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(_loc35_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(_loc35_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(_loc35_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             continue;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          addr1336:
                                                                                                                                                                                                                                                                                          addr1308:
                                                                                                                                                                                                                                                                                          §§push(param1.m_localPoint);
                                                                                                                                                                                                                                                                                          if(_loc35_ || param3)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§pop().SetV(_loc28_);
                                                                                                                                                                                                                                                                                             while(!(_loc34_ && param2))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                param1.§@Z§[0].m_localPoint.SetV(param4.§4Z§);
                                                                                                                                                                                                                                                                                                if(!(_loc35_ || b2Collision))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   continue;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                if(!_loc34_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(_loc35_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(_loc35_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         param1.§@Z§[0].m_id.key = 0;
                                                                                                                                                                                                                                                                                                         break loop34;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1574);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1539);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   loop41:
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(!_loc34_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         addr1384:
                                                                                                                                                                                                                                                                                                         if(!(_loc34_ && param2))
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(param1.§7!A§);
                                                                                                                                                                                                                                                                                                            break loop30;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         break loop11;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      loop40:
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         addr1340:
                                                                                                                                                                                                                                                                                                         §§push(param1.§7!A§);
                                                                                                                                                                                                                                                                                                         if(!(_loc34_ && b2Collision))
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(_loc16_);
                                                                                                                                                                                                                                                                                                            if(!(_loc34_ && param2))
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(_loc35_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  addr1357:
                                                                                                                                                                                                                                                                                                                  §§push(_loc28_.y);
                                                                                                                                                                                                                                                                                                                  if(!(_loc34_ && param1))
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     addr1367:
                                                                                                                                                                                                                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                     if(_loc35_ || param2)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(!(_loc34_ && param1))
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§pop().y = §§pop();
                                                                                                                                                                                                                                                                                                                           continue loop41;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr1567);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     break;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  while(_loc35_ || b2Collision)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§pop().x = §§pop();
                                                                                                                                                                                                                                                                                                                        continue loop40;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr1357);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr1553);
                                                                                                                                                                                                                                                                                                                  addr1405:
                                                                                                                                                                                                                                                                                                                  §§goto(addr1612);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr1413);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr1367);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(_loc15_);
                                                                                                                                                                                                                                                                                                               if(!(_loc34_ && param3))
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§goto(addr1405);
                                                                                                                                                                                                                                                                                                                  §§push(_loc28_.x);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr1340);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            addr1395:
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr1413);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1556);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1543);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§goto(addr1395);
                                                                                                                                                                                                                                                                                                §§goto(addr1317);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             addr1317:
                                                                                                                                                                                                                                                                                             addr1420:
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1537);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       break;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    continue loop17;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 continue loop29;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              continue loop32;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1612);
                                                                                                                                                                                                                                                                           if(_loc34_ && b2Collision)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           if(!(_loc34_ && param1))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(_loc34_ && param3)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 break loop10;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§goto(addr1291);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1612);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        continue loop27;
                                                                                                                                                                                                                                                                        addr909:
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1308);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  break;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1511);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1568);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1548);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1340);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   if(!(_loc34_ && param2))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§pop().Normalize();
                                                                                                                                                                                                                                                      §§goto(addr1336);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1612);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr1425:
                                                                                                                                                                                                                                                if(!_loc34_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   param1.§#!&§ = b2Manifold.§>E§;
                                                                                                                                                                                                                                                   §§goto(addr1420);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1579);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1635);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1557);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1544);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              param1.§break§ = 1;
                                                                                                                                                                                                                              §§goto(addr1425);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     if(!_loc34_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        return;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     continue;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  if(_loc35_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     _loc19_ = §§pop();
                                                                                                                                                                                                                     continue loop22;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1588);
                                                                                                                                                                                                                  §§goto(addr1612);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1586);
                                                                                                                                                                                                               §§push(_loc27_.x);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1168);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1612);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      if(_loc35_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr1445:
                                                                                                                                                                                                         §§push(_loc15_);
                                                                                                                                                                                                         §§push(_loc28_.x);
                                                                                                                                                                                                         break loop20;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1601);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1168);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1613);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1158);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1155);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1158);
                                                                                                                                                                                    }
                                                                                                                                                                                    addr1459:
                                                                                                                                                                                    if(_loc35_ || b2Collision)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!(_loc35_ || param3))
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop10;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push(_loc28_.y);
                                                                                                                                                                                       if(_loc35_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr1478);
                                                                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr1606);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1610);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1601);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1614);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1616);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1445);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§push(§§pop() - §§pop());
                                                                                                                                                               if(!(_loc34_ && param3))
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                  if(!_loc35_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop9;
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1459);
                                                                                                                                                                  §§push(_loc16_);
                                                                                                                                                               }
                                                                                                                                                               break;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1612);
                                                                                                                                                         }
                                                                                                                                                         addr1441:
                                                                                                                                                         §§goto(addr1442);
                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                      }
                                                                                                                                                      break;
                                                                                                                                                   }
                                                                                                                                                   continue loop14;
                                                                                                                                                }
                                                                                                                                                continue loop9;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr1475);
                                                                                                                           }
                                                                                                                           if(!_loc34_)
                                                                                                                           {
                                                                                                                              §§goto(addr1499);
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr1615);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr1508:
                                                                                                                        §§goto(addr1509);
                                                                                                                        §§push(_loc20_);
                                                                                                                     }
                                                                                                                     §§goto(addr1271);
                                                                                                                  }
                                                                                                                  break;
                                                                                                               }
                                                                                                               §§goto(addr1587);
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc15_);
                                                                                                               if(_loc35_)
                                                                                                               {
                                                                                                                  §§goto(addr1441);
                                                                                                                  §§push(_loc28_.x);
                                                                                                               }
                                                                                                               §§goto(addr1458);
                                                                                                               §§goto(addr1384);
                                                                                                            }
                                                                                                            §§goto(addr1601);
                                                                                                         }
                                                                                                         §§goto(addr1158);
                                                                                                      }
                                                                                                   }
                                                                                                   addr1634:
                                                                                                   return;
                                                                                                }
                                                                                                §§goto(addr717);
                                                                                             }
                                                                                             §§goto(addr697);
                                                                                          }
                                                                                          §§goto(addr717);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr676);
                                                                                 }
                                                                                 §§goto(addr565);
                                                                              }
                                                                              addr510:
                                                                              §§push(int(§§pop()));
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(0);
                                                                              if(!(_loc34_ && param2))
                                                                              {
                                                                                 §§goto(addr510);
                                                                              }
                                                                           }
                                                                           §§goto(addr511);
                                                                        }
                                                                        §§goto(addr498);
                                                                     }
                                                                     §§goto(addr497);
                                                                  }
                                                                  §§goto(addr496);
                                                               }
                                                               break;
                                                            }
                                                            §§goto(addr476);
                                                            §§push(§§pop());
                                                         }
                                                         §§goto(addr263);
                                                         §§push(Number(§§pop()));
                                                      }
                                                      §§goto(addr250);
                                                   }
                                                   §§goto(addr263);
                                                }
                                                §§goto(addr216);
                                             }
                                             §§goto(addr224);
                                          }
                                          §§goto(addr187);
                                       }
                                       §§goto(addr160);
                                    }
                                 }
                                 §§goto(addr179);
                              }
                              §§goto(addr157);
                           }
                           §§goto(addr168);
                        }
                        §§goto(addr131);
                     }
                     §§goto(addr123);
                  }
                  §§goto(addr135);
               }
               §§push(§§pop() + §§pop());
            }
            §§goto(addr96);
         }
         §§goto(addr99);
      }
      
      public static function §"!F§(param1:b2AABB, param2:b2AABB) : Boolean
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc3_:b2Vec2 = param2.§>!7§;
         var _loc4_:b2Vec2 = param1.§=k§;
         §§push(_loc3_.x);
         if(!(_loc9_ && _loc3_))
         {
            §§push(§§pop() - _loc4_.x);
            if(_loc10_)
            {
               addr39:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            §§push(_loc3_.y);
            if(_loc10_)
            {
               §§push(§§pop() - _loc4_.y);
               if(_loc10_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc6_:* = §§pop();
            _loc3_ = param1.§>!7§;
            _loc4_ = param2.§=k§;
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
            if(_loc10_ || b2Collision)
            {
               §§push(§§pop() - _loc4_.y);
               if(!_loc9_)
               {
                  addr85:
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
                                 while(true)
                                 {
                                    §§pop();
                                    addr252:
                                    while(true)
                                    {
                                       §§push(_loc6_);
                                       addr222:
                                       while(true)
                                       {
                                          §§push(0);
                                          addr223:
                                          while(true)
                                          {
                                             §§push(§§pop() > §§pop());
                                          }
                                       }
                                    }
                                 }
                                 addr251:
                              }
                              while(true)
                              {
                                 loop9:
                                 for(; !§§pop(); if(_loc9_ && _loc3_)
                                 {
                                    continue;
                                 },if(_loc9_ && param1)
                                 {
                                    continue loop2;
                                 },§§push(§§pop()),if(_loc9_)
                                 {
                                    continue loop3;
                                 },if(!§§pop())
                                 {
                                    while(true)
                                    {
                                       §§pop();
                                       loop15:
                                       while(true)
                                       {
                                          §§push(_loc8_);
                                          if(!(_loc9_ && b2Collision))
                                          {
                                             if(_loc10_)
                                             {
                                                §§push(0);
                                                if(_loc10_)
                                                {
                                                   if(_loc10_ || b2Collision)
                                                   {
                                                      if(_loc9_ && b2Collision)
                                                      {
                                                         continue loop1;
                                                      }
                                                      §§push(§§pop() > §§pop());
                                                      loop16:
                                                      while(true)
                                                      {
                                                         if(!(_loc9_ && _loc3_))
                                                         {
                                                            loop17:
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(!(_loc9_ && _loc3_))
                                                                  {
                                                                     if(!(_loc10_ || _loc3_))
                                                                     {
                                                                        continue loop15;
                                                                     }
                                                                     if(_loc10_ || param1)
                                                                     {
                                                                        if(_loc10_ || param2)
                                                                        {
                                                                           §§push(false);
                                                                           break;
                                                                        }
                                                                        break loop9;
                                                                     }
                                                                     §§goto(addr192);
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                     }
                                                                     addr191:
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(true);
                                                                  if(!_loc10_)
                                                                  {
                                                                     break loop17;
                                                                  }
                                                                  continue loop16;
                                                               }
                                                            }
                                                            return §§pop();
                                                            addr159:
                                                         }
                                                         §§goto(addr251);
                                                      }
                                                      §§goto(addr252);
                                                   }
                                                   §§goto(addr223);
                                                }
                                                §§goto(addr197);
                                             }
                                             break;
                                          }
                                          §§goto(addr194);
                                       }
                                       §§goto(addr222);
                                    }
                                 },§§goto(addr159))
                                 {
                                    while(true)
                                    {
                                       §§push(_loc7_);
                                       addr194:
                                       while(!_loc9_)
                                       {
                                          §§push(0);
                                          while(true)
                                          {
                                             §§push(§§pop() > §§pop());
                                             addr198:
                                             while(true)
                                             {
                                                if(!_loc10_)
                                                {
                                                   return §§pop();
                                                }
                                                addr244:
                                                continue loop9;
                                             }
                                             continue loop9;
                                          }
                                       }
                                       continue loop0;
                                    }
                                 }
                                 if(_loc10_ || _loc3_)
                                 {
                                    break;
                                 }
                                 §§goto(addr252);
                              }
                              §§goto(addr244);
                           }
                        }
                     }
                  }
               }
               §§goto(addr191);
            }
            §§goto(addr85);
         }
         §§goto(addr39);
      }
   }
}
