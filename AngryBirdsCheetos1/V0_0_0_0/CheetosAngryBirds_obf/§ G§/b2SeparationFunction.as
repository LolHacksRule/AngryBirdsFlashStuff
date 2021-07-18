package § G§
{
   import §9"§.b2Mat22;
   import §9"§.b2Math;
   import §9"§.b2Transform;
   import §9"§.b2Vec2;
   import §>!@§.b2Settings;
   
   class b2SeparationFunction
   {
      
      public static const §%!8§:int = 1;
      
      public static const §-b§:int = 2;
      
      public static const §3D§:int = 4;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §%!8§ = 1;
            while(true)
            {
               §-b§ = 2;
               §§goto(addr66);
            }
         }
         addr66:
         while(true)
         {
            §3D§ = 4;
            if(!(_loc2_ && _loc1_))
            {
               if(!(_loc2_ && _loc2_))
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public var §?=§:b2DistanceProxy;
      
      public var §8U§:b2DistanceProxy;
      
      public var §3c§:int;
      
      public var m_localPoint:b2Vec2;
      
      public var §&9§:b2Vec2;
      
      function b2SeparationFunction()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.m_localPoint = new b2Vec2();
            while(true)
            {
               this.§&9§ = new b2Vec2();
               while(!(_loc2_ && this))
               {
                  super();
                  if(_loc2_ && this)
                  {
                     continue;
                  }
                  return;
                  addr43:
               }
            }
         }
         §§goto(addr43);
      }
      
      public function §1D§(param1:b2SimplexCache, param2:b2DistanceProxy, param3:b2Transform, param4:b2DistanceProxy, param5:b2Transform) : void
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
         §§push(this.§3c§);
         if(!_loc12_)
         {
            var _loc11_:* = §§pop();
            if(!_loc12_)
            {
               §§push(§%!8§);
               if(_loc13_)
               {
                  §§push(_loc11_);
                  if(_loc13_ || param1)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc12_ && param2))
                        {
                           §§push(0);
                           if(_loc12_)
                           {
                              addr483:
                           }
                        }
                        else
                        {
                           addr465:
                           §§push(2);
                           if(_loc13_ || param2)
                           {
                              §§goto(addr483);
                           }
                        }
                     }
                     else
                     {
                        §§push(§-b§);
                        if(_loc13_ || param1)
                        {
                           §§push(_loc11_);
                           if(!(_loc12_ && param1))
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc13_ || param2)
                                 {
                                    §§push(1);
                                    if(_loc12_ && param1)
                                    {
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr465);
                                 }
                              }
                              else
                              {
                                 §§push(§3D§);
                                 if(!(_loc12_ && this))
                                 {
                                    addr464:
                                    if(§§pop() === _loc11_)
                                    {
                                       §§goto(addr465);
                                    }
                                    else
                                    {
                                       §§push(3);
                                    }
                                 }
                                 §§goto(addr483);
                              }
                              §§goto(addr483);
                           }
                           §§goto(addr464);
                        }
                     }
                     §§goto(addr489);
                  }
                  §§goto(addr464);
               }
               §§goto(addr483);
            }
            §§goto(addr465);
         }
         addr489:
         switch(§§pop())
         {
            case 0:
               _loc3_ = b2Math.§1!F§(param1.R,this.§&9§);
               _loc4_ = b2Math.§1!F§(param2.R,this.§&9§.§<!#§());
               _loc5_ = this.§?=§.§0-§(_loc3_);
               _loc6_ = this.§8U§.§0-§(_loc4_);
               _loc7_ = b2Math.§&B§(param1,_loc5_);
               §§push((_loc8_ = b2Math.§&B§(param2,_loc6_)).x);
               if(_loc13_)
               {
                  §§push(_loc7_.x);
                  if(!_loc12_)
                  {
                     §§push(§§pop() - §§pop());
                     if(!_loc12_)
                     {
                        §§push(this.§&9§.x);
                        if(!(_loc12_ && this))
                        {
                           addr104:
                           §§push(§§pop() * §§pop());
                           if(_loc13_)
                           {
                              §§push(_loc8_.y);
                              if(_loc13_)
                              {
                                 addr111:
                                 §§push(_loc7_.y);
                                 if(!(_loc12_ && param2))
                                 {
                                    addr146:
                                    §§push(§§pop() - §§pop());
                                    if(_loc13_ || param1)
                                    {
                                       §§push(this.§&9§.y);
                                    }
                                    _loc9_ = §§pop();
                                    §§goto(addr147);
                                 }
                                 §§push(§§pop() * §§pop());
                                 if(!_loc12_)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(!_loc12_)
                                    {
                                       §§push(Number(§§pop()));
                                       if(!(_loc12_ && this))
                                       {
                                          addr145:
                                          §§push(§§pop());
                                       }
                                       §§goto(addr147);
                                    }
                                    addr147:
                                    return §§pop();
                                 }
                              }
                           }
                           §§goto(addr146);
                        }
                        §§goto(addr111);
                     }
                     §§goto(addr145);
                  }
                  §§goto(addr104);
               }
               §§goto(addr145);
            case 1:
               _loc10_ = b2Math.§ set§(param1.R,this.§&9§);
               _loc7_ = b2Math.§&B§(param1,this.m_localPoint);
               _loc4_ = b2Math.§1!F§(param2.R,_loc10_.§<!#§());
               _loc6_ = this.§8U§.§0-§(_loc4_);
               §§push((_loc8_ = b2Math.§&B§(param2,_loc6_)).x);
               if(!(_loc12_ && param2))
               {
                  §§push(_loc7_.x);
                  if(!(_loc12_ && param1))
                  {
                     §§push(§§pop() - §§pop());
                     if(_loc13_ || param1)
                     {
                        §§push(_loc10_.x);
                        if(_loc13_ || this)
                        {
                           addr219:
                           §§push(§§pop() * §§pop());
                           if(_loc13_ || this)
                           {
                              §§push(_loc8_.y);
                              if(!(_loc12_ && this))
                              {
                                 addr246:
                                 §§push(_loc7_.y);
                                 if(_loc13_ || param1)
                                 {
                                    addr263:
                                    §§push(§§pop() - §§pop());
                                    if(!_loc12_)
                                    {
                                       §§push(_loc10_.y);
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(!_loc12_)
                                    {
                                       addr266:
                                       §§push(Number(§§pop()));
                                       if(_loc13_ || _loc3_)
                                       {
                                       }
                                       §§goto(addr276);
                                    }
                                    addr276:
                                    return §§pop();
                                    §§push(_loc9_ = §§pop());
                                 }
                                 §§push(§§pop() * §§pop());
                                 if(!_loc13_)
                                 {
                                 }
                              }
                              §§goto(addr263);
                           }
                           §§goto(addr266);
                        }
                        §§goto(addr246);
                     }
                     §§goto(addr266);
                  }
                  §§goto(addr219);
               }
               §§goto(addr266);
            case 2:
               _loc10_ = b2Math.§ set§(param2.R,this.§&9§);
               _loc8_ = b2Math.§&B§(param2,this.m_localPoint);
               _loc3_ = b2Math.§1!F§(param1.R,_loc10_.§<!#§());
               _loc5_ = this.§?=§.§0-§(_loc3_);
               §§push((_loc7_ = b2Math.§&B§(param1,_loc5_)).x);
               if(!_loc12_)
               {
                  §§push(_loc8_.x);
                  if(!_loc12_)
                  {
                     §§push(§§pop() - §§pop());
                     if(!(_loc12_ && param1))
                     {
                        §§push(_loc10_.x);
                        if(!_loc12_)
                        {
                           §§push(§§pop() * §§pop());
                           if(!_loc12_)
                           {
                              §§push(_loc7_.y);
                              if(_loc13_)
                              {
                                 addr340:
                                 §§push(_loc8_.y);
                                 if(!(_loc12_ && param2))
                                 {
                                    §§push(§§pop() - §§pop());
                                    if(_loc13_)
                                    {
                                       addr354:
                                       §§push(§§pop() * _loc10_.y);
                                       if(!_loc13_)
                                       {
                                       }
                                       addr374:
                                       _loc9_ = §§pop();
                                       if(!(_loc13_ || param1))
                                       {
                                          break;
                                       }
                                       §§goto(addr382);
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(!(_loc12_ && param1))
                                    {
                                       addr365:
                                       §§push(Number(§§pop()));
                                       if(!(_loc12_ && param2))
                                       {
                                          addr373:
                                          §§goto(addr374);
                                          §§push(§§pop());
                                       }
                                    }
                                    §§goto(addr382);
                                 }
                              }
                              §§goto(addr354);
                           }
                           §§goto(addr373);
                        }
                        §§goto(addr354);
                     }
                     §§goto(addr365);
                  }
                  §§goto(addr340);
               }
               addr382:
               return §§pop();
            default:
               b2Settings.b2Assert(false);
         }
         return 0;
      }
   }
}
