package com.rovio.Box2D.Dynamics.Joints
{
   import com.rovio.Box2D.Common.Math.b2Mat22;
   import com.rovio.Box2D.Common.Math.b2Math;
   import com.rovio.Box2D.Common.Math.b2Transform;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Common.b2Settings;
   import com.rovio.Box2D.Common.b2internal;
   import com.rovio.Box2D.Dynamics.b2Body;
   import com.rovio.Box2D.Dynamics.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2LineJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var m_localXAxis1:b2Vec2;
      
      private var m_localYAxis1:b2Vec2;
      
      private var m_axis:b2Vec2;
      
      private var m_perp:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var m_K:b2Mat22;
      
      private var m_impulse:b2Vec2;
      
      private var m_motorMass:Number;
      
      private var m_motorImpulse:Number;
      
      private var m_lowerTranslation:Number;
      
      private var m_upperTranslation:Number;
      
      private var m_maxMotorForce:Number;
      
      private var m_motorSpeed:Number;
      
      private var m_enableLimit:Boolean;
      
      private var m_enableMotor:Boolean;
      
      private var m_limitState:int;
      
      public function b2LineJoint(def:b2LineJointDef)
      {
         var tMat:b2Mat22 = null;
         var tX:Number = NaN;
         var tY:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.m_localXAxis1 = new b2Vec2();
         this.m_localYAxis1 = new b2Vec2();
         this.m_axis = new b2Vec2();
         this.m_perp = new b2Vec2();
         this.m_K = new b2Mat22();
         this.m_impulse = new b2Vec2();
         super(def);
         this.m_localAnchor1.SetV(def.localAnchorA);
         this.m_localAnchor2.SetV(def.localAnchorB);
         this.m_localXAxis1.SetV(def.localAxisA);
         this.m_localYAxis1.x = -this.m_localXAxis1.y;
         this.m_localYAxis1.y = this.m_localXAxis1.x;
         this.m_impulse.SetZero();
         this.m_motorMass = 0;
         this.m_motorImpulse = 0;
         this.m_lowerTranslation = def.lowerTranslation;
         this.m_upperTranslation = def.upperTranslation;
         this.m_maxMotorForce = def.maxMotorForce;
         this.m_motorSpeed = def.motorSpeed;
         this.m_enableLimit = def.enableLimit;
         this.m_enableMotor = def.enableMotor;
         this.m_limitState = e_inactiveLimit;
         this.m_axis.SetZero();
         this.m_perp.SetZero();
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
         return new b2Vec2(inv_dt * (this.m_impulse.x * this.m_perp.x + (this.m_motorImpulse + this.m_impulse.y) * this.m_axis.x),inv_dt * (this.m_impulse.x * this.m_perp.y + (this.m_motorImpulse + this.m_impulse.y) * this.m_axis.y));
      }
      
      override public function GetReactionTorque(inv_dt:Number) : Number
      {
         return inv_dt * this.m_impulse.y;
      }
      
      public function GetJointTranslation() : Number
      {
         var tMat:b2Mat22 = null;
         var bA:b2Body = m_bodyA;
         var bB:b2Body = m_bodyB;
         var p1:b2Vec2 = bA.GetWorldPoint(this.m_localAnchor1);
         var p2:b2Vec2 = bB.GetWorldPoint(this.m_localAnchor2);
         var dX:Number = p2.x - p1.x;
         var dY:Number = p2.y - p1.y;
         var axis:b2Vec2 = bA.GetWorldVector(this.m_localXAxis1);
         return Number(axis.x * dX + axis.y * dY);
      }
      
      public function GetJointSpeed() : Number
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
         var p1X:Number = bA.m_sweep.c.x + r1X;
         var p1Y:Number = bA.m_sweep.c.y + r1Y;
         var p2X:Number = bB.m_sweep.c.x + r2X;
         var p2Y:Number = bB.m_sweep.c.y + r2Y;
         var dX:Number = p2X - p1X;
         var dY:Number = p2Y - p1Y;
         var axis:b2Vec2 = bA.GetWorldVector(this.m_localXAxis1);
         var v1:b2Vec2 = bA.m_linearVelocity;
         var v2:b2Vec2 = bB.m_linearVelocity;
         var w1:Number = bA.m_angularVelocity;
         var w2:Number = bB.m_angularVelocity;
         return Number(dX * (-w1 * axis.y) + dY * (w1 * axis.x) + (axis.x * (v2.x + -w2 * r2Y - v1.x - -w1 * r1Y) + axis.y * (v2.y + w2 * r2X - v1.y - w1 * r1X)));
      }
      
      public function IsLimitEnabled() : Boolean
      {
         return this.m_enableLimit;
      }
      
      public function EnableLimit(flag:Boolean) : void
      {
         m_bodyA.SetAwake(true);
         m_bodyB.SetAwake(true);
         this.m_enableLimit = flag;
      }
      
      public function GetLowerLimit() : Number
      {
         return this.m_lowerTranslation;
      }
      
      public function GetUpperLimit() : Number
      {
         return this.m_upperTranslation;
      }
      
      public function SetLimits(lower:Number, upper:Number) : void
      {
         m_bodyA.SetAwake(true);
         m_bodyB.SetAwake(true);
         this.m_lowerTranslation = lower;
         this.m_upperTranslation = upper;
      }
      
      public function IsMotorEnabled() : Boolean
      {
         return this.m_enableMotor;
      }
      
      public function EnableMotor(flag:Boolean) : void
      {
         m_bodyA.SetAwake(true);
         m_bodyB.SetAwake(true);
         this.m_enableMotor = flag;
      }
      
      public function SetMotorSpeed(speed:Number) : void
      {
         m_bodyA.SetAwake(true);
         m_bodyB.SetAwake(true);
         this.m_motorSpeed = speed;
      }
      
      public function GetMotorSpeed() : Number
      {
         return this.m_motorSpeed;
      }
      
      public function SetMaxMotorForce(force:Number) : void
      {
         m_bodyA.SetAwake(true);
         m_bodyB.SetAwake(true);
         this.m_maxMotorForce = force;
      }
      
      public function GetMaxMotorForce() : Number
      {
         return this.m_maxMotorForce;
      }
      
      public function GetMotorForce() : Number
      {
         return this.m_motorImpulse;
      }
      
      override b2internal function InitVelocityConstraints(step:b2TimeStep) : void
      {
         var tMat:b2Mat22 = null;
         var tX:Number = NaN;
         var jointTransition:Number = NaN;
         var PX:Number = NaN;
         var PY:Number = NaN;
         var L1:Number = NaN;
         var L2:Number = NaN;
         var bA:b2Body = m_bodyA;
         var bB:b2Body = m_bodyB;
         m_localCenterA.SetV(bA.GetLocalCenter());
         m_localCenterB.SetV(bB.GetLocalCenter());
         var xf1:b2Transform = bA.GetTransform();
         var xf2:b2Transform = bB.GetTransform();
         tMat = bA.m_xf.R;
         var r1X:Number = this.m_localAnchor1.x - m_localCenterA.x;
         var r1Y:Number = this.m_localAnchor1.y - m_localCenterA.y;
         tX = tMat.col1.x * r1X + tMat.col2.x * r1Y;
         r1Y = tMat.col1.y * r1X + tMat.col2.y * r1Y;
         r1X = tX;
         tMat = bB.m_xf.R;
         var r2X:Number = this.m_localAnchor2.x - m_localCenterB.x;
         var r2Y:Number = this.m_localAnchor2.y - m_localCenterB.y;
         tX = tMat.col1.x * r2X + tMat.col2.x * r2Y;
         r2Y = tMat.col1.y * r2X + tMat.col2.y * r2Y;
         r2X = tX;
         var dX:Number = bB.m_sweep.c.x + r2X - bA.m_sweep.c.x - r1X;
         var dY:Number = bB.m_sweep.c.y + r2Y - bA.m_sweep.c.y - r1Y;
         m_invMassA = bA.m_invMass;
         m_invMassB = bB.m_invMass;
         m_invIA = bA.m_invI;
         m_invIB = bB.m_invI;
         this.m_axis.SetV(b2Math.MulMV(xf1.R,this.m_localXAxis1));
         this.m_a1 = (dX + r1X) * this.m_axis.y - (dY + r1Y) * this.m_axis.x;
         this.m_a2 = r2X * this.m_axis.y - r2Y * this.m_axis.x;
         this.m_motorMass = m_invMassA + m_invMassB + m_invIA * this.m_a1 * this.m_a1 + m_invIB * this.m_a2 * this.m_a2;
         this.m_motorMass = this.m_motorMass > Number.MIN_VALUE ? Number(1 / this.m_motorMass) : Number(0);
         this.m_perp.SetV(b2Math.MulMV(xf1.R,this.m_localYAxis1));
         this.m_s1 = (dX + r1X) * this.m_perp.y - (dY + r1Y) * this.m_perp.x;
         this.m_s2 = r2X * this.m_perp.y - r2Y * this.m_perp.x;
         var m1:Number = m_invMassA;
         var m2:Number = m_invMassB;
         var i1:Number = m_invIA;
         var i2:Number = m_invIB;
         this.m_K.col1.x = m1 + m2 + i1 * this.m_s1 * this.m_s1 + i2 * this.m_s2 * this.m_s2;
         this.m_K.col1.y = i1 * this.m_s1 * this.m_a1 + i2 * this.m_s2 * this.m_a2;
         this.m_K.col2.x = this.m_K.col1.y;
         this.m_K.col2.y = m1 + m2 + i1 * this.m_a1 * this.m_a1 + i2 * this.m_a2 * this.m_a2;
         if(this.m_enableLimit)
         {
            jointTransition = this.m_axis.x * dX + this.m_axis.y * dY;
            if(b2Math.Abs(this.m_upperTranslation - this.m_lowerTranslation) < 2 * b2Settings.b2_linearSlop)
            {
               this.m_limitState = e_equalLimits;
            }
            else if(jointTransition <= this.m_lowerTranslation)
            {
               if(this.m_limitState != e_atLowerLimit)
               {
                  this.m_limitState = e_atLowerLimit;
                  this.m_impulse.y = 0;
               }
            }
            else if(jointTransition >= this.m_upperTranslation)
            {
               if(this.m_limitState != e_atUpperLimit)
               {
                  this.m_limitState = e_atUpperLimit;
                  this.m_impulse.y = 0;
               }
            }
            else
            {
               this.m_limitState = e_inactiveLimit;
               this.m_impulse.y = 0;
            }
         }
         else
         {
            this.m_limitState = e_inactiveLimit;
         }
         if(this.m_enableMotor == false)
         {
            this.m_motorImpulse = 0;
         }
         if(step.warmStarting)
         {
            this.m_impulse.x *= step.dtRatio;
            this.m_impulse.y *= step.dtRatio;
            this.m_motorImpulse *= step.dtRatio;
            PX = this.m_impulse.x * this.m_perp.x + (this.m_motorImpulse + this.m_impulse.y) * this.m_axis.x;
            PY = this.m_impulse.x * this.m_perp.y + (this.m_motorImpulse + this.m_impulse.y) * this.m_axis.y;
            L1 = this.m_impulse.x * this.m_s1 + (this.m_motorImpulse + this.m_impulse.y) * this.m_a1;
            L2 = this.m_impulse.x * this.m_s2 + (this.m_motorImpulse + this.m_impulse.y) * this.m_a2;
            bA.m_linearVelocity.x -= m_invMassA * PX;
            bA.m_linearVelocity.y -= m_invMassA * PY;
            bA.m_angularVelocity -= m_invIA * L1;
            bB.m_linearVelocity.x += m_invMassB * PX;
            bB.m_linearVelocity.y += m_invMassB * PY;
            bB.m_angularVelocity += m_invIB * L2;
         }
         else
         {
            this.m_impulse.SetZero();
            this.m_motorImpulse = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(step:b2TimeStep) : void
      {
         var PX:Number = NaN;
         var PY:Number = NaN;
         var L1:Number = NaN;
         var L2:Number = NaN;
         var Cdot:Number = NaN;
         var impulse:Number = NaN;
         var oldImpulse:Number = NaN;
         var maxImpulse:Number = NaN;
         var Cdot2:Number = NaN;
         var f1:b2Vec2 = null;
         var df:b2Vec2 = null;
         var b:Number = NaN;
         var f2r:Number = NaN;
         var df2:Number = NaN;
         var bA:b2Body = m_bodyA;
         var bB:b2Body = m_bodyB;
         var v1:b2Vec2 = bA.m_linearVelocity;
         var w1:Number = bA.m_angularVelocity;
         var v2:b2Vec2 = bB.m_linearVelocity;
         var w2:Number = bB.m_angularVelocity;
         if(this.m_enableMotor && this.m_limitState != e_equalLimits)
         {
            Cdot = this.m_axis.x * (v2.x - v1.x) + this.m_axis.y * (v2.y - v1.y) + this.m_a2 * w2 - this.m_a1 * w1;
            impulse = this.m_motorMass * (this.m_motorSpeed - Cdot);
            oldImpulse = this.m_motorImpulse;
            maxImpulse = step.dt * this.m_maxMotorForce;
            this.m_motorImpulse = b2Math.Clamp(this.m_motorImpulse + impulse,-maxImpulse,maxImpulse);
            impulse = this.m_motorImpulse - oldImpulse;
            PX = impulse * this.m_axis.x;
            PY = impulse * this.m_axis.y;
            L1 = impulse * this.m_a1;
            L2 = impulse * this.m_a2;
            v1.x -= m_invMassA * PX;
            v1.y -= m_invMassA * PY;
            w1 -= m_invIA * L1;
            v2.x += m_invMassB * PX;
            v2.y += m_invMassB * PY;
            w2 += m_invIB * L2;
         }
         var Cdot1:Number = this.m_perp.x * (v2.x - v1.x) + this.m_perp.y * (v2.y - v1.y) + this.m_s2 * w2 - this.m_s1 * w1;
         if(this.m_enableLimit && this.m_limitState != e_inactiveLimit)
         {
            Cdot2 = this.m_axis.x * (v2.x - v1.x) + this.m_axis.y * (v2.y - v1.y) + this.m_a2 * w2 - this.m_a1 * w1;
            f1 = this.m_impulse.Copy();
            df = this.m_K.Solve(new b2Vec2(),-Cdot1,-Cdot2);
            this.m_impulse.Add(df);
            if(this.m_limitState == e_atLowerLimit)
            {
               this.m_impulse.y = b2Math.Max(this.m_impulse.y,0);
            }
            else if(this.m_limitState == e_atUpperLimit)
            {
               this.m_impulse.y = b2Math.Min(this.m_impulse.y,0);
            }
            b = -Cdot1 - (this.m_impulse.y - f1.y) * this.m_K.col2.x;
            if(this.m_K.col1.x != 0)
            {
               f2r = b / this.m_K.col1.x + f1.x;
            }
            else
            {
               f2r = f1.x;
            }
            this.m_impulse.x = f2r;
            df.x = this.m_impulse.x - f1.x;
            df.y = this.m_impulse.y - f1.y;
            PX = df.x * this.m_perp.x + df.y * this.m_axis.x;
            PY = df.x * this.m_perp.y + df.y * this.m_axis.y;
            L1 = df.x * this.m_s1 + df.y * this.m_a1;
            L2 = df.x * this.m_s2 + df.y * this.m_a2;
            v1.x -= m_invMassA * PX;
            v1.y -= m_invMassA * PY;
            w1 -= m_invIA * L1;
            v2.x += m_invMassB * PX;
            v2.y += m_invMassB * PY;
            w2 += m_invIB * L2;
         }
         else
         {
            if(this.m_K.col1.x != 0)
            {
               df2 = -Cdot1 / this.m_K.col1.x;
            }
            else
            {
               df2 = 0;
            }
            this.m_impulse.x += df2;
            PX = df2 * this.m_perp.x;
            PY = df2 * this.m_perp.y;
            L1 = df2 * this.m_s1;
            L2 = df2 * this.m_s2;
            v1.x -= m_invMassA * PX;
            v1.y -= m_invMassA * PY;
            w1 -= m_invIA * L1;
            v2.x += m_invMassB * PX;
            v2.y += m_invMassB * PY;
            w2 += m_invIB * L2;
         }
         bA.m_linearVelocity.SetV(v1);
         bA.m_angularVelocity = w1;
         bB.m_linearVelocity.SetV(v2);
         bB.m_angularVelocity = w2;
      }
      
      override b2internal function SolvePositionConstraints(baumgarte:Number) : Boolean
      {
         var limitC:Number = NaN;
         var oldLimitImpulse:Number = NaN;
         var tMat:b2Mat22 = null;
         var tX:Number = NaN;
         var m1:Number = NaN;
         var m2:Number = NaN;
         var i1:Number = NaN;
         var i2:Number = NaN;
         var translation:Number = NaN;
         var k11:Number = NaN;
         var impulse1:Number = NaN;
         var bA:b2Body = m_bodyA;
         var bB:b2Body = m_bodyB;
         var c1:b2Vec2 = bA.m_sweep.c;
         var a1:Number = bA.m_sweep.a;
         var c2:b2Vec2 = bB.m_sweep.c;
         var a2:Number = bB.m_sweep.a;
         var linearError:Number = 0;
         var angularError:Number = 0;
         var active:Boolean = false;
         var C2:Number = 0;
         var R1:b2Mat22 = b2Mat22.FromAngle(a1);
         var R2:b2Mat22 = b2Mat22.FromAngle(a2);
         tMat = R1;
         var r1X:Number = this.m_localAnchor1.x - m_localCenterA.x;
         var r1Y:Number = this.m_localAnchor1.y - m_localCenterA.y;
         tX = tMat.col1.x * r1X + tMat.col2.x * r1Y;
         r1Y = tMat.col1.y * r1X + tMat.col2.y * r1Y;
         r1X = tX;
         tMat = R2;
         var r2X:Number = this.m_localAnchor2.x - m_localCenterB.x;
         var r2Y:Number = this.m_localAnchor2.y - m_localCenterB.y;
         tX = tMat.col1.x * r2X + tMat.col2.x * r2Y;
         r2Y = tMat.col1.y * r2X + tMat.col2.y * r2Y;
         r2X = tX;
         var dX:Number = c2.x + r2X - c1.x - r1X;
         var dY:Number = c2.y + r2Y - c1.y - r1Y;
         if(this.m_enableLimit)
         {
            this.m_axis = b2Math.MulMV(R1,this.m_localXAxis1);
            this.m_a1 = (dX + r1X) * this.m_axis.y - (dY + r1Y) * this.m_axis.x;
            this.m_a2 = r2X * this.m_axis.y - r2Y * this.m_axis.x;
            translation = this.m_axis.x * dX + this.m_axis.y * dY;
            if(b2Math.Abs(this.m_upperTranslation - this.m_lowerTranslation) < 2 * b2Settings.b2_linearSlop)
            {
               C2 = b2Math.Clamp(translation,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
               linearError = b2Math.Abs(translation);
               active = true;
            }
            else if(translation <= this.m_lowerTranslation)
            {
               C2 = b2Math.Clamp(translation - this.m_lowerTranslation + b2Settings.b2_linearSlop,-b2Settings.b2_maxLinearCorrection,0);
               linearError = this.m_lowerTranslation - translation;
               active = true;
            }
            else if(translation >= this.m_upperTranslation)
            {
               C2 = b2Math.Clamp(translation - this.m_upperTranslation + b2Settings.b2_linearSlop,0,b2Settings.b2_maxLinearCorrection);
               linearError = translation - this.m_upperTranslation;
               active = true;
            }
         }
         this.m_perp = b2Math.MulMV(R1,this.m_localYAxis1);
         this.m_s1 = (dX + r1X) * this.m_perp.y - (dY + r1Y) * this.m_perp.x;
         this.m_s2 = r2X * this.m_perp.y - r2Y * this.m_perp.x;
         var impulse:b2Vec2 = new b2Vec2();
         var C1:Number = this.m_perp.x * dX + this.m_perp.y * dY;
         linearError = b2Math.Max(linearError,b2Math.Abs(C1));
         angularError = 0;
         if(active)
         {
            m1 = m_invMassA;
            m2 = m_invMassB;
            i1 = m_invIA;
            i2 = m_invIB;
            this.m_K.col1.x = m1 + m2 + i1 * this.m_s1 * this.m_s1 + i2 * this.m_s2 * this.m_s2;
            this.m_K.col1.y = i1 * this.m_s1 * this.m_a1 + i2 * this.m_s2 * this.m_a2;
            this.m_K.col2.x = this.m_K.col1.y;
            this.m_K.col2.y = m1 + m2 + i1 * this.m_a1 * this.m_a1 + i2 * this.m_a2 * this.m_a2;
            this.m_K.Solve(impulse,-C1,-C2);
         }
         else
         {
            m1 = m_invMassA;
            m2 = m_invMassB;
            i1 = m_invIA;
            i2 = m_invIB;
            k11 = m1 + m2 + i1 * this.m_s1 * this.m_s1 + i2 * this.m_s2 * this.m_s2;
            if(k11 != 0)
            {
               impulse1 = -C1 / k11;
            }
            else
            {
               impulse1 = 0;
            }
            impulse.x = impulse1;
            impulse.y = 0;
         }
         var PX:Number = impulse.x * this.m_perp.x + impulse.y * this.m_axis.x;
         var PY:Number = impulse.x * this.m_perp.y + impulse.y * this.m_axis.y;
         var L1:Number = impulse.x * this.m_s1 + impulse.y * this.m_a1;
         var L2:Number = impulse.x * this.m_s2 + impulse.y * this.m_a2;
         c1.x -= m_invMassA * PX;
         c1.y -= m_invMassA * PY;
         a1 -= m_invIA * L1;
         c2.x += m_invMassB * PX;
         c2.y += m_invMassB * PY;
         a2 += m_invIB * L2;
         bA.m_sweep.a = a1;
         bB.m_sweep.a = a2;
         bA.SynchronizeTransform();
         bB.SynchronizeTransform();
         return linearError <= b2Settings.b2_linearSlop && angularError <= b2Settings.b2_angularSlop;
      }
   }
}
