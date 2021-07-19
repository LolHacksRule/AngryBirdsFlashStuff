package §^9§
{
   import §'F§.b2Settings;
   import §6Z§.b2Mat22;
   import §6Z§.b2Math;
   import §6Z§.b2Transform;
   import §6Z§.b2Vec2;
   
   class b2SeparationFunction
   {
      
      public static const §,!b§:int = 1;
      
      public static const §3!u§:int = 2;
      
      public static const §8!p§:int = 4;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §,!b§ = 1;
            while(true)
            {
               §3!u§ = 2;
               while(!_loc2_)
               {
                  §8!p§ = 4;
                  if(!(_loc2_ && _loc1_))
                  {
                     return;
                     addr44:
                  }
               }
            }
         }
         §§goto(addr44);
      }
      
      public var §5"§:b2DistanceProxy;
      
      public var §]§:b2DistanceProxy;
      
      public var §6m§:int;
      
      public var m_localPoint:b2Vec2;
      
      public var §"q§:b2Vec2;
      
      function b2SeparationFunction()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.m_localPoint = new b2Vec2();
            do
            {
               this.§"q§ = new b2Vec2();
               do
               {
                  super();
               }
               while(!_loc2_);
               
            }
            while(!(_loc2_ || this));
            
         }
      }
      
      public function §",§(param1:b2SimplexCache, param2:b2DistanceProxy, param3:b2Transform, param4:b2DistanceProxy, param5:b2Transform) : void
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
         §§push(this.§6m§);
         if(_loc12_)
         {
            var _loc11_:* = §§pop();
            if(_loc12_ || this)
            {
               §§push(§,!b§);
               if(_loc12_)
               {
                  §§push(_loc11_);
                  if(_loc12_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc13_)
                        {
                           §§push(0);
                           if(!_loc13_)
                           {
                              addr475:
                              switch(§§pop())
                              {
                                 case 0:
                                    _loc3_ = b2Math.§3r§(param1.R,this.§"q§);
                                    _loc4_ = b2Math.§3r§(param2.R,this.§"q§.§4l§());
                                    _loc5_ = this.§5"§.§0!e§(_loc3_);
                                    _loc6_ = this.§]§.§0!e§(_loc4_);
                                    _loc7_ = b2Math.§!v§(param1,_loc5_);
                                    §§push((_loc8_ = b2Math.§!v§(param2,_loc6_)).x);
                                    if(_loc12_ || param1)
                                    {
                                       §§push(_loc7_.x);
                                       if(_loc12_)
                                       {
                                          §§push(§§pop() - §§pop());
                                          if(_loc12_ || this)
                                          {
                                             §§push(this.§"q§.x);
                                             if(!_loc13_)
                                             {
                                                addr108:
                                                §§push(§§pop() * §§pop());
                                                if(!_loc13_)
                                                {
                                                   §§push(_loc8_.y);
                                                   if(_loc12_ || param2)
                                                   {
                                                      addr120:
                                                      §§push(_loc7_.y);
                                                      if(!(_loc13_ && _loc3_))
                                                      {
                                                         §§push(§§pop() - §§pop());
                                                         if(_loc12_ || _loc3_)
                                                         {
                                                            addr140:
                                                            §§push(§§pop() * this.§"q§.y);
                                                            if(_loc12_ || _loc3_)
                                                            {
                                                               §§goto(addr148);
                                                            }
                                                         }
                                                         §§goto(addr160);
                                                      }
                                                      §§goto(addr140);
                                                   }
                                                   addr148:
                                                   §§push(§§pop() + §§pop());
                                                   if(!_loc13_)
                                                   {
                                                      addr151:
                                                      §§push(Number(§§pop()));
                                                      if(!(_loc13_ && param1))
                                                      {
                                                         addr160:
                                                         return _loc9_ = §§pop();
                                                      }
                                                   }
                                                }
                                                §§goto(addr160);
                                             }
                                             §§goto(addr120);
                                          }
                                          §§goto(addr151);
                                       }
                                       §§goto(addr108);
                                    }
                                    §§goto(addr160);
                                 case 1:
                                    _loc10_ = b2Math.§"]§(param1.R,this.§"q§);
                                    _loc7_ = b2Math.§!v§(param1,this.m_localPoint);
                                    _loc4_ = b2Math.§3r§(param2.R,_loc10_.§4l§());
                                    _loc6_ = this.§]§.§0!e§(_loc4_);
                                    §§push((_loc8_ = b2Math.§!v§(param2,_loc6_)).x);
                                    if(!(_loc13_ && _loc3_))
                                    {
                                       §§push(_loc7_.x);
                                       if(!(_loc13_ && _loc3_))
                                       {
                                          §§push(§§pop() - §§pop());
                                          if(!(_loc13_ && param2))
                                          {
                                             addr224:
                                             §§push(_loc10_.x);
                                             if(_loc12_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(_loc12_)
                                                {
                                                   §§push(_loc8_.y);
                                                   if(_loc12_)
                                                   {
                                                      §§push(_loc7_.y);
                                                      if(!_loc13_)
                                                      {
                                                         §§goto(addr257);
                                                      }
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc12_)
                                                      {
                                                         addr257:
                                                         §§push(§§pop() - §§pop());
                                                         if(!_loc13_)
                                                         {
                                                            addr252:
                                                            §§push(_loc10_.y);
                                                         }
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc12_ || param2)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            if(_loc13_ && _loc3_)
                                                            {
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr275);
                                                   }
                                                   §§goto(addr252);
                                                }
                                                §§goto(addr275);
                                             }
                                             §§goto(addr257);
                                          }
                                          §§goto(addr275);
                                       }
                                       addr275:
                                       return §§pop();
                                    }
                                    §§goto(addr224);
                                 case 2:
                                    _loc10_ = b2Math.§"]§(param2.R,this.§"q§);
                                    _loc8_ = b2Math.§!v§(param2,this.m_localPoint);
                                    _loc3_ = b2Math.§3r§(param1.R,_loc10_.§4l§());
                                    _loc5_ = this.§5"§.§0!e§(_loc3_);
                                    §§push((_loc7_ = b2Math.§!v§(param1,_loc5_)).x);
                                    if(_loc12_ || this)
                                    {
                                       §§push(_loc8_.x);
                                       if(_loc12_ || param1)
                                       {
                                          §§push(§§pop() - §§pop());
                                          if(_loc12_ || param1)
                                          {
                                             §§push(_loc10_.x);
                                             if(!_loc13_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!(_loc13_ && this))
                                                {
                                                   §§push(_loc7_.y);
                                                   if(!_loc13_)
                                                   {
                                                      addr354:
                                                      §§push(_loc8_.y);
                                                      if(!(_loc13_ && _loc3_))
                                                      {
                                                         §§push(§§pop() - §§pop());
                                                         if(_loc12_ || param2)
                                                         {
                                                            addr373:
                                                            §§push(§§pop() * _loc10_.y);
                                                            if(_loc12_)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               if(_loc12_ || _loc3_)
                                                               {
                                                                  §§goto(addr396);
                                                               }
                                                               break;
                                                            }
                                                         }
                                                         _loc9_ = §§pop();
                                                         if(!_loc12_)
                                                         {
                                                            break;
                                                         }
                                                         §§goto(addr396);
                                                      }
                                                   }
                                                   §§goto(addr373);
                                                }
                                                §§goto(addr392);
                                             }
                                             §§goto(addr354);
                                          }
                                          addr396:
                                          §§push(Number(§§pop()));
                                          if(_loc12_ || param1)
                                          {
                                             addr392:
                                             return §§pop();
                                          }
                                       }
                                       §§goto(addr354);
                                    }
                                    §§goto(addr392);
                                 default:
                                    b2Settings.b2Assert(false);
                              }
                              return 0;
                              addr475:
                           }
                           else
                           {
                              addr432:
                              §§push(_loc11_);
                              if(_loc12_)
                              {
                                 addr435:
                                 if(§§pop() === §§pop())
                                 {
                                    if(!(_loc13_ && _loc3_))
                                    {
                                       addr443:
                                       §§push(1);
                                       if(!_loc12_)
                                       {
                                          addr450:
                                          if(§§pop() === _loc11_)
                                          {
                                             addr452:
                                             §§push(2);
                                             if(_loc13_ && _loc3_)
                                             {
                                             }
                                             §§goto(addr475);
                                          }
                                          else
                                          {
                                             §§goto(addr475);
                                             §§push(3);
                                          }
                                       }
                                       §§goto(addr475);
                                    }
                                    §§goto(addr452);
                                 }
                                 else
                                 {
                                    §§push(§8!p§);
                                    if(_loc12_)
                                    {
                                       §§goto(addr450);
                                    }
                                 }
                                 §§goto(addr475);
                              }
                              §§goto(addr450);
                           }
                           §§goto(addr475);
                        }
                        §§goto(addr452);
                     }
                     else
                     {
                        §§push(§3!u§);
                        if(!_loc13_)
                        {
                           §§goto(addr432);
                        }
                        §§goto(addr475);
                     }
                  }
                  §§goto(addr435);
               }
               §§goto(addr475);
            }
            §§goto(addr443);
         }
         §§goto(addr475);
      }
   }
}
