package §!4§
{
   import §6A§.b2Mat22;
   import §6A§.b2Math;
   import §6A§.b2Transform;
   import §6A§.b2Vec2;
   import §^P§.b2Settings;
   
   class b2SeparationFunction
   {
      
      public static const §8!U§:int = 1;
      
      public static const §%!"§:int = 2;
      
      public static const §9!M§:int = 4;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §8!U§ = 1;
            while(true)
            {
               §%!"§ = 2;
               loop1:
               while(_loc1_)
               {
                  while(true)
                  {
                     §9!M§ = 4;
                     if(!_loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr61);
      }
      
      public var §2-§:b2DistanceProxy;
      
      public var §7!N§:b2DistanceProxy;
      
      public var §2!]§:int;
      
      public var m_localPoint:b2Vec2;
      
      public var §0G§:b2Vec2;
      
      function b2SeparationFunction()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.m_localPoint = new b2Vec2();
            while(true)
            {
               this.§0G§ = new b2Vec2();
               while(_loc1_)
               {
                  super();
                  if(!(_loc2_ && _loc2_))
                  {
                     return;
                     addr48:
                  }
               }
            }
         }
         §§goto(addr48);
      }
      
      public function §';§(param1:b2SimplexCache, param2:b2DistanceProxy, param3:b2Transform, param4:b2DistanceProxy, param5:b2Transform) : void
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
         §§push(this.§2!]§);
         if(_loc12_)
         {
            var _loc11_:* = §§pop();
            if(!(_loc13_ && this))
            {
               §§push(§8!U§);
               if(!(_loc13_ && param1))
               {
                  §§push(_loc11_);
                  if(_loc12_ || this)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc13_ && this))
                        {
                           addr422:
                           §§push(0);
                           if(_loc13_)
                           {
                              addr457:
                              if(§§pop() === _loc11_)
                              {
                                 addr459:
                                 §§push(2);
                                 if(_loc12_)
                                 {
                                    addr472:
                                 }
                              }
                              else
                              {
                                 §§push(3);
                              }
                           }
                           addr477:
                           switch(§§pop())
                           {
                              case 0:
                                 _loc3_ = b2Math.§`q§(param1.R,this.§0G§);
                                 _loc4_ = b2Math.§`q§(param2.R,this.§0G§.§^!b§());
                                 _loc5_ = this.§2-§.§^;§(_loc3_);
                                 _loc6_ = this.§7!N§.§^;§(_loc4_);
                                 _loc7_ = b2Math.§,p§(param1,_loc5_);
                                 §§push((_loc8_ = b2Math.§,p§(param2,_loc6_)).x);
                                 if(_loc12_)
                                 {
                                    §§push(_loc7_.x);
                                    if(_loc12_)
                                    {
                                       §§push(§§pop() - §§pop());
                                       if(_loc12_ || _loc3_)
                                       {
                                          addr98:
                                          §§push(this.§0G§.x);
                                          if(_loc12_ || this)
                                          {
                                             addr108:
                                             §§push(§§pop() * §§pop());
                                             if(_loc12_)
                                             {
                                                §§push(_loc8_.y);
                                                if(!_loc13_)
                                                {
                                                   addr115:
                                                   §§push(_loc7_.y);
                                                   if(_loc12_)
                                                   {
                                                      §§goto(addr140);
                                                   }
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc12_)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc12_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         if(_loc12_ || param2)
                                                         {
                                                            addr139:
                                                            addr140:
                                                            §§push(§§pop() - §§pop());
                                                            if(_loc12_)
                                                            {
                                                               §§push(this.§0G§.y);
                                                            }
                                                            _loc9_ = §§pop();
                                                            return §§pop();
                                                            §§push(§§pop());
                                                         }
                                                         §§goto(addr140);
                                                      }
                                                      §§goto(addr139);
                                                   }
                                                }
                                                §§goto(addr140);
                                             }
                                             §§goto(addr139);
                                          }
                                          §§goto(addr115);
                                       }
                                       §§goto(addr139);
                                    }
                                    §§goto(addr108);
                                 }
                                 §§goto(addr98);
                              case 1:
                                 _loc10_ = b2Math.§ !$§(param1.R,this.§0G§);
                                 _loc7_ = b2Math.§,p§(param1,this.m_localPoint);
                                 _loc4_ = b2Math.§`q§(param2.R,_loc10_.§^!b§());
                                 _loc6_ = this.§7!N§.§^;§(_loc4_);
                                 §§push((_loc8_ = b2Math.§,p§(param2,_loc6_)).x);
                                 if(_loc12_ || this)
                                 {
                                    §§push(_loc7_.x);
                                    if(_loc12_ || param1)
                                    {
                                       §§push(§§pop() - §§pop());
                                       if(_loc12_)
                                       {
                                          addr199:
                                          §§push(_loc10_.x);
                                          if(!(_loc13_ && _loc3_))
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(!_loc13_)
                                             {
                                                addr211:
                                                §§push(_loc8_.y);
                                                if(!_loc13_)
                                                {
                                                   §§push(_loc7_.y);
                                                   if(_loc12_ || param1)
                                                   {
                                                      §§goto(addr259);
                                                   }
                                                   §§push(§§pop() * §§pop());
                                                   if(!(_loc13_ && _loc3_))
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(!_loc13_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         if(!(_loc13_ && this))
                                                         {
                                                            addr258:
                                                            addr259:
                                                            §§push(§§pop() - §§pop());
                                                            if(!_loc13_)
                                                            {
                                                               addr227:
                                                               §§push(_loc10_.y);
                                                            }
                                                            _loc9_ = §§pop();
                                                            return §§pop();
                                                            §§push(§§pop());
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr259);
                                                }
                                                §§goto(addr227);
                                             }
                                             §§goto(addr258);
                                          }
                                          §§goto(addr259);
                                       }
                                       §§goto(addr211);
                                    }
                                    §§goto(addr259);
                                 }
                                 §§goto(addr199);
                              case 2:
                                 _loc10_ = b2Math.§ !$§(param2.R,this.§0G§);
                                 _loc8_ = b2Math.§,p§(param2,this.m_localPoint);
                                 _loc3_ = b2Math.§`q§(param1.R,_loc10_.§^!b§());
                                 _loc5_ = this.§2-§.§^;§(_loc3_);
                                 §§push((_loc7_ = b2Math.§,p§(param1,_loc5_)).x);
                                 if(!(_loc13_ && param1))
                                 {
                                    §§push(_loc8_.x);
                                    if(_loc12_)
                                    {
                                       §§push(§§pop() - §§pop());
                                       if(_loc12_)
                                       {
                                          §§push(_loc10_.x);
                                          if(_loc12_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(!_loc13_)
                                             {
                                                addr320:
                                                §§push(_loc7_.y);
                                                if(_loc12_ || param2)
                                                {
                                                   addr329:
                                                   §§push(_loc8_.y);
                                                   if(!_loc13_)
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                      if(_loc12_ || this)
                                                      {
                                                         addr343:
                                                         §§push(§§pop() * _loc10_.y);
                                                         if(_loc12_ || this)
                                                         {
                                                            addr351:
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc12_)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               if(_loc13_ && this)
                                                               {
                                                               }
                                                               break;
                                                            }
                                                            §§push(§§pop());
                                                         }
                                                      }
                                                      _loc9_ = §§pop();
                                                      if(!(_loc12_ || this))
                                                      {
                                                         break;
                                                      }
                                                      §§goto(addr371);
                                                   }
                                                   §§goto(addr343);
                                                }
                                                §§goto(addr351);
                                             }
                                             addr371:
                                             return §§pop();
                                          }
                                       }
                                       break;
                                    }
                                    §§goto(addr329);
                                 }
                                 §§goto(addr320);
                              default:
                                 b2Settings.b2Assert(false);
                           }
                           return 0;
                           addr477:
                        }
                        else
                        {
                           addr450:
                           §§push(1);
                           if(!_loc12_)
                           {
                              §§goto(addr472);
                           }
                           §§goto(addr477);
                        }
                        §§goto(addr472);
                     }
                     else
                     {
                        §§push(§%!"§);
                        if(!(_loc13_ && _loc3_))
                        {
                           §§push(_loc11_);
                           if(_loc12_ || param1)
                           {
                              addr442:
                              if(§§pop() === §§pop())
                              {
                                 if(_loc12_ || _loc3_)
                                 {
                                    §§goto(addr450);
                                 }
                                 else
                                 {
                                    §§goto(addr459);
                                 }
                              }
                              else
                              {
                                 §§push(§9!M§);
                                 if(_loc12_)
                                 {
                                    §§goto(addr457);
                                 }
                              }
                              §§goto(addr477);
                           }
                        }
                        §§goto(addr457);
                     }
                  }
                  §§goto(addr442);
               }
               §§goto(addr457);
            }
         }
         §§goto(addr422);
      }
   }
}
