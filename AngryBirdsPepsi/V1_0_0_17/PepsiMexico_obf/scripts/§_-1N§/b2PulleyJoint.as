package §_-1N§
{
   import §_-Iw§.b2Body;
   import §_-Iw§.b2TimeStep;
   import §_-Ja§.b2Mat22;
   import §_-Ja§.b2Math;
   import §_-Ja§.b2Vec2;
   import §_-lh§.b2Settings;
   import §_-lh§.b2internal;
   
   use namespace b2internal;
   
   public class b2PulleyJoint extends b2Joint
   {
      
      b2internal static const §_-gg§:Number = 2.0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §_-gg§ = 2;
         }
      }
      
      private var §_-PB§:b2Body;
      
      private var m_groundAnchor1:b2Vec2;
      
      private var m_groundAnchor2:b2Vec2;
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var m_u1:b2Vec2;
      
      private var m_u2:b2Vec2;
      
      private var §_-67§:Number;
      
      private var §_-5R§:Number;
      
      private var m_maxLength1:Number;
      
      private var m_maxLength2:Number;
      
      private var §_-TV§:Number;
      
      private var m_limitMass1:Number;
      
      private var m_limitMass2:Number;
      
      private var §_-tN§:Number;
      
      private var m_limitImpulse1:Number;
      
      private var m_limitImpulse2:Number;
      
      private var §_-6f§:int;
      
      private var m_limitState1:int;
      
      private var m_limitState2:int;
      
      public function b2PulleyJoint(param1:b2PulleyJointDef)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_groundAnchor1 = new b2Vec2();
         this.m_groundAnchor2 = new b2Vec2();
         if(!_loc5_)
         {
            this.m_localAnchor1 = new b2Vec2();
            this.m_localAnchor2 = new b2Vec2();
            if(!_loc5_)
            {
               addr41:
               this.m_u1 = new b2Vec2();
               this.m_u2 = new b2Vec2();
               if(!_loc5_)
               {
                  super(param1);
                  if(!_loc5_)
                  {
                     this.§_-PB§ = b2internal::_-93.m_world.m_groundBody;
                     §§push(this.m_groundAnchor1);
                     if(_loc6_)
                     {
                        §§push(param1.§_-v1§);
                        if(_loc6_ || _loc2_)
                        {
                           §§push(§§pop().x);
                           if(!_loc5_)
                           {
                              §§push(this.§_-PB§);
                              if(!(_loc5_ && _loc3_))
                              {
                                 §§push(§§pop().m_xf);
                                 if(_loc6_ || _loc3_)
                                 {
                                    §§push(§§pop().position);
                                    if(_loc6_ || _loc3_)
                                    {
                                       §§push(§§pop().x);
                                       if(_loc6_ || _loc2_)
                                       {
                                          §§push(§§pop() - §§pop());
                                          if(_loc6_)
                                          {
                                             addr113:
                                             §§pop().x = §§pop();
                                             §§push(this.m_groundAnchor1);
                                             §§push(param1.§_-v1§.y);
                                             if(!_loc5_)
                                             {
                                                addr126:
                                                §§push(§§pop() - this.§_-PB§.m_xf.position.y);
                                             }
                                          }
                                          §§pop().y = §§pop();
                                          §§push(this.m_groundAnchor2);
                                          if(_loc6_)
                                          {
                                             §§push(param1.§_-xj§);
                                             if(!_loc5_)
                                             {
                                                §§push(§§pop().x);
                                                if(_loc6_)
                                                {
                                                   §§push(this.§_-PB§);
                                                   if(!(_loc5_ && param1))
                                                   {
                                                      §§push(§§pop().m_xf);
                                                      if(!(_loc5_ && _loc3_))
                                                      {
                                                         §§push(§§pop().position);
                                                         if(_loc6_ || param1)
                                                         {
                                                            §§push(§§pop().x);
                                                            if(!_loc5_)
                                                            {
                                                               §§push(§§pop() - §§pop());
                                                               if(_loc6_ || this)
                                                               {
                                                                  §§pop().x = §§pop();
                                                                  addr201:
                                                                  §§push(this.m_groundAnchor2);
                                                                  §§push(param1.§_-xj§.y);
                                                                  if(_loc6_ || _loc2_)
                                                                  {
                                                                     addr199:
                                                                     §§push(this.§_-PB§.m_xf.position.y);
                                                                  }
                                                                  §§pop().y = §§pop();
                                                                  if(!(_loc5_ && _loc2_))
                                                                  {
                                                                     this.m_localAnchor1.SetV(param1.§_-Kz§);
                                                                     this.m_localAnchor2.SetV(param1.§_-Dq§);
                                                                     this.§_-5R§ = param1.§_-Qg§;
                                                                     if(!(_loc5_ && this))
                                                                     {
                                                                        addr230:
                                                                        §§push(this);
                                                                        §§push(param1.§_-gn§);
                                                                        if(!_loc5_)
                                                                        {
                                                                           §§push(this.§_-5R§);
                                                                           if(_loc6_ || _loc2_)
                                                                           {
                                                                              §§push(§§pop() * param1.§_-s6§);
                                                                           }
                                                                           §§push(§§pop() + §§pop());
                                                                        }
                                                                        §§pop().§_-67§ = §§pop();
                                                                        §§push(this);
                                                                        §§push(b2Math);
                                                                        §§push(param1.§_-47§);
                                                                        §§push(this.§_-67§);
                                                                        if(_loc6_ || this)
                                                                        {
                                                                           §§push(this.§_-5R§);
                                                                           if(_loc6_ || this)
                                                                           {
                                                                              §§push(§§pop() * b2internal::_-gg);
                                                                           }
                                                                           §§push(§§pop() - §§pop());
                                                                        }
                                                                        §§pop().m_maxLength1 = §§pop().§_-cD§(§§pop(),§§pop());
                                                                        if(_loc6_ || param1)
                                                                        {
                                                                        }
                                                                        §§goto(addr327);
                                                                     }
                                                                     §§push(this);
                                                                     §§push(b2Math);
                                                                     §§push(param1.§_-B8§);
                                                                     §§push(this.§_-67§);
                                                                     if(!_loc5_)
                                                                     {
                                                                        §§push(b2internal::_-gg);
                                                                        if(!(_loc5_ && param1))
                                                                        {
                                                                           §§push(§§pop() - §§pop());
                                                                           if(!_loc5_)
                                                                           {
                                                                              addr304:
                                                                              §§push(§§pop() / this.§_-5R§);
                                                                           }
                                                                           §§pop().m_maxLength2 = §§pop().§_-cD§(§§pop(),§§pop());
                                                                           if(!(_loc5_ && this))
                                                                           {
                                                                              this.§_-tN§ = 0;
                                                                           }
                                                                           this.m_limitImpulse1 = 0;
                                                                           addr327:
                                                                           this.m_limitImpulse2 = 0;
                                                                           return;
                                                                        }
                                                                     }
                                                                     §§goto(addr304);
                                                                  }
                                                                  §§goto(addr230);
                                                               }
                                                            }
                                                            §§goto(addr201);
                                                            §§push(§§pop() - §§pop());
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr199);
                                                }
                                             }
                                          }
                                          §§goto(addr201);
                                       }
                                    }
                                 }
                              }
                              §§goto(addr126);
                           }
                        }
                     }
                     §§goto(addr113);
                  }
                  §§goto(addr230);
               }
               §§goto(addr113);
            }
            §§goto(addr230);
         }
         §§goto(addr41);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::_-93.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::_-9K.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc2_)
         {
            §§push(this.§_-tN§);
            if(!(_loc3_ && _loc3_))
            {
               §§push(§§pop() * §§pop());
               if(_loc2_ || param1)
               {
                  addr55:
                  §§push(this.m_u2.x);
                  if(!(_loc3_ && _loc2_))
                  {
                     §§push(§§pop() * §§pop());
                  }
                  §§push(this.§_-tN§);
                  if(!(_loc3_ && _loc3_))
                  {
                     §§push(§§pop() * §§pop());
                     if(_loc2_ || _loc3_)
                     {
                        addr82:
                        §§push(§§pop() * this.m_u2.y);
                     }
                     return new §§pop().b2Vec2(§§pop(),§§pop());
                  }
                  §§goto(addr82);
               }
               §§push(param1);
               if(!_loc3_)
               {
                  §§goto(addr55);
               }
               §§goto(addr82);
            }
         }
         §§goto(addr55);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §_-wj§() : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2Vec2 = this.§_-PB§.m_xf.position.Copy();
         if(!_loc2_)
         {
            _loc1_.§_-Jv§(this.m_groundAnchor1);
         }
         return _loc1_;
      }
      
      public function §_-Km§() : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2Vec2 = this.§_-PB§.m_xf.position.Copy();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.§_-Jv§(this.m_groundAnchor2);
         }
         return _loc1_;
      }
      
      public function GetLength1() : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc1_:b2Vec2 = b2internal::_-93.GetWorldPoint(this.m_localAnchor1);
         §§push(this.§_-PB§.m_xf.position.x);
         if(!(_loc7_ && _loc3_))
         {
            §§push(§§pop() + this.m_groundAnchor1.x);
            if(!(_loc7_ && this))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc2_:* = §§pop();
         §§push(this.§_-PB§.m_xf.position.y);
         if(!_loc7_)
         {
            §§push(§§pop() + this.m_groundAnchor1.y);
            if(_loc6_ || this)
            {
               addr69:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(_loc1_.x);
            if(!(_loc7_ && this))
            {
               §§push(§§pop() - _loc2_);
               if(_loc6_ || _loc2_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc4_:* = §§pop();
            §§push(_loc1_.y);
            if(_loc6_)
            {
               §§push(§§pop() - _loc3_);
               if(_loc6_)
               {
                  addr99:
                  §§push(Number(§§pop()));
               }
               var _loc5_:* = §§pop();
               return Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
            }
            §§goto(addr99);
         }
         §§goto(addr69);
      }
      
      public function GetLength2() : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc1_:b2Vec2 = b2internal::_-9K.GetWorldPoint(this.m_localAnchor2);
         §§push(this.§_-PB§.m_xf.position.x);
         if(_loc7_)
         {
            §§push(§§pop() + this.m_groundAnchor2.x);
            if(!_loc6_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc2_:* = §§pop();
         §§push(this.§_-PB§.m_xf.position.y);
         if(_loc7_ || this)
         {
            §§push(§§pop() + this.m_groundAnchor2.y);
            if(_loc7_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         §§push(_loc1_.x);
         if(!(_loc6_ && _loc2_))
         {
            §§push(§§pop() - _loc2_);
            if(_loc7_ || _loc2_)
            {
               addr80:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            §§push(_loc1_.y);
            if(_loc7_)
            {
               §§push(§§pop() - _loc3_);
               if(_loc7_)
               {
                  addr90:
                  §§push(Number(§§pop()));
               }
               var _loc5_:* = §§pop();
               return Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
            }
            §§goto(addr90);
         }
         §§goto(addr80);
      }
      
      public function §_-dY§() : Number
      {
         return this.§_-5R§;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 1297
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 1378
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 2326
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
   }
}
