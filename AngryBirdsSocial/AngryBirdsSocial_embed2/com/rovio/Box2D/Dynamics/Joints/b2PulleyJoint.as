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
   
   public class b2PulleyJoint extends b2Joint
   {
      
      b2internal static const b2_minPulleyLength:Number = 2;
       
      
      private var m_ground:b2Body;
      
      private var m_groundAnchor1:b2Vec2;
      
      private var m_groundAnchor2:b2Vec2;
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var m_u1:b2Vec2;
      
      private var m_u2:b2Vec2;
      
      private var m_constant:Number;
      
      private var m_ratio:Number;
      
      private var m_maxLength1:Number;
      
      private var m_maxLength2:Number;
      
      private var m_pulleyMass:Number;
      
      private var m_limitMass1:Number;
      
      private var m_limitMass2:Number;
      
      private var m_impulse:Number;
      
      private var m_limitImpulse1:Number;
      
      private var m_limitImpulse2:Number;
      
      private var m_state:int;
      
      private var m_limitState1:int;
      
      private var m_limitState2:int;
      
      public function b2PulleyJoint(def:b2PulleyJointDef)
      {
         var tMat:b2Mat22 = null;
         var tX:Number = NaN;
         var tY:Number = NaN;
         this.m_groundAnchor1 = new b2Vec2();
         this.m_groundAnchor2 = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.m_u1 = new b2Vec2();
         this.m_u2 = new b2Vec2();
         super(def);
         this.m_ground = m_bodyA.m_world.m_groundBody;
         this.m_groundAnchor1.x = def.groundAnchorA.x - this.m_ground.m_xf.position.x;
         this.m_groundAnchor1.y = def.groundAnchorA.y - this.m_ground.m_xf.position.y;
         this.m_groundAnchor2.x = def.groundAnchorB.x - this.m_ground.m_xf.position.x;
         this.m_groundAnchor2.y = def.groundAnchorB.y - this.m_ground.m_xf.position.y;
         this.m_localAnchor1.SetV(def.localAnchorA);
         this.m_localAnchor2.SetV(def.localAnchorB);
         this.m_ratio = def.ratio;
         this.m_constant = def.lengthA + this.m_ratio * def.lengthB;
         this.m_maxLength1 = b2Math.Min(def.maxLengthA,this.m_constant - this.m_ratio * b2_minPulleyLength);
         this.m_maxLength2 = b2Math.Min(def.maxLengthB,(this.m_constant - b2_minPulleyLength) / this.m_ratio);
         this.m_impulse = 0;
         this.m_limitImpulse1 = 0;
         this.m_limitImpulse2 = 0;
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
         return new b2Vec2(inv_dt * this.m_impulse * this.m_u2.x,inv_dt * this.m_impulse * this.m_u2.y);
      }
      
      override public function GetReactionTorque(inv_dt:Number) : Number
      {
         return 0;
      }
      
      public function GetGroundAnchorA() : b2Vec2
      {
         var a:b2Vec2 = this.m_ground.m_xf.position.Copy();
         a.Add(this.m_groundAnchor1);
         return a;
      }
      
      public function GetGroundAnchorB() : b2Vec2
      {
         var a:b2Vec2 = this.m_ground.m_xf.position.Copy();
         a.Add(this.m_groundAnchor2);
         return a;
      }
      
      public function GetLength1() : Number
      {
         var p:b2Vec2 = m_bodyA.GetWorldPoint(this.m_localAnchor1);
         var sX:Number = this.m_ground.m_xf.position.x + this.m_groundAnchor1.x;
         var sY:Number = this.m_ground.m_xf.position.y + this.m_groundAnchor1.y;
         var dX:Number = p.x - sX;
         var dY:Number = p.y - sY;
         return Math.sqrt(dX * dX + dY * dY);
      }
      
      public function GetLength2() : Number
      {
         var p:b2Vec2 = m_bodyB.GetWorldPoint(this.m_localAnchor2);
         var sX:Number = this.m_ground.m_xf.position.x + this.m_groundAnchor2.x;
         var sY:Number = this.m_ground.m_xf.position.y + this.m_groundAnchor2.y;
         var dX:Number = p.x - sX;
         var dY:Number = p.y - sY;
         return Math.sqrt(dX * dX + dY * dY);
      }
      
      public function GetRatio() : Number
      {
         return this.m_ratio;
      }
      
      override b2internal function InitVelocityConstraints(step:b2TimeStep) : void
      {
         var bA:b2Body = null;
         var bB:b2Body = null;
         var tMat:b2Mat22 = null;
         var r1Y:Number = NaN;
         var P1X:Number = NaN;
         var P1Y:Number = NaN;
         var P2X:Number = NaN;
         var P2Y:Number = NaN;
         bA = m_bodyA;
         bB = m_bodyB;
         tMat = bA.m_xf.R;
         var r1X:Number = this.m_localAnchor1.x - bA.m_sweep.localCenter.x;
         r1Y = this.m_localAnchor1.y - bA.m_sweep.localCenter.y;
         var tX:Number = tMat.col1.x * r1X + tMat.col2.x * r1Y;
         r1Y = tMat.col1.y * r1X + tMat.col2.y * r1Y;
         r1X = tX;
         tMat = bB.m_xf.R;
         var r2X:Number = this.m_localAnchor2.x - bB.m_sweep.localCenter.x;
         var r2Y:Number = this.m_localAnchor2.y - bB.m_sweep.localCenter.y;
         tX = tMat.col1.x * r2X + tMat.col2.x * r2Y;
         r2Y = tMat.col1.y * r2X + tMat.col2.y * r2Y;
         r2X = tX;
         var p1X:Number = bA.m_sweep.c.x + r1X;
         var p1Y:Number = bA.m_sweep.c.y + r1Y;
         var p2X:Number = bB.m_sweep.c.x + r2X;
         var p2Y:Number = bB.m_sweep.c.y + r2Y;
         var s1X:Number = this.m_ground.m_xf.position.x + this.m_groundAnchor1.x;
         var s1Y:Number = this.m_ground.m_xf.position.y + this.m_groundAnchor1.y;
         var s2X:Number = this.m_ground.m_xf.position.x + this.m_groundAnchor2.x;
         var s2Y:Number = this.m_ground.m_xf.position.y + this.m_groundAnchor2.y;
         this.m_u1.Set(p1X - s1X,p1Y - s1Y);
         this.m_u2.Set(p2X - s2X,p2Y - s2Y);
         var length1:Number = this.m_u1.Length();
         var length2:Number = this.m_u2.Length();
         if(length1 > b2Settings.b2_linearSlop)
         {
            this.m_u1.Multiply(1 / length1);
         }
         else
         {
            this.m_u1.SetZero();
         }
         if(length2 > b2Settings.b2_linearSlop)
         {
            this.m_u2.Multiply(1 / length2);
         }
         else
         {
            this.m_u2.SetZero();
         }
         var C:Number = this.m_constant - length1 - this.m_ratio * length2;
         if(C > 0)
         {
            this.m_state = e_inactiveLimit;
            this.m_impulse = 0;
         }
         else
         {
            this.m_state = e_atUpperLimit;
         }
         if(length1 < this.m_maxLength1)
         {
            this.m_limitState1 = e_inactiveLimit;
            this.m_limitImpulse1 = 0;
         }
         else
         {
            this.m_limitState1 = e_atUpperLimit;
         }
         if(length2 < this.m_maxLength2)
         {
            this.m_limitState2 = e_inactiveLimit;
            this.m_limitImpulse2 = 0;
         }
         else
         {
            this.m_limitState2 = e_atUpperLimit;
         }
         var cr1u1:Number = r1X * this.m_u1.y - r1Y * this.m_u1.x;
         var cr2u2:Number = r2X * this.m_u2.y - r2Y * this.m_u2.x;
         this.m_limitMass1 = bA.m_invMass + bA.m_invI * cr1u1 * cr1u1;
         this.m_limitMass2 = bB.m_invMass + bB.m_invI * cr2u2 * cr2u2;
         this.m_pulleyMass = this.m_limitMass1 + this.m_ratio * this.m_ratio * this.m_limitMass2;
         this.m_limitMass1 = 1 / this.m_limitMass1;
         this.m_limitMass2 = 1 / this.m_limitMass2;
         this.m_pulleyMass = 1 / this.m_pulleyMass;
         if(step.warmStarting)
         {
            this.m_impulse *= step.dtRatio;
            this.m_limitImpulse1 *= step.dtRatio;
            this.m_limitImpulse2 *= step.dtRatio;
            P1X = (-this.m_impulse - this.m_limitImpulse1) * this.m_u1.x;
            P1Y = (-this.m_impulse - this.m_limitImpulse1) * this.m_u1.y;
            P2X = (-this.m_ratio * this.m_impulse - this.m_limitImpulse2) * this.m_u2.x;
            P2Y = (-this.m_ratio * this.m_impulse - this.m_limitImpulse2) * this.m_u2.y;
            bA.m_linearVelocity.x += bA.m_invMass * P1X;
            bA.m_linearVelocity.y += bA.m_invMass * P1Y;
            bA.m_angularVelocity += bA.m_invI * (r1X * P1Y - r1Y * P1X);
            bB.m_linearVelocity.x += bB.m_invMass * P2X;
            bB.m_linearVelocity.y += bB.m_invMass * P2Y;
            bB.m_angularVelocity += bB.m_invI * (r2X * P2Y - r2Y * P2X);
         }
         else
         {
            this.m_impulse = 0;
            this.m_limitImpulse1 = 0;
            this.m_limitImpulse2 = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(step:b2TimeStep) : void
      {
         var tMat:b2Mat22 = null;
         var v1X:Number = NaN;
         var v1Y:Number = NaN;
         var v2X:Number = NaN;
         var v2Y:Number = NaN;
         var P1X:Number = NaN;
         var P1Y:Number = NaN;
         var P2X:Number = NaN;
         var P2Y:Number = NaN;
         var Cdot:Number = NaN;
         var impulse:Number = NaN;
         var oldImpulse:Number = NaN;
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
         if(this.m_state == e_atUpperLimit)
         {
            v1X = bA.m_linearVelocity.x + -bA.m_angularVelocity * r1Y;
            v1Y = bA.m_linearVelocity.y + bA.m_angularVelocity * r1X;
            v2X = bB.m_linearVelocity.x + -bB.m_angularVelocity * r2Y;
            v2Y = bB.m_linearVelocity.y + bB.m_angularVelocity * r2X;
            Cdot = -(this.m_u1.x * v1X + this.m_u1.y * v1Y) - this.m_ratio * (this.m_u2.x * v2X + this.m_u2.y * v2Y);
            impulse = this.m_pulleyMass * -Cdot;
            oldImpulse = this.m_impulse;
            this.m_impulse = b2Math.Max(0,this.m_impulse + impulse);
            impulse = this.m_impulse - oldImpulse;
            P1X = -impulse * this.m_u1.x;
            P1Y = -impulse * this.m_u1.y;
            P2X = -this.m_ratio * impulse * this.m_u2.x;
            P2Y = -this.m_ratio * impulse * this.m_u2.y;
            bA.m_linearVelocity.x += bA.m_invMass * P1X;
            bA.m_linearVelocity.y += bA.m_invMass * P1Y;
            bA.m_angularVelocity += bA.m_invI * (r1X * P1Y - r1Y * P1X);
            bB.m_linearVelocity.x += bB.m_invMass * P2X;
            bB.m_linearVelocity.y += bB.m_invMass * P2Y;
            bB.m_angularVelocity += bB.m_invI * (r2X * P2Y - r2Y * P2X);
         }
         if(this.m_limitState1 == e_atUpperLimit)
         {
            v1X = bA.m_linearVelocity.x + -bA.m_angularVelocity * r1Y;
            v1Y = bA.m_linearVelocity.y + bA.m_angularVelocity * r1X;
            Cdot = -(this.m_u1.x * v1X + this.m_u1.y * v1Y);
            impulse = -this.m_limitMass1 * Cdot;
            oldImpulse = this.m_limitImpulse1;
            this.m_limitImpulse1 = b2Math.Max(0,this.m_limitImpulse1 + impulse);
            impulse = this.m_limitImpulse1 - oldImpulse;
            P1X = -impulse * this.m_u1.x;
            P1Y = -impulse * this.m_u1.y;
            bA.m_linearVelocity.x += bA.m_invMass * P1X;
            bA.m_linearVelocity.y += bA.m_invMass * P1Y;
            bA.m_angularVelocity += bA.m_invI * (r1X * P1Y - r1Y * P1X);
         }
         if(this.m_limitState2 == e_atUpperLimit)
         {
            v2X = bB.m_linearVelocity.x + -bB.m_angularVelocity * r2Y;
            v2Y = bB.m_linearVelocity.y + bB.m_angularVelocity * r2X;
            Cdot = -(this.m_u2.x * v2X + this.m_u2.y * v2Y);
            impulse = -this.m_limitMass2 * Cdot;
            oldImpulse = this.m_limitImpulse2;
            this.m_limitImpulse2 = b2Math.Max(0,this.m_limitImpulse2 + impulse);
            impulse = this.m_limitImpulse2 - oldImpulse;
            P2X = -impulse * this.m_u2.x;
            P2Y = -impulse * this.m_u2.y;
            bB.m_linearVelocity.x += bB.m_invMass * P2X;
            bB.m_linearVelocity.y += bB.m_invMass * P2Y;
            bB.m_angularVelocity += bB.m_invI * (r2X * P2Y - r2Y * P2X);
         }
      }
      
      override b2internal function SolvePositionConstraints(baumgarte:Number) : Boolean
      {
         var tMat:b2Mat22 = null;
         var r1X:Number = NaN;
         var r1Y:Number = NaN;
         var r2X:Number = NaN;
         var r2Y:Number = NaN;
         var p1X:Number = NaN;
         var p1Y:Number = NaN;
         var p2X:Number = NaN;
         var p2Y:Number = NaN;
         var length1:Number = NaN;
         var length2:Number = NaN;
         var C:Number = NaN;
         var impulse:Number = NaN;
         var oldImpulse:Number = NaN;
         var oldLimitPositionImpulse:Number = NaN;
         var tX:Number = NaN;
         var bA:b2Body = m_bodyA;
         var bB:b2Body = m_bodyB;
         var s1X:Number = this.m_ground.m_xf.position.x + this.m_groundAnchor1.x;
         var s1Y:Number = this.m_ground.m_xf.position.y + this.m_groundAnchor1.y;
         var s2X:Number = this.m_ground.m_xf.position.x + this.m_groundAnchor2.x;
         var s2Y:Number = this.m_ground.m_xf.position.y + this.m_groundAnchor2.y;
         var linearError:Number = 0;
         if(this.m_state == e_atUpperLimit)
         {
            tMat = bA.m_xf.R;
            r1X = this.m_localAnchor1.x - bA.m_sweep.localCenter.x;
            r1Y = this.m_localAnchor1.y - bA.m_sweep.localCenter.y;
            tX = tMat.col1.x * r1X + tMat.col2.x * r1Y;
            r1Y = tMat.col1.y * r1X + tMat.col2.y * r1Y;
            r1X = tX;
            tMat = bB.m_xf.R;
            r2X = this.m_localAnchor2.x - bB.m_sweep.localCenter.x;
            r2Y = this.m_localAnchor2.y - bB.m_sweep.localCenter.y;
            tX = tMat.col1.x * r2X + tMat.col2.x * r2Y;
            r2Y = tMat.col1.y * r2X + tMat.col2.y * r2Y;
            r2X = tX;
            p1X = bA.m_sweep.c.x + r1X;
            p1Y = bA.m_sweep.c.y + r1Y;
            p2X = bB.m_sweep.c.x + r2X;
            p2Y = bB.m_sweep.c.y + r2Y;
            this.m_u1.Set(p1X - s1X,p1Y - s1Y);
            this.m_u2.Set(p2X - s2X,p2Y - s2Y);
            length1 = this.m_u1.Length();
            length2 = this.m_u2.Length();
            if(length1 > b2Settings.b2_linearSlop)
            {
               this.m_u1.Multiply(1 / length1);
            }
            else
            {
               this.m_u1.SetZero();
            }
            if(length2 > b2Settings.b2_linearSlop)
            {
               this.m_u2.Multiply(1 / length2);
            }
            else
            {
               this.m_u2.SetZero();
            }
            C = this.m_constant - length1 - this.m_ratio * length2;
            linearError = b2Math.Max(linearError,-C);
            C = b2Math.Clamp(C + b2Settings.b2_linearSlop,-b2Settings.b2_maxLinearCorrection,0);
            impulse = -this.m_pulleyMass * C;
            p1X = -impulse * this.m_u1.x;
            p1Y = -impulse * this.m_u1.y;
            p2X = -this.m_ratio * impulse * this.m_u2.x;
            p2Y = -this.m_ratio * impulse * this.m_u2.y;
            bA.m_sweep.c.x += bA.m_invMass * p1X;
            bA.m_sweep.c.y += bA.m_invMass * p1Y;
            bA.m_sweep.a += bA.m_invI * (r1X * p1Y - r1Y * p1X);
            bB.m_sweep.c.x += bB.m_invMass * p2X;
            bB.m_sweep.c.y += bB.m_invMass * p2Y;
            bB.m_sweep.a += bB.m_invI * (r2X * p2Y - r2Y * p2X);
            bA.SynchronizeTransform();
            bB.SynchronizeTransform();
         }
         if(this.m_limitState1 == e_atUpperLimit)
         {
            tMat = bA.m_xf.R;
            r1X = this.m_localAnchor1.x - bA.m_sweep.localCenter.x;
            r1Y = this.m_localAnchor1.y - bA.m_sweep.localCenter.y;
            tX = tMat.col1.x * r1X + tMat.col2.x * r1Y;
            r1Y = tMat.col1.y * r1X + tMat.col2.y * r1Y;
            r1X = tX;
            p1X = bA.m_sweep.c.x + r1X;
            p1Y = bA.m_sweep.c.y + r1Y;
            this.m_u1.Set(p1X - s1X,p1Y - s1Y);
            length1 = this.m_u1.Length();
            if(length1 > b2Settings.b2_linearSlop)
            {
               this.m_u1.x *= 1 / length1;
               this.m_u1.y *= 1 / length1;
            }
            else
            {
               this.m_u1.SetZero();
            }
            C = this.m_maxLength1 - length1;
            linearError = b2Math.Max(linearError,-C);
            C = b2Math.Clamp(C + b2Settings.b2_linearSlop,-b2Settings.b2_maxLinearCorrection,0);
            impulse = -this.m_limitMass1 * C;
            p1X = -impulse * this.m_u1.x;
            p1Y = -impulse * this.m_u1.y;
            bA.m_sweep.c.x += bA.m_invMass * p1X;
            bA.m_sweep.c.y += bA.m_invMass * p1Y;
            bA.m_sweep.a += bA.m_invI * (r1X * p1Y - r1Y * p1X);
            bA.SynchronizeTransform();
         }
         if(this.m_limitState2 == e_atUpperLimit)
         {
            tMat = bB.m_xf.R;
            r2X = this.m_localAnchor2.x - bB.m_sweep.localCenter.x;
            r2Y = this.m_localAnchor2.y - bB.m_sweep.localCenter.y;
            tX = tMat.col1.x * r2X + tMat.col2.x * r2Y;
            r2Y = tMat.col1.y * r2X + tMat.col2.y * r2Y;
            r2X = tX;
            p2X = bB.m_sweep.c.x + r2X;
            p2Y = bB.m_sweep.c.y + r2Y;
            this.m_u2.Set(p2X - s2X,p2Y - s2Y);
            length2 = this.m_u2.Length();
            if(length2 > b2Settings.b2_linearSlop)
            {
               this.m_u2.x *= 1 / length2;
               this.m_u2.y *= 1 / length2;
            }
            else
            {
               this.m_u2.SetZero();
            }
            C = this.m_maxLength2 - length2;
            linearError = b2Math.Max(linearError,-C);
            C = b2Math.Clamp(C + b2Settings.b2_linearSlop,-b2Settings.b2_maxLinearCorrection,0);
            impulse = -this.m_limitMass2 * C;
            p2X = -impulse * this.m_u2.x;
            p2Y = -impulse * this.m_u2.y;
            bB.m_sweep.c.x += bB.m_invMass * p2X;
            bB.m_sweep.c.y += bB.m_invMass * p2Y;
            bB.m_sweep.a += bB.m_invI * (r2X * p2Y - r2Y * p2X);
            bB.SynchronizeTransform();
         }
         return linearError < b2Settings.b2_linearSlop;
      }
   }
}
