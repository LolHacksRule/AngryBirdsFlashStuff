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
      
      public function b2GearJoint(def:b2GearJointDef)
      {
         var coordinate1:Number = NaN;
         var coordinate2:Number = NaN;
         this.m_groundAnchor1 = new b2Vec2();
         this.m_groundAnchor2 = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.m_J = new b2Jacobian();
         super(def);
         var type1:int = def.joint1.m_type;
         var type2:int = def.joint2.m_type;
         this.m_revolute1 = null;
         this.m_prismatic1 = null;
         this.m_revolute2 = null;
         this.m_prismatic2 = null;
         this.m_ground1 = def.joint1.GetBodyA();
         m_bodyA = def.joint1.GetBodyB();
         if(type1 == b2Joint.e_revoluteJoint)
         {
            this.m_revolute1 = def.joint1 as b2RevoluteJoint;
            this.m_groundAnchor1.SetV(this.m_revolute1.m_localAnchor1);
            this.m_localAnchor1.SetV(this.m_revolute1.m_localAnchor2);
            coordinate1 = this.m_revolute1.GetJointAngle();
         }
         else
         {
            this.m_prismatic1 = def.joint1 as b2PrismaticJoint;
            this.m_groundAnchor1.SetV(this.m_prismatic1.m_localAnchor1);
            this.m_localAnchor1.SetV(this.m_prismatic1.m_localAnchor2);
            coordinate1 = this.m_prismatic1.GetJointTranslation();
         }
         this.m_ground2 = def.joint2.GetBodyA();
         m_bodyB = def.joint2.GetBodyB();
         if(type2 == b2Joint.e_revoluteJoint)
         {
            this.m_revolute2 = def.joint2 as b2RevoluteJoint;
            this.m_groundAnchor2.SetV(this.m_revolute2.m_localAnchor1);
            this.m_localAnchor2.SetV(this.m_revolute2.m_localAnchor2);
            coordinate2 = this.m_revolute2.GetJointAngle();
         }
         else
         {
            this.m_prismatic2 = def.joint2 as b2PrismaticJoint;
            this.m_groundAnchor2.SetV(this.m_prismatic2.m_localAnchor1);
            this.m_localAnchor2.SetV(this.m_prismatic2.m_localAnchor2);
            coordinate2 = this.m_prismatic2.GetJointTranslation();
         }
         this.m_ratio = def.ratio;
         this.m_constant = coordinate1 + this.m_ratio * coordinate2;
         this.m_impulse = 0;
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
         return new b2Vec2(inv_dt * this.m_impulse * this.m_J.linearB.x,inv_dt * this.m_impulse * this.m_J.linearB.y);
      }
      
      override public function GetReactionTorque(inv_dt:Number) : Number
      {
         var tMat:b2Mat22 = m_bodyB.m_xf.R;
         var rX:Number = this.m_localAnchor1.x - m_bodyB.m_sweep.localCenter.x;
         var rY:Number = this.m_localAnchor1.y - m_bodyB.m_sweep.localCenter.y;
         var tX:Number = tMat.col1.x * rX + tMat.col2.x * rY;
         rY = tMat.col1.y * rX + tMat.col2.y * rY;
         rX = tX;
         var PX:Number = this.m_impulse * this.m_J.linearB.x;
         var PY:Number = this.m_impulse * this.m_J.linearB.y;
         return inv_dt * (this.m_impulse * this.m_J.angularB - rX * PY + rY * PX);
      }
      
      public function GetRatio() : Number
      {
         return this.m_ratio;
      }
      
      public function SetRatio(ratio:Number) : void
      {
         this.m_ratio = ratio;
      }
      
      override b2internal function InitVelocityConstraints(step:b2TimeStep) : void
      {
         var bA:b2Body = null;
         var ugX:Number = NaN;
         var ugY:Number = NaN;
         var rX:Number = NaN;
         var rY:Number = NaN;
         var tMat:b2Mat22 = null;
         var tVec:b2Vec2 = null;
         var crug:Number = NaN;
         var tX:Number = NaN;
         var g1:b2Body = this.m_ground1;
         var g2:b2Body = this.m_ground2;
         bA = m_bodyA;
         var bB:b2Body = m_bodyB;
         var K:Number = 0;
         this.m_J.SetZero();
         if(this.m_revolute1)
         {
            this.m_J.angularA = -1;
            K += bA.m_invI;
         }
         else
         {
            tMat = g1.m_xf.R;
            tVec = this.m_prismatic1.m_localXAxis1;
            ugX = tMat.col1.x * tVec.x + tMat.col2.x * tVec.y;
            ugY = tMat.col1.y * tVec.x + tMat.col2.y * tVec.y;
            tMat = bA.m_xf.R;
            rX = this.m_localAnchor1.x - bA.m_sweep.localCenter.x;
            rY = this.m_localAnchor1.y - bA.m_sweep.localCenter.y;
            tX = tMat.col1.x * rX + tMat.col2.x * rY;
            rY = tMat.col1.y * rX + tMat.col2.y * rY;
            rX = tX;
            crug = rX * ugY - rY * ugX;
            this.m_J.linearA.Set(-ugX,-ugY);
            this.m_J.angularA = -crug;
            K += bA.m_invMass + bA.m_invI * crug * crug;
         }
         if(this.m_revolute2)
         {
            this.m_J.angularB = -this.m_ratio;
            K += this.m_ratio * this.m_ratio * bB.m_invI;
         }
         else
         {
            tMat = g2.m_xf.R;
            tVec = this.m_prismatic2.m_localXAxis1;
            ugX = tMat.col1.x * tVec.x + tMat.col2.x * tVec.y;
            ugY = tMat.col1.y * tVec.x + tMat.col2.y * tVec.y;
            tMat = bB.m_xf.R;
            rX = this.m_localAnchor2.x - bB.m_sweep.localCenter.x;
            rY = this.m_localAnchor2.y - bB.m_sweep.localCenter.y;
            tX = tMat.col1.x * rX + tMat.col2.x * rY;
            rY = tMat.col1.y * rX + tMat.col2.y * rY;
            rX = tX;
            crug = rX * ugY - rY * ugX;
            this.m_J.linearB.Set(-this.m_ratio * ugX,-this.m_ratio * ugY);
            this.m_J.angularB = -this.m_ratio * crug;
            K += this.m_ratio * this.m_ratio * (bB.m_invMass + bB.m_invI * crug * crug);
         }
         this.m_mass = K > 0 ? Number(1 / K) : Number(0);
         if(step.warmStarting)
         {
            bA.m_linearVelocity.x += bA.m_invMass * this.m_impulse * this.m_J.linearA.x;
            bA.m_linearVelocity.y += bA.m_invMass * this.m_impulse * this.m_J.linearA.y;
            bA.m_angularVelocity += bA.m_invI * this.m_impulse * this.m_J.angularA;
            bB.m_linearVelocity.x += bB.m_invMass * this.m_impulse * this.m_J.linearB.x;
            bB.m_linearVelocity.y += bB.m_invMass * this.m_impulse * this.m_J.linearB.y;
            bB.m_angularVelocity += bB.m_invI * this.m_impulse * this.m_J.angularB;
         }
         else
         {
            this.m_impulse = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(step:b2TimeStep) : void
      {
         var bA:b2Body = m_bodyA;
         var bB:b2Body = m_bodyB;
         var Cdot:Number = this.m_J.Compute(bA.m_linearVelocity,bA.m_angularVelocity,bB.m_linearVelocity,bB.m_angularVelocity);
         var impulse:Number = -this.m_mass * Cdot;
         this.m_impulse += impulse;
         bA.m_linearVelocity.x += bA.m_invMass * impulse * this.m_J.linearA.x;
         bA.m_linearVelocity.y += bA.m_invMass * impulse * this.m_J.linearA.y;
         bA.m_angularVelocity += bA.m_invI * impulse * this.m_J.angularA;
         bB.m_linearVelocity.x += bB.m_invMass * impulse * this.m_J.linearB.x;
         bB.m_linearVelocity.y += bB.m_invMass * impulse * this.m_J.linearB.y;
         bB.m_angularVelocity += bB.m_invI * impulse * this.m_J.angularB;
      }
      
      override b2internal function SolvePositionConstraints(baumgarte:Number) : Boolean
      {
         var coordinate1:Number = NaN;
         var coordinate2:Number = NaN;
         var bA:b2Body = m_bodyA;
         var bB:b2Body = m_bodyB;
         if(this.m_revolute1)
         {
            coordinate1 = this.m_revolute1.GetJointAngle();
         }
         else
         {
            coordinate1 = this.m_prismatic1.GetJointTranslation();
         }
         if(this.m_revolute2)
         {
            coordinate2 = this.m_revolute2.GetJointAngle();
         }
         else
         {
            coordinate2 = this.m_prismatic2.GetJointTranslation();
         }
         var C:Number = this.m_constant - (coordinate1 + this.m_ratio * coordinate2);
         var impulse:Number = -this.m_mass * C;
         bA.m_sweep.c.x += bA.m_invMass * impulse * this.m_J.linearA.x;
         bA.m_sweep.c.y += bA.m_invMass * impulse * this.m_J.linearA.y;
         bA.m_sweep.a += bA.m_invI * impulse * this.m_J.angularA;
         bB.m_sweep.c.x += bB.m_invMass * impulse * this.m_J.linearB.x;
         bB.m_sweep.c.y += bB.m_invMass * impulse * this.m_J.linearB.y;
         bB.m_sweep.a += bB.m_invI * impulse * this.m_J.angularB;
         bA.SynchronizeTransform();
         bB.SynchronizeTransform();
         return 0 < b2Settings.b2_linearSlop;
      }
   }
}
