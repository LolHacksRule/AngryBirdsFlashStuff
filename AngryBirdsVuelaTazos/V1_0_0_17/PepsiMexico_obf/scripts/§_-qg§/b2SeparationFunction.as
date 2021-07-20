package §_-qg§
{
   import §_-Ja§.b2Mat22;
   import §_-Ja§.b2Math;
   import §_-Ja§.b2Transform;
   import §_-Ja§.b2Vec2;
   import §_-lh§.b2Settings;
   
   class b2SeparationFunction
   {
      
      public static const §_-Mo§:int = 1;
      
      public static const §_-zO§:int = 2;
      
      public static const §_-77§:int = 4;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §_-Mo§ = 1;
            if(_loc2_)
            {
               §_-zO§ = 2;
               if(!(_loc1_ && _loc1_))
               {
                  addr45:
                  §_-77§ = 4;
               }
            }
            return;
         }
         §§goto(addr45);
      }
      
      public var §_-KM§:b2DistanceProxy;
      
      public var §_-m5§:b2DistanceProxy;
      
      public var §_-Sj§:int;
      
      public var m_localPoint:b2Vec2;
      
      public var §_-YX§:b2Vec2;
      
      function b2SeparationFunction()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.m_localPoint = new b2Vec2();
            if(_loc2_)
            {
               this.§_-YX§ = new b2Vec2();
               if(_loc2_)
               {
                  addr47:
                  super();
               }
            }
            return;
         }
         §§goto(addr47);
      }
      
      public function §_-lc§(param1:b2SimplexCache, param2:b2DistanceProxy, param3:b2Transform, param4:b2DistanceProxy, param5:b2Transform) : void
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 2935
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
         §§push(this.§_-Sj§);
         if(!(_loc12_ && param1))
         {
            var _loc11_:* = §§pop();
            if(_loc13_)
            {
               §§push(§_-Mo§);
               §§push(_loc11_);
               if(!(_loc12_ && param2))
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc13_ || param1)
                     {
                        addr387:
                        §§push(0);
                     }
                     else
                     {
                        addr403:
                        §§push(1);
                        if(!(_loc12_ && this))
                        {
                           addr411:
                        }
                        else
                        {
                           addr423:
                        }
                     }
                     addr429:
                     switch(§§pop())
                     {
                        case 0:
                           _loc3_ = b2Math.§_-P4§(param1.R,this.§_-YX§);
                           _loc4_ = b2Math.§_-P4§(param2.R,this.§_-YX§.§_-D§());
                           _loc5_ = this.§_-KM§.§_-cH§(_loc3_);
                           _loc6_ = this.§_-m5§.§_-cH§(_loc4_);
                           _loc7_ = b2Math.§_-Y9§(param1,_loc5_);
                           §§push((_loc8_ = b2Math.§_-Y9§(param2,_loc6_)).x);
                           if(_loc13_ || _loc3_)
                           {
                              §§push(_loc7_.x);
                              if(_loc13_)
                              {
                                 §§push(§§pop() - §§pop());
                                 if(!(_loc12_ && _loc3_))
                                 {
                                    §§push(this.§_-YX§.x);
                                    if(_loc13_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(!(_loc12_ && param1))
                                       {
                                          addr114:
                                          §§push(_loc8_.y);
                                          if(!_loc12_)
                                          {
                                             §§push(_loc7_.y);
                                             if(_loc13_ || param2)
                                             {
                                                §§goto(addr141);
                                             }
                                             §§push(§§pop() * §§pop());
                                             if(_loc13_ || param2)
                                             {
                                                addr141:
                                                §§push(§§pop() - §§pop());
                                                if(_loc13_)
                                                {
                                                   §§push(this.§_-YX§.y);
                                                }
                                                §§push(§§pop() + §§pop());
                                                if(!(_loc12_ && param1))
                                                {
                                                   §§push(Number(§§pop()));
                                                   if(_loc12_)
                                                   {
                                                   }
                                                }
                                             }
                                             §§goto(addr154);
                                          }
                                          §§goto(addr141);
                                       }
                                       §§goto(addr154);
                                    }
                                    §§goto(addr141);
                                 }
                                 addr154:
                                 return §§pop();
                              }
                              §§goto(addr141);
                           }
                           §§goto(addr114);
                        case 1:
                           _loc10_ = b2Math.§_-FP§(param1.R,this.§_-YX§);
                           _loc7_ = b2Math.§_-Y9§(param1,this.m_localPoint);
                           _loc4_ = b2Math.§_-P4§(param2.R,_loc10_.§_-D§());
                           _loc6_ = this.§_-m5§.§_-cH§(_loc4_);
                           §§push((_loc8_ = b2Math.§_-Y9§(param2,_loc6_)).x);
                           if(_loc13_ || param1)
                           {
                              §§push(_loc7_.x);
                              if(!_loc12_)
                              {
                                 §§push(§§pop() - §§pop());
                                 if(_loc13_)
                                 {
                                    §§push(_loc10_.x);
                                    if(!(_loc12_ && _loc3_))
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(!_loc12_)
                                       {
                                          addr226:
                                          §§push(_loc8_.y);
                                          if(_loc13_)
                                          {
                                             §§goto(addr230);
                                          }
                                          §§goto(addr247);
                                       }
                                       §§goto(addr250);
                                    }
                                    addr230:
                                    §§push(_loc7_.y);
                                    if(_loc13_)
                                    {
                                       §§goto(addr247);
                                    }
                                    §§push(§§pop() * §§pop());
                                    if(!_loc12_)
                                    {
                                       addr247:
                                       §§push(§§pop() - §§pop());
                                       if(_loc13_ || _loc3_)
                                       {
                                          §§push(_loc10_.y);
                                       }
                                       §§push(§§pop() + §§pop());
                                       if(!_loc12_)
                                       {
                                          addr250:
                                          §§push(Number(§§pop()));
                                          if(_loc12_)
                                          {
                                          }
                                       }
                                    }
                                    §§goto(addr255);
                                 }
                                 addr255:
                                 return §§pop();
                              }
                              §§goto(addr230);
                           }
                           §§goto(addr226);
                        case 2:
                           _loc10_ = b2Math.§_-FP§(param2.R,this.§_-YX§);
                           _loc8_ = b2Math.§_-Y9§(param2,this.m_localPoint);
                           _loc3_ = b2Math.§_-P4§(param1.R,_loc10_.§_-D§());
                           _loc5_ = this.§_-KM§.§_-cH§(_loc3_);
                           §§push((_loc7_ = b2Math.§_-Y9§(param1,_loc5_)).x);
                           if(!_loc12_)
                           {
                              §§push(_loc8_.x);
                              if(!(_loc12_ && param2))
                              {
                                 addr306:
                                 §§push(§§pop() - §§pop());
                                 §§push(_loc10_.x);
                                 if(!(_loc12_ && param2))
                                 {
                                    §§push(§§pop() * §§pop());
                                    §§push(_loc7_.y);
                                    if(_loc13_)
                                    {
                                       §§push(_loc8_.y);
                                       if(!_loc12_)
                                       {
                                          §§goto(addr337);
                                       }
                                       §§push(§§pop() * §§pop());
                                       if(_loc13_)
                                       {
                                          §§goto(addr337);
                                       }
                                       §§goto(addr342);
                                    }
                                 }
                                 §§goto(addr332);
                              }
                              addr337:
                              §§push(§§pop() - §§pop());
                              if(!(_loc12_ && _loc3_))
                              {
                                 addr332:
                                 §§push(_loc10_.y);
                              }
                              §§push(Number(§§pop() + §§pop()));
                              if(_loc13_)
                              {
                                 addr342:
                                 return _loc9_ = §§pop();
                              }
                           }
                           §§goto(addr306);
                        default:
                           b2Settings.b2Assert(false);
                           return 0;
                     }
                     addr428:
                  }
                  else
                  {
                     §§push(§_-zO§);
                     if(_loc13_)
                     {
                        §§push(_loc11_);
                        if(!_loc12_)
                        {
                           addr395:
                           if(§§pop() === §§pop())
                           {
                              if(!(_loc12_ && param1))
                              {
                                 §§goto(addr403);
                              }
                              else
                              {
                                 addr422:
                                 §§push(2);
                              }
                              §§goto(addr423);
                           }
                           else
                           {
                              addr421:
                              if(§_-77§ === _loc11_)
                              {
                                 §§goto(addr422);
                              }
                              else
                              {
                                 §§push(3);
                              }
                              §§goto(addr428);
                           }
                        }
                        §§goto(addr421);
                     }
                  }
                  §§goto(addr411);
               }
               §§goto(addr395);
            }
            §§goto(addr387);
         }
         §§goto(addr429);
      }
   }
}
