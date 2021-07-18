package §9"§
{
   import §0!G§.b2Mat22;
   import §0!G§.b2Math;
   import §0!G§.b2Transform;
   import §0!G§.b2Vec2;
   import §2!F§.b2Settings;
   
   class b2SeparationFunction
   {
      
      public static const §9!0§:int = 1;
      
      public static const §0!&§:int = 2;
      
      public static const §5!8§:int = 4;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §9!0§ = 1;
            while(true)
            {
               §0!&§ = 2;
               §§goto(addr57);
            }
         }
         addr57:
         while(true)
         {
            §5!8§ = 4;
            if(!_loc1_)
            {
               if(!_loc1_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public var §9!5§:b2DistanceProxy;
      
      public var §0L§:b2DistanceProxy;
      
      public var §8!J§:int;
      
      public var m_localPoint:b2Vec2;
      
      public var §"Z§:b2Vec2;
      
      function b2SeparationFunction()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.m_localPoint = new b2Vec2();
            do
            {
               this.§"Z§ = new b2Vec2();
               do
               {
                  super();
               }
               while(_loc1_ && _loc1_);
               
            }
            while(!_loc2_);
            
         }
      }
      
      public function §>b§(param1:b2SimplexCache, param2:b2DistanceProxy, param3:b2Transform, param4:b2DistanceProxy, param5:b2Transform) : void
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
         §§push(this.§8!J§);
         if(_loc12_)
         {
            var _loc11_:* = §§pop();
            if(_loc12_ || this)
            {
               §§push(§9!0§);
               if(_loc12_)
               {
                  §§push(_loc11_);
                  if(_loc12_ || param1)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc12_)
                        {
                           addr400:
                           §§push(0);
                           if(!(_loc13_ && _loc3_))
                           {
                              addr465:
                              switch(§§pop())
                              {
                                 case 0:
                                    _loc3_ = b2Math.§6Y§(param1.R,this.§"Z§);
                                    _loc4_ = b2Math.§6Y§(param2.R,this.§"Z§.§0R§());
                                    _loc5_ = this.§9!5§.§ !<§(_loc3_);
                                    _loc6_ = this.§0L§.§ !<§(_loc4_);
                                    _loc7_ = b2Math.§@E§(param1,_loc5_);
                                    §§push((_loc8_ = b2Math.§@E§(param2,_loc6_)).x);
                                    if(_loc12_)
                                    {
                                       §§push(_loc7_.x);
                                       if(_loc12_)
                                       {
                                          §§push(§§pop() - §§pop());
                                          if(_loc12_)
                                          {
                                             §§push(this.§"Z§.x);
                                             if(_loc12_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(_loc12_)
                                                {
                                                   §§push(_loc8_.y);
                                                   if(!_loc13_)
                                                   {
                                                      addr105:
                                                      §§push(_loc7_.y);
                                                      if(_loc12_)
                                                      {
                                                         §§push(§§pop() - §§pop());
                                                         if(_loc12_)
                                                         {
                                                            addr115:
                                                            addr112:
                                                            §§push(§§pop() * this.§"Z§.y);
                                                            if(!_loc12_)
                                                            {
                                                            }
                                                            §§goto(addr135);
                                                         }
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc12_ || param2)
                                                         {
                                                            addr126:
                                                            §§push(Number(§§pop()));
                                                            if(!(_loc13_ && param1))
                                                            {
                                                               addr134:
                                                               addr135:
                                                               _loc9_ = §§pop();
                                                               return §§pop();
                                                               §§push(§§pop());
                                                            }
                                                            §§goto(addr135);
                                                         }
                                                         §§goto(addr134);
                                                      }
                                                   }
                                                   §§goto(addr115);
                                                }
                                                §§goto(addr126);
                                             }
                                             §§goto(addr105);
                                          }
                                          §§goto(addr126);
                                       }
                                       §§goto(addr112);
                                    }
                                    §§goto(addr134);
                                 case 1:
                                    _loc10_ = b2Math.§2!3§(param1.R,this.§"Z§);
                                    _loc7_ = b2Math.§@E§(param1,this.m_localPoint);
                                    _loc4_ = b2Math.§6Y§(param2.R,_loc10_.§0R§());
                                    _loc6_ = this.§0L§.§ !<§(_loc4_);
                                    §§push((_loc8_ = b2Math.§@E§(param2,_loc6_)).x);
                                    if(_loc12_ || param1)
                                    {
                                       §§push(_loc7_.x);
                                       if(_loc12_ || this)
                                       {
                                          §§push(§§pop() - §§pop());
                                          if(_loc12_)
                                          {
                                             §§push(_loc10_.x);
                                             if(!_loc13_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!(_loc13_ && _loc3_))
                                                {
                                                   §§push(_loc8_.y);
                                                   if(!_loc13_)
                                                   {
                                                      §§push(_loc7_.y);
                                                      if(!(_loc13_ && param1))
                                                      {
                                                         §§push(§§pop() - §§pop());
                                                         if(!_loc13_)
                                                         {
                                                            addr234:
                                                            §§push(§§pop() * _loc10_.y);
                                                            if(!_loc12_)
                                                            {
                                                            }
                                                            §§goto(addr244);
                                                         }
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc12_)
                                                         {
                                                            addr240:
                                                            §§push(Number(§§pop()));
                                                            if(!_loc13_)
                                                            {
                                                               addr243:
                                                               addr244:
                                                               _loc9_ = §§pop();
                                                               return §§pop();
                                                               §§push(§§pop());
                                                            }
                                                         }
                                                         §§goto(addr244);
                                                      }
                                                   }
                                                   §§goto(addr234);
                                                }
                                             }
                                             §§goto(addr234);
                                          }
                                          §§goto(addr243);
                                       }
                                       §§goto(addr234);
                                    }
                                    §§goto(addr240);
                                 case 2:
                                    _loc10_ = b2Math.§2!3§(param2.R,this.§"Z§);
                                    _loc8_ = b2Math.§@E§(param2,this.m_localPoint);
                                    _loc3_ = b2Math.§6Y§(param1.R,_loc10_.§0R§());
                                    _loc5_ = this.§9!5§.§ !<§(_loc3_);
                                    §§push((_loc7_ = b2Math.§@E§(param1,_loc5_)).x);
                                    if(_loc12_ || param2)
                                    {
                                       §§push(_loc8_.x);
                                       if(_loc12_ || param2)
                                       {
                                          §§push(§§pop() - §§pop());
                                          if(!(_loc13_ && this))
                                          {
                                             §§push(_loc10_.x);
                                             if(_loc12_ || _loc3_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!_loc13_)
                                                {
                                                   §§push(_loc7_.y);
                                                   if(_loc12_ || param2)
                                                   {
                                                      §§push(_loc8_.y);
                                                      if(_loc12_ || _loc3_)
                                                      {
                                                         addr363:
                                                         §§push(§§pop() - §§pop());
                                                         if(_loc12_)
                                                         {
                                                            addr341:
                                                            §§push(_loc10_.y);
                                                         }
                                                         _loc9_ = §§pop();
                                                         if(!_loc12_)
                                                         {
                                                            break;
                                                         }
                                                         §§goto(addr366);
                                                      }
                                                      §§push(§§pop() * §§pop());
                                                      if(!_loc13_)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc12_ || param2)
                                                         {
                                                            addr354:
                                                            §§push(Number(§§pop()));
                                                            if(!(_loc13_ && _loc3_))
                                                            {
                                                               §§goto(addr363);
                                                               §§push(§§pop());
                                                            }
                                                         }
                                                         break;
                                                      }
                                                   }
                                                   §§goto(addr363);
                                                }
                                                addr366:
                                                return §§pop();
                                             }
                                             §§goto(addr341);
                                          }
                                          §§goto(addr354);
                                       }
                                       §§goto(addr363);
                                    }
                                    §§goto(addr354);
                                 default:
                                    b2Settings.b2Assert(false);
                              }
                              return 0;
                              addr465:
                           }
                        }
                        else
                        {
                           addr428:
                           §§push(1);
                           if(!_loc12_)
                           {
                           }
                        }
                        §§goto(addr465);
                     }
                     else
                     {
                        §§push(§0!&§);
                        if(!(_loc13_ && param1))
                        {
                           §§push(_loc11_);
                           if(_loc12_)
                           {
                              addr420:
                              if(§§pop() === §§pop())
                              {
                                 if(_loc12_ || this)
                                 {
                                    §§goto(addr428);
                                 }
                                 else
                                 {
                                    addr442:
                                    §§push(2);
                                    if(_loc12_ || param2)
                                    {
                                    }
                                    §§goto(addr465);
                                 }
                              }
                              else
                              {
                                 §§push(§5!8§);
                                 if(!(_loc13_ && _loc3_))
                                 {
                                    addr441:
                                    if(§§pop() === _loc11_)
                                    {
                                       §§goto(addr442);
                                    }
                                    else
                                    {
                                       §§goto(addr465);
                                       §§push(3);
                                    }
                                    §§goto(addr465);
                                 }
                              }
                              §§goto(addr460);
                           }
                           §§goto(addr441);
                        }
                     }
                     §§goto(addr465);
                  }
                  §§goto(addr420);
               }
               §§goto(addr441);
            }
            §§goto(addr400);
         }
         §§goto(addr465);
      }
   }
}
