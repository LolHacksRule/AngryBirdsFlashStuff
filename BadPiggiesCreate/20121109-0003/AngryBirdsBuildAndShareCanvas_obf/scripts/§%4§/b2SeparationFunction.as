package §%4§
{
   import §<!a§.b2Mat22;
   import §<!a§.b2Math;
   import §<!a§.b2Transform;
   import §<!a§.b2Vec2;
   import §<";§.b2Settings;
   
   class b2SeparationFunction
   {
      
      public static const §5"9§:int = 1;
      
      public static const §`!5§:int = 2;
      
      public static const §&O§:int = 4;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §5"9§ = 1;
            while(true)
            {
               §`!5§ = 2;
               loop1:
               while(_loc2_ || _loc2_)
               {
                  while(true)
                  {
                     §&O§ = 4;
                     if(!(_loc1_ && _loc1_))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr72);
      }
      
      public var §0y§:b2DistanceProxy;
      
      public var §[$§:b2DistanceProxy;
      
      public var §0!,§:int;
      
      public var m_localPoint:b2Vec2;
      
      public var §+u§:b2Vec2;
      
      function b2SeparationFunction()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.m_localPoint = new b2Vec2();
         }
         while(true)
         {
            this.§+u§ = new b2Vec2();
            while(_loc2_ || this)
            {
               super();
               if(!_loc1_)
               {
                  return;
               }
            }
         }
      }
      
      public function §&!§(param1:b2SimplexCache, param2:b2DistanceProxy, param3:b2Transform, param4:b2DistanceProxy, param5:b2Transform) : void
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
         §§push(this.§0!,§);
         if(!_loc13_)
         {
            var _loc11_:* = §§pop();
            if(!_loc13_)
            {
               §§push(§5"9§);
               if(!(_loc13_ && param2))
               {
                  §§push(_loc11_);
                  if(_loc12_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc12_ || param1)
                        {
                           §§push(0);
                           if(_loc12_ || param2)
                           {
                              addr487:
                              switch(§§pop())
                              {
                                 case 0:
                                    _loc3_ = b2Math.§#"-§(param1.R,this.§+u§);
                                    _loc4_ = b2Math.§#"-§(param2.R,this.§+u§.§5E§());
                                    _loc5_ = this.§0y§.§!F§(_loc3_);
                                    _loc6_ = this.§[$§.§!F§(_loc4_);
                                    _loc7_ = b2Math.§#!K§(param1,_loc5_);
                                    §§push((_loc8_ = b2Math.§#!K§(param2,_loc6_)).x);
                                    if(!(_loc13_ && param2))
                                    {
                                       §§push(_loc7_.x);
                                       if(_loc12_ || this)
                                       {
                                          §§push(§§pop() - §§pop());
                                          if(!_loc13_)
                                          {
                                             §§goto(addr103);
                                          }
                                          §§goto(addr116);
                                       }
                                       §§goto(addr108);
                                    }
                                    addr103:
                                    §§push(this.§+u§.x);
                                    if(!_loc13_)
                                    {
                                       addr108:
                                       §§push(§§pop() * §§pop());
                                       if(!(_loc13_ && _loc3_))
                                       {
                                          addr116:
                                          §§push(_loc8_.y);
                                          if(!_loc13_)
                                          {
                                             §§push(_loc7_.y);
                                             if(_loc12_)
                                             {
                                                addr150:
                                                §§push(§§pop() - §§pop());
                                                if(!(_loc13_ && this))
                                                {
                                                   §§push(this.§+u§.y);
                                                }
                                                _loc9_ = §§pop();
                                                §§goto(addr151);
                                             }
                                             §§push(§§pop() * §§pop());
                                             if(!_loc13_)
                                             {
                                                §§goto(addr138);
                                             }
                                          }
                                       }
                                       §§goto(addr150);
                                    }
                                    addr138:
                                    §§push(§§pop() + §§pop());
                                    if(!(_loc13_ && this))
                                    {
                                       §§push(Number(§§pop()));
                                       if(!_loc13_)
                                       {
                                          §§push(§§pop());
                                       }
                                       §§goto(addr151);
                                    }
                                    addr151:
                                    return §§pop();
                                 case 1:
                                    _loc10_ = b2Math.§<!G§(param1.R,this.§+u§);
                                    _loc7_ = b2Math.§#!K§(param1,this.m_localPoint);
                                    _loc4_ = b2Math.§#"-§(param2.R,_loc10_.§5E§());
                                    _loc6_ = this.§[$§.§!F§(_loc4_);
                                    §§push((_loc8_ = b2Math.§#!K§(param2,_loc6_)).x);
                                    if(_loc12_)
                                    {
                                       §§push(_loc7_.x);
                                       if(!_loc13_)
                                       {
                                          §§push(§§pop() - §§pop());
                                          if(_loc12_ || param2)
                                          {
                                             §§push(_loc10_.x);
                                             if(!(_loc13_ && param2))
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(_loc12_ || param1)
                                                {
                                                   §§push(_loc8_.y);
                                                   if(!(_loc13_ && param1))
                                                   {
                                                      addr230:
                                                      §§push(_loc7_.y);
                                                      if(!(_loc13_ && _loc3_))
                                                      {
                                                         addr274:
                                                         §§push(§§pop() - §§pop());
                                                         if(!(_loc13_ && param1))
                                                         {
                                                            §§push(_loc10_.y);
                                                         }
                                                         _loc9_ = §§pop();
                                                         §§goto(addr275);
                                                      }
                                                      §§push(§§pop() * §§pop());
                                                      if(!_loc13_)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc12_)
                                                         {
                                                            §§goto(addr265);
                                                         }
                                                         §§goto(addr274);
                                                         §§push(§§pop());
                                                      }
                                                   }
                                                   §§goto(addr274);
                                                }
                                                addr265:
                                                §§push(Number(§§pop()));
                                                if(_loc13_ && param1)
                                                {
                                                }
                                                addr275:
                                                return §§pop();
                                             }
                                             §§goto(addr230);
                                          }
                                       }
                                    }
                                    §§goto(addr274);
                                 case 2:
                                    _loc10_ = b2Math.§<!G§(param2.R,this.§+u§);
                                    _loc8_ = b2Math.§#!K§(param2,this.m_localPoint);
                                    _loc3_ = b2Math.§#"-§(param1.R,_loc10_.§5E§());
                                    _loc5_ = this.§0y§.§!F§(_loc3_);
                                    §§push((_loc7_ = b2Math.§#!K§(param1,_loc5_)).x);
                                    if(!_loc13_)
                                    {
                                       §§push(_loc8_.x);
                                       if(_loc12_)
                                       {
                                          §§push(§§pop() - §§pop());
                                          if(!_loc13_)
                                          {
                                             addr323:
                                             §§push(_loc10_.x);
                                             if(!_loc13_)
                                             {
                                                addr327:
                                                §§push(§§pop() * §§pop());
                                                if(_loc12_ || param2)
                                                {
                                                   §§push(_loc7_.y);
                                                   if(!(_loc13_ && param2))
                                                   {
                                                      §§push(_loc8_.y);
                                                      if(!(_loc13_ && _loc3_))
                                                      {
                                                         §§push(§§pop() - §§pop());
                                                         if(!(_loc13_ && param1))
                                                         {
                                                            addr363:
                                                            §§push(§§pop() * _loc10_.y);
                                                            if(!_loc13_)
                                                            {
                                                               §§goto(addr366);
                                                            }
                                                            §§goto(addr378);
                                                         }
                                                         addr366:
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc12_)
                                                         {
                                                            addr369:
                                                            §§push(Number(§§pop()));
                                                            if(!(_loc13_ && param2))
                                                            {
                                                               addr378:
                                                               §§push(_loc9_ = §§pop());
                                                               if(_loc13_)
                                                               {
                                                                  break;
                                                               }
                                                            }
                                                            break;
                                                         }
                                                         return §§pop();
                                                      }
                                                   }
                                                   §§goto(addr363);
                                                }
                                                §§goto(addr369);
                                             }
                                             §§goto(addr363);
                                          }
                                          break;
                                       }
                                       §§goto(addr327);
                                    }
                                    §§goto(addr323);
                                 default:
                                    b2Settings.b2Assert(false);
                              }
                              return 0;
                              addr487:
                           }
                        }
                        else
                        {
                           addr450:
                           §§push(1);
                           if(_loc13_ && this)
                           {
                           }
                        }
                        §§goto(addr487);
                     }
                     else
                     {
                        §§push(§`!5§);
                        if(!(_loc13_ && _loc3_))
                        {
                           addr434:
                           §§push(_loc11_);
                           if(_loc12_ || param1)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc12_ || this)
                                 {
                                    §§goto(addr450);
                                 }
                                 else
                                 {
                                    addr464:
                                    §§push(2);
                                    if(_loc12_ || this)
                                    {
                                       §§goto(addr482);
                                    }
                                 }
                              }
                              else
                              {
                                 §§push(§&O§);
                                 if(!_loc13_)
                                 {
                                    addr463:
                                    if(§§pop() === _loc11_)
                                    {
                                       §§goto(addr464);
                                    }
                                    else
                                    {
                                       §§push(3);
                                    }
                                 }
                              }
                           }
                           §§goto(addr463);
                        }
                     }
                     §§goto(addr487);
                  }
                  §§goto(addr463);
               }
               §§goto(addr434);
            }
            §§goto(addr464);
         }
         §§goto(addr487);
      }
   }
}
