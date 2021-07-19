package §5!o§
{
   import §2"=§.b2Mat22;
   import §2"=§.b2Math;
   import §2"=§.b2Transform;
   import §2"=§.b2Vec2;
   import §=o§.b2Settings;
   
   class b2SeparationFunction
   {
      
      public static const §+L§:int = 1;
      
      public static const §1!0§:int = 2;
      
      public static const §7" §:int = 4;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §+L§ = 1;
         }
         while(true)
         {
            §1!0§ = 2;
            while(!_loc1_)
            {
               §7" § = 4;
               if(!_loc1_)
               {
                  return;
               }
            }
         }
      }
      
      public var §>!@§:b2DistanceProxy;
      
      public var §3!1§:b2DistanceProxy;
      
      public var §="1§:int;
      
      public var m_localPoint:b2Vec2;
      
      public var §2d§:b2Vec2;
      
      function b2SeparationFunction()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.m_localPoint = new b2Vec2();
            do
            {
               this.§2d§ = new b2Vec2();
               do
               {
                  super();
               }
               while(!_loc2_);
               
            }
            while(!_loc2_);
            
         }
      }
      
      public function §1o§(param1:b2SimplexCache, param2:b2DistanceProxy, param3:b2Transform, param4:b2DistanceProxy, param5:b2Transform) : void
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
         §§push(this.§="1§);
         if(!_loc12_)
         {
            var _loc11_:* = §§pop();
            if(!_loc12_)
            {
               §§push(§+L§);
               if(!_loc12_)
               {
                  §§push(_loc11_);
                  if(!_loc12_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc13_ || _loc3_)
                        {
                           §§push(0);
                           if(_loc12_ && param2)
                           {
                              addr456:
                              if(§§pop() === _loc11_)
                              {
                                 addr458:
                                 §§push(2);
                                 if(!(_loc12_ && _loc3_))
                                 {
                                    addr476:
                                 }
                              }
                              else
                              {
                                 §§push(3);
                              }
                           }
                           addr481:
                           switch(§§pop())
                           {
                              case 0:
                                 _loc3_ = b2Math.§%!C§(param1.R,this.§2d§);
                                 _loc4_ = b2Math.§%!C§(param2.R,this.§2d§.§1"$§());
                                 _loc5_ = this.§>!@§.§>h§(_loc3_);
                                 _loc6_ = this.§3!1§.§>h§(_loc4_);
                                 _loc7_ = b2Math.§>!C§(param1,_loc5_);
                                 §§push((_loc8_ = b2Math.§>!C§(param2,_loc6_)).x);
                                 if(!_loc12_)
                                 {
                                    §§push(_loc7_.x);
                                    if(_loc13_ || _loc3_)
                                    {
                                       §§push(§§pop() - §§pop());
                                       if(_loc13_ || _loc3_)
                                       {
                                          §§push(this.§2d§.x);
                                          if(!(_loc12_ && this))
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(!(_loc12_ && _loc3_))
                                             {
                                                §§push(_loc8_.y);
                                                if(_loc13_)
                                                {
                                                   addr126:
                                                   §§push(_loc7_.y);
                                                   if(!_loc12_)
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                      if(_loc13_ || param2)
                                                      {
                                                         addr141:
                                                         §§push(§§pop() * this.§2d§.y);
                                                         if(_loc13_)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc13_ || _loc3_)
                                                            {
                                                            }
                                                            §§goto(addr162);
                                                         }
                                                      }
                                                      _loc9_ = §§pop();
                                                      §§goto(addr162);
                                                   }
                                                }
                                                §§goto(addr141);
                                             }
                                             §§goto(addr162);
                                          }
                                       }
                                       §§goto(addr162);
                                    }
                                    §§goto(addr126);
                                 }
                                 addr162:
                                 §§push(Number(§§pop()));
                                 if(!(_loc12_ && param1))
                                 {
                                    return §§pop();
                                 }
                              case 1:
                                 _loc10_ = b2Math.§0b§(param1.R,this.§2d§);
                                 _loc7_ = b2Math.§>!C§(param1,this.m_localPoint);
                                 _loc4_ = b2Math.§%!C§(param2.R,_loc10_.§1"$§());
                                 _loc6_ = this.§3!1§.§>h§(_loc4_);
                                 §§push((_loc8_ = b2Math.§>!C§(param2,_loc6_)).x);
                                 if(!_loc12_)
                                 {
                                    §§push(_loc7_.x);
                                    if(!(_loc12_ && this))
                                    {
                                       §§push(§§pop() - §§pop());
                                       if(_loc13_ || _loc3_)
                                       {
                                          addr220:
                                          §§push(_loc10_.x);
                                          if(!_loc12_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(_loc13_)
                                             {
                                                §§push(_loc8_.y);
                                                if(!(_loc12_ && param2))
                                                {
                                                   §§push(_loc7_.y);
                                                   if(_loc13_ || _loc3_)
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                      if(!_loc12_)
                                                      {
                                                         addr260:
                                                         §§push(§§pop() * _loc10_.y);
                                                         if(!(_loc12_ && param1))
                                                         {
                                                            addr268:
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc12_ && this)
                                                            {
                                                            }
                                                            §§goto(addr286);
                                                         }
                                                      }
                                                      _loc9_ = §§pop();
                                                      §§goto(addr286);
                                                   }
                                                   §§goto(addr260);
                                                }
                                                §§goto(addr268);
                                             }
                                             addr286:
                                             §§push(Number(§§pop()));
                                             if(!(_loc12_ && param1))
                                             {
                                                addr284:
                                                return §§pop();
                                             }
                                          }
                                          §§goto(addr268);
                                       }
                                       §§goto(addr284);
                                    }
                                    §§goto(addr268);
                                 }
                                 §§goto(addr220);
                              case 2:
                                 _loc10_ = b2Math.§0b§(param2.R,this.§2d§);
                                 _loc8_ = b2Math.§>!C§(param2,this.m_localPoint);
                                 _loc3_ = b2Math.§%!C§(param1.R,_loc10_.§1"$§());
                                 _loc5_ = this.§>!@§.§>h§(_loc3_);
                                 §§push((_loc7_ = b2Math.§>!C§(param1,_loc5_)).x);
                                 if(!(_loc12_ && _loc3_))
                                 {
                                    §§push(_loc8_.x);
                                    if(!(_loc12_ && param1))
                                    {
                                       §§push(§§pop() - §§pop());
                                       if(_loc13_)
                                       {
                                          §§push(_loc10_.x);
                                          if(!(_loc12_ && this))
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(!_loc12_)
                                             {
                                                §§push(_loc7_.y);
                                                if(_loc13_ || param1)
                                                {
                                                }
                                                addr377:
                                                §§push(§§pop() * _loc10_.y);
                                                if(!_loc12_)
                                                {
                                                   §§goto(addr382);
                                                }
                                                §§goto(addr394);
                                             }
                                             §§goto(addr385);
                                          }
                                          §§push(_loc8_.y);
                                          if(!(_loc12_ && param1))
                                          {
                                             §§push(§§pop() - §§pop());
                                             if(!_loc12_)
                                             {
                                                §§goto(addr377);
                                             }
                                             addr382:
                                             §§push(§§pop() + §§pop());
                                             if(_loc13_)
                                             {
                                                addr385:
                                                §§push(Number(§§pop()));
                                                if(_loc13_ || _loc3_)
                                                {
                                                   addr394:
                                                   §§push(_loc9_ = §§pop());
                                                   if(!_loc13_)
                                                   {
                                                      break;
                                                   }
                                                }
                                             }
                                             return §§pop();
                                          }
                                          §§goto(addr377);
                                       }
                                       break;
                                    }
                                    §§goto(addr377);
                                 }
                                 §§goto(addr385);
                              default:
                                 b2Settings.b2Assert(false);
                           }
                           return 0;
                           addr481:
                        }
                        else
                        {
                           addr449:
                           §§push(1);
                           if(_loc12_)
                           {
                              §§goto(addr476);
                           }
                           §§goto(addr481);
                        }
                        §§goto(addr476);
                     }
                     else
                     {
                        §§push(§1!0§);
                        if(_loc13_ || param2)
                        {
                           addr443:
                           §§push(_loc11_);
                           if(_loc13_)
                           {
                              addr446:
                              if(§§pop() === §§pop())
                              {
                                 if(!_loc12_)
                                 {
                                    §§goto(addr449);
                                 }
                                 else
                                 {
                                    §§goto(addr458);
                                 }
                              }
                              else
                              {
                                 §§push(§7" §);
                                 if(_loc13_)
                                 {
                                    §§goto(addr456);
                                 }
                              }
                              §§goto(addr481);
                           }
                           §§goto(addr456);
                        }
                     }
                     §§goto(addr456);
                  }
                  §§goto(addr446);
               }
               §§goto(addr443);
            }
            §§goto(addr458);
         }
         §§goto(addr481);
      }
   }
}
