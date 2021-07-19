package §!§
{
   import §'!_§.b2Settings;
   import §@!E§.b2Mat22;
   import §@!E§.b2Math;
   import §@!E§.b2Transform;
   import §@!E§.b2Vec2;
   
   class b2SeparationFunction
   {
      
      public static const §^!8§:int = 1;
      
      public static const §'h§:int = 2;
      
      public static const §!F§:int = 4;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §^!8§ = 1;
            do
            {
               §'h§ = 2;
               do
               {
                  §!F§ = 4;
               }
               while(!_loc2_);
               
            }
            while(!_loc2_);
            
         }
      }
      
      public var §@!u§:b2DistanceProxy;
      
      public var §5p§:b2DistanceProxy;
      
      public var §5Q§:int;
      
      public var m_localPoint:b2Vec2;
      
      public var §0E§:b2Vec2;
      
      function b2SeparationFunction()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.m_localPoint = new b2Vec2();
            while(true)
            {
               this.§0E§ = new b2Vec2();
               while(_loc1_ || _loc2_)
               {
                  super();
                  if(!(_loc1_ || _loc2_))
                  {
                     continue;
                  }
                  return;
                  addr48:
               }
            }
         }
         §§goto(addr48);
      }
      
      public function §6R§(param1:b2SimplexCache, param2:b2DistanceProxy, param3:b2Transform, param4:b2DistanceProxy, param5:b2Transform) : void
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
         §§push(this.§5Q§);
         if(_loc12_)
         {
            var _loc11_:* = §§pop();
            if(_loc12_ || this)
            {
               §§push(§^!8§);
               if(!_loc13_)
               {
                  §§push(_loc11_);
                  if(_loc12_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc12_ || this)
                        {
                           addr412:
                           §§push(0);
                           if(!(_loc12_ || _loc3_))
                           {
                              addr443:
                           }
                        }
                        else
                        {
                           addr449:
                           §§push(2);
                           if(!(_loc13_ && this))
                           {
                              addr467:
                           }
                        }
                     }
                     else
                     {
                        §§push(§'h§);
                        if(_loc12_)
                        {
                           §§push(_loc11_);
                           if(!(_loc13_ && _loc3_))
                           {
                              addr432:
                              if(§§pop() === §§pop())
                              {
                                 if(!(_loc13_ && _loc3_))
                                 {
                                    §§push(1);
                                    if(_loc12_)
                                    {
                                       §§goto(addr443);
                                    }
                                    addr472:
                                    switch(§§pop())
                                    {
                                       case 0:
                                          _loc3_ = b2Math.§`!C§(param1.R,this.§0E§);
                                          _loc4_ = b2Math.§`!C§(param2.R,this.§0E§.§2T§());
                                          _loc5_ = this.§@!u§.§+M§(_loc3_);
                                          _loc6_ = this.§5p§.§+M§(_loc4_);
                                          _loc7_ = b2Math.§#@§(param1,_loc5_);
                                          §§push((_loc8_ = b2Math.§#@§(param2,_loc6_)).x);
                                          if(_loc12_)
                                          {
                                             §§push(_loc7_.x);
                                             if(!_loc13_)
                                             {
                                                §§push(§§pop() - §§pop());
                                                if(_loc12_)
                                                {
                                                   §§push(this.§0E§.x);
                                                   if(!(_loc13_ && _loc3_))
                                                   {
                                                      addr103:
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc12_ || param1)
                                                      {
                                                         addr111:
                                                         §§push(_loc8_.y);
                                                         if(!_loc13_)
                                                         {
                                                            §§push(_loc7_.y);
                                                            if(_loc12_)
                                                            {
                                                               §§push(§§pop() - §§pop());
                                                               if(!_loc13_)
                                                               {
                                                                  addr125:
                                                                  §§push(§§pop() * this.§0E§.y);
                                                                  if(!_loc13_)
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     if(_loc12_ || param2)
                                                                     {
                                                                        addr136:
                                                                        §§push(Number(§§pop()));
                                                                        if(!(_loc13_ && param1))
                                                                        {
                                                                           addr145:
                                                                           return _loc9_ = §§pop();
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr145);
                                                            }
                                                         }
                                                         §§goto(addr125);
                                                      }
                                                      §§goto(addr136);
                                                   }
                                                   §§goto(addr125);
                                                }
                                                §§goto(addr111);
                                             }
                                             §§goto(addr103);
                                          }
                                          §§goto(addr111);
                                       case 1:
                                          _loc10_ = b2Math.§-!u§(param1.R,this.§0E§);
                                          _loc7_ = b2Math.§#@§(param1,this.m_localPoint);
                                          _loc4_ = b2Math.§`!C§(param2.R,_loc10_.§2T§());
                                          _loc6_ = this.§5p§.§+M§(_loc4_);
                                          §§push((_loc8_ = b2Math.§#@§(param2,_loc6_)).x);
                                          if(!_loc13_)
                                          {
                                             §§push(_loc7_.x);
                                             if(_loc12_)
                                             {
                                                §§push(§§pop() - §§pop());
                                                if(!(_loc13_ && param1))
                                                {
                                                   §§push(_loc10_.x);
                                                   if(!(_loc13_ && param2))
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(!_loc13_)
                                                      {
                                                         addr211:
                                                         §§push(_loc8_.y);
                                                         if(!_loc13_)
                                                         {
                                                            addr215:
                                                            §§push(_loc7_.y);
                                                            if(_loc12_)
                                                            {
                                                               §§push(§§pop() - §§pop());
                                                               if(!(_loc13_ && this))
                                                               {
                                                                  addr239:
                                                                  §§push(§§pop() * _loc10_.y);
                                                                  if(_loc12_ || param2)
                                                                  {
                                                                     §§goto(addr247);
                                                                  }
                                                               }
                                                               §§goto(addr259);
                                                            }
                                                            §§goto(addr239);
                                                         }
                                                         §§goto(addr247);
                                                      }
                                                      §§goto(addr259);
                                                   }
                                                   §§goto(addr215);
                                                }
                                                §§goto(addr255);
                                             }
                                             addr247:
                                             §§push(§§pop() + §§pop());
                                             if(!(_loc13_ && param1))
                                             {
                                                addr255:
                                                §§push(Number(§§pop()));
                                                if(_loc12_)
                                                {
                                                   addr259:
                                                   return _loc9_ = §§pop();
                                                }
                                             }
                                          }
                                          §§goto(addr211);
                                       case 2:
                                          _loc10_ = b2Math.§-!u§(param2.R,this.§0E§);
                                          _loc8_ = b2Math.§#@§(param2,this.m_localPoint);
                                          _loc3_ = b2Math.§`!C§(param1.R,_loc10_.§2T§());
                                          _loc5_ = this.§@!u§.§+M§(_loc3_);
                                          §§push((_loc7_ = b2Math.§#@§(param1,_loc5_)).x);
                                          if(_loc12_ || this)
                                          {
                                             §§push(_loc8_.x);
                                             if(_loc12_)
                                             {
                                                §§push(§§pop() - §§pop());
                                                if(!_loc13_)
                                                {
                                                   §§push(_loc10_.x);
                                                   if(_loc12_)
                                                   {
                                                      §§goto(addr317);
                                                   }
                                                   §§goto(addr356);
                                                }
                                                §§goto(addr325);
                                             }
                                             addr317:
                                             §§push(§§pop() * §§pop());
                                             if(_loc12_ || this)
                                             {
                                                addr325:
                                                §§push(_loc7_.y);
                                                if(_loc12_ || param2)
                                                {
                                                   §§push(_loc8_.y);
                                                   if(_loc12_ || _loc3_)
                                                   {
                                                      addr356:
                                                      §§push(§§pop() - §§pop());
                                                      if(!_loc13_)
                                                      {
                                                         §§push(_loc10_.y);
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                      if(!(_loc13_ && this))
                                                      {
                                                         §§goto(addr364);
                                                      }
                                                      break;
                                                   }
                                                   §§push(§§pop() * §§pop());
                                                   if(!(_loc13_ && _loc3_))
                                                   {
                                                      §§goto(addr356);
                                                   }
                                                }
                                                §§goto(addr368);
                                             }
                                             addr364:
                                             §§push(Number(§§pop()));
                                             if(_loc12_)
                                             {
                                                addr368:
                                                §§push(_loc9_ = §§pop());
                                                if(!_loc12_)
                                                {
                                                   break;
                                                }
                                             }
                                             return §§pop();
                                          }
                                          §§goto(addr368);
                                       default:
                                          b2Settings.b2Assert(false);
                                    }
                                    return 0;
                                    addr472:
                                 }
                                 else
                                 {
                                    §§goto(addr449);
                                 }
                                 §§goto(addr472);
                              }
                              else
                              {
                                 §§push(§!F§);
                                 if(_loc12_)
                                 {
                                    §§push(_loc11_);
                                 }
                                 §§goto(addr467);
                              }
                           }
                           if(§§pop() === §§pop())
                           {
                              §§goto(addr449);
                           }
                           else
                           {
                              §§push(3);
                           }
                        }
                     }
                     §§goto(addr472);
                  }
                  §§goto(addr432);
               }
               §§goto(addr467);
            }
            §§goto(addr412);
         }
         §§goto(addr472);
      }
   }
}
