package §[h§
{
   import § !t§.b2Body;
   import § !t§.b2TimeStep;
   import §<!B§.b2Mat22;
   import §<!B§.b2Mat33;
   import §<!B§.b2Math;
   import §<!B§.b2Vec2;
   import §<!B§.b2Vec3;
   import §?s§.b2Settings;
   import §?s§.b2internal;
   
   use namespace b2internal;
   
   public class b2WeldJoint extends b2Joint
   {
       
      
      private var §"h§:b2Vec2;
      
      private var §58§:b2Vec2;
      
      private var §?!i§:Number;
      
      private var §7!a§:b2Vec3;
      
      private var §+!U§:b2Mat33;
      
      public function b2WeldJoint(param1:b2WeldJointDef)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§"h§ = new b2Vec2();
            if(_loc3_)
            {
               this.§58§ = new b2Vec2();
               if(!_loc2_)
               {
                  this.§7!a§ = new b2Vec3();
                  if(!(_loc2_ && _loc3_))
                  {
                     this.§+!U§ = new b2Mat33();
                     if(_loc3_ || this)
                     {
                        super(param1);
                        if(!_loc3_)
                        {
                        }
                        §§goto(addr113);
                     }
                     this.§"h§.SetV(param1.§;!1§);
                     if(!(_loc2_ && param1))
                     {
                        this.§58§.SetV(param1.§%?§);
                     }
                  }
                  §§goto(addr104);
               }
               this.§?!i§ = param1.§%g§;
            }
            addr104:
            this.§7!a§.§22§();
            if(!_loc2_)
            {
               this.§+!U§ = new b2Mat33();
            }
            §§goto(addr113);
         }
         addr113:
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::2+.GetWorldPoint(this.§"h§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::4P.GetWorldPoint(this.§58§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(!_loc3_)
         {
            §§push(this.§7!a§.x);
            if(!_loc3_)
            {
               addr36:
               §§push(§§pop() * §§pop());
               §§push(param1);
               if(!(_loc3_ && _loc2_))
               {
                  §§push(§§pop() * this.§7!a§.y);
               }
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr36);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(param1);
         if(_loc2_)
         {
            §§push(§§pop() * this.§7!a§.z);
         }
         return §§pop();
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 1127
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc22_:Boolean = false;
         var _loc23_:Boolean = true;
         var _loc2_:b2Mat22 = null;
         var _loc3_:* = NaN;
         var _loc4_:b2Body = b2internal::2+;
         var _loc5_:b2Body = b2internal::4P;
         var _loc6_:b2Vec2 = _loc4_.§<&§;
         §§push(_loc4_.m_angularVelocity);
         if(_loc23_)
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         var _loc8_:b2Vec2 = _loc5_.§<&§;
         §§push(_loc5_.m_angularVelocity);
         if(_loc23_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         §§push(_loc4_.§7!?§);
         if(!(_loc22_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc10_:* = §§pop();
         §§push(_loc5_.§7!?§);
         if(_loc23_ || _loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc11_:* = §§pop();
         §§push(_loc4_.§`d§);
         if(!(_loc22_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc12_:* = §§pop();
         §§push(_loc5_.§`d§);
         if(_loc23_ || _loc2_)
         {
            §§push(Number(§§pop()));
         }
         var _loc13_:* = §§pop();
         _loc2_ = _loc4_.m_xf.R;
         §§push(this.§"h§.x);
         if(!_loc22_)
         {
            §§push(§§pop() - _loc4_.m_sweep.localCenter.x);
            if(_loc23_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc14_:* = §§pop();
         §§push(this.§"h§.y);
         if(_loc23_)
         {
            §§push(§§pop() - _loc4_.m_sweep.localCenter.y);
            if(_loc23_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc15_:* = §§pop();
         if(_loc23_)
         {
            §§push(_loc2_.col1);
            if(_loc23_ || this)
            {
               §§push(§§pop().x);
               §§push(_loc14_);
               if(_loc23_ || param1)
               {
                  §§push(§§pop() * §§pop());
                  §§push(_loc2_.col2);
                  if(_loc23_ || param1)
                  {
                     §§push(§§pop().x);
                     if(!_loc22_)
                     {
                        addr163:
                        §§push(_loc15_);
                        if(_loc23_ || param1)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc23_ || this)
                           {
                              §§push(Number(§§pop() + §§pop()));
                              if(!(_loc22_ && _loc3_))
                              {
                                 _loc3_ = §§pop();
                                 if(!(_loc22_ && _loc3_))
                                 {
                                    addr198:
                                    §§push(_loc2_.col1.y);
                                    §§push(_loc14_);
                                    if(!_loc22_)
                                    {
                                       addr202:
                                       §§push(§§pop() * §§pop());
                                       if(_loc23_)
                                       {
                                          addr207:
                                          §§push(_loc2_.col2.y);
                                          if(_loc23_ || _loc2_)
                                          {
                                             addr217:
                                             §§push(§§pop() + §§pop() * _loc15_);
                                          }
                                          §§goto(addr217);
                                       }
                                       _loc15_ = Number(§§pop());
                                       if(!(_loc22_ && _loc3_))
                                       {
                                          addr227:
                                          §§push(_loc3_);
                                          if(_loc23_ || this)
                                          {
                                             addr236:
                                             _loc14_ = Number(§§pop());
                                          }
                                          §§goto(addr236);
                                       }
                                       _loc2_ = _loc5_.m_xf.R;
                                       §§push(this.§58§.x);
                                       if(!(_loc22_ && _loc2_))
                                       {
                                          §§push(§§pop() - _loc5_.m_sweep.localCenter.x);
                                          if(_loc23_)
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                       }
                                       var _loc16_:* = §§pop();
                                       §§push(this.§58§.y);
                                       if(_loc23_)
                                       {
                                          §§push(§§pop() - _loc5_.m_sweep.localCenter.y);
                                          if(!_loc22_)
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                       }
                                       var _loc17_:* = §§pop();
                                       if(!_loc22_)
                                       {
                                          §§push(_loc2_.col1);
                                          if(!(_loc22_ && _loc3_))
                                          {
                                             §§push(§§pop().x);
                                             §§push(_loc16_);
                                             if(_loc23_ || _loc2_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!(_loc22_ && this))
                                                {
                                                   §§push(_loc2_.col2);
                                                   if(!(_loc22_ && _loc3_))
                                                   {
                                                      addr313:
                                                      §§push(§§pop().x);
                                                      §§push(_loc17_);
                                                      if(_loc23_)
                                                      {
                                                         §§push(§§pop() + §§pop() * §§pop());
                                                         if(_loc23_ || _loc2_)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            if(_loc23_)
                                                            {
                                                               addr328:
                                                               _loc3_ = §§pop();
                                                               if(_loc23_ || _loc2_)
                                                               {
                                                                  addr338:
                                                                  §§push(_loc2_.col1.y);
                                                                  §§push(_loc16_);
                                                                  if(_loc23_ || this)
                                                                  {
                                                                     addr350:
                                                                     §§push(§§pop() * §§pop());
                                                                     §§push(_loc2_.col2.y);
                                                                  }
                                                                  §§push(_loc17_);
                                                                  if(!(_loc22_ && _loc3_))
                                                                  {
                                                                     addr369:
                                                                     §§push(§§pop() * §§pop());
                                                                     if(_loc23_ || _loc3_)
                                                                     {
                                                                        §§push(Number(§§pop() + §§pop()));
                                                                        if(!_loc22_)
                                                                        {
                                                                           _loc17_ = §§pop();
                                                                           if(!(_loc22_ && _loc3_))
                                                                           {
                                                                              addr390:
                                                                              _loc16_ = Number(_loc3_);
                                                                           }
                                                                           §§push(_loc8_.x);
                                                                           if(_loc23_ || _loc2_)
                                                                           {
                                                                              §§push(_loc9_);
                                                                              §§push(_loc17_);
                                                                              if(_loc23_ || param1)
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(_loc23_)
                                                                                 {
                                                                                    §§push(§§pop() - §§pop());
                                                                                    if(!_loc22_)
                                                                                    {
                                                                                       addr420:
                                                                                       §§push(Number(§§pop() - _loc6_.x + _loc7_ * _loc15_));
                                                                                    }
                                                                                    var _loc18_:* = §§pop();
                                                                                    §§push(_loc8_.y);
                                                                                    if(!(_loc22_ && this))
                                                                                    {
                                                                                       §§push(_loc9_);
                                                                                       if(!_loc22_)
                                                                                       {
                                                                                          §§push(_loc16_);
                                                                                          if(!_loc22_)
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(!(_loc22_ && _loc3_))
                                                                                             {
                                                                                                §§push(§§pop() + §§pop());
                                                                                                if(_loc23_ || param1)
                                                                                                {
                                                                                                   §§push(_loc6_.y);
                                                                                                   if(!_loc22_)
                                                                                                   {
                                                                                                      addr487:
                                                                                                      §§push(§§pop() - §§pop());
                                                                                                      if(!(_loc22_ && _loc3_))
                                                                                                      {
                                                                                                         addr468:
                                                                                                         §§push(_loc7_);
                                                                                                         if(_loc23_ || this)
                                                                                                         {
                                                                                                            addr476:
                                                                                                            §§push(§§pop() * _loc14_);
                                                                                                         }
                                                                                                      }
                                                                                                      var _loc19_:* = §§pop();
                                                                                                      §§push(_loc9_);
                                                                                                      if(!_loc22_)
                                                                                                      {
                                                                                                         §§push(§§pop() - _loc7_);
                                                                                                         if(_loc23_)
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                         }
                                                                                                      }
                                                                                                      var _loc20_:* = §§pop();
                                                                                                      var _loc21_:b2Vec3 = new b2Vec3();
                                                                                                      §§push(this.§+!U§);
                                                                                                      §§push(_loc21_);
                                                                                                      §§push(_loc18_);
                                                                                                      if(_loc23_)
                                                                                                      {
                                                                                                         §§push(-§§pop());
                                                                                                      }
                                                                                                      §§push(_loc19_);
                                                                                                      if(_loc23_)
                                                                                                      {
                                                                                                         §§push(-§§pop());
                                                                                                      }
                                                                                                      §§push(_loc20_);
                                                                                                      if(_loc23_)
                                                                                                      {
                                                                                                         §§push(-§§pop());
                                                                                                      }
                                                                                                      §§pop().Solve33(§§pop(),§§pop(),§§pop(),§§pop());
                                                                                                      this.§7!a§.§!a§(_loc21_);
                                                                                                      §§push(_loc6_);
                                                                                                      §§push(_loc6_.x);
                                                                                                      if(_loc23_ || _loc3_)
                                                                                                      {
                                                                                                         §§push(_loc10_);
                                                                                                         if(!_loc22_)
                                                                                                         {
                                                                                                            §§push(§§pop() * _loc21_.x);
                                                                                                         }
                                                                                                         §§push(§§pop() - §§pop());
                                                                                                      }
                                                                                                      §§pop().x = §§pop();
                                                                                                      §§push(_loc6_);
                                                                                                      §§push(_loc6_.y);
                                                                                                      if(_loc23_)
                                                                                                      {
                                                                                                         §§push(_loc10_);
                                                                                                         if(_loc23_ || this)
                                                                                                         {
                                                                                                            §§push(§§pop() * _loc21_.y);
                                                                                                         }
                                                                                                         §§push(§§pop() - §§pop());
                                                                                                      }
                                                                                                      §§pop().y = §§pop();
                                                                                                      if(!_loc22_)
                                                                                                      {
                                                                                                         §§push(_loc7_);
                                                                                                         if(!_loc22_)
                                                                                                         {
                                                                                                            §§push(_loc12_);
                                                                                                            if(_loc23_ || param1)
                                                                                                            {
                                                                                                               §§push(_loc14_);
                                                                                                               if(_loc23_)
                                                                                                               {
                                                                                                                  §§push(§§pop() * _loc21_.y);
                                                                                                                  if(!(_loc22_ && _loc3_))
                                                                                                                  {
                                                                                                                     §§push(_loc15_);
                                                                                                                     §§push(_loc21_.x);
                                                                                                                     if(_loc23_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() - §§pop() * §§pop());
                                                                                                                        if(_loc23_ || this)
                                                                                                                        {
                                                                                                                           addr597:
                                                                                                                           §§push(_loc21_.z);
                                                                                                                           if(_loc23_ || this)
                                                                                                                           {
                                                                                                                              §§push(§§pop() * (§§pop() + §§pop()));
                                                                                                                              if(_loc23_ || _loc3_)
                                                                                                                              {
                                                                                                                                 addr615:
                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                 if(!_loc22_)
                                                                                                                                 {
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                    if(_loc23_)
                                                                                                                                    {
                                                                                                                                       _loc7_ = §§pop();
                                                                                                                                       §§push(_loc8_);
                                                                                                                                       §§push(_loc8_.x);
                                                                                                                                       if(_loc23_ || param1)
                                                                                                                                       {
                                                                                                                                          §§push(_loc11_);
                                                                                                                                          if(_loc23_ || param1)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * _loc21_.x);
                                                                                                                                          }
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                       }
                                                                                                                                       §§pop().x = §§pop();
                                                                                                                                       if(!(_loc22_ && param1))
                                                                                                                                       {
                                                                                                                                          addr652:
                                                                                                                                          §§push(_loc8_);
                                                                                                                                          §§push(_loc8_.y);
                                                                                                                                          if(!(_loc22_ && this))
                                                                                                                                          {
                                                                                                                                             §§push(_loc11_);
                                                                                                                                             if(!(_loc22_ && _loc3_))
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * _loc21_.y);
                                                                                                                                             }
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                          }
                                                                                                                                          §§pop().y = §§pop();
                                                                                                                                          if(!_loc22_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc9_);
                                                                                                                                             if(_loc23_)
                                                                                                                                             {
                                                                                                                                                addr680:
                                                                                                                                                §§push(_loc13_);
                                                                                                                                                if(_loc23_)
                                                                                                                                                {
                                                                                                                                                   addr683:
                                                                                                                                                   §§push(_loc16_);
                                                                                                                                                   §§push(_loc21_.y);
                                                                                                                                                   if(_loc23_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      if(_loc23_ || _loc3_)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc17_);
                                                                                                                                                         if(!_loc22_)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr723);
                                                                                                                                                         }
                                                                                                                                                         addr723:
                                                                                                                                                         §§push(§§pop() - §§pop() * _loc21_.x);
                                                                                                                                                         if(!(_loc22_ && this))
                                                                                                                                                         {
                                                                                                                                                            addr720:
                                                                                                                                                            §§push(_loc21_.z);
                                                                                                                                                         }
                                                                                                                                                         §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                         if(!(_loc22_ && _loc2_))
                                                                                                                                                         {
                                                                                                                                                            addr732:
                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                         }
                                                                                                                                                         _loc9_ = §§pop();
                                                                                                                                                         if(_loc23_)
                                                                                                                                                         {
                                                                                                                                                            _loc4_.m_angularVelocity = _loc7_;
                                                                                                                                                            addr739:
                                                                                                                                                            _loc5_.m_angularVelocity = _loc9_;
                                                                                                                                                            §§goto(addr742);
                                                                                                                                                         }
                                                                                                                                                         addr742:
                                                                                                                                                         return;
                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr720);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr723);
                                                                                                                                             }
                                                                                                                                             §§goto(addr732);
                                                                                                                                          }
                                                                                                                                          §§goto(addr742);
                                                                                                                                       }
                                                                                                                                       §§goto(addr739);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr680);
                                                                                                                              }
                                                                                                                              §§goto(addr683);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr723);
                                                                                                                  }
                                                                                                                  §§goto(addr597);
                                                                                                               }
                                                                                                               §§goto(addr720);
                                                                                                            }
                                                                                                            §§goto(addr615);
                                                                                                         }
                                                                                                         §§goto(addr732);
                                                                                                      }
                                                                                                      §§goto(addr652);
                                                                                                   }
                                                                                                   §§push(§§pop() - §§pop());
                                                                                                   if(_loc23_ || _loc3_)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr487);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr476);
                                                                                       }
                                                                                       §§goto(addr487);
                                                                                    }
                                                                                    §§goto(addr468);
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr420);
                                                                        }
                                                                        §§goto(addr390);
                                                                     }
                                                                  }
                                                                  §§goto(addr420);
                                                               }
                                                               §§goto(addr390);
                                                            }
                                                            §§goto(addr420);
                                                         }
                                                         §§goto(addr390);
                                                      }
                                                      §§goto(addr369);
                                                   }
                                                   §§goto(addr350);
                                                }
                                                §§goto(addr328);
                                             }
                                             §§goto(addr313);
                                          }
                                       }
                                       §§goto(addr338);
                                    }
                                    §§goto(addr217);
                                 }
                                 §§goto(addr227);
                              }
                              §§goto(addr236);
                           }
                           §§goto(addr202);
                        }
                     }
                     §§goto(addr217);
                  }
                  §§goto(addr207);
               }
               §§goto(addr163);
            }
            §§goto(addr198);
         }
         §§goto(addr227);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 1294
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
   }
}
