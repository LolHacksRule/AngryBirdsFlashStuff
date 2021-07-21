package §'!;§
{
   import §<!B§.b2Mat22;
   import §<!B§.b2Math;
   import §<!B§.b2Transform;
   import §<!B§.b2Vec2;
   import §?s§.b2Settings;
   
   class b2SeparationFunction
   {
      
      public static const §]![§:int = 1;
      
      public static const § !N§:int = 2;
      
      public static const §%!5§:int = 4;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §]![§ = 1;
            if(!(_loc1_ && _loc1_))
            {
               § !N§ = 2;
               if(_loc1_ && _loc1_)
               {
               }
               §§goto(addr52);
            }
            §%!5§ = 4;
         }
         addr52:
      }
      
      public var §`!g§:b2DistanceProxy;
      
      public var § !4§:b2DistanceProxy;
      
      public var §5!Z§:int;
      
      public var m_localPoint:b2Vec2;
      
      public var §;9§:b2Vec2;
      
      function b2SeparationFunction()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.m_localPoint = new b2Vec2();
            if(!(_loc2_ && _loc2_))
            {
               this.§;9§ = new b2Vec2();
               if(!_loc2_)
               {
                  addr45:
                  super();
               }
               return;
            }
         }
         §§goto(addr45);
      }
      
      public function §6!V§(param1:b2SimplexCache, param2:b2DistanceProxy, param3:b2Transform, param4:b2DistanceProxy, param5:b2Transform) : void
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 3068
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      public function Evaluate(param1:b2Transform, param2:b2Transform) : Number
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc3_:b2Vec2 = null;
         var _loc4_:b2Vec2 = null;
         var _loc5_:b2Vec2 = null;
         var _loc6_:b2Vec2 = null;
         var _loc7_:b2Vec2 = null;
         var _loc8_:b2Vec2 = null;
         var _loc9_:* = NaN;
         var _loc10_:b2Vec2 = null;
         §§push(this.§5!Z§);
         if(_loc13_ || param2)
         {
            var _loc11_:* = §§pop();
            if(!(_loc12_ && _loc3_))
            {
               §§push(§]![§);
               §§push(_loc11_);
               if(!(_loc12_ && this))
               {
                  if(§§pop() === §§pop())
                  {
                     §§push(_loc13_ || param1 ? 0 : 2);
                  }
                  else
                  {
                     §§push(§ !N§);
                     if(_loc13_ || param2)
                     {
                        §§push(_loc11_);
                        if(_loc13_ || _loc3_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!(_loc12_ && _loc3_))
                              {
                                 §§push(1);
                                 if(!_loc12_)
                                 {
                                    addr470:
                                    switch(§§pop())
                                    {
                                       case 0:
                                          _loc3_ = b2Math.§#Z§(param1.R,this.§;9§);
                                          _loc4_ = b2Math.§#Z§(param2.R,this.§;9§.§[1§());
                                          _loc5_ = this.§`!g§.§ !v§(_loc3_);
                                          _loc6_ = this.§ !4§.§ !v§(_loc4_);
                                          _loc7_ = b2Math.§#!N§(param1,_loc5_);
                                          §§push((_loc8_ = b2Math.§#!N§(param2,_loc6_)).x);
                                          if(_loc13_ || this)
                                          {
                                             §§push(_loc7_.x);
                                             if(_loc13_)
                                             {
                                                §§push(§§pop() - §§pop());
                                                if(_loc13_ || param2)
                                                {
                                                   addr104:
                                                   §§push(this.§;9§.x);
                                                   if(_loc13_ || _loc3_)
                                                   {
                                                      addr114:
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc13_)
                                                      {
                                                         §§push(_loc8_.y);
                                                         if(!(_loc12_ && param2))
                                                         {
                                                            §§push(_loc7_.y);
                                                            if(_loc13_ || _loc3_)
                                                            {
                                                               §§goto(addr161);
                                                            }
                                                            §§push(§§pop() * §§pop());
                                                            if(!_loc12_)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               if(!(_loc12_ && param1))
                                                               {
                                                                  addr157:
                                                                  §§push(Number(§§pop()));
                                                                  if(_loc13_)
                                                                  {
                                                                     addr160:
                                                                     addr161:
                                                                     §§push(§§pop() - §§pop());
                                                                     if(!(_loc12_ && this))
                                                                     {
                                                                        §§push(this.§;9§.y);
                                                                     }
                                                                     _loc9_ = §§pop();
                                                                     return §§pop();
                                                                     §§push(§§pop());
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr161);
                                                      }
                                                      §§goto(addr160);
                                                   }
                                                   §§goto(addr161);
                                                }
                                                §§goto(addr157);
                                             }
                                             §§goto(addr114);
                                          }
                                          §§goto(addr104);
                                       case 1:
                                          _loc10_ = b2Math.§`!"§(param1.R,this.§;9§);
                                          _loc7_ = b2Math.§#!N§(param1,this.m_localPoint);
                                          _loc4_ = b2Math.§#Z§(param2.R,_loc10_.§[1§());
                                          _loc6_ = this.§ !4§.§ !v§(_loc4_);
                                          §§push((_loc8_ = b2Math.§#!N§(param2,_loc6_)).x);
                                          if(_loc13_ || param2)
                                          {
                                             §§push(_loc7_.x);
                                             if(_loc13_ || _loc3_)
                                             {
                                                §§push(§§pop() - §§pop());
                                                if(_loc13_ || _loc3_)
                                                {
                                                   addr235:
                                                   §§push(_loc10_.x);
                                                   if(_loc13_)
                                                   {
                                                      addr239:
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc13_ || param1)
                                                      {
                                                         §§push(_loc8_.y);
                                                         if(!(_loc12_ && _loc3_))
                                                         {
                                                            addr256:
                                                            §§push(_loc7_.y);
                                                            if(_loc13_ || param1)
                                                            {
                                                               §§push(§§pop() - §§pop());
                                                               if(!(_loc12_ && this))
                                                               {
                                                                  addr275:
                                                                  §§push(§§pop() * _loc10_.y);
                                                                  if(!_loc12_)
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     if(!(_loc12_ && _loc3_))
                                                                     {
                                                                        addr286:
                                                                        §§push(Number(§§pop()));
                                                                        if(!_loc12_)
                                                                        {
                                                                           addr290:
                                                                           return _loc9_ = §§pop();
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr290);
                                                            }
                                                         }
                                                         §§goto(addr275);
                                                      }
                                                      §§goto(addr286);
                                                   }
                                                   §§goto(addr256);
                                                }
                                                §§goto(addr286);
                                             }
                                             §§goto(addr239);
                                          }
                                          §§goto(addr235);
                                       case 2:
                                          _loc10_ = b2Math.§`!"§(param2.R,this.§;9§);
                                          _loc8_ = b2Math.§#!N§(param2,this.m_localPoint);
                                          _loc3_ = b2Math.§#Z§(param1.R,_loc10_.§[1§());
                                          _loc5_ = this.§`!g§.§ !v§(_loc3_);
                                          §§push((_loc7_ = b2Math.§#!N§(param1,_loc5_)).x);
                                          §§push(_loc8_.x);
                                          if(_loc13_)
                                          {
                                             §§push(§§pop() - §§pop());
                                             §§push(_loc10_.x);
                                             if(!(_loc12_ && param1))
                                             {
                                                §§push(§§pop() * §§pop());
                                                §§push(_loc7_.y);
                                                if(_loc13_)
                                                {
                                                   §§push(_loc8_.y);
                                                   if(!(_loc12_ && param1))
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                      if(!(_loc12_ && this))
                                                      {
                                                         addr368:
                                                         §§push(§§pop() * _loc10_.y);
                                                         if(!_loc12_)
                                                         {
                                                            §§goto(addr371);
                                                         }
                                                      }
                                                      §§goto(addr376);
                                                   }
                                                   §§goto(addr368);
                                                }
                                             }
                                             addr371:
                                             §§push(Number(§§pop() + §§pop()));
                                             if(!_loc12_)
                                             {
                                                addr376:
                                                return _loc9_ = §§pop();
                                             }
                                          }
                                          §§goto(addr368);
                                       default:
                                          b2Settings.b2Assert(false);
                                          return 0;
                                    }
                                    addr470:
                                 }
                                 §§goto(addr470);
                              }
                              else
                              {
                                 §§goto(addr464);
                              }
                           }
                           else
                           {
                              §§push(§%!5§);
                              if(!_loc12_)
                              {
                                 addr463:
                                 if(§§pop() === _loc11_)
                                 {
                                    §§goto(addr464);
                                 }
                                 else
                                 {
                                    §§goto(addr470);
                                    §§push(3);
                                 }
                                 §§goto(addr470);
                              }
                           }
                           §§goto(addr464);
                        }
                        §§goto(addr463);
                     }
                  }
                  §§goto(addr470);
               }
               §§goto(addr463);
            }
            §§goto(addr419);
         }
         §§goto(addr470);
      }
   }
}
