package §'"-§
{
   import §,"[§.b2Settings;
   import §6!^§.b2Mat22;
   import §6!^§.b2Math;
   import §6!^§.b2Transform;
   import §6!^§.b2Vec2;
   
   class b2SeparationFunction
   {
      
      public static const §1!6§:int = 1;
      
      public static const §[!7§:int = 2;
      
      public static const §?!Q§:int = 4;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §1!6§ = 1;
            while(true)
            {
               §[!7§ = 2;
               §§goto(addr51);
            }
         }
         addr51:
         while(true)
         {
            §?!Q§ = 4;
            if(_loc1_ || b2SeparationFunction)
            {
               if(_loc1_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public var §8"P§:b2DistanceProxy;
      
      public var §+!_§:b2DistanceProxy;
      
      public var §<"@§:int;
      
      public var m_localPoint:b2Vec2;
      
      public var §1!?§:b2Vec2;
      
      function b2SeparationFunction()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.m_localPoint = new b2Vec2();
            while(true)
            {
               this.§1!?§ = new b2Vec2();
               while(!(_loc2_ && this))
               {
                  super();
                  if(!_loc1_)
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
      
      public function §6!Q§(param1:b2SimplexCache, param2:b2DistanceProxy, param3:b2Transform, param4:b2DistanceProxy, param5:b2Transform) : void
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
         §§push(this.§<"@§);
         if(_loc13_)
         {
            var _loc11_:* = §§pop();
            if(!_loc12_)
            {
               §§push(§1!6§);
               if(_loc13_ || this)
               {
                  §§push(_loc11_);
                  if(_loc13_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc12_ && param1))
                        {
                           addr416:
                           §§push(0);
                           if(_loc12_ && _loc3_)
                           {
                              addr433:
                              §§push(_loc11_);
                              if(_loc13_ || _loc3_)
                              {
                                 addr441:
                                 if(§§pop() === §§pop())
                                 {
                                    if(!(_loc12_ && param2))
                                    {
                                       §§push(1);
                                       if(_loc13_ || this)
                                       {
                                          addr486:
                                          switch(§§pop())
                                          {
                                             case 0:
                                                _loc3_ = b2Math.§60§(param1.R,this.§1!?§);
                                                _loc4_ = b2Math.§60§(param2.R,this.§1!?§.§9l§());
                                                _loc5_ = this.§8"P§.§+!v§(_loc3_);
                                                _loc6_ = this.§+!_§.§+!v§(_loc4_);
                                                _loc7_ = b2Math.§^T§(param1,_loc5_);
                                                §§push((_loc8_ = b2Math.§^T§(param2,_loc6_)).x);
                                                if(!_loc12_)
                                                {
                                                   §§push(_loc7_.x);
                                                   if(!_loc12_)
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                      if(!(_loc12_ && param2))
                                                      {
                                                         §§push(this.§1!?§.x);
                                                         if(!(_loc12_ && _loc3_))
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc13_)
                                                            {
                                                               addr112:
                                                               §§push(_loc8_.y);
                                                               if(_loc13_ || _loc3_)
                                                               {
                                                                  §§push(_loc7_.y);
                                                                  if(!(_loc12_ && param2))
                                                                  {
                                                                     §§push(§§pop() - §§pop());
                                                                     if(_loc13_ || this)
                                                                     {
                                                                        addr141:
                                                                        §§push(§§pop() * this.§1!?§.y);
                                                                        if(_loc13_ || this)
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           if(!(_loc12_ && param2))
                                                                           {
                                                                              §§goto(addr157);
                                                                           }
                                                                           §§goto(addr160);
                                                                        }
                                                                     }
                                                                     §§goto(addr160);
                                                                  }
                                                               }
                                                               §§goto(addr141);
                                                            }
                                                            addr157:
                                                            §§push(Number(§§pop()));
                                                            if(!_loc12_)
                                                            {
                                                               addr160:
                                                               return _loc9_ = §§pop();
                                                            }
                                                         }
                                                         §§goto(addr141);
                                                      }
                                                      §§goto(addr160);
                                                   }
                                                   §§goto(addr141);
                                                }
                                                §§goto(addr112);
                                             case 1:
                                                _loc10_ = b2Math.§5!w§(param1.R,this.§1!?§);
                                                _loc7_ = b2Math.§^T§(param1,this.m_localPoint);
                                                _loc4_ = b2Math.§60§(param2.R,_loc10_.§9l§());
                                                _loc6_ = this.§+!_§.§+!v§(_loc4_);
                                                §§push((_loc8_ = b2Math.§^T§(param2,_loc6_)).x);
                                                if(_loc13_)
                                                {
                                                   §§push(_loc7_.x);
                                                   if(!(_loc12_ && param1))
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                      if(!_loc12_)
                                                      {
                                                         §§push(_loc10_.x);
                                                         if(!_loc12_)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc13_)
                                                            {
                                                               addr222:
                                                               §§push(_loc8_.y);
                                                               if(!_loc12_)
                                                               {
                                                                  §§push(_loc7_.y);
                                                                  if(_loc13_ || _loc3_)
                                                                  {
                                                                     §§goto(addr258);
                                                                  }
                                                                  §§push(§§pop() * §§pop());
                                                                  if(!(_loc12_ && this))
                                                                  {
                                                                     addr258:
                                                                     §§push(§§pop() - §§pop());
                                                                     if(!_loc12_)
                                                                     {
                                                                        §§push(_loc10_.y);
                                                                     }
                                                                     §§push(§§pop() + §§pop());
                                                                     if(!(_loc12_ && param2))
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        if(_loc13_ || param1)
                                                                        {
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr276);
                                                      }
                                                      addr276:
                                                      return §§pop();
                                                   }
                                                   §§goto(addr258);
                                                }
                                                §§goto(addr222);
                                             case 2:
                                                _loc10_ = b2Math.§5!w§(param2.R,this.§1!?§);
                                                _loc8_ = b2Math.§^T§(param2,this.m_localPoint);
                                                _loc3_ = b2Math.§60§(param1.R,_loc10_.§9l§());
                                                _loc5_ = this.§8"P§.§+!v§(_loc3_);
                                                §§push((_loc7_ = b2Math.§^T§(param1,_loc5_)).x);
                                                if(!_loc12_)
                                                {
                                                   §§push(_loc8_.x);
                                                   if(!_loc12_)
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                      if(!(_loc12_ && param1))
                                                      {
                                                         §§push(_loc10_.x);
                                                         if(_loc13_ || _loc3_)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(!_loc12_)
                                                            {
                                                               §§push(_loc7_.y);
                                                               if(_loc13_)
                                                               {
                                                                  §§push(_loc8_.y);
                                                                  if(!_loc12_)
                                                                  {
                                                                     §§push(§§pop() - §§pop());
                                                                     if(!_loc12_)
                                                                     {
                                                                        addr354:
                                                                        §§push(§§pop() * _loc10_.y);
                                                                        if(!(_loc12_ && _loc3_))
                                                                        {
                                                                           addr362:
                                                                           §§push(§§pop() + §§pop());
                                                                           if(!_loc12_)
                                                                           {
                                                                              §§goto(addr365);
                                                                           }
                                                                           §§goto(addr373);
                                                                        }
                                                                     }
                                                                     §§goto(addr373);
                                                                  }
                                                                  §§goto(addr354);
                                                               }
                                                            }
                                                            §§goto(addr365);
                                                         }
                                                         §§goto(addr362);
                                                      }
                                                      addr365:
                                                      §§push(Number(§§pop()));
                                                      if(!(_loc12_ && this))
                                                      {
                                                         addr373:
                                                         §§push(_loc9_ = §§pop());
                                                         if(_loc12_ && param1)
                                                         {
                                                            break;
                                                         }
                                                      }
                                                      return §§pop();
                                                   }
                                                   §§goto(addr354);
                                                }
                                                break;
                                             default:
                                                b2Settings.b2Assert(false);
                                          }
                                          return 0;
                                          addr486:
                                       }
                                       else
                                       {
                                          addr481:
                                          §§goto(addr486);
                                       }
                                    }
                                    else
                                    {
                                       addr473:
                                       §§push(2);
                                       if(!(_loc12_ && this))
                                       {
                                          §§goto(addr481);
                                       }
                                    }
                                 }
                                 else
                                 {
                                    §§push(§?!Q§);
                                    if(_loc13_)
                                    {
                                       addr471:
                                       §§push(_loc11_);
                                    }
                                 }
                                 §§goto(addr486);
                              }
                              if(§§pop() === §§pop())
                              {
                                 §§goto(addr473);
                              }
                              else
                              {
                                 §§push(3);
                              }
                           }
                           else
                           {
                              addr424:
                           }
                           §§goto(addr486);
                        }
                        §§goto(addr473);
                     }
                     else
                     {
                        §§push(§[!7§);
                        if(!(_loc12_ && param2))
                        {
                           §§goto(addr433);
                        }
                     }
                     §§goto(addr471);
                  }
                  §§goto(addr441);
               }
               §§goto(addr424);
            }
            §§goto(addr416);
         }
         §§goto(addr486);
      }
   }
}
