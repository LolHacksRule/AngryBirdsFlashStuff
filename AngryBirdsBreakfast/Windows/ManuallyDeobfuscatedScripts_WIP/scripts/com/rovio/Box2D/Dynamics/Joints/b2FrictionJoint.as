package com.rovio.Box2D.Dynamics.Joints
{
   import com.rovio.Box2D.Common.b2internal;
   import com.rovio.Box2D.Dynamics.b2Body;
   import com.rovio.Box2D.Dynamics.b2TimeStep;
   import com.rovio.Box2D.Common.Math.b2Mat22;
   import com.rovio.Box2D.Common.Math.b2Math;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   
   use namespace b2internal;
   
   public class b2FrictionJoint extends b2Joint
   {
       
      
      private var m_localAnchorA:b2Vec2;
      
      private var m_localAnchorB:b2Vec2;
      
      public var m_linearMass:b2Mat22;
      
      public var m_angularMass:Number;
      
      private var m_linearImpulse:b2Vec2;
      
      private var m_angularImpulse:Number;
      
      private var m_maxForce:Number;
      
      private var m_maxTorque:Number;
      
      public function b2FrictionJoint(param1:b2FrictionJointDef)
      {
         this.m_localAnchorA = new b2Vec2();
         this.m_localAnchorB = new b2Vec2();
         this.m_linearMass = new b2Mat22();
         this.m_linearImpulse = new b2Vec2();
         super(param1);
         this.m_localAnchorA.SetV(param1.localAnchorA);
         this.m_localAnchorB.SetV(param1.localAnchorB);
         this.m_linearMass.SetZero();
         this.m_angularMass = 0;
         this.m_linearImpulse.SetZero();
         this.m_angularImpulse = 0;
         this.m_maxForce = param1.maxForce;
         this.m_maxTorque = param1.maxTorque;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::m_bodyA.GetWorldPoint(this.m_localAnchorA);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::m_bodyB.GetWorldPoint(this.m_localAnchorB);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.m_linearImpulse.x,param1 * this.m_linearImpulse.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.m_angularImpulse;
      }
      
      public function SetMaxForce(param1:Number) : void
      {
         this.m_maxForce = param1;
      }
      
      public function GetMaxForce() : Number
      {
         return this.m_maxForce;
      }
      
      public function SetMaxTorque(param1:Number) : void
      {
         this.m_maxTorque = param1;
      }
      
      public function GetMaxTorque() : Number
      {
         return this.m_maxTorque;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:b2Mat22 = null;
         var _loc15_:b2Vec2 = null;
         _loc4_ = b2internal::m_bodyA;
         _loc5_ = b2internal::m_bodyB;
         _loc2_ = _loc4_.m_xf.R;
         _loc6_ = this.m_localAnchorA.x - _loc4_.m_sweep.localCenter.x;
         var _loc7_:Number = this.m_localAnchorA.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         _loc8_ = this.m_localAnchorB.x - _loc5_.m_sweep.localCenter.x;
         var _loc9_:Number = this.m_localAnchorB.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         _loc10_ = _loc4_.m_invMass;
         var _loc11_:Number = _loc5_.m_invMass;
         _loc12_ = _loc4_.m_invI;
         _loc13_ = _loc5_.m_invI;
         (_loc14_ = new b2Mat22()).col1.x = _loc10_ + _loc11_;
         _loc14_.col2.x = 0;
         _loc14_.col1.y = 0;
         _loc14_.col2.y = _loc10_ + _loc11_;
         _loc14_.col1.x += _loc12_ * _loc7_ * _loc7_;
         _loc14_.col2.x += -_loc12_ * _loc6_ * _loc7_;
         _loc14_.col1.y += -_loc12_ * _loc6_ * _loc7_;
         _loc14_.col2.y += _loc12_ * _loc6_ * _loc6_;
         _loc14_.col1.x += _loc13_ * _loc9_ * _loc9_;
         _loc14_.col2.x += -_loc13_ * _loc8_ * _loc9_;
         _loc14_.col1.y += -_loc13_ * _loc8_ * _loc9_;
         _loc14_.col2.y += _loc13_ * _loc8_ * _loc8_;
         _loc14_.GetInverse(this.m_linearMass);
         this.m_angularMass = _loc12_ + _loc13_;
         if(this.m_angularMass > 0)
         {
            this.m_angularMass = 1 / this.m_angularMass;
         }
         if(param1.warmStarting)
         {
            this.m_linearImpulse.x *= param1.dtRatio;
            this.m_linearImpulse.y *= param1.dtRatio;
            this.m_angularImpulse *= param1.dtRatio;
            _loc15_ = this.m_linearImpulse;
            _loc4_.m_linearVelocity.x -= _loc10_ * _loc15_.x;
            _loc4_.m_linearVelocity.y -= _loc10_ * _loc15_.y;
            _loc4_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc15_.y - _loc7_ * _loc15_.x + this.m_angularImpulse);
            _loc5_.m_linearVelocity.x += _loc11_ * _loc15_.x;
            _loc5_.m_linearVelocity.y += _loc11_ * _loc15_.y;
            _loc5_.m_angularVelocity += _loc13_ * (_loc8_ * _loc15_.y - _loc9_ * _loc15_.x + this.m_angularImpulse);
         }
         else
         {
            this.m_linearImpulse.SetZero();
            this.m_angularImpulse = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc4_:b2Body = b2internal::m_bodyA;
         var _loc5_:b2Body = b2internal::m_bodyB;
         var _loc6_:b2Vec2 = _loc4_.m_linearVelocity;
         var _loc7_:Number = _loc4_.m_angularVelocity;
         var _loc8_:b2Vec2 = _loc5_.m_linearVelocity;
         var _loc9_:Number = _loc5_.m_angularVelocity;
         var _loc10_:Number = _loc4_.m_invMass;
         var _loc11_:Number = _loc5_.m_invMass;
         var _loc12_:Number = _loc4_.m_invI;
         var _loc13_:Number = _loc5_.m_invI;
         _loc2_ = _loc4_.m_xf.R;
         var _loc14_:Number = this.m_localAnchorA.x - _loc4_.m_sweep.localCenter.x;
         var _loc15_:Number = this.m_localAnchorA.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc14_ + _loc2_.col2.x * _loc15_;
         _loc15_ = _loc2_.col1.y * _loc14_ + _loc2_.col2.y * _loc15_;
         _loc14_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         var _loc16_:Number = this.m_localAnchorB.x - _loc5_.m_sweep.localCenter.x;
         var _loc17_:Number = this.m_localAnchorB.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc16_ + _loc2_.col2.x * _loc17_;
         _loc17_ = _loc2_.col1.y * _loc16_ + _loc2_.col2.y * _loc17_;
         _loc16_ = _loc3_;
         var _loc19_:Number = _loc9_ - _loc7_;
         var _loc20_:Number = -this.m_angularMass * _loc19_;
         var _loc21_:Number = this.m_angularImpulse;
         _loc18_ = param1.dt * this.m_maxTorque;
         this.m_angularImpulse = b2Math.Clamp(this.m_angularImpulse + _loc20_,-_loc18_,_loc18_);
         _loc20_ = this.m_angularImpulse - _loc21_;
         _loc7_ -= _loc12_ * _loc20_;
         _loc9_ += _loc13_ * _loc20_;
         var _loc22_:Number = _loc8_.x - _loc9_ * _loc17_ - _loc6_.x + _loc7_ * _loc15_;
         var _loc23_:Number = _loc8_.y + _loc9_ * _loc16_ - _loc6_.y - _loc7_ * _loc14_;
         var _loc24_:b2Vec2 = b2Math.MulMV(this.m_linearMass,new b2Vec2(-_loc22_,-_loc23_));
         var _loc25_:b2Vec2 = this.m_linearImpulse.Copy();
         this.m_linearImpulse.Add(_loc24_);
         _loc18_ = param1.dt * this.m_maxForce;
         if(this.m_linearImpulse.LengthSquared() > _loc18_ * _loc18_)
         {
            this.m_linearImpulse.Normalize();
            this.m_linearImpulse.Multiply(_loc18_);
         }
         _loc24_ = b2Math.SubtractVV(this.m_linearImpulse,_loc25_);
         _loc6_.x -= _loc10_ * _loc24_.x;
         _loc6_.y -= _loc10_ * _loc24_.y;
         _loc7_ -= _loc12_ * (_loc14_ * _loc24_.y - _loc15_ * _loc24_.x);
         _loc8_.x += _loc11_ * _loc24_.x;
         _loc8_.y += _loc11_ * _loc24_.y;
         _loc9_ += _loc13_ * (_loc16_ * _loc24_.y - _loc17_ * _loc24_.x);
         _loc4_.m_angularVelocity = _loc7_;
         _loc5_.m_angularVelocity = _loc9_;
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
