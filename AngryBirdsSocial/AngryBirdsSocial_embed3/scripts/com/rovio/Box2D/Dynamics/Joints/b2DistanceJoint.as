package com.rovio.Box2D.Dynamics.Joints
{
   import com.rovio.Box2D.Common.Math.b2Mat22;
   import com.rovio.Box2D.Common.Math.b2Math;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Common.b2Settings;
   import com.rovio.Box2D.Common.b2internal;
   import com.rovio.Box2D.Dynamics.b2Body;
   import com.rovio.Box2D.Dynamics.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2DistanceJoint extends b2Joint
   {
       
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var m_u:b2Vec2;
      
      private var m_frequencyHz:Number;
      
      private var m_dampingRatio:Number;
      
      private var m_gamma:Number;
      
      private var m_bias:Number;
      
      private var m_impulse:Number;
      
      private var m_mass:Number;
      
      private var m_length:Number;
      
      public function b2DistanceJoint(def:b2DistanceJointDef)
      {
         var tMat:b2Mat22 = null;
         var tX:Number = NaN;
         var tY:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.m_u = new b2Vec2();
         super(def);
         this.m_localAnchor1.SetV(def.localAnchorA);
         this.m_localAnchor2.SetV(def.localAnchorB);
         this.m_length = def.length;
         this.m_frequencyHz = def.frequencyHz;
         this.m_dampingRatio = def.dampingRatio;
         this.m_impulse = 0;
         this.m_gamma = 0;
         this.m_bias = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return m_bodyA.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return m_bodyB.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(inv_dt:Number) : b2Vec2
      {
         return new b2Vec2(inv_dt * this.m_impulse * this.m_u.x,inv_dt * this.m_impulse * this.m_u.y);
      }
      
      override public function GetReactionTorque(inv_dt:Number) : Number
      {
         return 0;
      }
      
      public function GetLength() : Number
      {
         return this.m_length;
      }
      
      public function SetLength(length:Number) : void
      {
         this.m_length = length;
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
         var tX:Number = NaN;
         var bA:b2Body = null;
         var bB:b2Body = null;
         var r1Y:Number = NaN;
         var r2Y:Number = NaN;
         var C:Number = NaN;
         var omega:Number = NaN;
         var d:Number = NaN;
         var k:Number = NaN;
         var PX:Number = NaN;
         var PY:Number = NaN;
         bA = m_bodyA;
         bB = m_bodyB;
         tMat = bA.m_xf.R;
         var r1X:Number = this.m_localAnchor1.x - bA.m_sweep.localCenter.x;
         r1Y = this.m_localAnchor1.y - bA.m_sweep.localCenter.y;
         tX = tMat.col1.x * r1X + tMat.col2.x * r1Y;
         r1Y = tMat.col1.y * r1X + tMat.col2.y * r1Y;
         r1X = tX;
         tMat = bB.m_xf.R;
         var r2X:Number = this.m_localAnchor2.x - bB.m_sweep.localCenter.x;
         r2Y = this.m_localAnchor2.y - bB.m_sweep.localCenter.y;
         tX = tMat.col1.x * r2X + tMat.col2.x * r2Y;
         r2Y = tMat.col1.y * r2X + tMat.col2.y * r2Y;
         r2X = tX;
         this.m_u.x = bB.m_sweep.c.x + r2X - bA.m_sweep.c.x - r1X;
         this.m_u.y = bB.m_sweep.c.y + r2Y - bA.m_sweep.c.y - r1Y;
         var length:Number = Math.sqrt(this.m_u.x * this.m_u.x + this.m_u.y * this.m_u.y);
         if(length > b2Settings.b2_linearSlop)
         {
            this.m_u.Multiply(1 / length);
         }
         else
         {
            this.m_u.SetZero();
         }
         var cr1u:Number = r1X * this.m_u.y - r1Y * this.m_u.x;
         var cr2u:Number = r2X * this.m_u.y - r2Y * this.m_u.x;
         var invMass:Number = bA.m_invMass + bA.m_invI * cr1u * cr1u + bB.m_invMass + bB.m_invI * cr2u * cr2u;
         this.m_mass = invMass != 0 ? Number(1 / invMass) : Number(0);
         if(this.m_frequencyHz > 0)
         {
            C = length - this.m_length;
            omega = 2 * Math.PI * this.m_frequencyHz;
            d = 2 * this.m_mass * this.m_dampingRatio * omega;
            k = this.m_mass * omega * omega;
            this.m_gamma = step.dt * (d + step.dt * k);
            this.m_gamma = this.m_gamma != 0 ? Number(1 / this.m_gamma) : Number(0);
            this.m_bias = C * step.dt * k * this.m_gamma;
            this.m_mass = invMass + this.m_gamma;
            this.m_mass = this.m_mass != 0 ? Number(1 / this.m_mass) : Number(0);
         }
         if(step.warmStarting)
         {
            this.m_impulse *= step.dtRatio;
            PX = this.m_impulse * this.m_u.x;
            PY = this.m_impulse * this.m_u.y;
            bA.m_linearVelocity.x -= bA.m_invMass * PX;
            bA.m_linearVelocity.y -= bA.m_invMass * PY;
            bA.m_angularVelocity -= bA.m_invI * (r1X * PY - r1Y * PX);
            bB.m_linearVelocity.x += bB.m_invMass * PX;
            bB.m_linearVelocity.y += bB.m_invMass * PY;
            bB.m_angularVelocity += bB.m_invI * (r2X * PY - r2Y * PX);
         }
         else
         {
            this.m_impulse = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(step:b2TimeStep) : void
      {
         var tMat:b2Mat22 = null;
         var bA:b2Body = m_bodyA;
         var bB:b2Body = m_bodyB;
         tMat = bA.m_xf.R;
         var r1X:Number = this.m_localAnchor1.x - bA.m_sweep.localCenter.x;
         var r1Y:Number = this.m_localAnchor1.y - bA.m_sweep.localCenter.y;
         var tX:Number = tMat.col1.x * r1X + tMat.col2.x * r1Y;
         r1Y = tMat.col1.y * r1X + tMat.col2.y * r1Y;
         r1X = tX;
         tMat = bB.m_xf.R;
         var r2X:Number = this.m_localAnchor2.x - bB.m_sweep.localCenter.x;
         var r2Y:Number = this.m_localAnchor2.y - bB.m_sweep.localCenter.y;
         tX = tMat.col1.x * r2X + tMat.col2.x * r2Y;
         r2Y = tMat.col1.y * r2X + tMat.col2.y * r2Y;
         r2X = tX;
         var v1X:Number = bA.m_linearVelocity.x + -bA.m_angularVelocity * r1Y;
         var v1Y:Number = bA.m_linearVelocity.y + bA.m_angularVelocity * r1X;
         var v2X:Number = bB.m_linearVelocity.x + -bB.m_angularVelocity * r2Y;
         var v2Y:Number = bB.m_linearVelocity.y + bB.m_angularVelocity * r2X;
         var Cdot:Number = this.m_u.x * (v2X - v1X) + this.m_u.y * (v2Y - v1Y);
         var impulse:Number = -this.m_mass * (Cdot + this.m_bias + this.m_gamma * this.m_impulse);
         this.m_impulse += impulse;
         var PX:Number = impulse * this.m_u.x;
         var PY:Number = impulse * this.m_u.y;
         bA.m_linearVelocity.x -= bA.m_invMass * PX;
         bA.m_linearVelocity.y -= bA.m_invMass * PY;
         bA.m_angularVelocity -= bA.m_invI * (r1X * PY - r1Y * PX);
         bB.m_linearVelocity.x += bB.m_invMass * PX;
         bB.m_linearVelocity.y += bB.m_invMass * PY;
         bB.m_angularVelocity += bB.m_invI * (r2X * PY - r2Y * PX);
      }
      
      override b2internal function SolvePositionConstraints(baumgarte:Number) : Boolean
      {
         var tMat:b2Mat22 = null;
         if(this.m_frequencyHz > 0)
         {
            return true;
         }
         var bA:b2Body = m_bodyA;
         var bB:b2Body = m_bodyB;
         tMat = bA.m_xf.R;
         var r1X:Number = this.m_localAnchor1.x - bA.m_sweep.localCenter.x;
         var r1Y:Number = this.m_localAnchor1.y - bA.m_sweep.localCenter.y;
         var tX:Number = tMat.col1.x * r1X + tMat.col2.x * r1Y;
         r1Y = tMat.col1.y * r1X + tMat.col2.y * r1Y;
         r1X = tX;
         tMat = bB.m_xf.R;
         var r2X:Number = this.m_localAnchor2.x - bB.m_sweep.localCenter.x;
         var r2Y:Number = this.m_localAnchor2.y - bB.m_sweep.localCenter.y;
         tX = tMat.col1.x * r2X + tMat.col2.x * r2Y;
         r2Y = tMat.col1.y * r2X + tMat.col2.y * r2Y;
         r2X = tX;
         var dX:Number = bB.m_sweep.c.x + r2X - bA.m_sweep.c.x - r1X;
         var dY:Number = bB.m_sweep.c.y + r2Y - bA.m_sweep.c.y - r1Y;
         var length:Number = Math.sqrt(dX * dX + dY * dY);
         dX /= length;
         dY /= length;
         var C:Number = length - this.m_length;
         C = b2Math.Clamp(C,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
         var impulse:Number = -this.m_mass * C;
         this.m_u.Set(dX,dY);
         var PX:Number = impulse * this.m_u.x;
         var PY:Number = impulse * this.m_u.y;
         bA.m_sweep.c.x -= bA.m_invMass * PX;
         bA.m_sweep.c.y -= bA.m_invMass * PY;
         bA.m_sweep.a -= bA.m_invI * (r1X * PY - r1Y * PX);
         bB.m_sweep.c.x += bB.m_invMass * PX;
         bB.m_sweep.c.y += bB.m_invMass * PY;
         bB.m_sweep.a += bB.m_invI * (r2X * PY - r2Y * PX);
         bA.SynchronizeTransform();
         bB.SynchronizeTransform();
         return b2Math.Abs(C) < b2Settings.b2_linearSlop;
      }
   }
}
