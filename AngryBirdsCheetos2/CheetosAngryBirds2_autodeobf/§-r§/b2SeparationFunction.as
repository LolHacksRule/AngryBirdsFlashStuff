package §-r§
{
   import §"0§.b2Settings;
   import §6!H§.b2Mat22;
   import §6!H§.b2Math;
   import §6!H§.b2Transform;
   import §6!H§.b2Vec2;
   
   class b2SeparationFunction
   {
      
      public static const § set§:int = 1;
      
      public static const §>E§:int = 2;
      
      public static const §&!5§:int = 4;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            § set§ = 1;
         }
         while(true)
         {
            §>E§ = 2;
            while(_loc1_ || b2SeparationFunction)
            {
               §&!5§ = 4;
               if(!(_loc2_ && _loc2_))
               {
                  return;
               }
            }
         }
      }
      
      public var §&B§:b2DistanceProxy;
      
      public var §<!?§:b2DistanceProxy;
      
      public var §#!&§:int;
      
      public var m_localPoint:b2Vec2;
      
      public var §2d§:b2Vec2;
      
      function b2SeparationFunction()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.m_localPoint = new b2Vec2();
            while(true)
            {
               this.§2d§ = new b2Vec2();
               while(!(_loc1_ && _loc2_))
               {
                  super();
                  if(!(_loc2_ || this))
                  {
                     continue;
                  }
                  return;
                  addr44:
               }
            }
         }
         §§goto(addr44);
      }
      
      public function §#!O§(param1:b2SimplexCache, param2:b2DistanceProxy, param3:b2Transform, param4:b2DistanceProxy, param5:b2Transform) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
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
         §§push(this.§#!&§);
         if(!(_loc12_ && param1))
         {
            var _loc11_:* = §§pop();
            if(!(_loc12_ && param2))
            {
               §§push(§ set§);
               if(!_loc12_)
               {
                  §§push(_loc11_);
                  if(!(_loc12_ && _loc3_))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc12_ && param1))
                        {
                           §§push(0);
                           if(_loc12_)
                           {
                              addr451:
                              if(§§pop() === _loc11_)
                              {
                                 addr453:
                                 §§push(2);
                                 if(!_loc12_)
                                 {
                                    addr466:
                                 }
                              }
                              else
                              {
                                 §§push(3);
                              }
                           }
                           addr471:
                           switch(§§pop())
                           {
                              case 0:
                                 _loc3_ = b2Math.§=!X§(param1.R,this.§2d§);
                                 _loc4_ = b2Math.§=!X§(param2.R,this.§2d§.§"n§());
                                 _loc5_ = this.§&B§.§=!G§(_loc3_);
                                 _loc6_ = this.§<!?§.§=!G§(_loc4_);
                                 _loc7_ = b2Math.§=!!§(param1,_loc5_);
                                 §§push((_loc8_ = b2Math.§=!!§(param2,_loc6_)).x);
                                 if(_loc13_)
                                 {
                                    §§push(_loc7_.x);
                                    if(!_loc12_)
                                    {
                                       §§push(§§pop() - §§pop());
                                       if(_loc13_)
                                       {
                                          addr94:
                                          §§push(this.§2d§.x);
                                          if(_loc13_ || param2)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(!_loc12_)
                                             {
                                                §§push(_loc8_.y);
                                                if(_loc13_)
                                                {
                                                   §§push(_loc7_.y);
                                                   if(_loc13_)
                                                   {
                                                      §§goto(addr131);
                                                   }
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc12_)
                                                   {
                                                   }
                                                   §§goto(addr131);
                                                }
                                             }
                                             addr130:
                                             addr131:
                                             §§push(§§pop() - §§pop());
                                             if(!_loc12_)
                                             {
                                                §§push(this.§2d§.y);
                                             }
                                             _loc9_ = §§pop();
                                             return §§pop();
                                             §§push(§§pop());
                                          }
                                          §§push(§§pop() + §§pop());
                                          if(!_loc12_)
                                          {
                                             §§push(Number(§§pop()));
                                             if(_loc13_)
                                             {
                                                §§goto(addr130);
                                             }
                                             §§goto(addr131);
                                          }
                                       }
                                       §§goto(addr130);
                                    }
                                    §§goto(addr131);
                                 }
                                 §§goto(addr94);
                              case 1:
                                 _loc10_ = b2Math.§&W§(param1.R,this.§2d§);
                                 _loc7_ = b2Math.§=!!§(param1,this.m_localPoint);
                                 _loc4_ = b2Math.§=!X§(param2.R,_loc10_.§"n§());
                                 _loc6_ = this.§<!?§.§=!G§(_loc4_);
                                 §§push((_loc8_ = b2Math.§=!!§(param2,_loc6_)).x);
                                 if(_loc13_)
                                 {
                                    §§push(_loc7_.x);
                                    if(_loc13_ || _loc3_)
                                    {
                                       §§push(§§pop() - §§pop());
                                       if(_loc13_ || _loc3_)
                                       {
                                          §§push(_loc10_.x);
                                          if(_loc13_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(_loc13_ || this)
                                             {
                                                addr202:
                                                §§push(_loc8_.y);
                                                if(!(_loc12_ && param2))
                                                {
                                                   §§push(_loc7_.y);
                                                   if(_loc13_ || _loc3_)
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                      if(!_loc12_)
                                                      {
                                                         addr225:
                                                         addr223:
                                                         §§push(§§pop() * _loc10_.y);
                                                         if(_loc13_ || param2)
                                                         {
                                                         }
                                                         addr255:
                                                         _loc9_ = §§pop();
                                                         §§goto(addr256);
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc13_ || this)
                                                      {
                                                         §§goto(addr251);
                                                      }
                                                      §§goto(addr255);
                                                      §§push(§§pop());
                                                   }
                                                   §§goto(addr225);
                                                }
                                                §§goto(addr223);
                                             }
                                             addr251:
                                             §§push(Number(§§pop()));
                                             if(_loc12_)
                                             {
                                             }
                                             addr256:
                                             return §§pop();
                                          }
                                          §§goto(addr225);
                                       }
                                       §§goto(addr202);
                                    }
                                 }
                                 §§goto(addr225);
                              case 2:
                                 _loc10_ = b2Math.§&W§(param2.R,this.§2d§);
                                 _loc8_ = b2Math.§=!!§(param2,this.m_localPoint);
                                 _loc3_ = b2Math.§=!X§(param1.R,_loc10_.§"n§());
                                 _loc5_ = this.§&B§.§=!G§(_loc3_);
                                 §§push((_loc7_ = b2Math.§=!!§(param1,_loc5_)).x);
                                 if(_loc13_ || _loc3_)
                                 {
                                    §§push(_loc8_.x);
                                    if(!_loc12_)
                                    {
                                       §§push(§§pop() - §§pop());
                                       if(_loc13_ || this)
                                       {
                                          §§push(_loc10_.x);
                                          if(_loc13_ || param2)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(!_loc12_)
                                             {
                                                addr326:
                                                §§push(_loc7_.y);
                                                if(!(_loc12_ && param2))
                                                {
                                                   addr335:
                                                   §§push(_loc8_.y);
                                                   if(_loc13_ || param2)
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                      if(_loc13_)
                                                      {
                                                         addr349:
                                                         §§push(§§pop() * _loc10_.y);
                                                         if(!(_loc12_ && param2))
                                                         {
                                                            addr357:
                                                            §§push(§§pop() + §§pop());
                                                            if(!(_loc12_ && _loc3_))
                                                            {
                                                               addr365:
                                                               §§push(Number(§§pop()));
                                                               if(_loc13_)
                                                               {
                                                                  addr368:
                                                                  §§push(§§pop());
                                                               }
                                                               break;
                                                            }
                                                            break;
                                                         }
                                                      }
                                                      _loc9_ = §§pop();
                                                      if(_loc13_ || param2)
                                                      {
                                                         return §§pop();
                                                      }
                                                      break;
                                                   }
                                                   §§goto(addr349);
                                                }
                                                §§goto(addr357);
                                             }
                                             §§goto(addr368);
                                          }
                                          §§goto(addr349);
                                       }
                                       §§goto(addr365);
                                    }
                                    §§goto(addr335);
                                 }
                                 §§goto(addr326);
                              default:
                                 b2Settings.b2Assert(false);
                           }
                           return 0;
                           addr471:
                        }
                        else
                        {
                           addr439:
                           §§push(1);
                           if(!(_loc13_ || param2))
                           {
                              §§goto(addr466);
                           }
                           else
                           {
                              addr447:
                           }
                           §§goto(addr471);
                        }
                        §§goto(addr466);
                     }
                     else
                     {
                        §§push(§>E§);
                        if(!_loc12_)
                        {
                           §§push(_loc11_);
                           if(!_loc12_)
                           {
                              addr431:
                              if(§§pop() === §§pop())
                              {
                                 if(!(_loc12_ && param2))
                                 {
                                    §§goto(addr439);
                                 }
                                 else
                                 {
                                    §§goto(addr453);
                                 }
                              }
                              else
                              {
                                 §§push(§&!5§);
                                 if(!_loc12_)
                                 {
                                    §§goto(addr451);
                                 }
                                 §§goto(addr466);
                              }
                              §§goto(addr466);
                           }
                           §§goto(addr451);
                        }
                     }
                     §§goto(addr447);
                  }
                  §§goto(addr431);
               }
               §§goto(addr466);
            }
            §§goto(addr439);
         }
         §§goto(addr471);
      }
   }
}
