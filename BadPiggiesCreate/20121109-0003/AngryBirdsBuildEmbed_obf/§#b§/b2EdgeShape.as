package §#b§
{
   import §'!;§.b2AABB;
   import §'!;§.b2RayCastInput;
   import §'!;§.b2RayCastOutput;
   import §<!B§.b2Mat22;
   import §<!B§.b2Math;
   import §<!B§.b2Transform;
   import §<!B§.b2Vec2;
   import §?s§.b2Settings;
   import §?s§.b2internal;
   
   use namespace b2internal;
   
   public class b2EdgeShape extends b2Shape
   {
       
      
      private var §&!9§:b2Vec2;
      
      b2internal var m_v1:b2Vec2;
      
      b2internal var m_v2:b2Vec2;
      
      b2internal var m_coreV1:b2Vec2;
      
      b2internal var m_coreV2:b2Vec2;
      
      b2internal var §"?§:Number;
      
      b2internal var §<!S§:b2Vec2;
      
      b2internal var §@O§:b2Vec2;
      
      b2internal var m_cornerDir1:b2Vec2;
      
      b2internal var m_cornerDir2:b2Vec2;
      
      b2internal var m_cornerConvex1:Boolean;
      
      b2internal var m_cornerConvex2:Boolean;
      
      b2internal var §-!v§:b2EdgeShape;
      
      b2internal var § !W§:b2EdgeShape;
      
      public function b2EdgeShape(param1:b2Vec2, param2:b2Vec2)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         this.§&!9§ = new b2Vec2();
         if(_loc3_)
         {
            this.m_v1 = new b2Vec2();
            if(_loc3_ || this)
            {
               this.m_v2 = new b2Vec2();
               if(!_loc4_)
               {
                  this.m_coreV1 = new b2Vec2();
                  this.m_coreV2 = new b2Vec2();
                  if(!_loc4_)
                  {
                     this.§<!S§ = new b2Vec2();
                     if(!_loc4_)
                     {
                        this.§@O§ = new b2Vec2();
                        this.m_cornerDir1 = new b2Vec2();
                        if(_loc3_)
                        {
                           addr65:
                           this.m_cornerDir2 = new b2Vec2();
                           if(_loc3_)
                           {
                              addr71:
                              super();
                              §5!Z§ = b2internal::<5;
                              if(_loc3_)
                              {
                                 this.§ !W§ = null;
                                 if(_loc3_)
                                 {
                                    addr83:
                                    this.§-!v§ = null;
                                    if(_loc3_ || this)
                                    {
                                       this.m_v1 = param1;
                                       if(_loc3_)
                                       {
                                          addr98:
                                          this.m_v2 = param2;
                                          §§push(this.§@O§);
                                          §§push(this.m_v2.x);
                                          if(_loc3_)
                                          {
                                             §§push(this.m_v1.x);
                                             if(_loc3_)
                                             {
                                                addr114:
                                                §§push(§§pop() - §§pop());
                                                §§push(this.m_v2.y);
                                                if(!(_loc4_ && param2))
                                                {
                                                   addr124:
                                                   §§push(§§pop() - this.m_v1.y);
                                                }
                                                §§pop().Set(§§pop(),§§pop());
                                                this.§"?§ = this.§@O§.Normalize();
                                                if(_loc3_ || this)
                                                {
                                                   addr141:
                                                   §§push(this.§<!S§);
                                                   §§push(this.§@O§.y);
                                                   §§push(this.§@O§.x);
                                                   if(_loc3_ || this)
                                                   {
                                                      §§push(-§§pop());
                                                   }
                                                   §§pop().Set(§§pop(),§§pop());
                                                   §§push(this.m_coreV1);
                                                   §§push(b2Settings.b2_toiSlop);
                                                   if(!_loc4_)
                                                   {
                                                      §§push(-§§pop());
                                                      if(!(_loc4_ && _loc3_))
                                                      {
                                                         §§push(this.§<!S§.x);
                                                         if(!_loc4_)
                                                         {
                                                            §§push(this.§@O§.x);
                                                            if(_loc3_)
                                                            {
                                                               addr193:
                                                               §§push(§§pop() * (§§pop() - §§pop()));
                                                               if(_loc3_ || this)
                                                               {
                                                                  §§push(this.m_v1.x);
                                                                  if(_loc3_ || this)
                                                                  {
                                                                     addr212:
                                                                     §§push(§§pop() + §§pop());
                                                                     §§push(b2Settings.b2_toiSlop);
                                                                     if(_loc3_)
                                                                     {
                                                                        §§push(-§§pop());
                                                                     }
                                                                     §§push(this.§<!S§.y);
                                                                     if(!(_loc4_ && _loc3_))
                                                                     {
                                                                        §§push(§§pop() - this.§@O§.y);
                                                                        if(!_loc4_)
                                                                        {
                                                                           addr245:
                                                                           addr233:
                                                                           §§push(§§pop() * §§pop());
                                                                           if(_loc3_ || this)
                                                                           {
                                                                              §§push(this.m_v1.y);
                                                                           }
                                                                           §§pop().Set(§§pop(),§§pop());
                                                                           §§push(this.m_coreV2);
                                                                           §§push(b2Settings.b2_toiSlop);
                                                                           if(!_loc4_)
                                                                           {
                                                                              §§push(-§§pop());
                                                                              if(!(_loc4_ && _loc3_))
                                                                              {
                                                                                 §§push(this.§<!S§.x);
                                                                                 §§push(this.§@O§.x);
                                                                                 if(_loc3_ || param2)
                                                                                 {
                                                                                    §§push(§§pop() * (§§pop() + §§pop()));
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       addr277:
                                                                                       §§push(this.m_v2.x);
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          addr283:
                                                                                          §§push(§§pop() + §§pop());
                                                                                          §§push(b2Settings.b2_toiSlop);
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             §§push(-§§pop());
                                                                                             if(_loc3_ || this)
                                                                                             {
                                                                                                §§push(this.§<!S§.y);
                                                                                                if(!(_loc4_ && _loc3_))
                                                                                                {
                                                                                                   addr305:
                                                                                                   §§push(§§pop() + this.§@O§.y);
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      §§goto(addr318);
                                                                                                   }
                                                                                                }
                                                                                                §§push(§§pop() + §§pop());
                                                                                             }
                                                                                             addr318:
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                addr314:
                                                                                                §§push(this.m_v2.y);
                                                                                             }
                                                                                             §§pop().Set(§§pop(),§§pop());
                                                                                             if(_loc3_ || this)
                                                                                             {
                                                                                                this.m_cornerDir1 = this.§<!S§;
                                                                                                if(_loc3_ || param2)
                                                                                                {
                                                                                                   §§push(this.m_cornerDir2);
                                                                                                   §§push(this.§<!S§.x);
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      §§push(-§§pop());
                                                                                                   }
                                                                                                   §§push(this.§<!S§.y);
                                                                                                   if(!(_loc4_ && this))
                                                                                                   {
                                                                                                      §§push(-§§pop());
                                                                                                   }
                                                                                                   §§pop().Set(§§pop(),§§pop());
                                                                                                }
                                                                                             }
                                                                                             return;
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr314);
                                                                                    }
                                                                                    §§goto(addr283);
                                                                                 }
                                                                                 §§goto(addr305);
                                                                              }
                                                                              §§goto(addr283);
                                                                           }
                                                                           §§goto(addr277);
                                                                        }
                                                                     }
                                                                     §§push(§§pop() + §§pop());
                                                                  }
                                                                  §§goto(addr245);
                                                               }
                                                               §§goto(addr212);
                                                            }
                                                            §§goto(addr233);
                                                         }
                                                         §§goto(addr193);
                                                      }
                                                   }
                                                   §§goto(addr212);
                                                }
                                                §§goto(addr245);
                                             }
                                             §§goto(addr124);
                                          }
                                          §§goto(addr114);
                                       }
                                    }
                                    §§goto(addr245);
                                 }
                                 §§goto(addr114);
                              }
                              §§goto(addr141);
                           }
                           §§goto(addr83);
                        }
                        §§goto(addr98);
                     }
                     §§goto(addr141);
                  }
                  §§goto(addr65);
               }
            }
            §§goto(addr71);
         }
         §§goto(addr65);
      }
      
      override public function TestPoint(param1:b2Transform, param2:b2Vec2) : Boolean
      {
         return false;
      }
      
      override public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput, param3:b2Transform) : Boolean
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 684
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      override public function ComputeAABB(param1:b2AABB, param2:b2Transform) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc3_:b2Mat22 = param2.R;
         if(!(_loc9_ && param2))
         {
            §§push(param2.position);
            if(!_loc9_)
            {
               §§push(§§pop().x);
               §§push(_loc3_.col1);
               if(!(_loc9_ && this))
               {
                  §§push(§§pop().x);
                  §§push(this.m_v1);
                  if(!_loc9_)
                  {
                     §§push(§§pop().x);
                     if(_loc8_)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc8_ || param1)
                        {
                           §§push(_loc3_.col2);
                           if(!_loc9_)
                           {
                              §§push(§§pop().x);
                              if(!(_loc9_ && this))
                              {
                                 §§push(this.m_v1);
                                 if(_loc8_)
                                 {
                                    §§push(§§pop().y);
                                    if(_loc8_)
                                    {
                                       addr85:
                                       §§push(Number(§§pop() + (§§pop() + §§pop() * §§pop())));
                                       if(!_loc9_)
                                       {
                                          _loc4_ = §§pop();
                                          if(!(_loc9_ && param1))
                                          {
                                             addr98:
                                             §§push(param2.position);
                                             if(!_loc9_)
                                             {
                                                §§push(§§pop().y);
                                                if(_loc8_)
                                                {
                                                   §§push(_loc3_.col1);
                                                   if(_loc8_)
                                                   {
                                                      addr112:
                                                      §§push(§§pop().y);
                                                      §§push(this.m_v1.x);
                                                      if(!_loc9_)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(!_loc9_)
                                                         {
                                                            §§push(_loc3_.col2);
                                                            if(_loc8_ || this)
                                                            {
                                                               addr130:
                                                               §§push(§§pop().y);
                                                               §§push(this.m_v1.y);
                                                               if(_loc8_)
                                                               {
                                                                  addr134:
                                                                  §§push(§§pop() + §§pop() * §§pop());
                                                                  if(_loc8_ || param2)
                                                                  {
                                                                     _loc5_ = §§pop() + §§pop();
                                                                     if(!(_loc9_ && _loc3_))
                                                                     {
                                                                        §§push(param2.position);
                                                                        if(_loc8_ || param1)
                                                                        {
                                                                           addr161:
                                                                           §§push(§§pop().x);
                                                                           if(_loc8_ || param2)
                                                                           {
                                                                              §§push(_loc3_.col1);
                                                                              if(!(_loc9_ && param1))
                                                                              {
                                                                                 §§push(§§pop().x);
                                                                                 §§push(this.m_v2);
                                                                                 if(_loc8_)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop().x);
                                                                                    §§push(_loc3_.col2);
                                                                                    if(_loc8_ || param1)
                                                                                    {
                                                                                       addr204:
                                                                                       §§push(§§pop().x);
                                                                                       if(!(_loc9_ && _loc3_))
                                                                                       {
                                                                                          §§push(this.m_v2);
                                                                                          if(!(_loc9_ && param1))
                                                                                          {
                                                                                             §§push(§§pop().y);
                                                                                             if(!_loc9_)
                                                                                             {
                                                                                                addr224:
                                                                                                §§push(§§pop() + (§§pop() + §§pop() * §§pop()));
                                                                                                if(!(_loc9_ && _loc3_))
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                   if(!_loc9_)
                                                                                                   {
                                                                                                      _loc6_ = §§pop();
                                                                                                      if(!_loc9_)
                                                                                                      {
                                                                                                         addr242:
                                                                                                         §§push(param2.position.y);
                                                                                                         if(!_loc9_)
                                                                                                         {
                                                                                                            addr245:
                                                                                                            §§push(_loc3_.col1.y * this.m_v2.x);
                                                                                                            if(!_loc9_)
                                                                                                            {
                                                                                                               addr256:
                                                                                                               §§push(_loc3_.col2.y);
                                                                                                               if(!_loc9_)
                                                                                                               {
                                                                                                                  addr263:
                                                                                                                  §§push(§§pop() + §§pop() * this.m_v2.y);
                                                                                                                  if(_loc8_)
                                                                                                                  {
                                                                                                                     §§push(Number(§§pop() + §§pop()));
                                                                                                                     if(_loc8_)
                                                                                                                     {
                                                                                                                        addr270:
                                                                                                                        _loc7_ = §§pop();
                                                                                                                        §§push(_loc4_);
                                                                                                                        §§push(_loc6_);
                                                                                                                        if(_loc8_)
                                                                                                                        {
                                                                                                                           addr275:
                                                                                                                           if(§§pop() < §§pop())
                                                                                                                           {
                                                                                                                              if(_loc8_)
                                                                                                                              {
                                                                                                                                 addr278:
                                                                                                                                 §§push(param1.§ !d§);
                                                                                                                                 if(_loc8_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc4_);
                                                                                                                                    if(_loc8_ || param1)
                                                                                                                                    {
                                                                                                                                       §§pop().x = §§pop();
                                                                                                                                       §§push(param1.§=!j§);
                                                                                                                                       if(_loc8_ || param1)
                                                                                                                                       {
                                                                                                                                          §§push(_loc6_);
                                                                                                                                          if(_loc8_ || param1)
                                                                                                                                          {
                                                                                                                                             §§pop().x = §§pop();
                                                                                                                                             addr338:
                                                                                                                                             if(_loc5_ < _loc7_)
                                                                                                                                             {
                                                                                                                                                addr341:
                                                                                                                                                §§push(param1.§ !d§);
                                                                                                                                                if(!_loc9_)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc5_);
                                                                                                                                                   if(_loc8_)
                                                                                                                                                   {
                                                                                                                                                      addr348:
                                                                                                                                                      §§pop().y = §§pop();
                                                                                                                                                      §§push(param1.§=!j§);
                                                                                                                                                      if(_loc8_ || _loc3_)
                                                                                                                                                      {
                                                                                                                                                         addr368:
                                                                                                                                                         §§push(_loc7_);
                                                                                                                                                         if(!_loc9_)
                                                                                                                                                         {
                                                                                                                                                            §§pop().y = §§pop();
                                                                                                                                                            if(_loc8_ || this)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr395);
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               addr393:
                                                                                                                                                               §§push(param1.§=!j§);
                                                                                                                                                               §§push(_loc5_);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr395);
                                                                                                                                                         }
                                                                                                                                                         §§pop().y = §§pop();
                                                                                                                                                         §§goto(addr395);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr393);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      addr383:
                                                                                                                                                      §§pop().y = §§pop();
                                                                                                                                                      if(!(_loc9_ && param2))
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr393);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   addr395:
                                                                                                                                                   return;
                                                                                                                                                }
                                                                                                                                                addr382:
                                                                                                                                                §§push(_loc7_);
                                                                                                                                                §§goto(addr383);
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§goto(addr382);
                                                                                                                                                §§push(param1.§ !d§);
                                                                                                                                             }
                                                                                                                                             §§goto(addr382);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             addr335:
                                                                                                                                             §§pop().x = §§pop();
                                                                                                                                             if(_loc8_)
                                                                                                                                             {
                                                                                                                                                §§goto(addr338);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr393);
                                                                                                                                       }
                                                                                                                                       §§goto(addr368);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    addr319:
                                                                                                                                    §§push(_loc6_);
                                                                                                                                    if(_loc8_)
                                                                                                                                    {
                                                                                                                                       §§pop().x = §§pop();
                                                                                                                                       §§push(param1.§=!j§);
                                                                                                                                       if(_loc8_ || param1)
                                                                                                                                       {
                                                                                                                                          §§push(_loc4_);
                                                                                                                                          if(!_loc9_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr335);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr368);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr348);
                                                                                                                              }
                                                                                                                              §§goto(addr338);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§push(param1.§ !d§);
                                                                                                                              if(_loc8_ || param2)
                                                                                                                              {
                                                                                                                                 §§goto(addr319);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr382);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr338);
                                                                                                                  }
                                                                                                                  §§goto(addr275);
                                                                                                               }
                                                                                                               §§goto(addr263);
                                                                                                            }
                                                                                                            §§goto(addr338);
                                                                                                         }
                                                                                                         §§goto(addr270);
                                                                                                      }
                                                                                                      §§goto(addr348);
                                                                                                   }
                                                                                                   §§goto(addr270);
                                                                                                }
                                                                                                §§goto(addr245);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr263);
                                                                                       }
                                                                                       §§goto(addr245);
                                                                                    }
                                                                                    §§goto(addr256);
                                                                                 }
                                                                              }
                                                                              §§goto(addr245);
                                                                           }
                                                                           §§goto(addr270);
                                                                        }
                                                                        §§goto(addr242);
                                                                     }
                                                                     §§goto(addr341);
                                                                  }
                                                                  §§goto(addr338);
                                                               }
                                                               §§goto(addr224);
                                                            }
                                                            §§goto(addr204);
                                                         }
                                                         §§goto(addr275);
                                                      }
                                                      §§goto(addr263);
                                                   }
                                                   §§goto(addr245);
                                                }
                                                §§goto(addr270);
                                             }
                                             §§goto(addr242);
                                          }
                                          §§goto(addr278);
                                       }
                                       §§goto(addr270);
                                    }
                                    §§goto(addr224);
                                 }
                                 §§goto(addr130);
                              }
                              §§goto(addr134);
                           }
                           §§goto(addr256);
                        }
                        §§goto(addr224);
                     }
                     §§goto(addr85);
                  }
                  §§goto(addr112);
               }
               §§goto(addr245);
            }
            §§goto(addr161);
         }
         §§goto(addr98);
      }
      
      override public function ComputeMass(param1:b2MassData, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            param1.§3!^§ = 0;
            if(!(_loc4_ && _loc3_))
            {
               param1.center.SetV(this.m_v1);
               if(_loc4_ && param2)
               {
               }
               §§goto(addr53);
            }
            param1.§=!'§ = 0;
         }
         addr53:
      }
      
      override public function ComputeSubmergedArea(param1:b2Vec2, param2:Number, param3:b2Transform, param4:b2Vec2) : Number
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1.x);
         if(!(_loc11_ && this))
         {
            §§push(param2);
            if(!_loc11_)
            {
               addr30:
               §§push(§§pop() * §§pop());
               §§push(param1.y);
               if(_loc10_ || param1)
               {
                  §§push(§§pop() * param2);
               }
            }
            var _loc5_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
            var _loc6_:b2Vec2 = b2Math.§#!N§(param3,this.m_v1);
            var _loc7_:b2Vec2 = b2Math.§#!N§(param3,this.m_v2);
            §§push(b2Math.§9!;§(param1,_loc6_));
            if(_loc10_)
            {
               §§push(§§pop() - param2);
               if(!(_loc11_ && param2))
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc8_:* = §§pop();
            §§push(b2Math.§9!;§(param1,_loc7_));
            if(_loc10_ || param1)
            {
               §§push(§§pop() - param2);
               if(_loc10_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc9_:* = §§pop();
            if(_loc10_ || this)
            {
               §§push(_loc8_);
               if(_loc10_ || param1)
               {
                  §§push(0);
                  if(_loc10_)
                  {
                     if(§§pop() > §§pop())
                     {
                        §§push(_loc9_);
                        if(_loc10_)
                        {
                           addr114:
                           §§push(0);
                           if(!(_loc11_ && param3))
                           {
                              if(§§pop() > §§pop())
                              {
                                 return 0;
                              }
                              §§push(_loc6_);
                              §§push(_loc9_);
                              if(!_loc11_)
                              {
                                 §§push(-§§pop());
                                 if(!(_loc11_ && param3))
                                 {
                                    §§push(_loc8_);
                                    if(!_loc11_)
                                    {
                                       §§push(_loc9_);
                                       if(_loc10_)
                                       {
                                          §§push(§§pop() - §§pop());
                                          if(!_loc11_)
                                          {
                                             §§push(§§pop() / §§pop());
                                             if(_loc10_)
                                             {
                                                addr156:
                                                §§push(_loc6_.x);
                                                if(!(_loc11_ && param1))
                                                {
                                                   addr165:
                                                   §§push(§§pop() * §§pop());
                                                   if(!_loc11_)
                                                   {
                                                      addr168:
                                                      §§push(_loc8_);
                                                      if(_loc10_)
                                                      {
                                                         addr171:
                                                         §§push(_loc8_);
                                                         if(_loc10_)
                                                         {
                                                            addr174:
                                                            §§push(§§pop() - _loc9_);
                                                            if(!(_loc11_ && param2))
                                                            {
                                                               addr189:
                                                               §§push(§§pop() / §§pop());
                                                               if(!_loc11_)
                                                               {
                                                                  addr186:
                                                                  §§push(_loc7_.x);
                                                               }
                                                               §§pop().x = §§pop() + §§pop();
                                                               §§push(_loc6_);
                                                               §§push(_loc9_);
                                                               if(!_loc11_)
                                                               {
                                                                  §§push(-§§pop());
                                                                  if(_loc10_ || param3)
                                                                  {
                                                                     §§push(_loc8_);
                                                                     if(_loc10_ || param1)
                                                                     {
                                                                        §§push(_loc9_);
                                                                        if(!_loc11_)
                                                                        {
                                                                           §§push(§§pop() - §§pop());
                                                                           if(!(_loc11_ && this))
                                                                           {
                                                                              addr222:
                                                                              §§push(§§pop() / §§pop());
                                                                              if(!_loc11_)
                                                                              {
                                                                                 addr225:
                                                                                 §§push(_loc6_.y);
                                                                                 if(!(_loc11_ && param2))
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(_loc10_)
                                                                                    {
                                                                                       addr237:
                                                                                       §§push(_loc8_);
                                                                                       if(_loc10_ || param2)
                                                                                       {
                                                                                          §§push(_loc8_);
                                                                                          if(!(_loc11_ && param1))
                                                                                          {
                                                                                             §§push(§§pop() - _loc9_);
                                                                                             if(!_loc10_)
                                                                                             {
                                                                                             }
                                                                                             addr269:
                                                                                             §§pop().y = §§pop() + §§pop() * §§pop();
                                                                                             addr268:
                                                                                             if(_loc10_)
                                                                                             {
                                                                                                §§goto(addr421);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr357:
                                                                                                §§push(_loc7_);
                                                                                                §§push(_loc9_);
                                                                                                if(!(_loc11_ && param3))
                                                                                                {
                                                                                                   §§push(-§§pop());
                                                                                                   if(_loc10_ || param3)
                                                                                                   {
                                                                                                      addr374:
                                                                                                      §§push(_loc8_);
                                                                                                      if(!_loc11_)
                                                                                                      {
                                                                                                         §§push(_loc9_);
                                                                                                         if(_loc10_)
                                                                                                         {
                                                                                                            §§push(§§pop() - §§pop());
                                                                                                            if(_loc10_)
                                                                                                            {
                                                                                                               addr383:
                                                                                                               §§push(§§pop() / §§pop());
                                                                                                               if(!_loc11_)
                                                                                                               {
                                                                                                                  §§push(_loc6_.y);
                                                                                                                  if(!_loc11_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     if(!(_loc11_ && param2))
                                                                                                                     {
                                                                                                                        §§push(_loc8_);
                                                                                                                        if(!_loc11_)
                                                                                                                        {
                                                                                                                           §§push(_loc8_);
                                                                                                                           if(_loc10_ || param1)
                                                                                                                           {
                                                                                                                              §§push(§§pop() - _loc9_);
                                                                                                                              if(!_loc11_)
                                                                                                                              {
                                                                                                                                 §§goto(addr419);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr419:
                                                                                                                           §§push(§§pop() / §§pop());
                                                                                                                           if(_loc10_)
                                                                                                                           {
                                                                                                                              addr416:
                                                                                                                              §§push(_loc7_.y);
                                                                                                                           }
                                                                                                                           §§pop().y = §§pop() + §§pop();
                                                                                                                           addr421:
                                                                                                                           §§push(param4);
                                                                                                                           §§push(_loc5_.x);
                                                                                                                           if(!_loc11_)
                                                                                                                           {
                                                                                                                              §§push(_loc6_.x);
                                                                                                                              if(!(_loc11_ && this))
                                                                                                                              {
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                 if(_loc10_ || param3)
                                                                                                                                 {
                                                                                                                                    §§goto(addr445);
                                                                                                                                 }
                                                                                                                                 §§goto(addr453);
                                                                                                                              }
                                                                                                                              §§goto(addr445);
                                                                                                                           }
                                                                                                                           addr445:
                                                                                                                           §§push(§§pop() + _loc7_.x);
                                                                                                                           if(_loc10_ || param1)
                                                                                                                           {
                                                                                                                              addr453:
                                                                                                                              §§push(§§pop() / 3);
                                                                                                                           }
                                                                                                                           §§pop().x = §§pop();
                                                                                                                           if(_loc10_ || param1)
                                                                                                                           {
                                                                                                                              §§push(param4);
                                                                                                                              §§push(_loc5_.y);
                                                                                                                              if(!(_loc11_ && param3))
                                                                                                                              {
                                                                                                                                 §§push(_loc6_.y);
                                                                                                                                 if(_loc10_)
                                                                                                                                 {
                                                                                                                                    §§goto(addr492);
                                                                                                                                 }
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                 if(_loc10_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() / 3);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr492);
                                                                                                                           }
                                                                                                                           addr492:
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           if(_loc10_ || this)
                                                                                                                           {
                                                                                                                              §§push(_loc7_.y);
                                                                                                                           }
                                                                                                                           §§pop().y = §§pop();
                                                                                                                           §§push(0.5);
                                                                                                                           if(_loc10_)
                                                                                                                           {
                                                                                                                              addr496:
                                                                                                                              §§push(_loc6_.x);
                                                                                                                              if(!(_loc11_ && param1))
                                                                                                                              {
                                                                                                                                 §§push(_loc5_.x);
                                                                                                                                 if(!_loc11_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() - §§pop());
                                                                                                                                    if(_loc10_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc7_.y);
                                                                                                                                       if(!_loc11_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc5_.y);
                                                                                                                                          if(!(_loc11_ && param1))
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() - §§pop());
                                                                                                                                             if(!(_loc11_ && this))
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                if(!_loc11_)
                                                                                                                                                {
                                                                                                                                                   addr546:
                                                                                                                                                   §§push(_loc6_.y);
                                                                                                                                                   if(!_loc11_)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc5_.y);
                                                                                                                                                      if(!(_loc11_ && param1))
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                         if(!_loc10_)
                                                                                                                                                         {
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr570);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr570);
                                                                                                                                          }
                                                                                                                                          §§goto(addr566);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr570);
                                                                                                                              }
                                                                                                                              §§goto(addr546);
                                                                                                                           }
                                                                                                                           addr570:
                                                                                                                           §§push(_loc7_.x);
                                                                                                                           if(_loc10_)
                                                                                                                           {
                                                                                                                              addr566:
                                                                                                                              §§push(§§pop() - _loc5_.x);
                                                                                                                           }
                                                                                                                           return §§pop() * (§§pop() - §§pop() * §§pop());
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr419);
                                                                                                                  }
                                                                                                                  §§goto(addr416);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr419);
                                                                                                      }
                                                                                                      §§goto(addr383);
                                                                                                   }
                                                                                                   §§goto(addr419);
                                                                                                }
                                                                                                §§goto(addr374);
                                                                                             }
                                                                                          }
                                                                                          §§push(§§pop() / §§pop());
                                                                                          if(_loc10_ || param2)
                                                                                          {
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr268);
                                                                                       §§push(_loc7_.y);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr268);
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr269);
                                                                     }
                                                                     §§goto(addr222);
                                                                  }
                                                                  §§goto(addr237);
                                                               }
                                                               §§goto(addr225);
                                                            }
                                                         }
                                                         §§goto(addr189);
                                                         §§push(§§pop() * §§pop());
                                                      }
                                                      §§goto(addr186);
                                                   }
                                                   §§goto(addr189);
                                                }
                                                §§goto(addr171);
                                             }
                                             §§goto(addr168);
                                          }
                                          §§goto(addr189);
                                       }
                                       §§goto(addr174);
                                    }
                                    §§goto(addr165);
                                 }
                              }
                              §§goto(addr156);
                           }
                           else
                           {
                              addr287:
                              if(§§pop() > §§pop())
                              {
                                 §§push(_loc7_);
                                 §§push(_loc9_);
                                 if(!(_loc11_ && param1))
                                 {
                                    §§push(-§§pop());
                                    if(_loc10_)
                                    {
                                       §§push(_loc8_);
                                       if(!(_loc11_ && param1))
                                       {
                                          §§push(_loc9_);
                                          if(_loc10_)
                                          {
                                             §§push(§§pop() - §§pop());
                                             if(!_loc11_)
                                             {
                                                addr314:
                                                §§push(§§pop() / §§pop());
                                                if(!(_loc11_ && param1))
                                                {
                                                   addr322:
                                                   §§push(_loc6_.x);
                                                   if(_loc10_ || this)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc10_)
                                                      {
                                                         addr334:
                                                         §§push(_loc8_);
                                                         if(!_loc11_)
                                                         {
                                                            §§push(_loc8_);
                                                            if(_loc10_)
                                                            {
                                                               §§push(§§pop() - _loc9_);
                                                               if(_loc10_)
                                                               {
                                                                  addr355:
                                                                  §§push(§§pop() / §§pop());
                                                                  if(!(_loc11_ && this))
                                                                  {
                                                                     addr352:
                                                                     §§push(_loc7_.x);
                                                                  }
                                                                  §§pop().x = §§pop() + §§pop();
                                                                  §§goto(addr357);
                                                               }
                                                            }
                                                            §§push(§§pop() * §§pop());
                                                         }
                                                      }
                                                      §§goto(addr355);
                                                   }
                                                   §§goto(addr352);
                                                }
                                                §§goto(addr334);
                                             }
                                             §§goto(addr352);
                                          }
                                          §§goto(addr355);
                                       }
                                       §§goto(addr314);
                                    }
                                 }
                                 §§goto(addr322);
                              }
                           }
                           §§goto(addr421);
                        }
                        §§goto(addr496);
                     }
                     else
                     {
                        §§push(_loc9_);
                        if(!_loc11_)
                        {
                           §§goto(addr287);
                           §§push(0);
                        }
                     }
                     §§goto(addr570);
                  }
                  §§goto(addr287);
               }
               §§goto(addr114);
            }
            §§goto(addr492);
         }
         §§goto(addr30);
      }
      
      public function §`!U§() : Number
      {
         return this.§"?§;
      }
      
      public function GetVertex1() : b2Vec2
      {
         return this.m_v1;
      }
      
      public function GetVertex2() : b2Vec2
      {
         return this.m_v2;
      }
      
      public function GetCoreVertex1() : b2Vec2
      {
         return this.m_coreV1;
      }
      
      public function GetCoreVertex2() : b2Vec2
      {
         return this.m_coreV2;
      }
      
      public function §2l§() : b2Vec2
      {
         return this.§<!S§;
      }
      
      public function §[p§() : b2Vec2
      {
         return this.§@O§;
      }
      
      public function GetCorner1Vector() : b2Vec2
      {
         return this.m_cornerDir1;
      }
      
      public function GetCorner2Vector() : b2Vec2
      {
         return this.m_cornerDir2;
      }
      
      public function Corner1IsConvex() : Boolean
      {
         return this.m_cornerConvex1;
      }
      
      public function Corner2IsConvex() : Boolean
      {
         return this.m_cornerConvex2;
      }
      
      public function §@!P§(param1:b2Transform) : b2Vec2
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:b2Mat22 = param1.R;
         §§push(§§findproperty(b2Vec2));
         §§push(param1.position.x);
         if(!_loc3_)
         {
            §§push(_loc2_.col1.x);
            if(_loc4_ || param1)
            {
               §§push(this.m_coreV1.x);
               if(!_loc3_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc4_)
                  {
                     §§push(_loc2_.col2.x);
                     if(!(_loc3_ && _loc3_))
                     {
                        addr55:
                        §§push(this.m_coreV1);
                        if(!(_loc3_ && this))
                        {
                           §§push(§§pop().y);
                           if(_loc4_)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc4_ || _loc3_)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(_loc4_)
                                 {
                                    addr88:
                                    addr89:
                                    §§push(§§pop() + §§pop());
                                    §§push(param1.position.y);
                                    if(_loc3_)
                                    {
                                    }
                                    §§goto(addr143);
                                 }
                                 §§push(_loc2_.col1.y);
                                 if(_loc4_ || _loc3_)
                                 {
                                    addr116:
                                    §§push(this.m_coreV1.x);
                                    if(!(_loc3_ && param1))
                                    {
                                       addr142:
                                       §§push(§§pop() * §§pop());
                                       if(_loc4_)
                                       {
                                          §§push(_loc2_.col2.y);
                                          if(!(_loc3_ && this))
                                          {
                                             §§push(§§pop() * this.m_coreV1.y);
                                          }
                                       }
                                       addr143:
                                       return new §§pop().b2Vec2(§§pop(),§§pop());
                                       §§push(§§pop() + §§pop());
                                    }
                                 }
                              }
                           }
                           §§goto(addr142);
                           §§push(§§pop() + §§pop());
                        }
                        §§goto(addr116);
                     }
                     §§goto(addr142);
                  }
                  §§goto(addr143);
               }
               §§goto(addr55);
            }
            §§goto(addr88);
         }
         §§goto(addr89);
      }
      
      public function §]!d§() : b2EdgeShape
      {
         return this.§-!v§;
      }
      
      public function §5!+§() : b2EdgeShape
      {
         return this.§ !W§;
      }
      
      public function §-&§(param1:b2Transform, param2:Number, param3:Number) : b2Vec2
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:b2Mat22 = param1.R;
         §§push(param1.position.x);
         if(!_loc9_)
         {
            §§push(_loc4_.col1.x);
            if(_loc10_)
            {
               §§push(this.m_coreV1.x);
               if(!(_loc9_ && param2))
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc9_ && param2))
                  {
                     addr49:
                     §§push(_loc4_.col2.x);
                     if(!_loc9_)
                     {
                        addr58:
                        §§push(§§pop() + §§pop() * this.m_coreV1.y);
                     }
                     §§goto(addr58);
                  }
                  §§push(§§pop() + §§pop());
                  if(!(_loc9_ && param1))
                  {
                     addr67:
                     §§push(Number(§§pop()));
                  }
                  var _loc5_:* = §§pop();
                  §§push(param1.position.y);
                  if(_loc10_)
                  {
                     §§push(_loc4_.col1.y);
                     if(!(_loc9_ && param3))
                     {
                        §§push(this.m_coreV1.x);
                        if(_loc10_ || param2)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc10_ || param2)
                           {
                              addr102:
                              §§push(_loc4_.col2.y);
                              if(_loc10_)
                              {
                                 addr111:
                                 §§push(§§pop() + §§pop() * this.m_coreV1.y);
                              }
                              §§goto(addr111);
                           }
                           §§push(§§pop() + §§pop());
                           if(!_loc9_)
                           {
                              addr116:
                              var _loc6_:Number = §§pop();
                              §§push(param1.position.x);
                              if(_loc10_ || param2)
                              {
                                 §§push(_loc4_.col1.x);
                                 if(!_loc9_)
                                 {
                                    §§push(this.m_coreV2.x);
                                    if(_loc10_)
                                    {
                                       addr165:
                                       §§push(§§pop() * §§pop());
                                       if(!(_loc9_ && this))
                                       {
                                          §§push(_loc4_.col2.x);
                                          if(!_loc9_)
                                          {
                                             §§push(§§pop() * this.m_coreV2.y);
                                          }
                                       }
                                       §§push(§§pop() + §§pop());
                                       if(_loc10_)
                                       {
                                          addr168:
                                          §§push(Number(§§pop()));
                                       }
                                       var _loc7_:* = §§pop();
                                       §§push(param1.position.y);
                                       if(_loc10_ || param1)
                                       {
                                          §§push(_loc4_.col1.y);
                                          if(_loc10_)
                                          {
                                             §§push(this.m_coreV2.x);
                                             if(_loc10_ || param2)
                                             {
                                                addr213:
                                                §§push(§§pop() * §§pop());
                                                if(_loc10_ || param1)
                                                {
                                                   §§push(_loc4_.col2.y);
                                                   if(_loc10_)
                                                   {
                                                      §§push(§§pop() * this.m_coreV2.y);
                                                   }
                                                }
                                                §§push(§§pop() + §§pop());
                                                if(_loc10_)
                                                {
                                                   addr217:
                                                   var _loc8_:Number = §§pop();
                                                   if(!_loc9_)
                                                   {
                                                      §§push(_loc5_);
                                                      if(_loc10_ || this)
                                                      {
                                                         §§push(param2);
                                                         if(_loc10_)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(!_loc9_)
                                                            {
                                                               §§push(_loc6_);
                                                               if(!_loc9_)
                                                               {
                                                                  §§push(param3);
                                                                  if(!_loc9_)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(_loc10_ || param2)
                                                                     {
                                                                        addr249:
                                                                        §§push(§§pop() + §§pop());
                                                                        §§push(_loc7_);
                                                                        if(_loc10_)
                                                                        {
                                                                           §§push(param2);
                                                                           if(_loc10_)
                                                                           {
                                                                              addr255:
                                                                              §§push(§§pop() * §§pop());
                                                                              if(_loc9_)
                                                                              {
                                                                              }
                                                                              §§goto(addr264);
                                                                           }
                                                                           §§goto(addr261);
                                                                        }
                                                                     }
                                                                     §§goto(addr264);
                                                                  }
                                                                  §§goto(addr255);
                                                               }
                                                               §§goto(addr264);
                                                            }
                                                            §§goto(addr249);
                                                         }
                                                         addr264:
                                                         §§push(_loc8_);
                                                         if(_loc10_)
                                                         {
                                                            addr261:
                                                            §§push(§§pop() * param3);
                                                         }
                                                         if(§§pop() > §§pop() + §§pop())
                                                         {
                                                            if(_loc10_)
                                                            {
                                                               §§push(this.§&!9§);
                                                               if(_loc10_)
                                                               {
                                                                  §§push(_loc5_);
                                                                  if(_loc10_)
                                                                  {
                                                                     §§pop().x = §§pop();
                                                                     if(!_loc9_)
                                                                     {
                                                                        §§push(this.§&!9§);
                                                                        if(_loc10_)
                                                                        {
                                                                           §§push(_loc6_);
                                                                           if(_loc10_ || this)
                                                                           {
                                                                              §§pop().y = §§pop();
                                                                              if(_loc9_)
                                                                              {
                                                                                 addr313:
                                                                                 §§push(this.§&!9§);
                                                                                 if(_loc10_)
                                                                                 {
                                                                                    §§push(_loc8_);
                                                                                 }
                                                                              }
                                                                              §§goto(addr321);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr321);
                                                                  }
                                                                  addr318:
                                                                  §§pop().y = §§pop();
                                                               }
                                                            }
                                                            §§goto(addr321);
                                                         }
                                                         else
                                                         {
                                                            §§push(this.§&!9§);
                                                            if(!_loc9_)
                                                            {
                                                               §§push(_loc7_);
                                                               if(!_loc9_)
                                                               {
                                                                  §§pop().x = §§pop();
                                                                  if(!_loc9_)
                                                                  {
                                                                     §§goto(addr313);
                                                                  }
                                                                  §§goto(addr321);
                                                               }
                                                               §§goto(addr318);
                                                            }
                                                         }
                                                         addr321:
                                                         return this.§&!9§;
                                                      }
                                                      §§goto(addr249);
                                                   }
                                                   §§goto(addr313);
                                                }
                                                §§goto(addr217);
                                             }
                                             §§push(§§pop() + §§pop());
                                          }
                                          §§goto(addr213);
                                       }
                                       §§goto(addr217);
                                    }
                                    §§push(§§pop() + §§pop());
                                 }
                                 §§goto(addr165);
                              }
                              §§goto(addr168);
                           }
                           §§goto(addr116);
                        }
                        §§goto(addr111);
                     }
                     §§goto(addr102);
                  }
                  §§goto(addr116);
               }
               §§goto(addr58);
            }
            §§goto(addr49);
         }
         §§goto(addr67);
      }
      
      b2internal function §3!j§(param1:b2EdgeShape, param2:b2Vec2, param3:b2Vec2, param4:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            this.§ !W§ = param1;
            if(_loc6_)
            {
               this.m_coreV1 = param2;
               if(_loc6_ || param2)
               {
                  this.m_cornerDir1 = param3;
                  if(_loc5_)
                  {
                  }
               }
               §§goto(addr52);
            }
            this.m_cornerConvex1 = param4;
         }
         addr52:
      }
      
      b2internal function §9n§(param1:b2EdgeShape, param2:b2Vec2, param3:b2Vec2, param4:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            this.§-!v§ = param1;
            if(!_loc5_)
            {
               this.m_coreV2 = param2;
               if(_loc5_)
               {
               }
               §§goto(addr47);
            }
            this.m_cornerDir2 = param3;
            if(!_loc5_)
            {
               this.m_cornerConvex2 = param4;
            }
         }
         addr47:
      }
   }
}
