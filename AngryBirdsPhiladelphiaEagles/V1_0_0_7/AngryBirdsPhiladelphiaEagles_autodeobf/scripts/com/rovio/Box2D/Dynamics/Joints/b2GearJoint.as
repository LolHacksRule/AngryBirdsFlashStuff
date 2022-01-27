package com.rovio.Box2D.Dynamics.Joints
{
   import com.rovio.Box2D.Common.Math.b2Mat22;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Common.b2Settings;
   import com.rovio.Box2D.Common.b2internal;
   import com.rovio.Box2D.Dynamics.b2Body;
   import com.rovio.Box2D.Dynamics.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2GearJoint extends b2Joint
   {
       
      
      private var m_ground1:b2Body;
      
      private var m_ground2:b2Body;
      
      private var m_revolute1:b2RevoluteJoint;
      
      private var m_prismatic1:b2PrismaticJoint;
      
      private var m_revolute2:b2RevoluteJoint;
      
      private var m_prismatic2:b2PrismaticJoint;
      
      private var m_groundAnchor1:b2Vec2;
      
      private var m_groundAnchor2:b2Vec2;
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var m_J:b2Jacobian;
      
      private var m_constant:Number;
      
      private var m_ratio:Number;
      
      private var m_mass:Number;
      
      private var m_impulse:Number;
      
      public function b2GearJoint(param1:b2GearJointDef)
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         this.m_groundAnchor1 = new b2Vec2();
         this.m_groundAnchor2 = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.m_J = new b2Jacobian();
         super(param1);
         var _loc2_:int = param1.joint1.m_type;
         var _loc3_:int = param1.joint2.m_type;
         this.m_revolute1 = null;
         this.m_prismatic1 = null;
         this.m_revolute2 = null;
         this.m_prismatic2 = null;
         this.m_ground1 = param1.joint1.GetBodyA();
         m_bodyA = param1.joint1.GetBodyB();
         if(_loc2_ == b2Joint.e_revoluteJoint)
         {
            this.m_revolute1 = param1.joint1 as b2RevoluteJoint;
            this.m_groundAnchor1.SetV(this.m_revolute1.m_localAnchor1);
            this.m_localAnchor1.SetV(this.m_revolute1.m_localAnchor2);
            _loc4_ = this.m_revolute1.GetJointAngle();
         }
         else
         {
            this.m_prismatic1 = param1.joint1 as b2PrismaticJoint;
            this.m_groundAnchor1.SetV(this.m_prismatic1.m_localAnchor1);
            this.m_localAnchor1.SetV(this.m_prismatic1.m_localAnchor2);
            _loc4_ = this.m_prismatic1.GetJointTranslation();
         }
         this.m_ground2 = param1.joint2.GetBodyA();
         m_bodyB = param1.joint2.GetBodyB();
         if(_loc3_ == b2Joint.e_revoluteJoint)
         {
            this.m_revolute2 = param1.joint2 as b2RevoluteJoint;
            this.m_groundAnchor2.SetV(this.m_revolute2.m_localAnchor1);
            this.m_localAnchor2.SetV(this.m_revolute2.m_localAnchor2);
            _loc5_ = this.m_revolute2.GetJointAngle();
         }
         else
         {
            this.m_prismatic2 = param1.joint2 as b2PrismaticJoint;
            this.m_groundAnchor2.SetV(this.m_prismatic2.m_localAnchor1);
            this.m_localAnchor2.SetV(this.m_prismatic2.m_localAnchor2);
            _loc5_ = this.m_prismatic2.GetJointTranslation();
         }
         this.m_ratio = param1.ratio;
         this.m_constant = _loc4_ + this.m_ratio * _loc5_;
         this.m_impulse = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::m_bodyA.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::m_bodyB.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.m_impulse * this.m_J.linearB.x,param1 * this.m_impulse * this.m_J.linearB.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:b2Mat22 = b2internal::m_bodyB.m_xf.R;
         var _loc3_:Number = this.m_localAnchor1.x - b2internal::m_bodyB.m_sweep.localCenter.x;
         var _loc4_:Number = this.m_localAnchor1.y - b2internal::m_bodyB.m_sweep.localCenter.y;
         var _loc5_:Number = _loc2_.col1.x * _loc3_ + _loc2_.col2.x * _loc4_;
         _loc4_ = _loc2_.col1.y * _loc3_ + _loc2_.col2.y * _loc4_;
         _loc3_ = _loc5_;
         var _loc6_:Number = this.m_impulse * this.m_J.linearB.x;
         var _loc7_:Number = this.m_impulse * this.m_J.linearB.y;
         return param1 * (this.m_impulse * this.m_J.angularB - _loc3_ * _loc7_ + _loc4_ * _loc6_);
      }
      
      public function GetRatio() : Number
      {
         return this.m_ratio;
      }
      
      public function SetRatio(param1:Number) : void
      {
         this.m_ratio = param1;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc4_:b2Body = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:b2Mat22 = null;
         var _loc11_:b2Vec2 = null;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc2_:b2Body = this.m_ground1;
         var _loc3_:b2Body = this.m_ground2;
         _loc4_ = b2internal::m_bodyA;
         var _loc5_:b2Body = b2internal::m_bodyB;
         var _loc14_:Number = 0;
         this.m_J.SetZero();
         if(this.m_revolute1)
         {
            this.m_J.angularA = -1;
            _loc14_ += _loc4_.m_invI;
         }
         else
         {
            _loc10_ = _loc2_.m_xf.R;
            _loc11_ = this.m_prismatic1.m_localXAxis1;
            _loc6_ = _loc10_.col1.x * _loc11_.x + _loc10_.col2.x * _loc11_.y;
            _loc7_ = _loc10_.col1.y * _loc11_.x + _loc10_.col2.y * _loc11_.y;
            _loc10_ = _loc4_.m_xf.R;
            _loc8_ = this.m_localAnchor1.x - _loc4_.m_sweep.localCenter.x;
            _loc9_ = this.m_localAnchor1.y - _loc4_.m_sweep.localCenter.y;
            _loc13_ = _loc10_.col1.x * _loc8_ + _loc10_.col2.x * _loc9_;
            _loc9_ = _loc10_.col1.y * _loc8_ + _loc10_.col2.y * _loc9_;
            _loc12_ = (_loc8_ = _loc13_) * _loc7_ - _loc9_ * _loc6_;
            this.m_J.linearA.Set(-_loc6_,-_loc7_);
            this.m_J.angularA = -_loc12_;
            _loc14_ += _loc4_.m_invMass + _loc4_.m_invI * _loc12_ * _loc12_;
         }
         if(this.m_revolute2)
         {
            this.m_J.angularB = -this.m_ratio;
            _loc14_ += this.m_ratio * this.m_ratio * _loc5_.m_invI;
         }
         else
         {
            _loc10_ = _loc3_.m_xf.R;
            _loc11_ = this.m_prismatic2.m_localXAxis1;
            _loc6_ = _loc10_.col1.x * _loc11_.x + _loc10_.col2.x * _loc11_.y;
            _loc7_ = _loc10_.col1.y * _loc11_.x + _loc10_.col2.y * _loc11_.y;
            _loc10_ = _loc5_.m_xf.R;
            _loc8_ = this.m_localAnchor2.x - _loc5_.m_sweep.localCenter.x;
            _loc9_ = this.m_localAnchor2.y - _loc5_.m_sweep.localCenter.y;
            _loc13_ = _loc10_.col1.x * _loc8_ + _loc10_.col2.x * _loc9_;
            _loc9_ = _loc10_.col1.y * _loc8_ + _loc10_.col2.y * _loc9_;
            _loc12_ = (_loc8_ = _loc13_) * _loc7_ - _loc9_ * _loc6_;
            this.m_J.linearB.Set(-this.m_ratio * _loc6_,-this.m_ratio * _loc7_);
            this.m_J.angularB = -this.m_ratio * _loc12_;
            _loc14_ += this.m_ratio * this.m_ratio * (_loc5_.m_invMass + _loc5_.m_invI * _loc12_ * _loc12_);
         }
         this.m_mass = _loc14_ > 0 ? Number(1 / _loc14_) : Number(0);
         if(param1.warmStarting)
         {
            _loc4_.m_linearVelocity.x += _loc4_.m_invMass * this.m_impulse * this.m_J.linearA.x;
            _loc4_.m_linearVelocity.y += _loc4_.m_invMass * this.m_impulse * this.m_J.linearA.y;
            _loc4_.m_angularVelocity += _loc4_.m_invI * this.m_impulse * this.m_J.angularA;
            _loc5_.m_linearVelocity.x += _loc5_.m_invMass * this.m_impulse * this.m_J.linearB.x;
            _loc5_.m_linearVelocity.y += _loc5_.m_invMass * this.m_impulse * this.m_J.linearB.y;
            _loc5_.m_angularVelocity += _loc5_.m_invI * this.m_impulse * this.m_J.angularB;
         }
         else
         {
            this.m_impulse = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = b2internal::m_bodyA;
         var _loc3_:b2Body = b2internal::m_bodyB;
         var _loc4_:Number = this.m_J.Compute(_loc2_.m_linearVelocity,_loc2_.m_angularVelocity,_loc3_.m_linearVelocity,_loc3_.m_angularVelocity);
         var _loc5_:Number = -this.m_mass * _loc4_;
         this.m_impulse += _loc5_;
         _loc2_.m_linearVelocity.x += _loc2_.m_invMass * _loc5_ * this.m_J.linearA.x;
         _loc2_.m_linearVelocity.y += _loc2_.m_invMass * _loc5_ * this.m_J.linearA.y;
         _loc2_.m_angularVelocity += _loc2_.m_invI * _loc5_ * this.m_J.angularA;
         _loc3_.m_linearVelocity.x += _loc3_.m_invMass * _loc5_ * this.m_J.linearB.x;
         _loc3_.m_linearVelocity.y += _loc3_.m_invMass * _loc5_ * this.m_J.linearB.y;
         _loc3_.m_angularVelocity += _loc3_.m_invI * _loc5_ * this.m_J.angularB;
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc3_:b2Body = b2internal::m_bodyA;
         var _loc4_:b2Body = b2internal::m_bodyB;
         if(this.m_revolute1)
         {
            _loc5_ = this.m_revolute1.GetJointAngle();
         }
         else
         {
            _loc5_ = this.m_prismatic1.GetJointTranslation();
         }
         if(this.m_revolute2)
         {
            _loc6_ = this.m_revolute2.GetJointAngle();
         }
         else
         {
            _loc6_ = this.m_prismatic2.GetJointTranslation();
         }
         var _loc7_:Number = this.m_constant - (_loc5_ + this.m_ratio * _loc6_);
         var _loc8_:Number = -this.m_mass * _loc7_;
         _loc3_.m_sweep.c.x += _loc3_.m_invMass * _loc8_ * this.m_J.linearA.x;
         _loc3_.m_sweep.c.y += _loc3_.m_invMass * _loc8_ * this.m_J.linearA.y;
         _loc3_.m_sweep.a += _loc3_.m_invI * _loc8_ * this.m_J.angularA;
         _loc4_.m_sweep.c.x += _loc4_.m_invMass * _loc8_ * this.m_J.linearB.x;
         _loc4_.m_sweep.c.y += _loc4_.m_invMass * _loc8_ * this.m_J.linearB.y;
         _loc4_.m_sweep.a += _loc4_.m_invI * _loc8_ * this.m_J.angularB;
         _loc3_.SynchronizeTransform();
         _loc4_.SynchronizeTransform();
         return 0 < b2Settings.b2_linearSlop;
      }
   }
}
