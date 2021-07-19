package com.rovio.Box2D.Dynamics.Joints
{
   import com.rovio.Box2D.Common.Math.b2Mat22;
   import com.rovio.Box2D.Common.Math.b2Mat33;
   import com.rovio.Box2D.Common.Math.b2Math;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Common.Math.b2Vec3;
   import com.rovio.Box2D.Common.b2Settings;
   import com.rovio.Box2D.Common.b2internal;
   import com.rovio.Box2D.Dynamics.b2Body;
   import com.rovio.Box2D.Dynamics.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2WeldJoint extends b2Joint
   {
       
      
      private var m_localAnchorA:b2Vec2;
      
      private var m_localAnchorB:b2Vec2;
      
      private var m_referenceAngle:Number;
      
      private var m_impulse:b2Vec3;
      
      private var m_mass:b2Mat33;
      
      public function b2WeldJoint(def:b2WeldJointDef)
      {
         this.m_localAnchorA = new b2Vec2();
         this.m_localAnchorB = new b2Vec2();
         this.m_impulse = new b2Vec3();
         this.m_mass = new b2Mat33();
         super(def);
         this.m_localAnchorA.SetV(def.localAnchorA);
         this.m_localAnchorB.SetV(def.localAnchorB);
         this.m_referenceAngle = def.referenceAngle;
         this.m_impulse.SetZero();
         this.m_mass = new b2Mat33();
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
         return new b2Vec2(inv_dt * this.m_impulse.x,inv_dt * this.m_impulse.y);
      }
      
      override public function GetReactionTorque(inv_dt:Number) : Number
      {
         return inv_dt * this.m_impulse.z;
      }
      
      override b2internal function InitVelocityConstraints(step:b2TimeStep) : void
      {
         var tMat:b2Mat22 = null;
         var tX:Number = NaN;
         var bA:b2Body = null;
         var bB:b2Body = null;
         var rAX:Number = NaN;
         var rAY:Number = NaN;
         var rBX:Number = NaN;
         var rBY:Number = NaN;
         var mA:Number = NaN;
         var mB:Number = NaN;
         var iA:Number = NaN;
         var iB:Number = NaN;
         bA = b2internal::m_bodyA;
         bB = b2internal::m_bodyB;
         tMat = bA.m_xf.R;
         rAX = this.m_localAnchorA.x - bA.m_sweep.localCenter.x;
         rAY = this.m_localAnchorA.y - bA.m_sweep.localCenter.y;
         tX = tMat.col1.x * rAX + tMat.col2.x * rAY;
         rAY = tMat.col1.y * rAX + tMat.col2.y * rAY;
         rAX = tX;
         tMat = bB.m_xf.R;
         rBX = this.m_localAnchorB.x - bB.m_sweep.localCenter.x;
         rBY = this.m_localAnchorB.y - bB.m_sweep.localCenter.y;
         tX = tMat.col1.x * rBX + tMat.col2.x * rBY;
         rBY = tMat.col1.y * rBX + tMat.col2.y * rBY;
         rBX = tX;
         mA = bA.m_invMass;
         mB = bB.m_invMass;
         iA = bA.m_invI;
         iB = bB.m_invI;
         this.m_mass.col1.x = mA + mB + rAY * rAY * iA + rBY * rBY * iB;
         this.m_mass.col2.x = -rAY * rAX * iA - rBY * rBX * iB;
         this.m_mass.col3.x = -rAY * iA - rBY * iB;
         this.m_mass.col1.y = this.m_mass.col2.x;
         this.m_mass.col2.y = mA + mB + rAX * rAX * iA + rBX * rBX * iB;
         this.m_mass.col3.y = rAX * iA + rBX * iB;
         this.m_mass.col1.z = this.m_mass.col3.x;
         this.m_mass.col2.z = this.m_mass.col3.y;
         this.m_mass.col3.z = iA + iB;
         if(step.warmStarting)
         {
            this.m_impulse.x *= step.dtRatio;
            this.m_impulse.y *= step.dtRatio;
            this.m_impulse.z *= step.dtRatio;
            bA.m_linearVelocity.x -= mA * this.m_impulse.x;
            bA.m_linearVelocity.y -= mA * this.m_impulse.y;
            bA.m_angularVelocity -= iA * (rAX * this.m_impulse.y - rAY * this.m_impulse.x + this.m_impulse.z);
            bB.m_linearVelocity.x += mB * this.m_impulse.x;
            bB.m_linearVelocity.y += mB * this.m_impulse.y;
            bB.m_angularVelocity += iB * (rBX * this.m_impulse.y - rBY * this.m_impulse.x + this.m_impulse.z);
         }
         else
         {
            this.m_impulse.SetZero();
         }
      }
      
      override b2internal function SolveVelocityConstraints(step:b2TimeStep) : void
      {
         var tMat:b2Mat22 = null;
         var tX:Number = NaN;
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
         var Cdot1X:Number = vB.x - wB * rBY - vA.x + wA * rAY;
         var Cdot1Y:Number = vB.y + wB * rBX - vA.y - wA * rAX;
         var Cdot2:Number = wB - wA;
         var impulse:b2Vec3 = new b2Vec3();
         this.m_mass.Solve33(impulse,-Cdot1X,-Cdot1Y,-Cdot2);
         this.m_impulse.Add(impulse);
         vA.x -= mA * impulse.x;
         vA.y -= mA * impulse.y;
         wA -= iA * (rAX * impulse.y - rAY * impulse.x + impulse.z);
         vB.x += mB * impulse.x;
         vB.y += mB * impulse.y;
         wB += iB * (rBX * impulse.y - rBY * impulse.x + impulse.z);
         bA.m_angularVelocity = wA;
         bB.m_angularVelocity = wB;
      }
      
      override b2internal function SolvePositionConstraints(baumgarte:Number) : Boolean
      {
         var tMat:b2Mat22 = null;
         var tX:Number = NaN;
         var bA:b2Body = b2internal::m_bodyA;
         var bB:b2Body = b2internal::m_bodyB;
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
         var mA:Number = bA.m_invMass;
         var mB:Number = bB.m_invMass;
         var iA:Number = bA.m_invI;
         var iB:Number = bB.m_invI;
         var C1X:Number = bB.m_sweep.c.x + rBX - bA.m_sweep.c.x - rAX;
         var C1Y:Number = bB.m_sweep.c.y + rBY - bA.m_sweep.c.y - rAY;
         var C2:Number = bB.m_sweep.a - bA.m_sweep.a - this.m_referenceAngle;
         var k_allowedStretch:Number = 10 * b2Settings.b2_linearSlop;
         var positionError:Number = Math.sqrt(C1X * C1X + C1Y * C1Y);
         var angularError:Number = b2Math.Abs(C2);
         if(positionError > k_allowedStretch)
         {
            iA *= 1;
            iB *= 1;
         }
         this.m_mass.col1.x = mA + mB + rAY * rAY * iA + rBY * rBY * iB;
         this.m_mass.col2.x = -rAY * rAX * iA - rBY * rBX * iB;
         this.m_mass.col3.x = -rAY * iA - rBY * iB;
         this.m_mass.col1.y = this.m_mass.col2.x;
         this.m_mass.col2.y = mA + mB + rAX * rAX * iA + rBX * rBX * iB;
         this.m_mass.col3.y = rAX * iA + rBX * iB;
         this.m_mass.col1.z = this.m_mass.col3.x;
         this.m_mass.col2.z = this.m_mass.col3.y;
         this.m_mass.col3.z = iA + iB;
         var impulse:b2Vec3 = new b2Vec3();
         this.m_mass.Solve33(impulse,-C1X,-C1Y,-C2);
         bA.m_sweep.c.x -= mA * impulse.x;
         bA.m_sweep.c.y -= mA * impulse.y;
         bA.m_sweep.a -= iA * (rAX * impulse.y - rAY * impulse.x + impulse.z);
         bB.m_sweep.c.x += mB * impulse.x;
         bB.m_sweep.c.y += mB * impulse.y;
         bB.m_sweep.a += iB * (rBX * impulse.y - rBY * impulse.x + impulse.z);
         bA.SynchronizeTransform();
         bB.SynchronizeTransform();
         return positionError <= b2Settings.b2_linearSlop && angularError <= b2Settings.b2_angularSlop;
      }
   }
}
