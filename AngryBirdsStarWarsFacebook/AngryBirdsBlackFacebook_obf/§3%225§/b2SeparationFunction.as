package §3"5§
{
   import §5"i§.b2Settings;
   import §[R§.b2Mat22;
   import §[R§.b2Math;
   import §[R§.b2Transform;
   import §[R§.b2Vec2;
   
   class b2SeparationFunction
   {
      
      public static const §<"Y§:int = 1;
      
      public static const §=!m§:int = 2;
      
      public static const §3"f§:int = 4;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §<"Y§ = 1;
            while(true)
            {
               §=!m§ = 2;
               while(!(_loc2_ && b2SeparationFunction))
               {
                  §3"f§ = 4;
                  if(_loc2_ && _loc2_)
                  {
                     continue;
                  }
                  return;
                  addr49:
               }
            }
         }
         §§goto(addr49);
      }
      
      public var §5D§:b2DistanceProxy;
      
      public var §1"p§:b2DistanceProxy;
      
      public var §%!9§:int;
      
      public var m_localPoint:b2Vec2;
      
      public var §<#§:b2Vec2;
      
      function b2SeparationFunction()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.m_localPoint = new b2Vec2();
            while(true)
            {
               this.§<#§ = new b2Vec2();
               while(!(_loc2_ && this))
               {
                  super();
                  if(_loc2_)
                  {
                     continue;
                  }
                  return;
                  addr38:
               }
            }
         }
         §§goto(addr38);
      }
      
      public function §8#5§(param1:b2SimplexCache, param2:b2DistanceProxy, param3:b2Transform, param4:b2DistanceProxy, param5:b2Transform) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfuscation" for better results.
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function Evaluate(param1:b2Transform, param2:b2Transform) : Number
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc3_:b2Vec2 = null;
         var _loc4_:b2Vec2 = null;
         var _loc5_:b2Vec2 = null;
         var _loc6_:b2Vec2 = null;
         var _loc7_:b2Vec2 = null;
         var _loc8_:b2Vec2 = null;
         var _loc9_:* = NaN;
         var _loc10_:b2Vec2 = null;
         §§push(this.§%!9§);
         if(!(_loc13_ && this))
         {
            var _loc11_:* = §§pop();
            if(!(_loc13_ && this))
            {
               §§push(§<"Y§);
               if(_loc12_ || param1)
               {
                  §§push(_loc11_);
                  if(_loc12_ || this)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc13_ && _loc3_))
                        {
                           addr422:
                           §§push(0);
                           if(_loc12_ || param1)
                           {
                              addr492:
                              switch(§§pop())
                              {
                                 case 0:
                                    _loc3_ = b2Math.§9#A§(param1.R,this.§<#§);
                                    _loc4_ = b2Math.§9#A§(param2.R,this.§<#§.§5!]§());
                                    _loc5_ = this.§5D§.§ "7§(_loc3_);
                                    _loc6_ = this.§1"p§.§ "7§(_loc4_);
                                    _loc7_ = b2Math.§""$§(param1,_loc5_);
                                    §§push((_loc8_ = b2Math.§""$§(param2,_loc6_)).x);
                                    if(_loc12_ || param2)
                                    {
                                       §§push(_loc7_.x);
                                       if(_loc12_ || this)
                                       {
                                          §§push(§§pop() - §§pop());
                                          if(!_loc13_)
                                          {
                                             addr103:
                                             §§push(this.§<#§.x);
                                             if(_loc12_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(_loc12_ || param2)
                                                {
                                                   addr116:
                                                   §§push(_loc8_.y);
                                                   if(!_loc13_)
                                                   {
                                                      §§push(_loc7_.y);
                                                      if(_loc12_)
                                                      {
                                                         addr138:
                                                         §§push(§§pop() - §§pop());
                                                         if(_loc12_ || this)
                                                         {
                                                            addr132:
                                                            §§push(this.§<#§.y);
                                                         }
                                                         §§push(§§pop() + §§pop());
                                                         if(!(_loc13_ && _loc3_))
                                                         {
                                                            §§push(Number(§§pop()));
                                                            if(_loc12_)
                                                            {
                                                               addr149:
                                                               return _loc9_ = §§pop();
                                                            }
                                                         }
                                                         §§goto(addr149);
                                                      }
                                                      §§push(§§pop() * §§pop());
                                                      if(!_loc13_)
                                                      {
                                                         §§goto(addr138);
                                                      }
                                                      §§goto(addr149);
                                                   }
                                                   §§goto(addr132);
                                                }
                                                §§goto(addr149);
                                             }
                                             §§goto(addr138);
                                          }
                                          §§goto(addr116);
                                       }
                                       §§goto(addr149);
                                    }
                                    §§goto(addr103);
                                 case 1:
                                    _loc10_ = b2Math.§="L§(param1.R,this.§<#§);
                                    _loc7_ = b2Math.§""$§(param1,this.m_localPoint);
                                    _loc4_ = b2Math.§9#A§(param2.R,_loc10_.§5!]§());
                                    _loc6_ = this.§1"p§.§ "7§(_loc4_);
                                    §§push((_loc8_ = b2Math.§""$§(param2,_loc6_)).x);
                                    if(_loc12_ || this)
                                    {
                                       §§push(_loc7_.x);
                                       if(_loc12_)
                                       {
                                          §§push(§§pop() - §§pop());
                                          if(_loc12_)
                                          {
                                             §§push(_loc10_.x);
                                             if(_loc12_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!(_loc13_ && param2))
                                                {
                                                   addr216:
                                                   §§push(_loc8_.y);
                                                   if(_loc12_ || _loc3_)
                                                   {
                                                      §§push(_loc7_.y);
                                                      if(!(_loc13_ && this))
                                                      {
                                                         §§push(§§pop() - §§pop());
                                                         if(_loc12_)
                                                         {
                                                            addr249:
                                                            addr247:
                                                            §§push(§§pop() * _loc10_.y);
                                                            if(_loc12_ || param2)
                                                            {
                                                            }
                                                            §§goto(addr269);
                                                         }
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc12_)
                                                         {
                                                            addr260:
                                                            §§push(Number(§§pop()));
                                                            if(!(_loc13_ && this))
                                                            {
                                                               addr268:
                                                               addr269:
                                                               _loc9_ = §§pop();
                                                               return §§pop();
                                                               §§push(§§pop());
                                                            }
                                                         }
                                                         §§goto(addr269);
                                                      }
                                                   }
                                                   §§goto(addr249);
                                                }
                                                §§goto(addr260);
                                             }
                                             §§goto(addr247);
                                          }
                                          §§goto(addr268);
                                       }
                                       §§goto(addr249);
                                    }
                                    §§goto(addr216);
                                 case 2:
                                    _loc10_ = b2Math.§="L§(param2.R,this.§<#§);
                                    _loc8_ = b2Math.§""$§(param2,this.m_localPoint);
                                    _loc3_ = b2Math.§9#A§(param1.R,_loc10_.§5!]§());
                                    _loc5_ = this.§5D§.§ "7§(_loc3_);
                                    §§push((_loc7_ = b2Math.§""$§(param1,_loc5_)).x);
                                    if(!_loc13_)
                                    {
                                       §§push(_loc8_.x);
                                       if(_loc12_)
                                       {
                                          §§push(§§pop() - §§pop());
                                          if(!_loc13_)
                                          {
                                             §§push(_loc10_.x);
                                             if(!_loc13_)
                                             {
                                                addr322:
                                                §§push(§§pop() * §§pop());
                                                if(!(_loc13_ && param2))
                                                {
                                                   §§push(_loc7_.y);
                                                   if(!_loc13_)
                                                   {
                                                      §§push(_loc8_.y);
                                                      if(!(_loc13_ && _loc3_))
                                                      {
                                                         §§push(§§pop() - §§pop());
                                                         if(!_loc13_)
                                                         {
                                                            addr348:
                                                            §§push(§§pop() * _loc10_.y);
                                                            if(_loc12_ || _loc3_)
                                                            {
                                                               addr356:
                                                               §§push(§§pop() + §§pop());
                                                               if(!_loc13_)
                                                               {
                                                                  addr359:
                                                                  §§push(Number(§§pop()));
                                                                  if(!_loc13_)
                                                                  {
                                                                     addr362:
                                                                     §§push(§§pop());
                                                                  }
                                                                  break;
                                                               }
                                                               §§goto(addr362);
                                                            }
                                                         }
                                                         _loc9_ = §§pop();
                                                         if(!_loc13_)
                                                         {
                                                            return §§pop();
                                                         }
                                                         break;
                                                      }
                                                   }
                                                   §§goto(addr348);
                                                }
                                                §§goto(addr362);
                                             }
                                             §§goto(addr356);
                                          }
                                          break;
                                       }
                                       §§goto(addr322);
                                    }
                                    §§goto(addr359);
                                 default:
                                    b2Settings.b2Assert(false);
                              }
                              return 0;
                              addr492:
                           }
                        }
                        else
                        {
                           addr450:
                           §§push(1);
                           if(!(_loc13_ && param1))
                           {
                              addr458:
                           }
                        }
                        §§goto(addr492);
                        if(§§pop() === _loc11_)
                        {
                           addr469:
                           §§push(2);
                           if(_loc13_ && this)
                           {
                           }
                        }
                        else
                        {
                           §§push(3);
                        }
                     }
                     else
                     {
                        §§push(§=!m§);
                        if(!_loc13_)
                        {
                           §§push(_loc11_);
                           if(_loc12_ || param1)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!(_loc13_ && _loc3_))
                                 {
                                    §§goto(addr450);
                                 }
                                 §§goto(addr469);
                              }
                              else
                              {
                                 §§push(§3"f§);
                                 if(!(_loc13_ && param2))
                                 {
                                    §§goto(addr467);
                                 }
                              }
                           }
                           §§goto(addr467);
                        }
                     }
                     §§goto(addr492);
                  }
                  §§goto(addr467);
               }
               §§goto(addr458);
            }
            §§goto(addr422);
         }
         §§goto(addr492);
      }
   }
}
