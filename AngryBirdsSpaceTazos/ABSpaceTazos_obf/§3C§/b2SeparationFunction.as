package §3c§
{
   import §9t§.b2Mat22;
   import §9t§.b2Math;
   import §9t§.b2Transform;
   import §9t§.b2Vec2;
   import §@!'§.b2Settings;
   
   class b2SeparationFunction
   {
      
      public static const §&!X§:int = 1;
      
      public static const §%p§:int = 2;
      
      public static const §9!&§:int = 4;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || b2SeparationFunction)
         {
            §&!X§ = 1;
         }
         while(true)
         {
            §%p§ = 2;
            while(!_loc1_)
            {
               §9!&§ = 4;
               if(!_loc1_)
               {
                  return;
               }
            }
         }
      }
      
      public var §,e§:b2DistanceProxy;
      
      public var §<!4§:b2DistanceProxy;
      
      public var §0w§:int;
      
      public var m_localPoint:b2Vec2;
      
      public var §4H§:b2Vec2;
      
      function b2SeparationFunction()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.m_localPoint = new b2Vec2();
            while(true)
            {
               this.§4H§ = new b2Vec2();
               while(!(_loc1_ && this))
               {
                  super();
                  if(_loc1_ && this)
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
      
      public function §>`§(param1:b2SimplexCache, param2:b2DistanceProxy, param3:b2Transform, param4:b2DistanceProxy, param5:b2Transform) : void
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
         §§push(this.§0w§);
         if(!_loc12_)
         {
            var _loc11_:* = §§pop();
            if(_loc13_ || this)
            {
               §§push(§&!X§);
               if(_loc13_ || this)
               {
                  §§push(_loc11_);
                  if(!(_loc12_ && _loc3_))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc12_ && this))
                        {
                           §§push(0);
                           if(_loc13_)
                           {
                              addr431:
                           }
                           else
                           {
                              addr444:
                           }
                           addr474:
                           switch(§§pop())
                           {
                              case 0:
                                 _loc3_ = b2Math.§7!`§(param1.R,this.§4H§);
                                 _loc4_ = b2Math.§7!`§(param2.R,this.§4H§.§2!D§());
                                 _loc5_ = this.§,e§.§;d§(_loc3_);
                                 _loc6_ = this.§<!4§.§;d§(_loc4_);
                                 _loc7_ = b2Math.§=&§(param1,_loc5_);
                                 §§push((_loc8_ = b2Math.§=&§(param2,_loc6_)).x);
                                 if(!_loc12_)
                                 {
                                    §§push(_loc7_.x);
                                    if(!_loc12_)
                                    {
                                       §§push(§§pop() - §§pop());
                                       if(!(_loc12_ && _loc3_))
                                       {
                                          §§push(this.§4H§.x);
                                          if(!_loc12_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(!_loc12_)
                                             {
                                                §§goto(addr107);
                                             }
                                             §§goto(addr141);
                                          }
                                          §§goto(addr111);
                                       }
                                       addr107:
                                       §§push(_loc8_.y);
                                       if(!_loc12_)
                                       {
                                          addr111:
                                          §§push(_loc7_.y);
                                          if(!_loc12_)
                                          {
                                             §§push(§§pop() - §§pop());
                                             if(_loc13_ || this)
                                             {
                                                addr126:
                                                §§push(§§pop() * this.§4H§.y);
                                                if(!_loc12_)
                                                {
                                                   §§goto(addr129);
                                                }
                                             }
                                             §§goto(addr141);
                                          }
                                          §§goto(addr126);
                                       }
                                       §§goto(addr129);
                                    }
                                    addr129:
                                    §§push(§§pop() + §§pop());
                                    if(_loc13_ || param1)
                                    {
                                       §§push(Number(§§pop()));
                                       if(_loc13_)
                                       {
                                          addr141:
                                          return _loc9_ = §§pop();
                                       }
                                    }
                                 }
                                 §§goto(addr107);
                              case 1:
                                 _loc10_ = b2Math.§,!s§(param1.R,this.§4H§);
                                 _loc7_ = b2Math.§=&§(param1,this.m_localPoint);
                                 _loc4_ = b2Math.§7!`§(param2.R,_loc10_.§2!D§());
                                 _loc6_ = this.§<!4§.§;d§(_loc4_);
                                 §§push((_loc8_ = b2Math.§=&§(param2,_loc6_)).x);
                                 if(!(_loc12_ && param1))
                                 {
                                    §§push(_loc7_.x);
                                    if(!(_loc12_ && this))
                                    {
                                       §§push(§§pop() - §§pop());
                                       if(_loc13_ || this)
                                       {
                                          addr205:
                                          §§push(_loc10_.x);
                                          if(!(_loc12_ && param2))
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(!_loc12_)
                                             {
                                                §§push(_loc8_.y);
                                                if(_loc13_ || param1)
                                                {
                                                   addr226:
                                                   §§push(_loc7_.y);
                                                   if(_loc13_)
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                      if(!_loc12_)
                                                      {
                                                         addr245:
                                                         §§push(§§pop() * _loc10_.y);
                                                         if(_loc13_ || param1)
                                                         {
                                                            §§goto(addr253);
                                                         }
                                                      }
                                                      §§goto(addr265);
                                                   }
                                                   §§goto(addr245);
                                                }
                                                addr253:
                                                §§push(§§pop() + §§pop());
                                                if(_loc13_)
                                                {
                                                   addr256:
                                                   §§push(Number(§§pop()));
                                                   if(_loc13_ || _loc3_)
                                                   {
                                                      addr265:
                                                      return _loc9_ = §§pop();
                                                   }
                                                }
                                             }
                                             §§goto(addr265);
                                          }
                                          §§goto(addr226);
                                       }
                                       §§goto(addr256);
                                    }
                                    §§goto(addr226);
                                 }
                                 §§goto(addr205);
                              case 2:
                                 _loc10_ = b2Math.§,!s§(param2.R,this.§4H§);
                                 _loc8_ = b2Math.§=&§(param2,this.m_localPoint);
                                 _loc3_ = b2Math.§7!`§(param1.R,_loc10_.§2!D§());
                                 _loc5_ = this.§,e§.§;d§(_loc3_);
                                 §§push((_loc7_ = b2Math.§=&§(param1,_loc5_)).x);
                                 if(_loc13_ || _loc3_)
                                 {
                                    §§push(_loc8_.x);
                                    if(!_loc12_)
                                    {
                                       §§push(§§pop() - §§pop());
                                       if(!(_loc12_ && param1))
                                       {
                                          §§push(_loc10_.x);
                                          if(!(_loc12_ && _loc3_))
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(_loc13_)
                                             {
                                                §§push(_loc7_.y);
                                                if(_loc13_)
                                                {
                                                   §§push(_loc8_.y);
                                                   if(_loc13_)
                                                   {
                                                      addr369:
                                                      §§push(§§pop() - §§pop());
                                                      if(!_loc12_)
                                                      {
                                                         addr347:
                                                         §§push(_loc10_.y);
                                                      }
                                                      _loc9_ = §§pop();
                                                      if(_loc12_ && param1)
                                                      {
                                                         break;
                                                      }
                                                      §§goto(addr377);
                                                   }
                                                   §§push(§§pop() * §§pop());
                                                   if(!_loc12_)
                                                   {
                                                      §§goto(addr352);
                                                   }
                                                   §§goto(addr369);
                                                }
                                                §§goto(addr347);
                                             }
                                             break;
                                          }
                                          §§goto(addr369);
                                       }
                                       break;
                                    }
                                    addr352:
                                    §§push(§§pop() + §§pop());
                                    if(_loc13_ || param1)
                                    {
                                       addr360:
                                       §§push(Number(§§pop()));
                                       if(_loc13_ || this)
                                       {
                                          §§goto(addr369);
                                          §§push(§§pop());
                                       }
                                    }
                                    addr377:
                                    return §§pop();
                                 }
                                 §§goto(addr360);
                              default:
                                 b2Settings.b2Assert(false);
                           }
                           return 0;
                           addr473:
                        }
                        else
                        {
                           addr441:
                           §§push(1);
                           if(!_loc12_)
                           {
                              §§goto(addr444);
                           }
                           else
                           {
                              addr448:
                              if(§§pop() === _loc11_)
                              {
                                 addr450:
                                 §§push(2);
                                 if(_loc13_ || param2)
                                 {
                                    addr468:
                                 }
                              }
                              else
                              {
                                 §§push(3);
                              }
                           }
                           §§goto(addr473);
                        }
                        §§goto(addr444);
                     }
                     else
                     {
                        §§push(§%p§);
                        if(!_loc12_)
                        {
                           §§push(_loc11_);
                           if(_loc13_)
                           {
                              addr438:
                              if(§§pop() === §§pop())
                              {
                                 if(_loc13_)
                                 {
                                    §§goto(addr441);
                                 }
                                 §§goto(addr450);
                              }
                              else
                              {
                                 §§push(§9!&§);
                                 if(_loc13_)
                                 {
                                    §§goto(addr448);
                                 }
                              }
                              §§goto(addr468);
                           }
                           §§goto(addr448);
                        }
                     }
                     §§goto(addr448);
                  }
                  §§goto(addr438);
               }
               §§goto(addr431);
            }
            §§goto(addr441);
         }
         §§goto(addr474);
      }
   }
}
