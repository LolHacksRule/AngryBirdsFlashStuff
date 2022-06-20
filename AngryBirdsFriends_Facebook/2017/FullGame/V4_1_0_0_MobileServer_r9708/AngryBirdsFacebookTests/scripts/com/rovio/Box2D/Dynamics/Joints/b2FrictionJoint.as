package com.rovio.Box2D.Dynamics.Joints
{
   import com.rovio.Box2D.Common.Math.b2Mat22;
   import com.rovio.Box2D.Common.Math.b2Math;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Common.b2internal;
   import com.rovio.Box2D.Dynamics.b2Body;
   import com.rovio.Box2D.Dynamics.b2TimeStep;
   
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
      
      public function b2FrictionJoint(def:b2FrictionJointDef)
      {
         this.m_localAnchorA = new b2Vec2();
         this.m_localAnchorB = new b2Vec2();
         this.m_linearMass = new b2Mat22();
         this.m_linearImpulse = new b2Vec2();
         super(def);
         this.m_localAnchorA.SetV(def.localAnchorA);
         this.m_localAnchorB.SetV(def.localAnchorB);
         this.m_linearMass.SetZero();
         this.m_angularMass = 0;
         this.m_linearImpulse.SetZero();
         this.m_angularImpulse = 0;
         this.m_maxForce = def.maxForce;
         this.m_maxTorque = def.maxTorque;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::m_bodyA.GetWorldPoint(this.m_localAnchorA);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::m_bodyB.GetWorldPoint(this.m_localAnchorB);
      }
      
      override public function GetReactionForce(inv_dt:Number) : b2Vec2
      {
         return new b2Vec2(inv_dt * this.m_linearImpulse.x,inv_dt * this.m_linearImpulse.y);
      }
      
      override public function GetReactionTorque(inv_dt:Number) : Number
      {
         return inv_dt * this.m_angularImpulse;
      }
      
      public function SetMaxForce(force:Number) : void
      {
         this.m_maxForce = force;
      }
      
      public function GetMaxForce() : Number
      {
         return this.m_maxForce;
      }
      
      public function SetMaxTorque(torque:Number) : void
      {
         this.m_maxTorque = torque;
      }
      
      public function GetMaxTorque() : Number
      {
         return this.m_maxTorque;
      }
      
      override b2internal function InitVelocityConstraints(step:b2TimeStep) : void
      {
         var tMat:b2Mat22 = null;
         var tX:Number = NaN;
         var bA:b2Body = null;
         var bB:b2Body = null;
         var rAX:Number = NaN;
         var rBX:Number = NaN;
         var mA:Number = NaN;
         var iA:Number = NaN;
         var iB:Number = NaN;
         var K:b2Mat22 = null;
         var P:b2Vec2 = null;
         bA = b2internal::m_bodyA;
         bB = b2internal::m_bodyB;
         tMat = bA.m_xf.R;
         rAX = this.m_localAnchorA.x - bA.m_sweep.localCenter.x;
         var rAY:Number = this.m_localAnchorA.y - bA.m_sweep.localCenter.y;
         tX = tMat.col1.x * rAX + tMat.col2.x * rAY;
         rAY = tMat.col1.y * rAX + tMat.col2.y * rAY;
         rAX = tX;
         tMat = bB.m_xf.R;
         rBX = this.m_localAnchorB.x - bB.m_sweep.localCenter.x;
         var rBY:Number = this.m_localAnchorB.y - bB.m_sweep.localCenter.y;
         tX = tMat.col1.x * rBX + tMat.col2.x * rBY;
         rBY = tMat.col1.y * rBX + tMat.col2.y * rBY;
         rBX = tX;
         mA = bA.m_invMass;
         var mB:Number = bB.m_invMass;
         iA = bA.m_invI;
         iB = bB.m_invI;
         K = new b2Mat22();
         K.col1.x = mA + mB;
         K.col2.x = 0;
         K.col1.y = 0;
         K.col2.y = mA + mB;
         K.col1.x += iA * rAY * rAY;
         K.col2.x += -iA * rAX * rAY;
         K.col1.y += -iA * rAX * rAY;
         K.col2.y += iA * rAX * rAX;
         K.col1.x += iB * rBY * rBY;
         K.col2.x += -iB * rBX * rBY;
         K.col1.y += -iB * rBX * rBY;
         K.col2.y += iB * rBX * rBX;
         K.GetInverse(this.m_linearMass);
         this.m_angularMass = iA + iB;
         if(this.m_angularMass > 0)
         {
            this.m_angularMass = 1 / this.m_angularMass;
         }
         if(step.warmStarting)
         {
            this.m_linearImpulse.x *= step.dtRatio;
            this.m_linearImpulse.y *= step.dtRatio;
            this.m_angularImpulse *= step.dtRatio;
            P = this.m_linearImpulse;
            bA.m_linearVelocity.x -= mA * P.x;
            bA.m_linearVelocity.y -= mA * P.y;
            bA.m_angularVelocity -= iA * (rAX * P.y - rAY * P.x + this.m_angularImpulse);
            bB.m_linearVelocity.x += mB * P.x;
            bB.m_linearVelocity.y += mB * P.y;
            bB.m_angularVelocity += iB * (rBX * P.y - rBY * P.x + this.m_angularImpulse);
         }
         else
         {
            this.m_linearImpulse.SetZero();
            this.m_angularImpulse = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(step:b2TimeStep) : void
      {
         var tMat:b2Mat22 = null;
         var tX:Number = NaN;
         var maxImpulse:Number = NaN;
         var bA:b2Body = b2internal::m_bodyA;
         var bB:b2Body = b2internal::m_bodyB;
         var vA:b2Vec2 = bA.m_linearVelocity;
         var wA:Number = bA.m_angularVelocity;
         var vB:b2Vec2 = bB.m_linearVelocity;
         var wB:Number = bB.m_angularVelocity;
         var mA:Number = bA.m_invMass;
         var mB:Number = bB.m_invMass;
         var iA:Number = bA.m_invI;
         var iB:Number = bB.m_invI;
         tMat = bA.m_xf.R;
         var rAX:Number = this.m_localAnchorA.x - bA.m_sweep.localCenter.x;
         var rAY:Number = this.m_localAnchorA.y - bA.m_sweep.localCenter.y;
         tX = tMat.col1.x * rAX + tMat.col2.x * rAY;
         rAY = tMat.col1.y * rAX + tMat.col2.y * rAY;
         rAX = tX;
         tMat = bB.m_xf.R;
         var rBX:Number = this.m_localAnchorB.x - bB.m_sweep.localCenter.x;
         var rBY:Number = this.m_localAnchorB.y - bB.m_sweep.localCenter.y;
         tX = tMat.col1.x * rBX + tMat.col2.x * rBY;
         rBY = tMat.col1.y * rBX + tMat.col2.y * rBY;
         rBX = tX;
         var Cdot:Number = wB - wA;
         var impulse:Number = -this.m_angularMass * Cdot;
         var oldImpulse:Number = this.m_angularImpulse;
         maxImpulse = step.dt * this.m_maxTorque;
         this.m_angularImpulse = b2Math.Clamp(this.m_angularImpulse + impulse,-maxImpulse,maxImpulse);
         impulse = this.m_angularImpulse - oldImpulse;
         wA -= iA * impulse;
         wB += iB * impulse;
         var CdotX:Number = vB.x - wB * rBY - vA.x + wA * rAY;
         var CdotY:Number = vB.y + wB * rBX - vA.y - wA * rAX;
         var impulseV:b2Vec2 = b2Math.MulMV(this.m_linearMass,new b2Vec2(-CdotX,-CdotY));
         var oldImpulseV:b2Vec2 = this.m_linearImpulse.Copy();
         this.m_linearImpulse.Add(impulseV);
         maxImpulse = step.dt * this.m_maxForce;
         if(this.m_linearImpulse.LengthSquared() > maxImpulse * maxImpulse)
         {
            this.m_linearImpulse.Normalize();
            this.m_linearImpulse.Multiply(maxImpulse);
         }
         impulseV = b2Math.SubtractVV(this.m_linearImpulse,oldImpulseV);
         vA.x -= mA * impulseV.x;
         vA.y -= mA * impulseV.y;
         wA -= iA * (rAX * impulseV.y - rAY * impulseV.x);
         vB.x += mB * impulseV.x;
         vB.y += mB * impulseV.y;
         wB += iB * (rBX * impulseV.y - rBY * impulseV.x);
         bA.m_angularVelocity = wA;
         bB.m_angularVelocity = wB;
      }
      
      override b2internal function SolvePositionConstraints(baumgarte:Number) : Boolean
      {
         return true;
      }
   }
}
