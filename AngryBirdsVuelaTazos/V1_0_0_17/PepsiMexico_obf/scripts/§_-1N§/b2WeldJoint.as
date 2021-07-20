package §_-1N§
{
   import §_-Iw§.b2Body;
   import §_-Iw§.b2TimeStep;
   import §_-Ja§.b2Mat22;
   import §_-Ja§.b2Mat33;
   import §_-Ja§.b2Math;
   import §_-Ja§.b2Vec2;
   import §_-Ja§.b2Vec3;
   import §_-lh§.b2Settings;
   import §_-lh§.b2internal;
   
   use namespace b2internal;
   
   public class b2WeldJoint extends b2Joint
   {
       
      
      private var §_-9u§:b2Vec2;
      
      private var §_-9C§:b2Vec2;
      
      private var §_-VS§:Number;
      
      private var §_-tN§:b2Vec3;
      
      private var §_-jI§:b2Mat33;
      
      public function b2WeldJoint(param1:b2WeldJointDef)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         this.§_-9u§ = new b2Vec2();
         this.§_-9C§ = new b2Vec2();
         if(_loc2_)
         {
            this.§_-tN§ = new b2Vec3();
            if(_loc2_)
            {
               §§goto(addr29);
            }
            §§goto(addr55);
         }
         addr29:
         this.§_-jI§ = new b2Mat33();
         if(!(_loc3_ && _loc2_))
         {
            super(param1);
            this.§_-9u§.SetV(param1.§_-Kz§);
            addr55:
            this.§_-9C§.SetV(param1.§_-Dq§);
            this.§_-VS§ = param1.§_-Lv§;
            if(!(_loc3_ && _loc3_))
            {
               this.§_-tN§.§_-0a§();
               this.§_-jI§ = new b2Mat33();
            }
         }
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::_-93.GetWorldPoint(this.§_-9u§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::_-9K.GetWorldPoint(this.§_-9C§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc2_)
         {
            §§push(this.§_-tN§.x);
            if(!_loc3_)
            {
               §§goto(addr30);
            }
            §§goto(addr45);
         }
         addr30:
         §§push(§§pop() * §§pop());
         §§push(param1);
         if(_loc2_ || this)
         {
            addr45:
            §§push(§§pop() * this.§_-tN§.y);
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(param1);
         if(_loc2_ || this)
         {
            §§push(§§pop() * this.§_-tN§.z);
         }
         return §§pop();
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 1008
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc22_:Boolean = true;
         var _loc23_:Boolean = false;
         var _loc2_:b2Mat22 = null;
         var _loc3_:* = NaN;
         var _loc4_:b2Body = b2internal::_-93;
         var _loc5_:b2Body = b2internal::_-9K;
         var _loc6_:b2Vec2 = _loc4_.§_-ZZ§;
         §§push(_loc4_.m_angularVelocity);
         if(!(_loc23_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         var _loc8_:b2Vec2 = _loc5_.§_-ZZ§;
         §§push(_loc5_.m_angularVelocity);
         if(!(_loc23_ && _loc2_))
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         §§push(_loc4_.§_-eZ§);
         if(_loc22_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc10_:* = §§pop();
         §§push(_loc5_.§_-eZ§);
         if(!(_loc23_ && _loc2_))
         {
            §§push(Number(§§pop()));
         }
         var _loc11_:* = §§pop();
         §§push(_loc4_.§_-DZ§);
         if(_loc22_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc12_:* = §§pop();
         §§push(_loc5_.§_-DZ§);
         if(!_loc23_)
         {
            §§push(Number(§§pop()));
         }
         var _loc13_:* = §§pop();
         _loc2_ = _loc4_.m_xf.R;
         §§push(this.§_-9u§.x);
         if(_loc22_ || _loc3_)
         {
            §§push(§§pop() - _loc4_.m_sweep.localCenter.x);
            if(!_loc23_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc14_:* = §§pop();
         §§push(this.§_-9u§.y);
         if(!(_loc23_ && _loc2_))
         {
            §§push(§§pop() - _loc4_.m_sweep.localCenter.y);
            if(_loc22_ || _loc3_)
            {
               addr139:
               §§push(Number(§§pop()));
            }
            var _loc15_:* = §§pop();
            if(!(_loc23_ && param1))
            {
               §§push(_loc2_.col1);
               if(!_loc23_)
               {
                  §§push(§§pop().x);
                  §§push(_loc14_);
                  if(!_loc23_)
                  {
                     §§push(§§pop() * §§pop());
                     §§push(_loc2_.col2);
                     if(!(_loc23_ && param1))
                     {
                        §§push(§§pop().x);
                        if(!(_loc23_ && this))
                        {
                           §§push(_loc15_);
                           if(_loc22_ || _loc2_)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc22_)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(_loc22_ || this)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                                 _loc3_ = §§pop();
                                 if(!(_loc23_ && _loc2_))
                                 {
                                    addr204:
                                    §§push(_loc2_.col1.y);
                                    if(!_loc23_)
                                    {
                                       §§push(_loc14_);
                                       if(_loc22_ || this)
                                       {
                                          addr215:
                                          addr218:
                                          §§push(§§pop() * §§pop());
                                          §§push(_loc2_.col2.y);
                                          if(_loc23_ && _loc2_)
                                          {
                                          }
                                          addr228:
                                          §§push(Number(§§pop() + §§pop()));
                                          if(!_loc23_)
                                          {
                                             _loc15_ = §§pop();
                                             if(_loc22_)
                                             {
                                                addr237:
                                                _loc14_ = Number(_loc3_);
                                                addr238:
                                                _loc2_ = _loc5_.m_xf.R;
                                                §§push(this.§_-9C§.x);
                                                if(!_loc23_)
                                                {
                                                   §§push(§§pop() - _loc5_.m_sweep.localCenter.x);
                                                   if(!_loc23_)
                                                   {
                                                      addr255:
                                                      §§push(Number(§§pop()));
                                                   }
                                                   var _loc16_:* = §§pop();
                                                   §§push(this.§_-9C§.y);
                                                   if(!_loc23_)
                                                   {
                                                      §§push(§§pop() - _loc5_.m_sweep.localCenter.y);
                                                      if(_loc22_ || _loc2_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                      }
                                                   }
                                                   var _loc17_:* = §§pop();
                                                   if(_loc22_)
                                                   {
                                                      §§push(_loc2_.col1);
                                                      if(_loc22_ || _loc3_)
                                                      {
                                                         §§push(§§pop().x);
                                                         if(!_loc23_)
                                                         {
                                                            §§push(_loc16_);
                                                            if(!(_loc23_ && _loc3_))
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               §§push(_loc2_.col2);
                                                               if(!(_loc23_ && param1))
                                                               {
                                                                  §§push(§§pop().x);
                                                                  §§push(_loc17_);
                                                                  if(_loc22_)
                                                                  {
                                                                     §§push(Number(§§pop() + §§pop() * §§pop()));
                                                                     if(!_loc23_)
                                                                     {
                                                                        _loc3_ = §§pop();
                                                                        if(_loc22_)
                                                                        {
                                                                           addr323:
                                                                           §§push(_loc2_.col1.y * _loc16_);
                                                                           §§push(_loc2_.col2.y);
                                                                           §§push(_loc17_);
                                                                           if(!_loc23_)
                                                                           {
                                                                              §§push(Number(§§pop() + §§pop() * §§pop()));
                                                                              if(_loc22_ || _loc3_)
                                                                              {
                                                                                 _loc17_ = §§pop();
                                                                                 if(!_loc23_)
                                                                                 {
                                                                                    addr344:
                                                                                    §§push(_loc3_);
                                                                                    if(_loc22_)
                                                                                    {
                                                                                       addr355:
                                                                                       _loc16_ = Number(§§pop());
                                                                                       addr356:
                                                                                       §§push(_loc8_.x);
                                                                                       §§push(_loc9_);
                                                                                       if(!_loc23_)
                                                                                       {
                                                                                          addr361:
                                                                                          §§push(_loc17_);
                                                                                          if(_loc22_ || param1)
                                                                                          {
                                                                                             addr378:
                                                                                             §§push(§§pop() - §§pop() * §§pop());
                                                                                             §§push(_loc6_.x);
                                                                                             if(!_loc23_)
                                                                                             {
                                                                                                §§push(§§pop() - §§pop());
                                                                                                §§push(_loc7_);
                                                                                             }
                                                                                             §§push(§§pop() * _loc15_);
                                                                                          }
                                                                                          §§goto(addr378);
                                                                                       }
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(!(_loc23_ && _loc3_))
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                    }
                                                                                    var _loc18_:* = §§pop();
                                                                                    §§push(_loc8_.y);
                                                                                    if(!_loc23_)
                                                                                    {
                                                                                       §§push(_loc9_);
                                                                                       if(_loc22_)
                                                                                       {
                                                                                          §§push(_loc16_);
                                                                                          if(!(_loc23_ && _loc3_))
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(!(_loc23_ && this))
                                                                                             {
                                                                                                addr412:
                                                                                                §§push(§§pop() + §§pop());
                                                                                                if(_loc22_)
                                                                                                {
                                                                                                   §§push(_loc6_.y);
                                                                                                   if(!_loc23_)
                                                                                                   {
                                                                                                      §§push(§§pop() - §§pop());
                                                                                                      if(!(_loc23_ && _loc2_))
                                                                                                      {
                                                                                                         §§push(_loc7_);
                                                                                                         if(_loc23_ && _loc3_)
                                                                                                         {
                                                                                                         }
                                                                                                         addr437:
                                                                                                         §§push(§§pop() - §§pop());
                                                                                                         if(_loc22_)
                                                                                                         {
                                                                                                            addr440:
                                                                                                            §§push(Number(§§pop()));
                                                                                                         }
                                                                                                         var _loc19_:* = §§pop();
                                                                                                         §§push(_loc9_);
                                                                                                         if(_loc22_)
                                                                                                         {
                                                                                                            §§push(§§pop() - _loc7_);
                                                                                                            if(!(_loc23_ && _loc2_))
                                                                                                            {
                                                                                                               addr454:
                                                                                                               §§push(Number(§§pop()));
                                                                                                            }
                                                                                                            var _loc20_:* = §§pop();
                                                                                                            var _loc21_:b2Vec3 = new b2Vec3();
                                                                                                            §§push(this.§_-jI§);
                                                                                                            §§push(_loc21_);
                                                                                                            §§push(_loc18_);
                                                                                                            if(!_loc23_)
                                                                                                            {
                                                                                                               §§push(-§§pop());
                                                                                                            }
                                                                                                            §§push(_loc19_);
                                                                                                            if(_loc22_ || param1)
                                                                                                            {
                                                                                                               §§push(-§§pop());
                                                                                                            }
                                                                                                            §§push(_loc20_);
                                                                                                            if(!(_loc23_ && _loc3_))
                                                                                                            {
                                                                                                               §§push(-§§pop());
                                                                                                            }
                                                                                                            §§pop().Solve33(§§pop(),§§pop(),§§pop(),§§pop());
                                                                                                            this.§_-tN§.§_-Jv§(_loc21_);
                                                                                                            §§push(_loc6_);
                                                                                                            §§push(_loc6_.x);
                                                                                                            if(_loc22_)
                                                                                                            {
                                                                                                               §§push(_loc10_);
                                                                                                               if(_loc22_)
                                                                                                               {
                                                                                                                  §§push(§§pop() * _loc21_.x);
                                                                                                               }
                                                                                                               §§push(§§pop() - §§pop());
                                                                                                            }
                                                                                                            §§pop().x = §§pop();
                                                                                                            if(!(_loc23_ && this))
                                                                                                            {
                                                                                                               §§push(_loc6_);
                                                                                                               §§push(_loc6_.y);
                                                                                                               if(_loc22_ || _loc2_)
                                                                                                               {
                                                                                                                  §§push(_loc10_);
                                                                                                                  if(!_loc23_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() * _loc21_.y);
                                                                                                                  }
                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                               }
                                                                                                               §§pop().y = §§pop();
                                                                                                               if(!(_loc23_ && param1))
                                                                                                               {
                                                                                                                  §§push(_loc7_);
                                                                                                                  if(!_loc23_)
                                                                                                                  {
                                                                                                                     §§push(_loc12_);
                                                                                                                     if(!(_loc23_ && this))
                                                                                                                     {
                                                                                                                        §§push(_loc14_);
                                                                                                                        if(_loc22_ || param1)
                                                                                                                        {
                                                                                                                           §§push(_loc21_.y);
                                                                                                                           if(_loc22_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              if(!_loc23_)
                                                                                                                              {
                                                                                                                                 §§push(_loc15_);
                                                                                                                                 if(_loc22_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc21_.x);
                                                                                                                                    if(_loc22_)
                                                                                                                                    {
                                                                                                                                       addr570:
                                                                                                                                       §§push(§§pop() - §§pop() * §§pop());
                                                                                                                                       §§push(_loc21_.z);
                                                                                                                                       if(!(_loc23_ && _loc2_))
                                                                                                                                       {
                                                                                                                                          addr579:
                                                                                                                                          §§push(§§pop() * (§§pop() + §§pop()));
                                                                                                                                          if(!_loc23_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() - §§pop());
                                                                                                                                             if(_loc22_ || _loc3_)
                                                                                                                                             {
                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                if(!(_loc23_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   §§goto(addr599);
                                                                                                                                                }
                                                                                                                                                §§goto(addr688);
                                                                                                                                             }
                                                                                                                                             §§goto(addr599);
                                                                                                                                          }
                                                                                                                                          §§goto(addr658);
                                                                                                                                       }
                                                                                                                                       §§goto(addr663);
                                                                                                                                    }
                                                                                                                                    §§goto(addr674);
                                                                                                                                 }
                                                                                                                                 §§goto(addr579);
                                                                                                                              }
                                                                                                                              §§goto(addr570);
                                                                                                                           }
                                                                                                                           §§goto(addr674);
                                                                                                                        }
                                                                                                                        §§goto(addr570);
                                                                                                                     }
                                                                                                                     §§goto(addr680);
                                                                                                                  }
                                                                                                                  addr599:
                                                                                                                  _loc7_ = §§pop();
                                                                                                                  if(_loc22_)
                                                                                                                  {
                                                                                                                     §§push(_loc8_);
                                                                                                                     §§push(_loc8_.x);
                                                                                                                     if(!(_loc23_ && _loc2_))
                                                                                                                     {
                                                                                                                        §§push(_loc11_);
                                                                                                                        if(_loc22_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * _loc21_.x);
                                                                                                                        }
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                     }
                                                                                                                     §§pop().x = §§pop();
                                                                                                                     if(!(_loc23_ && _loc2_))
                                                                                                                     {
                                                                                                                        §§goto(addr627);
                                                                                                                     }
                                                                                                                     §§goto(addr680);
                                                                                                                  }
                                                                                                                  §§goto(addr627);
                                                                                                               }
                                                                                                               §§goto(addr652);
                                                                                                            }
                                                                                                            addr627:
                                                                                                            §§push(_loc8_);
                                                                                                            §§push(_loc8_.y);
                                                                                                            if(_loc22_)
                                                                                                            {
                                                                                                               §§push(_loc11_);
                                                                                                               if(_loc22_ || param1)
                                                                                                               {
                                                                                                                  §§push(§§pop() * _loc21_.y);
                                                                                                               }
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                            }
                                                                                                            §§pop().y = §§pop();
                                                                                                            if(!(_loc23_ && param1))
                                                                                                            {
                                                                                                               addr652:
                                                                                                               §§push(_loc9_);
                                                                                                               if(!_loc23_)
                                                                                                               {
                                                                                                                  §§push(_loc13_);
                                                                                                                  if(!_loc23_)
                                                                                                                  {
                                                                                                                     addr680:
                                                                                                                     addr658:
                                                                                                                     §§push(_loc16_);
                                                                                                                     if(!_loc23_)
                                                                                                                     {
                                                                                                                        addr663:
                                                                                                                        §§push(§§pop() * _loc21_.y);
                                                                                                                        if(_loc22_ || param1)
                                                                                                                        {
                                                                                                                           addr674:
                                                                                                                           §§push(§§pop() - _loc17_ * _loc21_.x);
                                                                                                                        }
                                                                                                                        §§push(§§pop() + _loc21_.z);
                                                                                                                     }
                                                                                                                     §§push(§§pop() + §§pop() * §§pop());
                                                                                                                     if(_loc22_ || param1)
                                                                                                                     {
                                                                                                                        addr688:
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                     }
                                                                                                                     _loc9_ = §§pop();
                                                                                                                     _loc4_.m_angularVelocity = _loc7_;
                                                                                                                     if(!(_loc23_ && this))
                                                                                                                     {
                                                                                                                        _loc5_.m_angularVelocity = _loc9_;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr680);
                                                                                                               }
                                                                                                               §§goto(addr688);
                                                                                                            }
                                                                                                            return;
                                                                                                         }
                                                                                                         §§goto(addr454);
                                                                                                      }
                                                                                                      §§goto(addr440);
                                                                                                   }
                                                                                                   addr436:
                                                                                                   §§push(§§pop() * _loc14_);
                                                                                                }
                                                                                                §§goto(addr440);
                                                                                             }
                                                                                             §§goto(addr437);
                                                                                          }
                                                                                          §§goto(addr436);
                                                                                       }
                                                                                       §§goto(addr412);
                                                                                    }
                                                                                    §§goto(addr440);
                                                                                 }
                                                                                 §§goto(addr356);
                                                                              }
                                                                              §§goto(addr355);
                                                                           }
                                                                           §§goto(addr378);
                                                                        }
                                                                        §§goto(addr344);
                                                                     }
                                                                     §§goto(addr323);
                                                                  }
                                                                  §§goto(addr378);
                                                               }
                                                               §§goto(addr323);
                                                            }
                                                            §§goto(addr361);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr323);
                                                }
                                                §§goto(addr255);
                                                addr235:
                                             }
                                             §§goto(addr238);
                                          }
                                          §§goto(addr237);
                                       }
                                       addr227:
                                       §§goto(addr228);
                                       §§push(§§pop() * _loc15_);
                                    }
                                    §§goto(addr237);
                                 }
                                 §§goto(addr235);
                              }
                              §§goto(addr228);
                           }
                           §§goto(addr227);
                        }
                        §§goto(addr215);
                     }
                     §§goto(addr218);
                  }
                  §§goto(addr215);
               }
               §§goto(addr204);
            }
            §§goto(addr237);
         }
         §§goto(addr139);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 1191
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
   }
}
