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
      
      public function b2MouseJoint(def:b2MouseJointDef)
      {
         var tX:Number = NaN;
         var tMat:b2Mat22 = null;
         this.K = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.m_localAnchor = new b2Vec2();
         this.m_target = new b2Vec2();
         this.m_impulse = new b2Vec2();
         this.m_mass = new b2Mat22();
         this.m_C = new b2Vec2();
         super(def);
         this.m_target.SetV(def.target);
         tX = this.m_target.x - b2internal::m_bodyB.m_xf.position.x;
         var tY:Number = this.m_target.y - b2internal::m_bodyB.m_xf.position.y;
         tMat = b2internal::m_bodyB.m_xf.R;
         this.m_localAnchor.x = tX * tMat.col1.x + tY * tMat.col1.y;
         this.m_localAnchor.y = tX * tMat.col2.x + tY * tMat.col2.y;
         this.m_maxForce = def.maxForce;
         this.m_impulse.SetZero();
         this.m_frequencyHz = def.frequencyHz;
         this.m_dampingRatio = def.dampingRatio;
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
      
      override public function GetReactionForce(inv_dt:Number) : b2Vec2
      {
         return new b2Vec2(inv_dt * this.m_impulse.x,inv_dt * this.m_impulse.y);
      }
      
      override public function GetReactionTorque(inv_dt:Number) : Number
      {
         return 0;
      }
      
      public function GetTarget() : b2Vec2
      {
         return this.m_target;
      }
      
      public function SetTarget(target:b2Vec2) : void
      {
         if(b2internal::m_bodyB.IsAwake() == false)
         {
            b2internal::m_bodyB.SetAwake(true);
         }
         this.m_target = target;
      }
      
      public function GetMaxForce() : Number
      {
         return this.m_maxForce;
      }
      
      public function SetMaxForce(maxForce:Number) : void
      {
         this.m_maxForce = maxForce;
      }
      
      public function GetFrequency() : Number
      {
         return this.m_frequencyHz;
      }
      
      public function SetFrequency(hz:Number) : void
      {
         this.m_frequencyHz = hz;
      }
      
      public function GetDampingRatio() : Number
      {
         return this.m_dampingRatio;
      }
      
      public function SetDampingRatio(ratio:Number) : void
      {
         this.m_dampingRatio = ratio;
      }
      
      override b2internal function InitVelocityConstraints(step:b2TimeStep) : void
      {
         var tMat:b2Mat22 = null;
         var invMass:Number = NaN;
         var invI:Number = NaN;
         var b:b2Body = b2internal::m_bodyB;
         var mass:Number = b.GetMass();
         var omega:Number = 2 * Math.PI * this.m_frequencyHz;
         var d:Number = 2 * mass * this.m_dampingRatio * omega;
         var k:Number = mass * omega * omega;
         this.m_gamma = step.dt * (d + step.dt * k);
         this.m_gamma = this.m_gamma != 0 ? Number(1 / this.m_gamma) : Number(0);
         this.m_beta = step.dt * k * this.m_gamma;
         tMat = b.m_xf.R;
         var rX:Number = this.m_localAnchor.x - b.m_sweep.localCenter.x;
         var rY:Number = this.m_localAnchor.y - b.m_sweep.localCenter.y;
         var tX:Number = tMat.col1.x * rX + tMat.col2.x * rY;
         rY = tMat.col1.y * rX + tMat.col2.y * rY;
         rX = tX;
         invMass = b.m_invMass;
         invI = b.m_invI;
         this.K1.col1.x = invMass;
         this.K1.col2.x = 0;
         this.K1.col1.y = 0;
         this.K1.col2.y = invMass;
         this.K2.col1.x = invI * rY * rY;
         this.K2.col2.x = -invI * rX * rY;
         this.K2.col1.y = -invI * rX * rY;
         this.K2.col2.y = invI * rX * rX;
         this.K.SetM(this.K1);
         this.K.AddM(this.K2);
         this.K.col1.x += this.m_gamma;
         this.K.col2.y += this.m_gamma;
         this.K.GetInverse(this.m_mass);
         this.m_C.x = b.m_sweep.c.x + rX - this.m_target.x;
         this.m_C.y = b.m_sweep.c.y + rY - this.m_target.y;
         b.m_angularVelocity *= 0.98;
         this.m_impulse.x *= step.dtRatio;
         this.m_impulse.y *= step.dtRatio;
         b.m_linearVelocity.x += invMass * this.m_impulse.x;
         b.m_linearVelocity.y += invMass * this.m_impulse.y;
         b.m_angularVelocity += invI * (rX * this.m_impulse.y - rY * this.m_impulse.x);
      }
      
      override b2internal function SolveVelocityConstraints(step:b2TimeStep) : void
      {
         var tMat:b2Mat22 = null;
         var tX:Number = NaN;
         var tY:Number = NaN;
         var b:b2Body = b2internal::m_bodyB;
         tMat = b.m_xf.R;
         var rX:Number = this.m_localAnchor.x - b.m_sweep.localCenter.x;
         var rY:Number = this.m_localAnchor.y - b.m_sweep.localCenter.y;
         tX = tMat.col1.x * rX + tMat.col2.x * rY;
         rY = tMat.col1.y * rX + tMat.col2.y * rY;
         rX = tX;
         var CdotX:Number = b.m_linearVelocity.x + -b.m_angularVelocity * rY;
         var CdotY:Number = b.m_linearVelocity.y + b.m_angularVelocity * rX;
         tMat = this.m_mass;
         tX = CdotX + this.m_beta * this.m_C.x + this.m_gamma * this.m_impulse.x;
         tY = CdotY + this.m_beta * this.m_C.y + this.m_gamma * this.m_impulse.y;
         var impulseX:Number = -(tMat.col1.x * tX + tMat.col2.x * tY);
         var impulseY:Number = -(tMat.col1.y * tX + tMat.col2.y * tY);
         var oldImpulseX:Number = this.m_impulse.x;
         var oldImpulseY:Number = this.m_impulse.y;
         this.m_impulse.x += impulseX;
         this.m_impulse.y += impulseY;
         var maxImpulse:Number = step.dt * this.m_maxForce;
         if(this.m_impulse.LengthSquared() > maxImpulse * maxImpulse)
         {
            this.m_impulse.Multiply(maxImpulse / this.m_impulse.Length());
         }
         impulseX = this.m_impulse.x - oldImpulseX;
         impulseY = this.m_impulse.y - oldImpulseY;
         b.m_linearVelocity.x += b.m_invMass * impulseX;
         b.m_linearVelocity.y += b.m_invMass * impulseY;
         b.m_angularVelocity += b.m_invI * (rX * impulseY - rY * impulseX);
      }
      
      override b2internal function SolvePositionConstraints(baumgarte:Number) : Boolean
      {
         return true;
      }
   }
}
