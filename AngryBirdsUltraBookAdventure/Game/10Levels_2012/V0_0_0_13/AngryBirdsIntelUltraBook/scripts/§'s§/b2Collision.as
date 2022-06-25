package §'s§
{
   import §#!"§.*;
   import §&L§.*;
   import §+!,§.*;
   
   use namespace b2internal;
   
   public class b2Collision
   {
      
      public static const b2_nullFeature:uint = 255;
      
      private static var §;!R§:Vector.<§'!P§>;
      
      private static var s_clipPoints1:Vector.<§'!P§>;
      
      private static var s_clipPoints2:Vector.<§'!P§>;
      
      private static var §-!0§:Vector.<int>;
      
      private static var §=S§:Vector.<int>;
      
      private static var §3!O§:b2Vec2;
      
      private static var §]g§:b2Vec2;
      
      private static var §9-§:b2Vec2;
      
      private static var §[!8§:b2Vec2;
      
      private static var §"!!§:b2Vec2;
      
      private static var s_tangent2:b2Vec2;
      
      private static var s_v11:b2Vec2;
      
      private static var s_v12:b2Vec2;
      
      private static var b2CollidePolyTempVec:b2Vec2;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            b2_nullFeature = 255;
            while(true)
            {
               §;!R§ = §3O§();
               while(true)
               {
                  s_clipPoints1 = §3O§();
                  addr181:
                  while(!_loc2_)
                  {
                     s_clipPoints2 = §3O§();
                     while(true)
                     {
                        §-!0§ = new Vector.<int>(1);
                        addr169:
                        while(true)
                        {
                           §=S§ = new Vector.<int>(1);
                        }
                     }
                  }
               }
            }
            addr193:
         }
         loop5:
         while(true)
         {
            §3!O§ = new b2Vec2();
            loop6:
            while(true)
            {
               §]g§ = new b2Vec2();
               while(true)
               {
                  §9-§ = new b2Vec2();
                  loop8:
                  while(true)
                  {
                     §[!8§ = new b2Vec2();
                     addr115:
                     while(true)
                     {
                        if(!_loc2_)
                        {
                           if(!_loc2_)
                           {
                              §"!!§ = new b2Vec2();
                              while(_loc1_)
                              {
                                 s_tangent2 = new b2Vec2();
                                 continue loop8;
                                 if(_loc1_ || _loc2_)
                                 {
                                    return;
                                 }
                              }
                              §§goto(addr181);
                           }
                           break;
                        }
                        continue loop6;
                     }
                     §§goto(addr175);
                  }
                  if(_loc2_ && _loc1_)
                  {
                     continue;
                  }
                  if(_loc2_)
                  {
                     continue loop5;
                  }
                  if(!_loc2_)
                  {
                     §§goto(addr68);
                  }
                  §§goto(addr193);
               }
            }
         }
      }
      
      public function b2Collision()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super();
         }
      }
      
      public static function §0!N§(param1:Vector.<§'!P§>, param2:Vector.<§'!P§>, param3:b2Vec2, param4:Number) : int
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc5_:§'!P§ = null;
         var _loc6_:* = 0;
         var _loc7_:b2Vec2 = null;
         var _loc9_:* = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:b2Vec2 = null;
         var _loc13_:§'!P§ = null;
         if(!_loc15_)
         {
            §§push(0);
            if(!_loc15_)
            {
               §§push(int(§§pop()));
            }
            _loc6_ = §§pop();
         }
         _loc5_ = param2[0];
         _loc7_ = _loc5_.v;
         _loc5_ = param2[1];
         var _loc8_:b2Vec2 = _loc5_.v;
         if(_loc14_ || param2)
         {
            §§push(param3.x);
            if(_loc14_)
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
                        if(!(_loc15_ && param1))
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc14_ || b2Collision)
                           {
                              addr103:
                              §§push(§§pop() + §§pop());
                              if(!(_loc15_ && param1))
                              {
                                 §§push(param4);
                                 if(!_loc15_)
                                 {
                                    §§push(§§pop() - §§pop());
                                    if(!(_loc15_ && param2))
                                    {
                                       addr122:
                                       §§push(Number(§§pop()));
                                       if(!_loc15_)
                                       {
                                          _loc9_ = §§pop();
                                          addr126:
                                          §§push(param3.x);
                                          if(!_loc15_)
                                          {
                                             §§push(_loc8_.x);
                                             if(_loc14_ || param3)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!_loc15_)
                                                {
                                                   addr142:
                                                   §§push(param3.y);
                                                   if(!(_loc15_ && param1))
                                                   {
                                                      addr151:
                                                      §§push(§§pop() * _loc8_.y);
                                                      if(_loc14_)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(!_loc15_)
                                                         {
                                                            addr160:
                                                            addr159:
                                                            §§push(§§pop() - param4);
                                                            if(_loc15_ && b2Collision)
                                                            {
                                                            }
                                                            var _loc10_:* = §§pop();
                                                            if(_loc14_)
                                                            {
                                                               §§push(_loc9_);
                                                               loop0:
                                                               while(true)
                                                               {
                                                                  §§push(0);
                                                                  addr304:
                                                                  while(true)
                                                                  {
                                                                     if(§§pop() <= §§pop())
                                                                     {
                                                                        addr305:
                                                                        while(true)
                                                                        {
                                                                           param1[_loc6_++].Set(param2[0]);
                                                                           addr317:
                                                                           while(true)
                                                                           {
                                                                           }
                                                                        }
                                                                        addr305:
                                                                     }
                                                                     addr278:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc10_);
                                                                        continue loop0;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr305);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr160);
                                                }
                                             }
                                             §§goto(addr160);
                                          }
                                          §§goto(addr159);
                                       }
                                       §§goto(addr160);
                                       §§push(Number(§§pop()));
                                    }
                                    §§goto(addr142);
                                 }
                              }
                              §§goto(addr160);
                           }
                        }
                        §§goto(addr151);
                     }
                     §§goto(addr103);
                  }
               }
               §§goto(addr160);
            }
            §§goto(addr122);
         }
         §§goto(addr126);
      }
      
      public static function §1J§(param1:b2PolygonShape, param2:b2Transform, param3:int, param4:b2PolygonShape, param5:b2Transform) : Number
      {
         var _loc26_:Boolean = true;
         var _loc27_:Boolean = false;
         var _loc11_:b2Mat22 = null;
         var _loc12_:b2Vec2 = null;
         var _loc25_:* = NaN;
         §§push(param1.§>Q§);
         if(!(_loc27_ && param3))
         {
            §§push(int(§§pop()));
         }
         var _loc6_:* = §§pop();
         var _loc7_:Vector.<b2Vec2> = param1.§`V§;
         var _loc8_:Vector.<b2Vec2> = param1.§1g§;
         §§push(param4.§>Q§);
         if(_loc26_ || param1)
         {
            §§push(int(§§pop()));
         }
         var _loc9_:* = §§pop();
         var _loc10_:Vector.<b2Vec2> = param4.§`V§;
         _loc11_ = param2.R;
         _loc12_ = _loc8_[param3];
         §§push(_loc11_.col1.x);
         if(_loc26_ || param1)
         {
            §§push(_loc12_.x);
            if(_loc26_)
            {
               §§push(§§pop() * §§pop());
               if(_loc26_ || b2Collision)
               {
                  addr89:
                  §§push(_loc11_.col2.x);
                  if(!(_loc27_ && param1))
                  {
                     addr102:
                     §§push(§§pop() + §§pop() * _loc12_.y);
                     if(!(_loc27_ && param1))
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  §§goto(addr102);
               }
               var _loc13_:* = §§pop();
               §§push(_loc11_.col1.y);
               if(!_loc27_)
               {
                  §§push(_loc12_.x);
                  if(_loc26_)
                  {
                     §§push(§§pop() * §§pop());
                     if(!(_loc27_ && param3))
                     {
                        §§push(_loc11_.col2.y);
                        if(_loc26_ || b2Collision)
                        {
                           addr139:
                           §§push(§§pop() * _loc12_.y);
                        }
                        §§push(§§pop() + §§pop());
                        if(_loc26_ || b2Collision)
                        {
                           addr151:
                           var _loc14_:Number = §§pop();
                           _loc11_ = param5.R;
                           §§push(_loc11_.col1.x);
                           if(_loc26_)
                           {
                              §§push(_loc13_);
                              if(_loc26_ || b2Collision)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(_loc26_ || param2)
                                 {
                                    §§push(_loc11_.col1.y);
                                    if(_loc26_ || param1)
                                    {
                                       addr187:
                                       §§push(§§pop() * _loc14_);
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(_loc26_ || param2)
                                    {
                                       addr197:
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc15_:* = §§pop();
                                    §§push(_loc11_.col2.x);
                                    if(_loc26_ || param3)
                                    {
                                       §§push(_loc13_);
                                       if(_loc26_ || b2Collision)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(_loc26_)
                                          {
                                             §§push(_loc11_.col2.y);
                                             if(!_loc27_)
                                             {
                                                addr225:
                                                §§push(§§pop() * _loc14_);
                                             }
                                             §§push(§§pop() + §§pop());
                                             if(!_loc27_)
                                             {
                                                addr230:
                                                §§push(Number(§§pop()));
                                             }
                                          }
                                          var _loc16_:* = §§pop();
                                          §§push(0);
                                          if(!_loc27_)
                                          {
                                             §§push(int(§§pop()));
                                          }
                                          var _loc17_:* = §§pop();
                                          var _loc18_:* = Number(Number.MAX_VALUE);
                                          §§push(0);
                                          if(_loc26_ || param3)
                                          {
                                             §§push(int(§§pop()));
                                          }
                                          var _loc19_:* = §§pop();
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
                                                      while(true)
                                                      {
                                                         §§push(_loc12_.y);
                                                         if(!(_loc27_ && param1))
                                                         {
                                                            §§push(§§pop() * _loc16_);
                                                         }
                                                      }
                                                      addr366:
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc26_ || param2)
                                                      {
                                                         §§push(Number(§§pop()));
                                                      }
                                                      loop4:
                                                      while(true)
                                                      {
                                                         _loc25_ = §§pop();
                                                         loop5:
                                                         while(true)
                                                         {
                                                            §§push(_loc25_);
                                                            if(_loc26_)
                                                            {
                                                               continue loop4;
                                                            }
                                                            addr353:
                                                            while(true)
                                                            {
                                                               if(_loc27_)
                                                               {
                                                                  continue loop1;
                                                               }
                                                               §§push(Number(§§pop()));
                                                               while(true)
                                                               {
                                                                  if(!_loc26_)
                                                                  {
                                                                     break loop5;
                                                                  }
                                                                  _loc18_ = §§pop();
                                                                  loop6:
                                                                  while(true)
                                                                  {
                                                                     addr294:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc19_);
                                                                        addr296:
                                                                        while(true)
                                                                        {
                                                                           §§push(int(§§pop()));
                                                                           addr297:
                                                                           while(true)
                                                                           {
                                                                              _loc17_ = §§pop();
                                                                              continue loop6;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr366);
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr350);
                                          }
                                          _loc12_ = _loc7_[param3];
                                          _loc11_ = param2.R;
                                          §§push(param2.position.x);
                                          if(!(_loc27_ && b2Collision))
                                          {
                                             §§push(_loc11_.col1.x);
                                             if(!_loc27_)
                                             {
                                                §§push(_loc12_.x);
                                                if(_loc26_ || param2)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(!(_loc27_ && param2))
                                                   {
                                                      addr441:
                                                      §§push(_loc11_.col2.x);
                                                      if(!_loc27_)
                                                      {
                                                         addr437:
                                                         §§push(§§pop() * _loc12_.y);
                                                      }
                                                      §§push(§§pop() + (§§pop() + §§pop()));
                                                      if(_loc26_ || param2)
                                                      {
                                                         addr450:
                                                         var _loc20_:Number = §§pop();
                                                         §§push(param2.position.y);
                                                         if(!_loc27_)
                                                         {
                                                            §§push(_loc11_.col1.y);
                                                            if(_loc26_ || param2)
                                                            {
                                                               §§push(_loc12_.x);
                                                               if(_loc26_)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(_loc26_ || param2)
                                                                  {
                                                                     addr478:
                                                                     §§push(_loc11_.col2.y);
                                                                     if(!(_loc27_ && param1))
                                                                     {
                                                                        addr488:
                                                                        §§push(§§pop() * _loc12_.y);
                                                                     }
                                                                     §§push(§§pop() + §§pop());
                                                                  }
                                                                  §§push(§§pop() + §§pop());
                                                                  if(!_loc27_)
                                                                  {
                                                                     addr495:
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  var _loc21_:* = §§pop();
                                                                  _loc12_ = _loc10_[_loc17_];
                                                                  _loc11_ = param5.R;
                                                                  §§push(param5.position.x);
                                                                  if(!(_loc27_ && param1))
                                                                  {
                                                                     §§push(_loc11_.col1.x);
                                                                     if(_loc26_)
                                                                     {
                                                                        §§push(_loc12_.x);
                                                                        if(_loc26_ || param3)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(_loc26_)
                                                                           {
                                                                              addr547:
                                                                              §§push(_loc11_.col2.x);
                                                                              if(_loc26_ || param2)
                                                                              {
                                                                                 addr543:
                                                                                 §§push(§§pop() * _loc12_.y);
                                                                              }
                                                                              §§push(§§pop() + (§§pop() + §§pop()));
                                                                              if(!(_loc27_ && param1))
                                                                              {
                                                                                 addr556:
                                                                                 var _loc22_:* = Number(§§pop());
                                                                                 §§push(param5.position.y);
                                                                                 if(!_loc27_)
                                                                                 {
                                                                                    §§push(_loc11_.col1.y);
                                                                                    if(_loc26_ || param2)
                                                                                    {
                                                                                       §§push(_loc12_.x);
                                                                                       if(_loc26_)
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(_loc26_)
                                                                                          {
                                                                                             addr579:
                                                                                             §§push(_loc11_.col2.y);
                                                                                             if(_loc26_ || b2Collision)
                                                                                             {
                                                                                                addr589:
                                                                                                §§push(§§pop() * _loc12_.y);
                                                                                             }
                                                                                             §§push(§§pop() + §§pop());
                                                                                          }
                                                                                          §§push(§§pop() + §§pop());
                                                                                          if(!_loc27_)
                                                                                          {
                                                                                             addr597:
                                                                                             var _loc23_:* = Number(§§pop());
                                                                                             if(!_loc27_)
                                                                                             {
                                                                                                §§push(_loc22_);
                                                                                                if(_loc26_)
                                                                                                {
                                                                                                   §§push(_loc20_);
                                                                                                   if(_loc26_)
                                                                                                   {
                                                                                                      §§push(§§pop() - §§pop());
                                                                                                      if(_loc26_)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                         if(!_loc27_)
                                                                                                         {
                                                                                                            _loc22_ = §§pop();
                                                                                                            if(!_loc27_)
                                                                                                            {
                                                                                                               §§push(_loc23_);
                                                                                                               if(_loc26_ || b2Collision)
                                                                                                               {
                                                                                                               }
                                                                                                               §§goto(addr676);
                                                                                                            }
                                                                                                            addr638:
                                                                                                            §§push(_loc22_);
                                                                                                            if(_loc26_ || b2Collision)
                                                                                                            {
                                                                                                               addr656:
                                                                                                               §§push(_loc13_);
                                                                                                               if(_loc26_ || param2)
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(_loc26_)
                                                                                                                  {
                                                                                                                     addr672:
                                                                                                                     §§push(_loc23_);
                                                                                                                     if(_loc26_)
                                                                                                                     {
                                                                                                                        addr670:
                                                                                                                        §§push(§§pop() * _loc14_);
                                                                                                                     }
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     if(!_loc27_)
                                                                                                                     {
                                                                                                                        addr675:
                                                                                                                        addr676:
                                                                                                                        return §§pop();
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr676);
                                                                                                               }
                                                                                                               §§goto(addr670);
                                                                                                            }
                                                                                                            §§goto(addr676);
                                                                                                         }
                                                                                                         §§push(_loc21_);
                                                                                                         if(_loc26_)
                                                                                                         {
                                                                                                            addr626:
                                                                                                            §§push(§§pop() - §§pop());
                                                                                                            if(_loc26_)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                               if(_loc26_ || param2)
                                                                                                               {
                                                                                                                  _loc23_ = §§pop();
                                                                                                                  §§goto(addr638);
                                                                                                               }
                                                                                                               §§goto(addr656);
                                                                                                            }
                                                                                                            §§goto(addr675);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr672);
                                                                                                   }
                                                                                                   §§goto(addr626);
                                                                                                }
                                                                                                §§goto(addr676);
                                                                                             }
                                                                                             §§goto(addr638);
                                                                                          }
                                                                                          §§goto(addr597);
                                                                                       }
                                                                                       §§goto(addr589);
                                                                                    }
                                                                                    §§goto(addr579);
                                                                                 }
                                                                                 §§goto(addr597);
                                                                              }
                                                                              §§goto(addr556);
                                                                           }
                                                                           §§goto(addr547);
                                                                        }
                                                                        §§goto(addr543);
                                                                     }
                                                                     §§goto(addr547);
                                                                  }
                                                                  §§goto(addr556);
                                                               }
                                                               §§goto(addr488);
                                                            }
                                                            §§goto(addr478);
                                                         }
                                                         §§goto(addr495);
                                                      }
                                                      §§goto(addr450);
                                                   }
                                                   §§goto(addr441);
                                                }
                                                §§goto(addr437);
                                             }
                                             §§goto(addr441);
                                          }
                                          §§goto(addr450);
                                       }
                                       §§goto(addr225);
                                    }
                                    §§goto(addr230);
                                 }
                                 §§goto(addr197);
                              }
                              §§goto(addr187);
                           }
                           §§goto(addr197);
                        }
                     }
                     §§goto(addr151);
                  }
                  §§goto(addr139);
               }
               §§goto(addr151);
            }
            §§goto(addr102);
         }
         §§goto(addr89);
      }
      
      public static function §@U§(param1:Vector.<int>, param2:b2PolygonShape, param3:b2Transform, param4:b2PolygonShape, param5:b2Transform) : Number
      {
         var _loc26_:Boolean = false;
         var _loc27_:Boolean = true;
         var _loc8_:b2Vec2 = null;
         var _loc9_:b2Mat22 = null;
         var _loc22_:* = 0;
         var _loc23_:* = NaN;
         var _loc24_:* = 0;
         var _loc25_:* = NaN;
         §§push(param2.§>Q§);
         if(_loc27_)
         {
            §§push(int(§§pop()));
         }
         var _loc6_:* = §§pop();
         var _loc7_:Vector.<b2Vec2> = param2.§1g§;
         _loc9_ = param5.R;
         _loc8_ = param4.§-a§;
         §§push(param5.position.x);
         if(!(_loc26_ && param2))
         {
            §§push(_loc9_.col1.x);
            if(!_loc26_)
            {
               §§push(_loc8_.x);
               if(!_loc26_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc27_ || param2)
                  {
                     addr76:
                     §§push(_loc9_.col2.x);
                     if(!(_loc26_ && param2))
                     {
                        addr89:
                        §§push(§§pop() + §§pop() * _loc8_.y);
                     }
                     §§goto(addr89);
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc27_ || param3)
                  {
                     addr98:
                     §§push(Number(§§pop()));
                  }
                  var _loc10_:* = §§pop();
                  §§push(param5.position.y);
                  if(!_loc26_)
                  {
                     §§push(_loc9_.col1.y);
                     if(!(_loc26_ && b2Collision))
                     {
                        §§push(_loc8_.x);
                        if(_loc27_)
                        {
                           addr136:
                           §§push(§§pop() * §§pop());
                           if(_loc27_ || b2Collision)
                           {
                              §§push(_loc9_.col2.y);
                              if(!_loc26_)
                              {
                                 §§push(§§pop() * _loc8_.y);
                              }
                           }
                           §§push(§§pop() + §§pop());
                           if(_loc27_ || b2Collision)
                           {
                              addr145:
                              var _loc11_:* = Number(§§pop());
                              _loc9_ = param3.R;
                              _loc8_ = param2.§-a§;
                              if(_loc27_ || param3)
                              {
                                 §§push(_loc10_);
                                 if(_loc27_ || param3)
                                 {
                                    §§push(param3.position);
                                    if(_loc27_)
                                    {
                                       §§push(§§pop().x);
                                       if(!_loc26_)
                                       {
                                          §§push(_loc9_.col1);
                                          if(!_loc26_)
                                          {
                                             §§push(§§pop().x);
                                             if(_loc27_)
                                             {
                                                §§push(_loc8_.x);
                                                if(!_loc26_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc27_ || b2Collision)
                                                   {
                                                      §§push(_loc9_.col2);
                                                      if(_loc27_)
                                                      {
                                                         §§push(§§pop().x);
                                                         if(!(_loc26_ && param3))
                                                         {
                                                            §§push(_loc8_.y);
                                                            if(_loc27_ || b2Collision)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(!_loc26_)
                                                               {
                                                                  addr219:
                                                                  §§push(§§pop() + §§pop());
                                                                  if(_loc27_ || param2)
                                                                  {
                                                                     addr227:
                                                                     §§push(§§pop() + §§pop());
                                                                     if(!(_loc26_ && param1))
                                                                     {
                                                                        §§push(§§pop() - §§pop());
                                                                        if(_loc27_)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           if(_loc27_)
                                                                           {
                                                                              addr241:
                                                                              _loc10_ = §§pop();
                                                                              if(_loc27_)
                                                                              {
                                                                                 §§push(_loc11_);
                                                                                 if(!(_loc26_ && param2))
                                                                                 {
                                                                                    addr254:
                                                                                    §§push(param3.position.y);
                                                                                    if(_loc27_)
                                                                                    {
                                                                                       §§push(_loc9_.col1);
                                                                                       if(_loc27_ || param3)
                                                                                       {
                                                                                          §§push(§§pop().y);
                                                                                          if(!(_loc26_ && b2Collision))
                                                                                          {
                                                                                             §§push(_loc8_.x);
                                                                                             if(!_loc26_)
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(_loc27_ || b2Collision)
                                                                                                {
                                                                                                   addr286:
                                                                                                   §§push(_loc9_.col2.y);
                                                                                                   if(_loc27_ || param1)
                                                                                                   {
                                                                                                      addr299:
                                                                                                      §§push(§§pop() + §§pop() * _loc8_.y);
                                                                                                      if(!_loc26_)
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
                                                                                                                  _loc11_ = §§pop();
                                                                                                                  addr312:
                                                                                                                  §§push(_loc10_);
                                                                                                                  if(_loc27_ || param1)
                                                                                                                  {
                                                                                                                     §§push(param3.R.col1.x);
                                                                                                                     if(_loc27_)
                                                                                                                     {
                                                                                                                        addr326:
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        if(_loc26_)
                                                                                                                        {
                                                                                                                        }
                                                                                                                        addr346:
                                                                                                                        var _loc12_:* = §§pop();
                                                                                                                        §§push(_loc10_);
                                                                                                                        if(!_loc26_)
                                                                                                                        {
                                                                                                                           §§push(param3.R.col2.x);
                                                                                                                           if(!(_loc26_ && b2Collision))
                                                                                                                           {
                                                                                                                              addr376:
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              if(_loc27_)
                                                                                                                              {
                                                                                                                                 §§push(_loc11_);
                                                                                                                                 if(_loc27_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() * param3.R.col2.y);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              var _loc13_:* = §§pop();
                                                                                                                              §§push(0);
                                                                                                                              if(!_loc26_)
                                                                                                                              {
                                                                                                                                 §§push(int(§§pop()));
                                                                                                                              }
                                                                                                                              var _loc14_:* = §§pop();
                                                                                                                              §§push(-Number.MAX_VALUE);
                                                                                                                              if(_loc27_)
                                                                                                                              {
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                              }
                                                                                                                              var _loc15_:* = §§pop();
                                                                                                                              §§push(0);
                                                                                                                              if(!(_loc26_ && param1))
                                                                                                                              {
                                                                                                                                 §§push(int(§§pop()));
                                                                                                                              }
                                                                                                                              var _loc16_:* = §§pop();
                                                                                                                              loop0:
                                                                                                                              while(_loc16_ < _loc6_)
                                                                                                                              {
                                                                                                                                 _loc8_ = _loc7_[_loc16_];
                                                                                                                                 if(_loc27_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc8_.x);
                                                                                                                                    if(!_loc26_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc12_);
                                                                                                                                       loop1:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          if(_loc27_)
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc8_.y);
                                                                                                                                                if(!(_loc26_ && param3))
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() * _loc13_);
                                                                                                                                                }
                                                                                                                                                addr522:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr511:
                                                                                                                                          }
                                                                                                                                          loop2:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                             loop3:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                _loc25_ = §§pop();
                                                                                                                                                addr525:
                                                                                                                                                loop6:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc25_);
                                                                                                                                                   if(_loc26_ && b2Collision)
                                                                                                                                                   {
                                                                                                                                                      loop13:
                                                                                                                                                      while(!(_loc26_ && param1))
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc27_ || b2Collision))
                                                                                                                                                         {
                                                                                                                                                            continue loop2;
                                                                                                                                                         }
                                                                                                                                                         _loc15_ = §§pop();
                                                                                                                                                         loop14:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            loop9:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc16_);
                                                                                                                                                               loop12:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(int(§§pop()));
                                                                                                                                                                  loop11:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     _loc14_ = §§pop();
                                                                                                                                                                     addr446:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc27_ || b2Collision))
                                                                                                                                                                        {
                                                                                                                                                                           continue loop14;
                                                                                                                                                                        }
                                                                                                                                                                        if(!_loc26_)
                                                                                                                                                                        {
                                                                                                                                                                           break;
                                                                                                                                                                        }
                                                                                                                                                                        addr483:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc25_);
                                                                                                                                                                           if(!_loc26_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                           }
                                                                                                                                                                           continue loop13;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     if(_loc27_)
                                                                                                                                                                     {
                                                                                                                                                                        addr457:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc16_);
                                                                                                                                                                           if(_loc27_)
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc27_ || b2Collision))
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop12;
                                                                                                                                                                              }
                                                                                                                                                                              §§push(§§pop() + 1);
                                                                                                                                                                              if(_loc27_ || b2Collision)
                                                                                                                                                                              {
                                                                                                                                                                                 addr429:
                                                                                                                                                                                 §§push(int(§§pop()));
                                                                                                                                                                              }
                                                                                                                                                                              if(_loc26_ && b2Collision)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop11;
                                                                                                                                                                              }
                                                                                                                                                                              _loc16_ = §§pop();
                                                                                                                                                                              if(_loc27_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    break;
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop9;
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr446);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr429);
                                                                                                                                                                           §§goto(addr457);
                                                                                                                                                                        }
                                                                                                                                                                        continue loop0;
                                                                                                                                                                        addr410:
                                                                                                                                                                     }
                                                                                                                                                                     continue loop6;
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      continue loop3;
                                                                                                                                                   }
                                                                                                                                                   §§push(_loc15_);
                                                                                                                                                   if(_loc27_ || param1)
                                                                                                                                                   {
                                                                                                                                                      continue loop1;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr522);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr511);
                                                                                                                                 }
                                                                                                                                 §§goto(addr525);
                                                                                                                              }
                                                                                                                              §§push(§1J§(param2,param3,_loc14_,param4,param5));
                                                                                                                              if(!(_loc26_ && b2Collision))
                                                                                                                              {
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                              }
                                                                                                                              var _loc17_:* = §§pop();
                                                                                                                              if(_loc27_ || param1)
                                                                                                                              {
                                                                                                                                 §§push(_loc14_);
                                                                                                                                 if(_loc27_)
                                                                                                                                 {
                                                                                                                                    §§push(1);
                                                                                                                                    if(_loc27_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                       if(!(_loc26_ && param3))
                                                                                                                                       {
                                                                                                                                          if(§§pop() >= 0)
                                                                                                                                          {
                                                                                                                                             addr569:
                                                                                                                                             §§push(_loc14_);
                                                                                                                                             if(!_loc26_)
                                                                                                                                             {
                                                                                                                                                §§push(1);
                                                                                                                                                if(!(_loc26_ && param1))
                                                                                                                                                {
                                                                                                                                                   addr580:
                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                   if(_loc27_)
                                                                                                                                                   {
                                                                                                                                                      addr583:
                                                                                                                                                      §§push(int(§§pop()));
                                                                                                                                                      if(!(_loc26_ && param1))
                                                                                                                                                      {
                                                                                                                                                         addr610:
                                                                                                                                                         §§push(int(§§pop()));
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         addr607:
                                                                                                                                                         §§push(int(§§pop() - 1));
                                                                                                                                                         if(!_loc26_)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr610);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      var _loc18_:* = §§pop();
                                                                                                                                                      §§push(§1J§(param2,param3,_loc18_,param4,param5));
                                                                                                                                                      if(_loc27_)
                                                                                                                                                      {
                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                      }
                                                                                                                                                      var _loc19_:* = §§pop();
                                                                                                                                                      if(_loc27_)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc14_);
                                                                                                                                                         if(!_loc26_)
                                                                                                                                                         {
                                                                                                                                                            §§push(1);
                                                                                                                                                            if(_loc27_ || param3)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                               if(_loc27_ || param3)
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop() < _loc6_)
                                                                                                                                                                  {
                                                                                                                                                                     addr647:
                                                                                                                                                                     §§push(_loc14_);
                                                                                                                                                                     if(!(_loc26_ && b2Collision))
                                                                                                                                                                     {
                                                                                                                                                                        addr657:
                                                                                                                                                                        addr656:
                                                                                                                                                                        §§push(int(§§pop() + 1));
                                                                                                                                                                        if(_loc27_ || param3)
                                                                                                                                                                        {
                                                                                                                                                                           addr665:
                                                                                                                                                                        }
                                                                                                                                                                        addr683:
                                                                                                                                                                        var _loc20_:int = §§pop();
                                                                                                                                                                        addr682:
                                                                                                                                                                        §§push(§1J§(param2,param3,_loc20_,param4,param5));
                                                                                                                                                                        if(!(_loc26_ && param3))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                        }
                                                                                                                                                                        var _loc21_:* = §§pop();
                                                                                                                                                                        if(_loc27_ || b2Collision)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc19_);
                                                                                                                                                                           loop15:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc17_);
                                                                                                                                                                              loop16:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() > §§pop());
                                                                                                                                                                                 if(_loc27_ || b2Collision)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(Boolean(§§pop()));
                                                                                                                                                                                    loop17:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop());
                                                                                                                                                                                       if(!(_loc26_ && param1))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(Boolean(§§pop()));
                                                                                                                                                                                       }
                                                                                                                                                                                       if(§§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          loop83:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§pop();
                                                                                                                                                                                             addr1234:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc19_);
                                                                                                                                                                                                addr1186:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc21_);
                                                                                                                                                                                                   addr1187:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() > §§pop());
                                                                                                                                                                                                      continue loop83;
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop83;
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          addr1233:
                                                                                                                                                                                       }
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          loop19:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!§§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc21_);
                                                                                                                                                                                                loop20:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc17_);
                                                                                                                                                                                                   loop21:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(§§pop() > §§pop())
                                                                                                                                                                                                      {
                                                                                                                                                                                                         loop22:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(1);
                                                                                                                                                                                                            loop23:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(int(§§pop()));
                                                                                                                                                                                                               loop24:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!(_loc26_ && b2Collision))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     _loc24_ = §§pop();
                                                                                                                                                                                                                     loop25:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc20_);
                                                                                                                                                                                                                        loop26:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(int(§§pop()));
                                                                                                                                                                                                                           loop27:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc27_ || param2)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 _loc22_ = §§pop();
                                                                                                                                                                                                                                 loop28:
                                                                                                                                                                                                                                 while(_loc27_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!(_loc26_ && param2))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc21_);
                                                                                                                                                                                                                                       loop29:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                                                                          loop30:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!_loc26_)
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
                                                                                                                                                                                                                                                         if(!_loc26_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!_loc27_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               break;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            if(!§§pop())
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!_loc26_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!(_loc26_ && param3))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc27_ || param2)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           param1[0] = _loc22_;
                                                                                                                                                                                                                                                                           §§goto(addr759);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr948);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr814);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               addr759:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!_loc26_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc27_ || param3)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(_loc23_);
                                                                                                                                                                                                                                                                        if(!_loc26_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!_loc27_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop29;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           if(!(_loc26_ && param3))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(!_loc26_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc27_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    break;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 loop51:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(int(§§pop()));
                                                                                                                                                                                                                                                                                    if(!(_loc26_ && param2))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr1074:
                                                                                                                                                                                                                                                                                       loop44:
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(int(§§pop()));
                                                                                                                                                                                                                                                                                          loop45:
                                                                                                                                                                                                                                                                                          while(_loc27_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             _loc14_ = §§pop();
                                                                                                                                                                                                                                                                                             loop61:
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(!_loc26_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(!_loc27_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      break;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   loop56:
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(§1J§(param2,param3,_loc14_,param4,param5));
                                                                                                                                                                                                                                                                                                      if(!(_loc27_ || param1))
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         addr892:
                                                                                                                                                                                                                                                                                                         while(!(_loc26_ && b2Collision))
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            continue loop15;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         loop37:
                                                                                                                                                                                                                                                                                                         for(; !(_loc26_ && b2Collision); §§goto(addr892))
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(int(§§pop()));
                                                                                                                                                                                                                                                                                                            if(_loc27_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(_loc27_ || b2Collision)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(int(§§pop()));
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  addr1012:
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(-1);
                                                                                                                                                                                                                                                                                                                     loop49:
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(§§pop() == §§pop())
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           continue loop31;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§push(_loc22_);
                                                                                                                                                                                                                                                                                                                        loop39:
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(!_loc26_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              if(!(_loc26_ && param2))
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(1);
                                                                                                                                                                                                                                                                                                                                 if(_loc27_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§push(_loc6_);
                                                                                                                                                                                                                                                                                                                                       if(!_loc26_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§push(§§pop() < §§pop());
                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             if(!(_loc26_ && param1))
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                if(§§pop())
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      if(!_loc27_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         continue loop61;
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      if(_loc26_ && param1)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         continue loop31;
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§push(_loc22_);
                                                                                                                                                                                                                                                                                                                                                      if(!_loc26_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         break loop39;
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      addr1013:
                                                                                                                                                                                                                                                                                                                                                      addr1013:
                                                                                                                                                                                                                                                                                                                                                      addr1013:
                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         if(!(_loc26_ && param2))
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            _loc14_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                            while(!_loc26_)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               continue loop56;
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            addr1021:
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1088);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1183);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   addr948:
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§push(0);
                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      if(_loc27_ || param3)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§push(int(§§pop()));
                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            if(!_loc27_)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               continue loop45;
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1012);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         addr1010:
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1064);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   addr1002:
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr1013);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr1088);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          addr940:
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§goto(addr1052);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr1053);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    addr936:
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr1181);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(1);
                                                                                                                                                                                                                                                                                                                                 if(_loc27_ || param1)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§goto(addr1049);
                                                                                                                                                                                                                                                                                                                                    §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              addr1040:
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr1084);
                                                                                                                                                                                                                                                                                                                           addr850:
                                                                                                                                                                                                                                                                                                                           if(_loc27_ || param1)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              addr858:
                                                                                                                                                                                                                                                                                                                              _loc22_ = int(§§pop());
                                                                                                                                                                                                                                                                                                                              loop65:
                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(_loc27_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(_loc17_);
                                                                                                                                                                                                                                                                                                                                    continue loop29;
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr1063);
                                                                                                                                                                                                                                                                                                                                 addr780:
                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    if(_loc26_ && param3)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       continue loop65;
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    if(!_loc26_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       continue loop33;
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr1211);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              continue loop29;
                                                                                                                                                                                                                                                                                                                              addr859:
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(_loc27_ || param1)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              if(_loc27_ || b2Collision)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(_loc27_ || param3)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                    continue loop37;
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 continue loop49;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr1065);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§goto(addr1084);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  addr1028:
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr1088);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr1013);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         addr892:
                                                                                                                                                                                                                                                                                                         continue loop30;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      addr877:
                                                                                                                                                                                                                                                                                                      if(_loc27_ || param3)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         continue loop20;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      addr1117:
                                                                                                                                                                                                                                                                                                      while(_loc27_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(0);
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(§§pop() >= §§pop());
                                                                                                                                                                                                                                                                                                            addr1053:
                                                                                                                                                                                                                                                                                                            while(!_loc26_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(!(_loc26_ && param1))
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(§§pop())
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(_loc22_);
                                                                                                                                                                                                                                                                                                                        addr1064:
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(1);
                                                                                                                                                                                                                                                                                                                           addr1065:
                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              continue loop51;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     addr1063:
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(_loc6_);
                                                                                                                                                                                                                                                                                                                     if(_loc27_ || param2)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        addr1084:
                                                                                                                                                                                                                                                                                                                        §§push(1);
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                           addr1085:
                                                                                                                                                                                                                                                                                                                           loop53:
                                                                                                                                                                                                                                                                                                                           while(_loc27_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§push(int(§§pop()));
                                                                                                                                                                                                                                                                                                                              loop43:
                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(!(_loc27_ || param3))
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    continue loop27;
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 if(!_loc27_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    continue loop26;
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 if(_loc26_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    continue loop24;
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 if(_loc27_ || param2)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    continue loop44;
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 addr1209:
                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(int(§§pop()));
                                                                                                                                                                                                                                                                                                                                    addr1210:
                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       _loc24_ = §§pop();
                                                                                                                                                                                                                                                                                                                                       break loop43;
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(_loc18_);
                                                                                                                                                                                                                                                                                                                                 addr1181:
                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(int(§§pop()));
                                                                                                                                                                                                                                                                                                                                    addr1182:
                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       _loc22_ = §§pop();
                                                                                                                                                                                                                                                                                                                                       addr1183:
                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§push(_loc19_);
                                                                                                                                                                                                                                                                                                                                          addr1176:
                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                             break loop53;
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              _loc23_ = §§pop();
                                                                                                                                                                                                                                                                                                                              addr1178:
                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 continue loop32;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        addr1084:
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr1088);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§goto(addr1188);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            continue loop19;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr877);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      if(!_loc26_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         return §§pop();
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1186);
                                                                                                                                                                                                                                                                                                      addr1049:
                                                                                                                                                                                                                                                                                                      §§goto(addr1088);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   continue loop20;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                continue loop28;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr1234);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          continue loop23;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1088);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1085);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc27_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(_loc27_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(_loc23_);
                                                                                                                                                                                                                                                                                       if(!(_loc27_ || param3))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          continue loop21;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       if(_loc27_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!(_loc27_ || b2Collision))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             break;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          if(§§pop() > §§pop())
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             while(!(_loc26_ && param3))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(_loc14_);
                                                                                                                                                                                                                                                                                                if(!(_loc26_ && b2Collision))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(!(_loc26_ && param3))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(_loc27_ || b2Collision)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(!(_loc26_ && param1))
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§goto(addr850);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr1002);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1010);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1013);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr858);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             continue loop22;
                                                                                                                                                                                                                                                                                             addr814:
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          continue loop34;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1187);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr936);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              continue loop16;
                                                                                                                                                                                                                                                                              addr792:
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr892);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              _loc23_ = §§pop();
                                                                                                                                                                                                                                                                              §§goto(addr780);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           addr779:
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr859);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        while(!_loc26_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!(_loc27_ || param3))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop32;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           if(_loc27_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§goto(addr792);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              addr918:
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§goto(addr1117);
                                                                                                                                                                                                                                                                              §§push(_loc17_);
                                                                                                                                                                                                                                                                              addr1128:
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1117);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1021);
                                                                                                                                                                                                                                                                        addr907:
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1117);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr780);
                                                                                                                                                                                                                                                                  continue loop34;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               return §§pop();
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§push(_loc24_);
                                                                                                                                                                                                                                                            §§goto(addr1028);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr940);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      continue loop17;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1176);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1178);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 continue loop25;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1182);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1210);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         param1[0] = _loc14_;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1128);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1208);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1195);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1233);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr918);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr665);
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     §§push(0);
                                                                                                                                                                     if(_loc27_ || param2)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(int(§§pop()));
                                                                                                                                                                        if(!(_loc26_ && b2Collision))
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr682);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr683);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr657);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr656);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr657);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr647);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr607);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§push(_loc6_);
                                                                                                                                             if(_loc27_)
                                                                                                                                             {
                                                                                                                                                §§goto(addr607);
                                                                                                                                             }
                                                                                                                                             §§goto(addr610);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr583);
                                                                                                                                    }
                                                                                                                                    §§goto(addr580);
                                                                                                                                 }
                                                                                                                                 §§goto(addr610);
                                                                                                                              }
                                                                                                                              §§goto(addr569);
                                                                                                                           }
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           if(!_loc26_)
                                                                                                                           {
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr376);
                                                                                                                     }
                                                                                                                     addr337:
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     if(_loc27_ || param3)
                                                                                                                     {
                                                                                                                        addr345:
                                                                                                                        §§goto(addr346);
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr346);
                                                                                                               }
                                                                                                               §§goto(addr345);
                                                                                                            }
                                                                                                            §§push(_loc11_);
                                                                                                            if(_loc26_)
                                                                                                            {
                                                                                                            }
                                                                                                            §§goto(addr337);
                                                                                                         }
                                                                                                         addr335:
                                                                                                         §§push(param3.R.col1.y);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr299);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr299);
                                                                                          }
                                                                                          §§goto(addr337);
                                                                                          §§push(§§pop() * §§pop());
                                                                                       }
                                                                                       §§goto(addr335);
                                                                                    }
                                                                                    §§goto(addr326);
                                                                                 }
                                                                                 §§goto(addr345);
                                                                              }
                                                                              §§goto(addr312);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr326);
                                                                  }
                                                                  §§goto(addr286);
                                                               }
                                                            }
                                                            §§goto(addr299);
                                                         }
                                                         §§goto(addr219);
                                                      }
                                                   }
                                                   §§goto(addr286);
                                                }
                                                §§goto(addr299);
                                             }
                                             §§goto(addr227);
                                          }
                                          §§goto(addr335);
                                       }
                                       §§goto(addr337);
                                    }
                                    §§goto(addr254);
                                 }
                                 §§goto(addr241);
                              }
                              §§goto(addr312);
                           }
                           §§goto(addr145);
                        }
                        §§push(§§pop() + §§pop());
                     }
                     §§goto(addr136);
                  }
                  §§goto(addr145);
               }
               §§goto(addr89);
            }
            §§goto(addr76);
         }
         §§goto(addr98);
      }
      
      public static function §!X§(param1:Vector.<§'!P§>, param2:b2PolygonShape, param3:b2Transform, param4:int, param5:b2PolygonShape, param6:b2Transform) : void
      {
         var _loc24_:Boolean = true;
         var _loc25_:Boolean = false;
         var _loc12_:b2Mat22 = null;
         var _loc13_:b2Vec2 = null;
         var _loc20_:§'!P§ = null;
         var _loc23_:* = NaN;
         §§push(param2.§>Q§);
         if(!(_loc25_ && param1))
         {
            §§push(int(§§pop()));
         }
         var _loc7_:* = §§pop();
         var _loc8_:Vector.<b2Vec2> = param2.§1g§;
         §§push(param5.§>Q§);
         if(!_loc25_)
         {
            §§push(int(§§pop()));
         }
         var _loc9_:* = §§pop();
         var _loc10_:Vector.<b2Vec2> = param5.§`V§;
         var _loc11_:Vector.<b2Vec2> = param5.§1g§;
         _loc12_ = param3.R;
         _loc13_ = _loc8_[param4];
         §§push(_loc12_.col1.x);
         if(_loc24_ || param3)
         {
            §§push(_loc13_.x);
            if(!(_loc25_ && param1))
            {
               §§push(§§pop() * §§pop());
               if(!_loc25_)
               {
                  §§push(_loc12_.col2.x);
                  if(_loc24_ || param3)
                  {
                     addr97:
                     §§push(§§pop() * _loc13_.y);
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc24_)
                  {
                     addr103:
                     §§push(Number(§§pop()));
                  }
                  var _loc14_:* = §§pop();
                  §§push(_loc12_.col1.y);
                  if(_loc24_)
                  {
                     §§push(_loc13_.x);
                     if(_loc24_)
                     {
                        §§push(§§pop() * §§pop());
                        if(!_loc25_)
                        {
                           addr117:
                           §§push(_loc12_.col2.y);
                           if(!(_loc25_ && b2Collision))
                           {
                              addr130:
                              §§push(§§pop() + §§pop() * _loc13_.y);
                              if(!(_loc25_ && b2Collision))
                              {
                                 §§push(Number(§§pop()));
                              }
                           }
                           §§goto(addr130);
                        }
                        var _loc15_:* = §§pop();
                        _loc12_ = param6.R;
                        §§push(_loc12_.col1.x);
                        if(!_loc25_)
                        {
                           §§push(_loc14_);
                           if(!_loc25_)
                           {
                              §§push(§§pop() * §§pop());
                              if(!_loc25_)
                              {
                                 addr155:
                                 §§push(_loc12_.col1.y);
                                 if(_loc24_)
                                 {
                                    addr160:
                                    §§push(§§pop() * _loc15_);
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(!(_loc25_ && param2))
                                 {
                                    §§push(Number(§§pop()));
                                 }
                              }
                              var _loc16_:* = §§pop();
                              if(_loc24_)
                              {
                                 §§push(_loc12_.col2.x);
                                 if(_loc24_ || param1)
                                 {
                                    §§push(_loc14_);
                                    if(_loc24_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(_loc24_)
                                       {
                                          §§push(_loc12_.col2.y);
                                          if(!_loc25_)
                                          {
                                             addr197:
                                             §§push(§§pop() + §§pop() * _loc15_);
                                             if(_loc24_)
                                             {
                                                addr200:
                                                §§push(Number(§§pop()));
                                                if(!_loc25_)
                                                {
                                                   addr203:
                                                   _loc15_ = §§pop();
                                                   if(!_loc25_)
                                                   {
                                                      addr206:
                                                      §§push(_loc16_);
                                                      if(!(_loc25_ && param1))
                                                      {
                                                         addr215:
                                                         _loc14_ = Number(§§pop());
                                                      }
                                                      §§goto(addr215);
                                                   }
                                                   §§push(0);
                                                   if(!(_loc25_ && param1))
                                                   {
                                                      §§push(int(§§pop()));
                                                   }
                                                   var _loc17_:* = §§pop();
                                                   var _loc18_:* = Number(Number.MAX_VALUE);
                                                   §§push(0);
                                                   if(!_loc25_)
                                                   {
                                                      §§push(int(§§pop()));
                                                   }
                                                   var _loc19_:* = §§pop();
                                                   loop0:
                                                   while(true)
                                                   {
                                                      §§push(_loc19_);
                                                      if(_loc24_ || param2)
                                                      {
                                                         if(§§pop() >= _loc9_)
                                                         {
                                                            §§push(_loc17_);
                                                            if(_loc24_)
                                                            {
                                                               break;
                                                            }
                                                            addr376:
                                                            var _loc21_:* = §§pop();
                                                            if(!_loc25_)
                                                            {
                                                               §§push(_loc21_);
                                                               if(!(_loc25_ && param3))
                                                               {
                                                                  §§push(1);
                                                                  if(!_loc25_)
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     if(!_loc25_)
                                                                     {
                                                                        if(§§pop() < _loc9_)
                                                                        {
                                                                           addr396:
                                                                           §§push(_loc21_);
                                                                           if(!(_loc25_ && param1))
                                                                           {
                                                                              addr406:
                                                                              §§push(int(§§pop() + 1));
                                                                              if(_loc24_ || b2Collision)
                                                                              {
                                                                                 addr414:
                                                                              }
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(0);
                                                                           if(_loc24_ || b2Collision)
                                                                           {
                                                                              §§push(int(§§pop()));
                                                                              if(!(_loc25_ && param3))
                                                                              {
                                                                                 addr441:
                                                                                 §§push(int(§§pop()));
                                                                              }
                                                                              var _loc22_:* = §§pop();
                                                                              _loc20_ = param1[0];
                                                                              _loc13_ = _loc10_[_loc21_];
                                                                              _loc12_ = param6.R;
                                                                              if(!_loc25_)
                                                                              {
                                                                                 §§push(_loc20_.v);
                                                                                 loop14:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(param6.position);
                                                                                    addr637:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().x);
                                                                                       addr638:
                                                                                       loop16:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc12_.col1);
                                                                                          addr640:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop().x);
                                                                                             loop18:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc13_.x);
                                                                                                if(_loc24_ || param3)
                                                                                                {
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc12_.col2);
                                                                                                      addr653:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop().x);
                                                                                                         addr654:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc13_.y);
                                                                                                            addr656:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      addr614:
                                                                                                      if(_loc25_ && param1)
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                      if(_loc25_)
                                                                                                      {
                                                                                                         continue loop18;
                                                                                                      }
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      if(!(_loc24_ || param2))
                                                                                                      {
                                                                                                         continue loop16;
                                                                                                      }
                                                                                                      §§pop().y = §§pop();
                                                                                                      loop27:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc20_.id);
                                                                                                         loop28:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop().features);
                                                                                                            loop29:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(param4);
                                                                                                               loop30:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§pop().§^!F§ = §§pop();
                                                                                                                  loop31:
                                                                                                                  while(!_loc25_)
                                                                                                                  {
                                                                                                                     loop32:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc20_.id);
                                                                                                                        addr498:
                                                                                                                        while(!_loc25_)
                                                                                                                        {
                                                                                                                           §§push(§§pop().features);
                                                                                                                           while(!(_loc25_ && param1))
                                                                                                                           {
                                                                                                                              §§push(_loc21_);
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§pop().§[J§ = §§pop();
                                                                                                                                 §§push(0);
                                                                                                                                 addr468:
                                                                                                                                 continue loop27;
                                                                                                                                 if(!(_loc24_ || param2))
                                                                                                                                 {
                                                                                                                                    continue;
                                                                                                                                 }
                                                                                                                                 if(_loc25_ && b2Collision)
                                                                                                                                 {
                                                                                                                                    continue loop30;
                                                                                                                                 }
                                                                                                                                 §§pop().§[O§ = §§pop();
                                                                                                                                 if(!(_loc24_ || b2Collision))
                                                                                                                                 {
                                                                                                                                    continue loop27;
                                                                                                                                 }
                                                                                                                                 if(!_loc24_)
                                                                                                                                 {
                                                                                                                                    continue loop31;
                                                                                                                                 }
                                                                                                                                 if(false)
                                                                                                                                 {
                                                                                                                                    continue loop32;
                                                                                                                                 }
                                                                                                                                 _loc20_ = param1[1];
                                                                                                                                 _loc13_ = _loc10_[_loc22_];
                                                                                                                                 _loc12_ = param6.R;
                                                                                                                                 if(!(_loc25_ && param2))
                                                                                                                                 {
                                                                                                                                    addr872:
                                                                                                                                    §§push(_loc20_.v);
                                                                                                                                    §§push(param6.position.x);
                                                                                                                                    §§push(_loc12_.col1.x);
                                                                                                                                    §§push(_loc13_.x);
                                                                                                                                    if(!_loc25_)
                                                                                                                                    {
                                                                                                                                       addr895:
                                                                                                                                       addr880:
                                                                                                                                       addr882:
                                                                                                                                       addr894:
                                                                                                                                       addr893:
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       §§push(_loc12_.col2.x);
                                                                                                                                       if(!(_loc25_ && param1))
                                                                                                                                       {
                                                                                                                                          addr892:
                                                                                                                                          §§push(§§pop() * _loc13_.y);
                                                                                                                                       }
                                                                                                                                       §§pop().x = §§pop() + (§§pop() + §§pop());
                                                                                                                                       addr896:
                                                                                                                                       §§push(_loc20_.v);
                                                                                                                                       if(!(_loc25_ && param1))
                                                                                                                                       {
                                                                                                                                          §§push(param6.position);
                                                                                                                                          if(!(_loc25_ && param3))
                                                                                                                                          {
                                                                                                                                             §§push(§§pop().y);
                                                                                                                                             if(_loc24_ || param3)
                                                                                                                                             {
                                                                                                                                                §§push(_loc12_.col1);
                                                                                                                                                if(!(_loc25_ && param1))
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop().y);
                                                                                                                                                   if(!_loc25_)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc13_.x);
                                                                                                                                                      if(!(_loc25_ && param1))
                                                                                                                                                      {
                                                                                                                                                         if(_loc24_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                            if(_loc24_)
                                                                                                                                                            {
                                                                                                                                                               addr806:
                                                                                                                                                               if(_loc24_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc12_.col2);
                                                                                                                                                                  if(!(_loc25_ && param1))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop().y);
                                                                                                                                                                     if(!_loc25_)
                                                                                                                                                                     {
                                                                                                                                                                        addr820:
                                                                                                                                                                        §§push(_loc13_.y);
                                                                                                                                                                        if(_loc24_ || param2)
                                                                                                                                                                        {
                                                                                                                                                                           addr830:
                                                                                                                                                                           §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                                           if(_loc24_ || param3)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc24_ || param3)
                                                                                                                                                                              {
                                                                                                                                                                                 addr846:
                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                 if(_loc24_ || param2)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc24_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§pop().y = §§pop();
                                                                                                                                                                                       addr744:
                                                                                                                                                                                       _loc20_.id.features.§^!F§ = param4;
                                                                                                                                                                                       addr745:
                                                                                                                                                                                       addr743:
                                                                                                                                                                                       addr742:
                                                                                                                                                                                       if(_loc24_ || param3)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr710:
                                                                                                                                                                                          §§push(_loc20_.id);
                                                                                                                                                                                          if(!(_loc25_ && param2))
                                                                                                                                                                                          {
                                                                                                                                                                                             addr718:
                                                                                                                                                                                             §§push(§§pop().features);
                                                                                                                                                                                             if(!_loc25_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr721:
                                                                                                                                                                                                §§push(_loc22_);
                                                                                                                                                                                                if(!(_loc25_ && param1))
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§pop().§[J§ = §§pop();
                                                                                                                                                                                                   addr729:
                                                                                                                                                                                                   if(!(_loc25_ && b2Collision))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc24_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc20_.id);
                                                                                                                                                                                                         if(!_loc25_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop().features);
                                                                                                                                                                                                            if(!_loc25_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(1);
                                                                                                                                                                                                               if(!(_loc25_ && b2Collision))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§pop().§[O§ = §§pop();
                                                                                                                                                                                                                  if(_loc25_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr729);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  return;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr721);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr718);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr710);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr896);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr745);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr744);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr743);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr742);
                                                                                                                                                                                          addr752:
                                                                                                                                                                                       }
                                                                                                                                                                                       addr856:
                                                                                                                                                                                       §§goto(addr856);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr872);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr895);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr872);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr880);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr892);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr830);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr882);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr894);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr830);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr893);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr820);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr806);
                                                                                                                                                }
                                                                                                                                                §§goto(addr872);
                                                                                                                                             }
                                                                                                                                             §§goto(addr846);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr872);
                                                                                                                                    }
                                                                                                                                    §§goto(addr892);
                                                                                                                                 }
                                                                                                                                 §§goto(addr752);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           continue loop29;
                                                                                                                        }
                                                                                                                        continue loop28;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  continue loop14;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                addr657:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   addr658:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      addr659:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§pop().x = §§pop();
                                                                                                         continue loop14;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 addr635:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc20_.v);
                                                                                 if(!(_loc25_ && b2Collision))
                                                                                 {
                                                                                    §§push(param6.position);
                                                                                    if(!(_loc25_ && b2Collision))
                                                                                    {
                                                                                       §§push(§§pop().y);
                                                                                       if(!(_loc25_ && param2))
                                                                                       {
                                                                                          if(_loc24_ || param1)
                                                                                          {
                                                                                             §§push(_loc12_.col1);
                                                                                             if(!_loc25_)
                                                                                             {
                                                                                                §§push(§§pop().y);
                                                                                                if(!_loc25_)
                                                                                                {
                                                                                                   §§push(_loc13_.x);
                                                                                                   if(_loc24_ || param2)
                                                                                                   {
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      if(_loc24_ || b2Collision)
                                                                                                      {
                                                                                                         §§push(_loc12_.col2);
                                                                                                         if(!(_loc25_ && param1))
                                                                                                         {
                                                                                                            §§push(§§pop().y);
                                                                                                            if(!(_loc25_ && param3))
                                                                                                            {
                                                                                                               if(!_loc25_)
                                                                                                               {
                                                                                                                  §§push(_loc13_.y);
                                                                                                                  if(!_loc25_)
                                                                                                                  {
                                                                                                                     addr609:
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     if(!_loc25_)
                                                                                                                     {
                                                                                                                        addr612:
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                        if(_loc24_)
                                                                                                                        {
                                                                                                                           §§goto(addr614);
                                                                                                                        }
                                                                                                                        §§goto(addr658);
                                                                                                                     }
                                                                                                                     §§goto(addr657);
                                                                                                                  }
                                                                                                                  §§goto(addr656);
                                                                                                               }
                                                                                                               §§goto(addr654);
                                                                                                            }
                                                                                                            §§goto(addr609);
                                                                                                         }
                                                                                                         §§goto(addr653);
                                                                                                      }
                                                                                                      §§goto(addr612);
                                                                                                   }
                                                                                                   §§goto(addr609);
                                                                                                }
                                                                                                §§goto(addr612);
                                                                                             }
                                                                                             §§goto(addr640);
                                                                                          }
                                                                                          §§goto(addr659);
                                                                                       }
                                                                                       §§goto(addr624);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr637);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr635);
                                                                                 }
                                                                                 §§goto(addr637);
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr441);
                                                                     }
                                                                  }
                                                                  §§goto(addr406);
                                                               }
                                                               §§goto(addr414);
                                                            }
                                                            §§goto(addr396);
                                                         }
                                                         else
                                                         {
                                                            _loc13_ = _loc11_[_loc19_];
                                                            if(_loc24_ || param1)
                                                            {
                                                               §§push(_loc14_);
                                                               if(_loc24_)
                                                               {
                                                                  §§push(_loc13_.x);
                                                                  if(_loc24_ || param1)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(_loc24_ || param1)
                                                                     {
                                                                        §§push(_loc15_);
                                                                        if(_loc24_ || param2)
                                                                        {
                                                                           addr355:
                                                                           §§push(§§pop() * _loc13_.y);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           addr359:
                                                                           while(true)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                        }
                                                                        addr358:
                                                                     }
                                                                     loop2:
                                                                     while(true)
                                                                     {
                                                                        _loc23_ = §§pop();
                                                                        loop3:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc23_);
                                                                           if(_loc24_ || param3)
                                                                           {
                                                                              §§push(_loc18_);
                                                                              if(_loc24_)
                                                                              {
                                                                                 if(§§pop() < §§pop())
                                                                                 {
                                                                                    loop4:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc23_);
                                                                                       if(!_loc25_)
                                                                                       {
                                                                                          if(_loc25_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          §§push(Number(§§pop()));
                                                                                          while(!(_loc25_ && param1))
                                                                                          {
                                                                                             _loc18_ = §§pop();
                                                                                             while(_loc24_)
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc19_);
                                                                                                   addr287:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(int(§§pop()));
                                                                                                      addr288:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc17_ = §§pop();
                                                                                                         continue loop4;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             continue loop3;
                                                                                          }
                                                                                          continue loop2;
                                                                                          addr316:
                                                                                       }
                                                                                       §§goto(addr316);
                                                                                    }
                                                                                    §§goto(addr359);
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc19_);
                                                                                    if(!_loc25_)
                                                                                    {
                                                                                       §§push(§§pop() + 1);
                                                                                       if(_loc24_)
                                                                                       {
                                                                                          addr258:
                                                                                          if(_loc24_)
                                                                                          {
                                                                                             addr261:
                                                                                             §§push(int(§§pop()));
                                                                                             if(!(_loc25_ && b2Collision))
                                                                                             {
                                                                                                _loc19_ = §§pop();
                                                                                                if(_loc24_ || param1)
                                                                                                {
                                                                                                   if(!(_loc25_ && param2))
                                                                                                   {
                                                                                                      while(false)
                                                                                                      {
                                                                                                         §§goto(addr285);
                                                                                                      }
                                                                                                      continue loop0;
                                                                                                      addr283:
                                                                                                   }
                                                                                                   §§goto(addr324);
                                                                                                }
                                                                                                §§goto(addr289);
                                                                                             }
                                                                                             §§goto(addr288);
                                                                                          }
                                                                                          §§goto(addr287);
                                                                                       }
                                                                                       §§goto(addr261);
                                                                                    }
                                                                                    §§goto(addr258);
                                                                                    §§goto(addr289);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr358);
                                                                              }
                                                                              §§goto(addr359);
                                                                           }
                                                                           §§goto(addr316);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr355);
                                                               }
                                                               §§goto(addr359);
                                                            }
                                                            §§goto(addr283);
                                                         }
                                                      }
                                                      break;
                                                   }
                                                   §§goto(addr376);
                                                   §§push(int(§§pop()));
                                                }
                                                §§goto(addr215);
                                             }
                                             §§goto(addr203);
                                          }
                                          §§goto(addr197);
                                       }
                                       §§goto(addr215);
                                    }
                                    §§goto(addr197);
                                 }
                                 §§goto(addr200);
                              }
                              §§goto(addr206);
                           }
                           §§goto(addr160);
                        }
                        §§goto(addr155);
                     }
                     §§goto(addr130);
                  }
                  §§goto(addr117);
               }
               §§goto(addr103);
            }
            §§goto(addr97);
         }
         §§goto(addr103);
      }
      
      private static function §3O§() : Vector.<§'!P§>
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Vector.<§'!P§> = new Vector.<§'!P§>(2);
         if(_loc3_ || b2Collision)
         {
            _loc1_[0] = new §'!P§();
         }
         do
         {
            _loc1_[1] = new §'!P§();
         }
         while(_loc2_);
         
         return _loc1_;
      }
      
      public static function §]Y§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2PolygonShape, param5:b2Transform) : void
      {
         var _loc46_:Boolean = false;
         var _loc47_:Boolean = true;
         var _loc6_:§'!P§ = null;
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
            param1.§'!j§ = 0;
         }
         var _loc7_:Number = param2.§5!`§ + param4.§5!`§;
         §§push(0);
         if(_loc47_ || param1)
         {
            §§push(int(§§pop()));
         }
         var _loc8_:* = §§pop();
         if(!(_loc46_ && b2Collision))
         {
            §-!0§[0] = _loc8_;
         }
         §§push(§@U§(§-!0§,param2,param3,param4,param5));
         if(!(_loc46_ && b2Collision))
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         if(!_loc46_)
         {
            §§push(int(§-!0§[0]));
            if(_loc47_ || param3)
            {
               _loc8_ = §§pop();
               if(!(_loc46_ && b2Collision))
               {
                  if(_loc9_ > _loc7_)
                  {
                     if(!_loc46_)
                     {
                        return;
                     }
                     addr138:
                     §§push(0);
                     if(!_loc46_)
                     {
                        §§push(int(§§pop()));
                     }
                  }
               }
               §§goto(addr138);
            }
            var _loc10_:* = §§pop();
            if(_loc47_ || b2Collision)
            {
               §=S§[0] = _loc10_;
            }
            §§push(§@U§(§=S§,param4,param5,param2,param3));
            if(!(_loc46_ && param2))
            {
               §§push(Number(§§pop()));
            }
            var _loc11_:* = §§pop();
            if(!(_loc46_ && param3))
            {
               _loc10_ = int(§=S§[0]);
               if(_loc47_)
               {
                  addr187:
                  §§push(_loc11_);
                  if(!(_loc46_ && b2Collision))
                  {
                     if(§§pop() > _loc7_)
                     {
                        if(!(_loc46_ && param3))
                        {
                           return;
                        }
                        addr205:
                        §§push(0.98);
                        if(!_loc46_)
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                     §§goto(addr205);
                  }
                  var _loc18_:* = §§pop();
                  §§push(0.001);
                  if(!_loc46_)
                  {
                     §§push(Number(§§pop()));
                  }
                  var _loc19_:* = §§pop();
                  if(_loc47_ || b2Collision)
                  {
                     §§push(_loc11_);
                     §§push(_loc18_);
                     if(!_loc46_)
                     {
                        §§push(_loc9_);
                        if(_loc47_)
                        {
                           addr234:
                           §§push(§§pop() * §§pop());
                           if(!_loc46_)
                           {
                              §§push(_loc19_);
                           }
                           if(§§pop() > §§pop())
                           {
                              addr235:
                              _loc12_ = param4;
                              _loc13_ = param2;
                              _loc14_ = param5;
                              _loc15_ = param3;
                              if(!(_loc46_ && param2))
                              {
                                 §§push(_loc10_);
                                 if(!_loc46_)
                                 {
                                    §§push(int(§§pop()));
                                 }
                                 loop20:
                                 while(true)
                                 {
                                    _loc16_ = §§pop();
                                    addr289:
                                    while(true)
                                    {
                                       addr277:
                                       while(true)
                                       {
                                          param1.§32§ = b2Manifold.§#,§;
                                          continue loop20;
                                       }
                                    }
                                 }
                              }
                              §§goto(addr275);
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
                                 if(!(_loc46_ && param1))
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
                                       addr316:
                                       while(true)
                                       {
                                          param1.§32§ = b2Manifold.§,!0§;
                                          addr322:
                                          while(true)
                                          {
                                             if(_loc47_ || param2)
                                             {
                                                continue loop0;
                                             }
                                             continue loop1;
                                          }
                                       }
                                    }
                                 }
                              }
                              §§goto(addr314);
                           }
                        }
                        §§push(§§pop() + §§pop());
                     }
                     §§goto(addr234);
                  }
                  §§goto(addr235);
               }
               §§goto(addr205);
            }
            §§goto(addr187);
         }
         §§goto(addr138);
      }
      
      public static function §^!b§(param1:b2Manifold, param2:b2CircleShape, param3:b2Transform, param4:b2CircleShape, param5:b2Transform) : void
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         var _loc6_:b2Mat22 = null;
         var _loc7_:b2Vec2 = null;
         if(!_loc16_)
         {
            param1.§'!j§ = 0;
         }
         _loc6_ = param3.R;
         _loc7_ = param2.§1!k§;
         §§push(param3.position.x);
         if(_loc17_ || param1)
         {
            §§push(_loc6_.col1.x);
            if(!(_loc16_ && param1))
            {
               §§push(_loc7_.x);
               if(!_loc16_)
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc16_ && param1))
                  {
                     addr68:
                     §§push(_loc6_.col2.x);
                     if(_loc17_ || param2)
                     {
                        addr81:
                        §§push(§§pop() + §§pop() * _loc7_.y);
                     }
                     §§goto(addr81);
                  }
                  §§push(§§pop() + §§pop());
                  if(!_loc16_)
                  {
                     addr86:
                     var _loc8_:Number = §§pop();
                     §§push(param3.position.y);
                     if(!(_loc16_ && b2Collision))
                     {
                        §§push(_loc6_.col1.y);
                        if(_loc17_ || b2Collision)
                        {
                           §§push(_loc7_.x);
                           if(!(_loc16_ && param3))
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc17_ || param1)
                              {
                                 addr124:
                                 §§push(_loc6_.col2.y);
                                 if(_loc17_ || b2Collision)
                                 {
                                    addr134:
                                    §§push(§§pop() * _loc7_.y);
                                 }
                                 §§push(§§pop() + §§pop());
                              }
                              §§push(§§pop() + §§pop());
                              if(_loc17_)
                              {
                                 addr141:
                                 §§push(Number(§§pop()));
                              }
                              var _loc9_:* = §§pop();
                              _loc6_ = param5.R;
                              _loc7_ = param4.§1!k§;
                              §§push(param5.position.x);
                              if(!_loc16_)
                              {
                                 §§push(_loc6_.col1.x);
                                 if(!_loc16_)
                                 {
                                    §§push(_loc7_.x);
                                    if(_loc17_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(_loc17_ || param1)
                                       {
                                          addr187:
                                          §§push(_loc6_.col2.x);
                                          if(!(_loc16_ && param3))
                                          {
                                             addr183:
                                             §§push(§§pop() * _loc7_.y);
                                          }
                                          §§push(§§pop() + (§§pop() + §§pop()));
                                          if(!_loc16_)
                                          {
                                             addr200:
                                             §§push(Number(§§pop()));
                                          }
                                          var _loc10_:* = §§pop();
                                          §§push(param5.position.y);
                                          if(!_loc16_)
                                          {
                                             §§push(_loc6_.col1.y);
                                             if(_loc17_)
                                             {
                                                §§push(_loc7_.x);
                                                if(_loc17_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(!_loc16_)
                                                   {
                                                      addr219:
                                                      §§push(_loc6_.col2.y);
                                                      if(!_loc16_)
                                                      {
                                                         addr227:
                                                         §§push(§§pop() + §§pop() * _loc7_.y);
                                                      }
                                                      §§goto(addr227);
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                   if(_loc17_ || param3)
                                                   {
                                                      addr237:
                                                      var _loc11_:Number = §§pop();
                                                      §§push(_loc10_);
                                                      if(_loc17_)
                                                      {
                                                         §§push(§§pop() - _loc8_);
                                                         if(_loc17_)
                                                         {
                                                            addr245:
                                                            §§push(Number(§§pop()));
                                                         }
                                                         var _loc12_:* = §§pop();
                                                         §§push(_loc11_);
                                                         if(_loc17_)
                                                         {
                                                            §§push(§§pop() - _loc9_);
                                                            if(_loc17_ || param1)
                                                            {
                                                               §§push(Number(§§pop()));
                                                            }
                                                         }
                                                         var _loc13_:* = §§pop();
                                                         §§push(_loc12_);
                                                         if(!_loc16_)
                                                         {
                                                            §§push(_loc12_);
                                                            if(_loc17_)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(_loc17_ || b2Collision)
                                                               {
                                                                  addr275:
                                                                  §§push(_loc13_);
                                                                  if(!_loc16_)
                                                                  {
                                                                     addr280:
                                                                     §§push(§§pop() + §§pop() * _loc13_);
                                                                     if(!_loc16_)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                  }
                                                                  §§goto(addr280);
                                                               }
                                                               var _loc14_:* = §§pop();
                                                               var _loc15_:Number = param2.§5!`§ + param4.§5!`§;
                                                               if(!(_loc16_ && param2))
                                                               {
                                                                  §§push(_loc14_);
                                                                  §§push(_loc15_);
                                                                  if(!(_loc16_ && param3))
                                                                  {
                                                                     §§push(§§pop() * _loc15_);
                                                                  }
                                                                  if(§§pop() <= §§pop())
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        param1.§32§ = b2Manifold.§8!G§;
                                                                        while(!(_loc16_ && b2Collision))
                                                                        {
                                                                           param1.m_localPoint.SetV(param2.§1!k§);
                                                                           loop2:
                                                                           while(true)
                                                                           {
                                                                              param1.§&!E§.§5b§();
                                                                              while(true)
                                                                              {
                                                                                 if(_loc17_)
                                                                                 {
                                                                                    if(_loc16_ && param3)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    param1.§'!j§ = 1;
                                                                                    continue;
                                                                                 }
                                                                                 continue loop2;
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               return;
                                                            }
                                                            §§goto(addr280);
                                                         }
                                                         §§goto(addr275);
                                                      }
                                                      §§goto(addr245);
                                                   }
                                                   §§goto(addr237);
                                                }
                                                §§goto(addr227);
                                             }
                                             §§goto(addr219);
                                          }
                                          §§goto(addr237);
                                       }
                                       §§goto(addr187);
                                    }
                                    §§goto(addr183);
                                 }
                                 §§goto(addr187);
                              }
                              §§goto(addr200);
                           }
                           §§goto(addr134);
                        }
                        §§goto(addr124);
                     }
                     §§goto(addr141);
                  }
                  §§goto(addr86);
               }
               §§goto(addr81);
            }
            §§goto(addr68);
         }
         §§goto(addr86);
      }
      
      public static function §4A§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2CircleShape, param5:b2Transform) : void
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
         if(!(_loc34_ && param3))
         {
            param1.§'!j§ = 0;
         }
         _loc12_ = param5.R;
         _loc11_ = param4.§1!k§;
         §§push(param5.position.x);
         if(_loc35_)
         {
            §§push(_loc12_.col1.x);
            if(_loc35_ || param2)
            {
               §§push(_loc11_.x);
               if(_loc35_ || b2Collision)
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc34_ && param3))
                  {
                     addr92:
                     §§push(_loc12_.col2.x);
                     if(_loc35_)
                     {
                        addr97:
                        §§push(§§pop() * _loc11_.y);
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§push(§§pop() + §§pop());
                  if(!(_loc34_ && param2))
                  {
                     addr109:
                     §§push(Number(§§pop()));
                  }
                  var _loc13_:* = §§pop();
                  §§push(param5.position.y);
                  if(_loc35_ || param1)
                  {
                     §§push(_loc12_.col1.y);
                     if(!_loc34_)
                     {
                        §§push(_loc11_.x);
                        if(!_loc34_)
                        {
                           addr147:
                           §§push(§§pop() * §§pop());
                           if(!(_loc34_ && param3))
                           {
                              §§push(_loc12_.col2.y);
                              if(_loc35_)
                              {
                                 §§push(§§pop() * _loc11_.y);
                              }
                           }
                           §§push(§§pop() + §§pop());
                           if(!(_loc34_ && b2Collision))
                           {
                              addr156:
                              var _loc14_:Number = §§pop();
                              if(!_loc34_)
                              {
                                 §§push(_loc13_);
                                 if(!_loc34_)
                                 {
                                    §§push(param3.position);
                                    if(!_loc34_)
                                    {
                                       §§push(§§pop().x);
                                       if(!_loc34_)
                                       {
                                          §§push(§§pop() - §§pop());
                                          if(!(_loc34_ && param1))
                                          {
                                             §§push(Number(§§pop()));
                                             if(_loc34_ && param3)
                                             {
                                             }
                                             addr201:
                                             addr208:
                                             addr204:
                                             addr203:
                                             §§push(§§pop() - param3.position.y);
                                             if(_loc35_)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                             _loc8_ = §§pop();
                                             _loc12_ = param3.R;
                                             §§push(_loc7_);
                                             if(_loc35_)
                                             {
                                                §§push(_loc12_.col1.x);
                                                if(!_loc34_)
                                                {
                                                   addr240:
                                                   §§push(§§pop() * §§pop());
                                                   if(!(_loc34_ && param1))
                                                   {
                                                      §§push(_loc8_);
                                                      if(!_loc34_)
                                                      {
                                                         §§push(§§pop() * _loc12_.col1.y);
                                                      }
                                                   }
                                                   var _loc15_:* = §§pop();
                                                   §§push(_loc7_);
                                                   if(_loc35_ || param2)
                                                   {
                                                      §§push(_loc12_.col2.x);
                                                      if(!_loc34_)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(!(_loc34_ && param2))
                                                         {
                                                            §§push(_loc8_);
                                                            if(_loc35_)
                                                            {
                                                               addr265:
                                                               §§push(§§pop() * _loc12_.col2.y);
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc35_ || param3)
                                                            {
                                                               addr278:
                                                               var _loc16_:Number = §§pop();
                                                               §§push(0);
                                                               if(_loc35_)
                                                               {
                                                                  §§push(int(§§pop()));
                                                               }
                                                               var _loc18_:* = §§pop();
                                                               §§push(-Number.MAX_VALUE);
                                                               if(!_loc34_)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               var _loc19_:* = §§pop();
                                                               var _loc20_:Number = param2.§5!`§ + param4.§5!`§;
                                                               §§push(param2.§>Q§);
                                                               if(!_loc34_)
                                                               {
                                                                  §§push(int(§§pop()));
                                                               }
                                                               var _loc21_:* = §§pop();
                                                               var _loc22_:Vector.<b2Vec2> = param2.§`V§;
                                                               var _loc23_:Vector.<b2Vec2> = param2.§1g§;
                                                               §§push(0);
                                                               if(!(_loc34_ && b2Collision))
                                                               {
                                                                  §§push(int(§§pop()));
                                                               }
                                                               var _loc24_:* = §§pop();
                                                               loop0:
                                                               while(true)
                                                               {
                                                                  §§push(_loc24_);
                                                                  if(_loc35_ || param2)
                                                                  {
                                                                     if(§§pop() >= _loc21_)
                                                                     {
                                                                        §§push(_loc18_);
                                                                        if(_loc35_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        addr530:
                                                                        var _loc25_:* = §§pop();
                                                                        if(!(_loc34_ && param2))
                                                                        {
                                                                           §§push(_loc25_);
                                                                           if(_loc35_)
                                                                           {
                                                                              §§push(1);
                                                                              if(_loc35_ || b2Collision)
                                                                              {
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(!(_loc34_ && b2Collision))
                                                                                 {
                                                                                    if(§§pop() < _loc21_)
                                                                                    {
                                                                                       addr560:
                                                                                       §§push(_loc25_);
                                                                                       if(_loc35_)
                                                                                       {
                                                                                          addr565:
                                                                                          §§push(int(§§pop() + 1));
                                                                                          if(_loc35_)
                                                                                          {
                                                                                             addr580:
                                                                                             §§push(int(§§pop()));
                                                                                             addr568:
                                                                                          }
                                                                                          §§goto(addr580);
                                                                                       }
                                                                                       addr581:
                                                                                       var _loc26_:* = §§pop();
                                                                                       var _loc27_:b2Vec2 = _loc22_[_loc25_];
                                                                                       var _loc28_:b2Vec2 = _loc22_[_loc26_];
                                                                                       if(_loc35_ || b2Collision)
                                                                                       {
                                                                                          §§push(_loc19_);
                                                                                          if(_loc35_)
                                                                                          {
                                                                                             if(§§pop() < Number.MIN_VALUE)
                                                                                             {
                                                                                                loop21:
                                                                                                while(true)
                                                                                                {
                                                                                                   param1.§'!j§ = 1;
                                                                                                   loop22:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      param1.§32§ = b2Manifold.§,!0§;
                                                                                                      loop23:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         param1.§&!E§.SetV(_loc23_[_loc18_]);
                                                                                                         loop24:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(param1.m_localPoint);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(0.5);
                                                                                                               addr715:
                                                                                                               addr729:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc27_.x);
                                                                                                                  addr717:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc28_.x);
                                                                                                                     addr719:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                        addr720:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           addr721:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§pop().x = §§pop();
                                                                                                                              continue loop24;
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §§push(param1.m_localPoint);
                                                                                                               if(_loc34_ && param1)
                                                                                                               {
                                                                                                                  continue;
                                                                                                               }
                                                                                                               §§push(0.5);
                                                                                                               if(!(_loc34_ && param1))
                                                                                                               {
                                                                                                                  if(_loc35_ || param3)
                                                                                                                  {
                                                                                                                     §§push(_loc27_.y);
                                                                                                                     if(!_loc34_)
                                                                                                                     {
                                                                                                                        if(_loc35_ || param2)
                                                                                                                        {
                                                                                                                           §§push(_loc28_.y);
                                                                                                                           if(!_loc34_)
                                                                                                                           {
                                                                                                                              addr690:
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              if(_loc35_)
                                                                                                                              {
                                                                                                                                 addr693:
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 if(_loc35_ || param1)
                                                                                                                                 {
                                                                                                                                    §§pop().y = §§pop();
                                                                                                                                    while(_loc35_)
                                                                                                                                    {
                                                                                                                                       continue loop21;
                                                                                                                                       param1.§`!$§[0].m_localPoint.SetV(param4.§1!k§);
                                                                                                                                       if(!(_loc34_ && param3))
                                                                                                                                       {
                                                                                                                                          if(!_loc34_)
                                                                                                                                          {
                                                                                                                                             continue loop23;
                                                                                                                                          }
                                                                                                                                          continue loop22;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    continue loop24;
                                                                                                                                 }
                                                                                                                                 §§goto(addr715);
                                                                                                                              }
                                                                                                                              §§goto(addr720);
                                                                                                                           }
                                                                                                                           §§goto(addr719);
                                                                                                                        }
                                                                                                                        §§goto(addr717);
                                                                                                                     }
                                                                                                                     §§goto(addr690);
                                                                                                                  }
                                                                                                                  §§goto(addr721);
                                                                                                               }
                                                                                                               §§goto(addr693);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§push(_loc15_);
                                                                                                if(_loc35_)
                                                                                                {
                                                                                                   §§push(_loc27_.x);
                                                                                                   if(_loc35_)
                                                                                                   {
                                                                                                      §§push(§§pop() - §§pop());
                                                                                                      if(!_loc34_)
                                                                                                      {
                                                                                                         §§push(_loc28_.x);
                                                                                                         if(!(_loc34_ && param2))
                                                                                                         {
                                                                                                            §§push(_loc27_.x);
                                                                                                            if(_loc35_)
                                                                                                            {
                                                                                                               §§push(§§pop() - §§pop());
                                                                                                               if(!_loc34_)
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(_loc35_ || param3)
                                                                                                                  {
                                                                                                                     addr791:
                                                                                                                     §§push(_loc16_);
                                                                                                                     if(!(_loc34_ && b2Collision))
                                                                                                                     {
                                                                                                                        addr799:
                                                                                                                        §§push(_loc27_.y);
                                                                                                                        if(_loc35_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() - §§pop());
                                                                                                                           if(_loc34_)
                                                                                                                           {
                                                                                                                           }
                                                                                                                           addr814:
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           if(!(_loc34_ && param2))
                                                                                                                           {
                                                                                                                              addr823:
                                                                                                                              var _loc29_:Number = §§pop();
                                                                                                                              §§push(_loc15_);
                                                                                                                              if(!(_loc34_ && param3))
                                                                                                                              {
                                                                                                                                 §§push(_loc28_.x);
                                                                                                                                 if(_loc35_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() - §§pop());
                                                                                                                                    if(_loc35_ || b2Collision)
                                                                                                                                    {
                                                                                                                                       §§push(_loc27_.x);
                                                                                                                                       if(_loc35_ || param1)
                                                                                                                                       {
                                                                                                                                          §§push(_loc28_.x);
                                                                                                                                          if(!(_loc34_ && b2Collision))
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() - §§pop());
                                                                                                                                             if(!(_loc34_ && param1))
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                if(!_loc34_)
                                                                                                                                                {
                                                                                                                                                   addr883:
                                                                                                                                                   §§push(_loc16_);
                                                                                                                                                   if(_loc35_)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc28_.y);
                                                                                                                                                      if(_loc35_ || param3)
                                                                                                                                                      {
                                                                                                                                                         addr906:
                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                         if(!_loc34_)
                                                                                                                                                         {
                                                                                                                                                            addr898:
                                                                                                                                                            §§push(_loc27_.y);
                                                                                                                                                            if(_loc35_)
                                                                                                                                                            {
                                                                                                                                                               addr902:
                                                                                                                                                               §§push(§§pop() - _loc28_.y);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                         if(_loc35_ || b2Collision)
                                                                                                                                                         {
                                                                                                                                                            addr915:
                                                                                                                                                            var _loc30_:Number = §§pop();
                                                                                                                                                            if(!(_loc34_ && param1))
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc29_);
                                                                                                                                                               loop33:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(0);
                                                                                                                                                                  loop34:
                                                                                                                                                                  while(§§pop() > §§pop())
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc30_);
                                                                                                                                                                     loop35:
                                                                                                                                                                     while(§§pop() > 0)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(0.5);
                                                                                                                                                                        loop36:
                                                                                                                                                                        for(; _loc35_ || param1; while(_loc35_ || param2)
                                                                                                                                                                        {
                                                                                                                                                                           _loc19_ = §§pop();
                                                                                                                                                                           §§goto(addr1278);
                                                                                                                                                                        })
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc27_.x);
                                                                                                                                                                           loop37:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc28_.x);
                                                                                                                                                                              loop38:
                                                                                                                                                                              while(_loc35_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc34_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                    loop39:
                                                                                                                                                                                    while(_loc35_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                       loop40:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc35_ || b2Collision)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc34_)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop35;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                             loop41:
                                                                                                                                                                                             for(; _loc35_ || param2; while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc34_ && param2)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop41;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§push(_loc32_);
                                                                                                                                                                                                if(_loc35_ || param3)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc34_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr1193);
                                                                                                                                                                                                      §§push(§§pop() - §§pop());
                                                                                                                                                                                                   }
                                                                                                                                                                                                   break;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1734);
                                                                                                                                                                                                §§goto(addr1020);
                                                                                                                                                                                             },§§goto(addr1600))
                                                                                                                                                                                             {
                                                                                                                                                                                                _loc32_ = §§pop();
                                                                                                                                                                                                loop42:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(0.5);
                                                                                                                                                                                                   loop43:
                                                                                                                                                                                                   while(!_loc34_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc27_.y);
                                                                                                                                                                                                      loop44:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc35_ || param3)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!(_loc34_ && param2))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc35_ || param1)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc34_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc35_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc28_.y);
                                                                                                                                                                                                                        while(!_loc34_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!(_loc34_ && param1))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!(_loc35_ || param1))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    break;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                                                                    addr1333:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       _loc33_ = §§pop();
                                                                                                                                                                                                                                       addr1334:
                                                                                                                                                                                                                                       while(_loc35_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc35_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!_loc34_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!_loc34_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!(_loc34_ && param1))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(_loc15_);
                                                                                                                                                                                                                                                      continue loop41;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr1639:
                                                                                                                                                                                                                                                   if(!_loc35_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      loop71:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc34_ && param2)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            break loop34;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§push(param1.§&!E§);
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr1654:
                                                                                                                                                                                                                                                            §§push(_loc16_);
                                                                                                                                                                                                                                                            if(_loc35_ || param3)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr1663:
                                                                                                                                                                                                                                                               §§push(_loc27_.y);
                                                                                                                                                                                                                                                               if(!_loc34_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr1666:
                                                                                                                                                                                                                                                                  §§pop().y = §§pop() - §§pop();
                                                                                                                                                                                                                                                                  loop72:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(param1.§&!E§);
                                                                                                                                                                                                                                                                     addr1645:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr1646:
                                                                                                                                                                                                                                                                        §§pop().Normalize();
                                                                                                                                                                                                                                                                        continue loop72;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§push(param1.m_localPoint);
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§pop().SetV(_loc27_);
                                                                                                                                                                                                                                                                     §§goto(addr1639);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr1636:
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                     break loop71;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr1676:
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            break loop71;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§pop().x = §§pop();
                                                                                                                                                                                                                                                         §§goto(addr1678);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr1678:
                                                                                                                                                                                                                                                      addr1677:
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   param1.§`!$§[0].m_localPoint.SetV(param4.§1!k§);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                param1.§`!$§[0].m_id.key = 0;
                                                                                                                                                                                                                                                addr924:
                                                                                                                                                                                                                                                return;
                                                                                                                                                                                                                                                addr1621:
                                                                                                                                                                                                                                                addr1632:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr1530:
                                                                                                                                                                                                                                                addr1531:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             param1.§'!j§ = 1;
                                                                                                                                                                                                                                             param1.§32§ = b2Manifold.§,!0§;
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(param1.§&!E§);
                                                                                                                                                                                                                                                loop76:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc15_);
                                                                                                                                                                                                                                                   loop77:
                                                                                                                                                                                                                                                   while(!(_loc34_ && param1))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(_loc28_.x);
                                                                                                                                                                                                                                                      loop78:
                                                                                                                                                                                                                                                      while(!(_loc34_ && param2))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                         loop79:
                                                                                                                                                                                                                                                         for(; !(_loc34_ && param3); if(!(_loc35_ || param3))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue;
                                                                                                                                                                                                                                                         },if(!_loc35_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue loop77;
                                                                                                                                                                                                                                                         },§§push(_loc28_.y),if(!_loc35_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue loop78;
                                                                                                                                                                                                                                                         },§§goto(addr1488),§§push(§§pop() - §§pop()))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§pop().x = §§pop();
                                                                                                                                                                                                                                                            if(!_loc34_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(param1.§&!E§);
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!_loc35_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     continue loop76;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§push(_loc16_);
                                                                                                                                                                                                                                                                  if(_loc35_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     continue loop79;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr1489:
                                                                                                                                                                                                                                                                  addr1488:
                                                                                                                                                                                                                                                                  §§pop().y = §§pop();
                                                                                                                                                                                                                                                                  if(_loc35_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(param1.§&!E§);
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!_loc34_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!(_loc34_ && param3))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(§§pop().Normalize());
                                                                                                                                                                                                                                                                              break loop40;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1653);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1645);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     addr1445:
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               addr1469:
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr1693:
                                                                                                                                                                                                                                                               param1.§'!j§ = 1;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               param1.§32§ = b2Manifold.§,!0§;
                                                                                                                                                                                                                                                               addr1692:
                                                                                                                                                                                                                                                               loop83:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(param1.§&!E§);
                                                                                                                                                                                                                                                                  addr1671:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(_loc15_);
                                                                                                                                                                                                                                                                     if(_loc35_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§goto(addr1676);
                                                                                                                                                                                                                                                                        §§push(_loc27_.x);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1677);
                                                                                                                                                                                                                                                                     continue loop83;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1748);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1666);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1663);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr1535:
                                                                                                                                                                                                                                             §§goto(addr1654);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1535);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr1458:
                                                                                                                                                                                                                                       if(!(_loc34_ && b2Collision))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(param1.m_localPoint);
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc35_ || param2)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§pop().SetV(_loc28_);
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   param1.§`!$§[0].m_localPoint.SetV(param4.§1!k§);
                                                                                                                                                                                                                                                   addr1413:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!(_loc35_ || param3))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         break loop35;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      if(_loc35_ || param2)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         param1.§`!$§[0].m_id.key = 0;
                                                                                                                                                                                                                                                         addr1400:
                                                                                                                                                                                                                                                         if(_loc35_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§goto(addr924);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§goto(addr1647);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1621);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr1441:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             break;
                                                                                                                                                                                                                                             §§goto(addr1465);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr1465:
                                                                                                                                                                                                                                          §§goto(addr1636);
                                                                                                                                                                                                                                          addr1431:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1748);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr1546:
                                                                                                                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                                                                                                                              if(_loc35_ || param1)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc15_);
                                                                                                                                                                                                                                 break loop39;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr1734:
                                                                                                                                                                                                                              addr1255:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr1737:
                                                                                                                                                                                                                                 §§push(§§pop() + (_loc16_ - _loc27_.y) * (_loc16_ - _loc27_.y));
                                                                                                                                                                                                                                 §§push(_loc20_);
                                                                                                                                                                                                                                 addr1746:
                                                                                                                                                                                                                                 §§push(_loc20_);
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                    addr1747:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(§§pop() <= §§pop())
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§goto(addr1693);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr1748:
                                                                                                                                                                                                                                       return;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              while(_loc35_ || param2)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!_loc35_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop39;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 if(_loc35_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr1267:
                                                                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                    while(!_loc34_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                                                                       continue loop36;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1646);
                                                                                                                                                                                                                                    addr1267:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1734);
                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§push(_loc33_);
                                                                                                                                                                                                                           continue loop34;
                                                                                                                                                                                                                           if(_loc34_ && param1)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           if(_loc34_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop38;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           if(_loc35_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc35_ || b2Collision)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc35_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                    if(!(_loc34_ && param2))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr1250:
                                                                                                                                                                                                                                       §§push(§§pop() * _loc23_[_loc25_].y);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1255);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1737);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1746);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              break loop44;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§pop();
                                                                                                                                                                                                                           §§goto(addr1458);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr1589:
                                                                                                                                                                                                                        if(!(_loc34_ && param3))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr1597:
                                                                                                                                                                                                                           §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                                                                                           break loop36;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1737);
                                                                                                                                                                                                                        addr1314:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr1704:
                                                                                                                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc15_);
                                                                                                                                                                                                                        if(_loc35_ || param3)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(_loc27_.x);
                                                                                                                                                                                                                           if(!(_loc34_ && b2Collision))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr1733);
                                                                                                                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1746);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1747);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr1705:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1737);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr1571:
                                                                                                                                                                                                            §§push(§§pop() - _loc28_.y);
                                                                                                                                                                                                            §§push(_loc16_);
                                                                                                                                                                                                            break loop38;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         break;
                                                                                                                                                                                                         addr1155:
                                                                                                                                                                                                         if(!(_loc35_ || b2Collision))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(_loc35_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!_loc34_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(§§pop() <= §§pop())
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  loop56:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     param1.§'!j§ = 1;
                                                                                                                                                                                                                     loop57:
                                                                                                                                                                                                                     while(_loc35_ || b2Collision)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        loop59:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           param1.§32§ = b2Manifold.§,!0§;
                                                                                                                                                                                                                           loop60:
                                                                                                                                                                                                                           while(_loc35_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc35_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc35_ || param2)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(param1.§&!E§);
                                                                                                                                                                                                                                    loop61:
                                                                                                                                                                                                                                    for(; !_loc34_; loop63:
                                                                                                                                                                                                                                    for(; !(_loc34_ && param3); §§push(param1.§&!E§),if(!(_loc35_ || b2Collision))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue;
                                                                                                                                                                                                                                    },if(!(_loc34_ && b2Collision))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§goto(addr1010);
                                                                                                                                                                                                                                    },§§goto(addr1671))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§pop().y = _loc23_[_loc25_].y;
                                                                                                                                                                                                                                       while(!(_loc34_ && param1))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop63;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!_loc34_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(_loc19_);
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!(_loc34_ && param3))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc35_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc35_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!(_loc34_ && b2Collision))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(_loc20_);
                                                                                                                                                                                                                                                            if(!(_loc34_ && param3))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§goto(addr1155);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§goto(addr1255);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         break;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      continue loop43;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr1193:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc35_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(§§pop() * _loc23_[_loc25_].x);
                                                                                                                                                                                                                                                         if(_loc35_ || param3)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!_loc34_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(_loc16_);
                                                                                                                                                                                                                                                               if(_loc35_ || param3)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!_loc35_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     continue loop37;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  if(_loc35_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§goto(addr1221);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1571);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1250);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1737);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1267);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1314);
                                                                                                                                                                                                                                                   §§goto(addr1332);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1267);
                                                                                                                                                                                                                                                addr1010:
                                                                                                                                                                                                                                                §§push(§§pop().Normalize());
                                                                                                                                                                                                                                                if(_loc34_ && param1)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                if(!_loc35_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop36;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                if(_loc34_ && param1)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop41;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                if(!(_loc34_ && param3))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop40;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1333);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1546);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          break;
                                                                                                                                                                                                                                          §§goto(addr1064);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr1064:
                                                                                                                                                                                                                                       §§goto(addr1489);
                                                                                                                                                                                                                                    })
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!(_loc34_ && param1))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§pop().x = _loc23_[_loc25_].x;
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc35_ || param2)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(param1.§&!E§);
                                                                                                                                                                                                                                                continue loop61;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             if(_loc34_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                break;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             continue loop56;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1400);
                                                                                                                                                                                                                                          addr1089:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§goto(addr1469);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1654);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1445);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 break loop59;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue loop42;
                                                                                                                                                                                                                              loop66:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc35_ || param3)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!_loc34_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!_loc34_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          param1.§`!$§[0].m_localPoint.SetV(param4.§1!k§);
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!_loc35_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop66;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             if(!_loc34_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc34_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   break;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                if(!_loc34_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr1167:
                                                                                                                                                                                                                                                if(!_loc34_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   return;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!_loc34_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(param1.m_localPoint);
                                                                                                                                                                                                                                                      if(_loc34_ && param1)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         break;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§pop().Set(_loc32_,_loc33_);
                                                                                                                                                                                                                                                      continue loop66;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1089);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1431);
                                                                                                                                                                                                                                                addr1046:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1441);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1064);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1692);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    break;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 continue loop60;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1413);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop57;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1530);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1521);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1167);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr1559:
                                                                                                                                                                                                            if(!(_loc34_ && param1))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr1571);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1737);
                                                                                                                                                                                                               addr1567:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1747);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1597);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      if(!(_loc34_ && param2))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc35_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(§§pop() <= §§pop())
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr1531);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1611);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1737);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr1543:
                                                                                                                                                                                                   §§goto(addr1546);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1704);
                                                                                                                                                                                             §§push(_loc27_.x);
                                                                                                                                                                                          }
                                                                                                                                                                                          break;
                                                                                                                                                                                          if(!(_loc35_ || param3))
                                                                                                                                                                                          {
                                                                                                                                                                                             continue;
                                                                                                                                                                                          }
                                                                                                                                                                                          if(_loc35_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc35_)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop33;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§pop();
                                                                                                                                                                                             §§goto(addr1046);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1705);
                                                                                                                                                                                       }
                                                                                                                                                                                       if(!_loc34_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr1457);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1567);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(_loc28_.x);
                                                                                                                                                                                    if(!_loc34_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr1559);
                                                                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1457);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1571);
                                                                                                                                                                              }
                                                                                                                                                                              if(_loc35_ || b2Collision)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc28_.y);
                                                                                                                                                                                 if(!(_loc34_ && param3))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr1589);
                                                                                                                                                                                    §§push(§§pop() - §§pop());
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1737);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1599);
                                                                                                                                                                        §§push(_loc20_);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1543);
                                                                                                                                                                     §§push(_loc15_);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1702);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1126);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr915);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr906);
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr906);
                                                                                                                                                }
                                                                                                                                                §§goto(addr915);
                                                                                                                                             }
                                                                                                                                             §§goto(addr898);
                                                                                                                                          }
                                                                                                                                          §§goto(addr902);
                                                                                                                                       }
                                                                                                                                       §§goto(addr898);
                                                                                                                                    }
                                                                                                                                    §§goto(addr883);
                                                                                                                                 }
                                                                                                                                 §§goto(addr906);
                                                                                                                              }
                                                                                                                              §§goto(addr915);
                                                                                                                           }
                                                                                                                           §§goto(addr823);
                                                                                                                        }
                                                                                                                        §§goto(addr814);
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                     }
                                                                                                                     §§push(_loc28_.y);
                                                                                                                     if(_loc35_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() - _loc27_.y);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr823);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr799);
                                                                                                         }
                                                                                                         §§goto(addr814);
                                                                                                      }
                                                                                                      §§goto(addr791);
                                                                                                   }
                                                                                                   §§goto(addr799);
                                                                                                }
                                                                                                §§goto(addr823);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr823);
                                                                                       }
                                                                                       §§goto(addr628);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push(0);
                                                                                       if(!_loc34_)
                                                                                       {
                                                                                          §§push(int(§§pop()));
                                                                                          if(!(_loc34_ && param2))
                                                                                          {
                                                                                             §§goto(addr580);
                                                                                          }
                                                                                          §§goto(addr581);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr580);
                                                                                 }
                                                                              }
                                                                              §§goto(addr565);
                                                                           }
                                                                           §§goto(addr568);
                                                                        }
                                                                        §§goto(addr560);
                                                                     }
                                                                     else
                                                                     {
                                                                        _loc11_ = _loc22_[_loc24_];
                                                                        if(_loc35_)
                                                                        {
                                                                           §§push(_loc15_);
                                                                           if(_loc35_)
                                                                           {
                                                                              §§push(_loc11_.x);
                                                                              if(_loc35_)
                                                                              {
                                                                                 §§push(§§pop() - §§pop());
                                                                                 if(!(_loc34_ && param3))
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                    if(_loc35_ || b2Collision)
                                                                                    {
                                                                                       _loc7_ = §§pop();
                                                                                       if(_loc35_)
                                                                                       {
                                                                                          §§push(_loc16_);
                                                                                          if(!(_loc34_ && param3))
                                                                                          {
                                                                                             addr368:
                                                                                             addr366:
                                                                                             §§push(§§pop() - _loc11_.y);
                                                                                             if(!_loc35_)
                                                                                             {
                                                                                             }
                                                                                             addr372:
                                                                                             _loc8_ = §§pop();
                                                                                             addr373:
                                                                                             _loc11_ = _loc23_[_loc24_];
                                                                                             if(!(_loc34_ && b2Collision))
                                                                                             {
                                                                                                §§push(_loc11_.x);
                                                                                                loop1:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc7_);
                                                                                                   loop2:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc11_.y);
                                                                                                         if(!_loc34_)
                                                                                                         {
                                                                                                            §§push(§§pop() * _loc8_);
                                                                                                         }
                                                                                                         loop4:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            loop5:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                               loop6:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc31_ = §§pop();
                                                                                                                  loop7:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc31_);
                                                                                                                     loop8:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc20_);
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(§§pop() > §§pop())
                                                                                                                           {
                                                                                                                              if(!(_loc34_ && param1))
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              while(!(_loc34_ && param3))
                                                                                                                              {
                                                                                                                              }
                                                                                                                              continue loop7;
                                                                                                                              addr494:
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc31_);
                                                                                                                              if(_loc34_)
                                                                                                                              {
                                                                                                                                 continue loop8;
                                                                                                                              }
                                                                                                                              if(!_loc35_)
                                                                                                                              {
                                                                                                                                 continue loop5;
                                                                                                                              }
                                                                                                                              §§push(_loc19_);
                                                                                                                              if(!(_loc35_ || b2Collision))
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              if(_loc34_)
                                                                                                                              {
                                                                                                                                 continue loop4;
                                                                                                                              }
                                                                                                                              if(_loc34_)
                                                                                                                              {
                                                                                                                                 continue loop2;
                                                                                                                              }
                                                                                                                              if(§§pop() <= §§pop())
                                                                                                                              {
                                                                                                                                 loop13:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc24_);
                                                                                                                                    if(_loc35_)
                                                                                                                                    {
                                                                                                                                       if(_loc35_ || b2Collision)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() + 1);
                                                                                                                                          if(!(_loc34_ && param2))
                                                                                                                                          {
                                                                                                                                             addr405:
                                                                                                                                             if(_loc35_)
                                                                                                                                             {
                                                                                                                                                addr408:
                                                                                                                                                _loc24_ = int(§§pop());
                                                                                                                                                if(!_loc35_)
                                                                                                                                                {
                                                                                                                                                   continue;
                                                                                                                                                }
                                                                                                                                                if(!(_loc34_ && param3))
                                                                                                                                                {
                                                                                                                                                   if(!_loc34_)
                                                                                                                                                   {
                                                                                                                                                      while(false)
                                                                                                                                                      {
                                                                                                                                                      }
                                                                                                                                                      continue loop0;
                                                                                                                                                      addr420:
                                                                                                                                                   }
                                                                                                                                                   addr446:
                                                                                                                                                   while(_loc35_)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc31_);
                                                                                                                                                      if(!(_loc34_ && param2))
                                                                                                                                                      {
                                                                                                                                                         if(_loc35_ || b2Collision)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc34_)
                                                                                                                                                            {
                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                               continue loop8;
                                                                                                                                                            }
                                                                                                                                                            continue loop1;
                                                                                                                                                         }
                                                                                                                                                         continue loop6;
                                                                                                                                                      }
                                                                                                                                                      continue loop8;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr494);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                   }
                                                                                                                                                   addr481:
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc24_);
                                                                                                                                                   addr424:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(int(§§pop()));
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                _loc18_ = §§pop();
                                                                                                                                                continue loop13;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr408);
                                                                                                                                       }
                                                                                                                                       §§goto(addr424);
                                                                                                                                    }
                                                                                                                                    §§goto(addr405);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr446);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        return;
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr420);
                                                                                          }
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                       §§goto(addr373);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr372);
                                                                              }
                                                                              §§goto(addr368);
                                                                           }
                                                                           §§goto(addr366);
                                                                        }
                                                                        §§goto(addr368);
                                                                     }
                                                                  }
                                                                  break;
                                                               }
                                                               §§goto(addr530);
                                                               §§push(int(§§pop()));
                                                            }
                                                         }
                                                         §§goto(addr278);
                                                      }
                                                      §§goto(addr265);
                                                   }
                                                   §§goto(addr278);
                                                }
                                                §§push(§§pop() + §§pop());
                                                if(!_loc34_)
                                                {
                                                   §§push(Number(§§pop()));
                                                }
                                             }
                                             §§goto(addr240);
                                          }
                                          _loc7_ = §§pop();
                                          if(_loc35_ || param2)
                                          {
                                             addr193:
                                             §§push(_loc14_);
                                             if(!(_loc34_ && b2Collision))
                                             {
                                                §§goto(addr201);
                                             }
                                             §§goto(addr208);
                                          }
                                          §§goto(addr201);
                                       }
                                       §§goto(addr204);
                                    }
                                    §§goto(addr203);
                                 }
                                 §§goto(addr201);
                              }
                              §§goto(addr193);
                           }
                           §§goto(addr156);
                        }
                        §§push(§§pop() + §§pop());
                     }
                     §§goto(addr147);
                  }
                  §§goto(addr156);
               }
               §§goto(addr97);
            }
            §§goto(addr92);
         }
         §§goto(addr109);
      }
      
      public static function §@w§(param1:b2AABB, param2:b2AABB) : Boolean
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc3_:b2Vec2 = param2.§^"§;
         var _loc4_:b2Vec2 = param1.§=!O§;
         §§push(_loc3_.x);
         if(_loc10_)
         {
            §§push(§§pop() - _loc4_.x);
            if(!(_loc9_ && b2Collision))
            {
               addr39:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            §§push(_loc3_.y);
            if(!(_loc9_ && param2))
            {
               §§push(§§pop() - _loc4_.y);
               if(!_loc9_)
               {
                  addr55:
                  §§push(Number(§§pop()));
               }
               var _loc6_:* = §§pop();
               _loc3_ = param1.§^"§;
               _loc4_ = param2.§=!O§;
               §§push(_loc3_.x);
               if(!(_loc9_ && param2))
               {
                  §§push(§§pop() - _loc4_.x);
                  if(_loc10_ || _loc3_)
                  {
                     addr84:
                     §§push(Number(§§pop()));
                  }
                  var _loc7_:* = §§pop();
                  §§push(_loc3_.y);
                  if(!(_loc9_ && _loc3_))
                  {
                     §§push(§§pop() - _loc4_.y);
                     if(!_loc9_)
                     {
                        addr100:
                        §§push(Number(§§pop()));
                     }
                     var _loc8_:* = §§pop();
                     if(_loc10_ || param1)
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
                                 §§push(Boolean(§§pop()));
                                 loop3:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(!(_loc9_ && param1))
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
                                             addr280:
                                             while(true)
                                             {
                                                §§push(_loc6_);
                                                addr240:
                                                while(true)
                                                {
                                                   §§push(0);
                                                   addr251:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() > §§pop());
                                                      addr252:
                                                      while(true)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          addr279:
                                       }
                                       while(true)
                                       {
                                          loop11:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                addr255:
                                                if(!(_loc9_ && param2))
                                                {
                                                   §§goto(addr263);
                                                }
                                             }
                                             else
                                             {
                                                loop12:
                                                while(true)
                                                {
                                                   §§push(_loc7_);
                                                   loop13:
                                                   while(!_loc9_)
                                                   {
                                                      §§push(0);
                                                      loop14:
                                                      while(_loc10_ || param2)
                                                      {
                                                         §§push(§§pop() > §§pop());
                                                         loop15:
                                                         while(true)
                                                         {
                                                            if(_loc10_ || b2Collision)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                               while(_loc10_)
                                                               {
                                                                  if(!_loc9_)
                                                                  {
                                                                     continue loop4;
                                                                  }
                                                                  continue loop3;
                                                                  addr155:
                                                                  if(!(_loc10_ || param2))
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(_loc9_)
                                                                  {
                                                                     continue loop11;
                                                                  }
                                                                  if(!_loc10_)
                                                                  {
                                                                     continue loop2;
                                                                  }
                                                                  §§push(Boolean(§§pop()));
                                                                  while(true)
                                                                  {
                                                                     loop19:
                                                                     while(true)
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           continue;
                                                                        }
                                                                        if(!(_loc9_ && param1))
                                                                        {
                                                                           addr176:
                                                                           if(!(_loc9_ && param1))
                                                                           {
                                                                              if(_loc9_)
                                                                              {
                                                                                 continue loop12;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(false);
                                                                                 break loop19;
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              loop18:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc8_);
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    continue loop13;
                                                                                 }
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    continue loop0;
                                                                                 }
                                                                                 §§push(0);
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    continue loop14;
                                                                                 }
                                                                                 if(_loc9_ && param2)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 §§push(§§pop() > §§pop());
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    continue loop19;
                                                                                 }
                                                                                 if(_loc10_)
                                                                                 {
                                                                                    §§goto(addr155);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(!_loc9_)
                                                                                    {
                                                                                       §§pop();
                                                                                       continue loop18;
                                                                                    }
                                                                                    §§goto(addr252);
                                                                                    addr234:
                                                                                 }
                                                                              }
                                                                              §§goto(addr251);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           if(!(_loc9_ && _loc3_))
                                                                           {
                                                                              continue;
                                                                           }
                                                                           §§goto(addr255);
                                                                        }
                                                                     }
                                                                     while(!_loc10_)
                                                                     {
                                                                        continue loop15;
                                                                     }
                                                                     return §§pop();
                                                                  }
                                                               }
                                                               addr263:
                                                               return false;
                                                            }
                                                            §§goto(addr279);
                                                         }
                                                         §§goto(addr280);
                                                      }
                                                      continue loop1;
                                                   }
                                                   §§goto(addr240);
                                                }
                                             }
                                             §§goto(addr280);
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr185);
                  }
                  §§goto(addr100);
               }
               §§goto(addr84);
            }
            §§goto(addr55);
         }
         §§goto(addr39);
      }
   }
}
