package com.rovio.Box2D.Dynamics.Joints
{
   import com.rovio.Box2D.Common.Math.b2Mat22;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Common.b2internal;
   import com.rovio.Box2D.Dynamics.b2Body;
   import com.rovio.Box2D.Dynamics.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2MouseJoint extends b2Joint
   {
       
      
      private var K:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var m_localAnchor:b2Vec2;
      
      private var m_target:b2Vec2;
      
      private var m_impulse:b2Vec2;
      
      private var m_mass:b2Mat22;
      
      private var m_C:b2Vec2;
      
      private var m_maxForce:Number;
      
      private var m_frequencyHz:Number;
      
      private var m_dampingRatio:Number;
      
      private var m_beta:Number;
      
      private var m_gamma:Number;
      
      public function b2MouseJoint(param1:b2MouseJointDef)
      {
         var _loc2_:Number = NaN;
         var _loc4_:b2Mat22 = null;
         this.K = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.m_localAnchor = new b2Vec2();
         this.m_target = new b2Vec2();
         this.m_impulse = new b2Vec2();
         this.m_mass = new b2Mat22();
         this.m_C = new b2Vec2();
         super(param1);
         this.m_target.SetV(param1.target);
         _loc2_ = this.m_target.x - b2internal::m_bodyB.m_xf.position.x;
         var _loc3_:Number = this.m_target.y - b2internal::m_bodyB.m_xf.position.y;
         _loc4_ = b2internal::m_bodyB.m_xf.R;
         this.m_localAnchor.x = _loc2_ * _loc4_.col1.x + _loc3_ * _loc4_.col1.y;
         this.m_localAnchor.y = _loc2_ * _loc4_.col2.x + _loc3_ * _loc4_.col2.y;
         this.m_maxForce = param1.maxForce;
         this.m_impulse.SetZero();
         this.m_frequencyHz = param1.frequencyHz;
         this.m_dampingRatio = param1.dampingRatio;
         this.m_beta = 0;
         this.m_gamma = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return this.m_target;
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::m_bodyB.GetWorldPoint(this.m_localAnchor);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.m_impulse.x,param1 * this.m_impulse.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function GetTarget() : b2Vec2
      {
         return this.m_target;
      }
      
      public function SetTarget(param1:b2Vec2) : void
      {
         if(b2internal::m_bodyB.IsAwake() == false)
         {
            b2internal::m_bodyB.SetAwake(true);
         }
         this.m_target = param1;
      }
      
      public function GetMaxForce() : Number
      {
         return this.m_maxForce;
      }
      
      public function SetMaxForce(param1:Number) : void
      {
         this.m_maxForce = param1;
      }
      
      public function GetFrequency() : Number
      {
         return this.m_frequencyHz;
      }
      
      public function SetFrequency(param1:Number) : void
      {
         this.m_frequencyHz = param1;
      }
      
      public function GetDampingRatio() : Number
      {
         return this.m_dampingRatio;
      }
      
      public function SetDampingRatio(param1:Number) : void
      {
         this.m_dampingRatio = param1;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc7_:b2Mat22 = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc2_:b2Body = b2internal::m_bodyB;
         var _loc3_:Number = _loc2_.GetMass();
         var _loc4_:Number = 2 * Math.PI * this.m_frequencyHz;
         var _loc5_:Number = 2 * _loc3_ * this.m_dampingRatio * _loc4_;
         var _loc6_:Number = _loc3_ * _loc4_ * _loc4_;
         this.m_gamma = param1.dt * (_loc5_ + param1.dt * _loc6_);
         this.m_gamma = this.m_gamma != 0 ? Number(1 / this.m_gamma) : Number(0);
         this.m_beta = param1.dt * _loc6_ * this.m_gamma;
         _loc7_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor.x - _loc2_.m_sweep.localCenter.x;
         var _loc9_:Number = this.m_localAnchor.y - _loc2_.m_sweep.localCenter.y;
         var _loc10_:Number = _loc7_.col1.x * _loc8_ + _loc7_.col2.x * _loc9_;
         _loc9_ = _loc7_.col1.y * _loc8_ + _loc7_.col2.y * _loc9_;
         _loc8_ = _loc10_;
         _loc11_ = _loc2_.m_invMass;
         _loc12_ = _loc2_.m_invI;
         this.K1.col1.x = _loc11_;
         this.K1.col2.x = 0;
         this.K1.col1.y = 0;
         this.K1.col2.y = _loc11_;
         this.K2.col1.x = _loc12_ * _loc9_ * _loc9_;
         this.K2.col2.x = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col1.y = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col2.y = _loc12_ * _loc8_ * _loc8_;
         this.K.SetM(this.K1);
         this.K.AddM(this.K2);
         this.K.col1.x += this.m_gamma;
         this.K.col2.y += this.m_gamma;
         this.K.GetInverse(this.m_mass);
         this.m_C.x = _loc2_.m_sweep.c.x + _loc8_ - this.m_target.x;
         this.m_C.y = _loc2_.m_sweep.c.y + _loc9_ - this.m_target.y;
         _loc2_.m_angularVelocity *= 0.98;
         this.m_impulse.x *= param1.dtRatio;
         this.m_impulse.y *= param1.dtRatio;
         _loc2_.m_linearVelocity.x += _loc11_ * this.m_impulse.x;
         _loc2_.m_linearVelocity.y += _loc11_ * this.m_impulse.y;
         _loc2_.m_angularVelocity += _loc12_ * (_loc8_ * this.m_impulse.y - _loc9_ * this.m_impulse.x);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc3_:b2Mat22 = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:b2Body = b2internal::m_bodyB;
         _loc3_ = _loc2_.m_xf.R;
         var _loc6_:Number = this.m_localAnchor.x - _loc2_.m_sweep.localCenter.x;
         var _loc7_:Number = this.m_localAnchor.y - _loc2_.m_sweep.localCenter.y;
         _loc4_ = _loc3_.col1.x * _loc6_ + _loc3_.col2.x * _loc7_;
         _loc7_ = _loc3_.col1.y * _loc6_ + _loc3_.col2.y * _loc7_;
         _loc6_ = _loc4_;
         var _loc8_:Number = _loc2_.m_linearVelocity.x + -_loc2_.m_angularVelocity * _loc7_;
         var _loc9_:Number = _loc2_.m_linearVelocity.y + _loc2_.m_angularVelocity * _loc6_;
         _loc3_ = this.m_mass;
         _loc4_ = _loc8_ + this.m_beta * this.m_C.x + this.m_gamma * this.m_impulse.x;
         _loc5_ = _loc9_ + this.m_beta * this.m_C.y + this.m_gamma * this.m_impulse.y;
         var _loc10_:Number = -(_loc3_.col1.x * _loc4_ + _loc3_.col2.x * _loc5_);
         var _loc11_:Number = -(_loc3_.col1.y * _loc4_ + _loc3_.col2.y * _loc5_);
         var _loc12_:Number = this.m_impulse.x;
         var _loc13_:Number = this.m_impulse.y;
         this.m_impulse.x += _loc10_;
         this.m_impulse.y += _loc11_;
         var _loc14_:Number = param1.dt * this.m_maxForce;
         if(this.m_impulse.LengthSquared() > _loc14_ * _loc14_)
         {
            this.m_impulse.Multiply(_loc14_ / this.m_impulse.Length());
         }
         _loc10_ = this.m_impulse.x - _loc12_;
         _loc11_ = this.m_impulse.y - _loc13_;
         _loc2_.m_linearVelocity.x += _loc2_.m_invMass * _loc10_;
         _loc2_.m_linearVelocity.y += _loc2_.m_invMass * _loc11_;
         _loc2_.m_angularVelocity += _loc2_.m_invI * (_loc6_ * _loc11_ - _loc7_ * _loc10_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
