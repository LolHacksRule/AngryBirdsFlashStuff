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
   
   public class b2RevoluteJoint extends b2Joint
   {
      
      private static var tImpulse:b2Vec2 = new b2Vec2();
       
      
      private var K:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var K3:b2Mat22;
      
      private var impulse3:b2Vec3;
      
      private var impulse2:b2Vec2;
      
      private var reduced:b2Vec2;
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      private var m_impulse:b2Vec3;
      
      private var m_motorImpulse:Number;
      
      private var m_mass:b2Mat33;
      
      private var m_motorMass:Number;
      
      private var m_enableMotor:Boolean;
      
      private var m_maxMotorTorque:Number;
      
      private var m_motorSpeed:Number;
      
      private var m_enableLimit:Boolean;
      
      private var m_referenceAngle:Number;
      
      private var m_lowerAngle:Number;
      
      private var m_upperAngle:Number;
      
      private var m_limitState:int;
      
      public function b2RevoluteJoint(def:b2RevoluteJointDef)
      {
         this.K = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.K3 = new b2Mat22();
         this.impulse3 = new b2Vec3();
         this.impulse2 = new b2Vec2();
         this.reduced = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.m_impulse = new b2Vec3();
         this.m_mass = new b2Mat33();
         super(def);
         this.m_localAnchor1.SetV(def.localAnchorA);
         this.m_localAnchor2.SetV(def.localAnchorB);
         this.m_referenceAngle = def.referenceAngle;
         this.m_impulse.SetZero();
         this.m_motorImpulse = 0;
         this.m_lowerAngle = def.lowerAngle;
         this.m_upperAngle = def.upperAngle;
         this.m_maxMotorTorque = def.maxMotorTorque;
         this.m_motorSpeed = def.motorSpeed;
         this.m_enableLimit = def.enableLimit;
         this.m_enableMotor = def.enableMotor;
         this.m_limitState = b2internal::e_inactiveLimit;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::m_bodyA.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::m_bodyB.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(inv_dt:Number) : b2Vec2
      {
         return new b2Vec2(inv_dt * this.m_impulse.x,inv_dt * this.m_impulse.y);
      }
      
      override public function GetReactionTorque(inv_dt:Number) : Number
      {
         return inv_dt * this.m_impulse.z;
      }
      
      public function GetJointAngle() : Number
      {
         return b2internal::m_bodyB.m_sweep.a - b2internal::m_bodyA.m_sweep.a - this.m_referenceAngle;
      }
      
      public function GetJointSpeed() : Number
      {
         return b2internal::m_bodyB.m_angularVelocity - b2internal::m_bodyA.m_angularVelocity;
      }
      
      public function IsLimitEnabled() : Boolean
      {
         return this.m_enableLimit;
      }
      
      public function EnableLimit(flag:Boolean) : void
      {
         this.m_enableLimit = flag;
      }
      
      public function GetLowerLimit() : Number
      {
         return this.m_lowerAngle;
      }
      
      public function GetUpperLimit() : Number
      {
         return this.m_upperAngle;
      }
      
      public function SetLimits(lower:Number, upper:Number) : void
      {
         this.m_lowerAngle = lower;
         this.m_upperAngle = upper;
      }
      
      override public function IsMotorEnabled() : Boolean
      {
         return this.m_enableMotor;
      }
      
      override public function EnableMotor(flag:Boolean) : void
      {
         b2internal::m_bodyA.SetAwake(true);
         b2internal::m_bodyB.SetAwake(true);
         this.m_enableMotor = flag;
      }
      
      public function SetMotorSpeed(speed:Number) : void
      {
         b2internal::m_bodyA.SetAwake(true);
         b2internal::m_bodyB.SetAwake(true);
         this.m_motorSpeed = speed;
      }
      
      public function GetMotorSpeed() : Number
      {
         return this.m_motorSpeed;
      }
      
      public function SetMaxMotorTorque(torque:Number) : void
      {
         this.m_maxMotorTorque = torque;
      }
      
      public function GetMotorTorque() : Number
      {
         return this.m_maxMotorTorque;
      }
      
      override b2internal function InitVelocityConstraints(step:b2TimeStep) : void
      {
         var bA:b2Body = null;
         var bB:b2Body = null;
         var tMat:b2Mat22 = null;
         var tX:Number = NaN;
         var r1Y:Number = NaN;
         var jointAngle:Number = NaN;
         var PX:Number = NaN;
         var PY:Number = NaN;
         bA = b2internal::m_bodyA;
         bB = b2internal::m_bodyB;
         if(this.m_enableMotor || this.m_enableLimit)
         {
         }
         tMat = bA.m_xf.R;
         var r1X:Number = this.m_localAnchor1.x - bA.m_sweep.localCenter.x;
         r1Y = this.m_localAnchor1.y - bA.m_sweep.localCenter.y;
         tX = tMat.col1.x * r1X + tMat.col2.x * r1Y;
         r1Y = tMat.col1.y * r1X + tMat.col2.y * r1Y;
         r1X = tX;
         tMat = bB.m_xf.R;
         var r2X:Number = this.m_localAnchor2.x - bB.m_sweep.localCenter.x;
         var r2Y:Number = this.m_localAnchor2.y - bB.m_sweep.localCenter.y;
         tX = tMat.col1.x * r2X + tMat.col2.x * r2Y;
         r2Y = tMat.col1.y * r2X + tMat.col2.y * r2Y;
         r2X = tX;
         var m1:Number = bA.m_invMass;
         var m2:Number = bB.m_invMass;
         var i1:Number = bA.m_invI;
         var i2:Number = bB.m_invI;
         var fixedRotation:* = i1 + i2 == 0;
         this.m_mass.col1.x = m1 + m2 + r1Y * r1Y * i1 + r2Y * r2Y * i2;
         this.m_mass.col2.x = -r1Y * r1X * i1 - r2Y * r2X * i2;
         this.m_mass.col3.x = -r1Y * i1 - r2Y * i2;
         this.m_mass.col1.y = this.m_mass.col2.x;
         this.m_mass.col2.y = m1 + m2 + r1X * r1X * i1 + r2X * r2X * i2;
         this.m_mass.col3.y = r1X * i1 + r2X * i2;
         this.m_mass.col1.z = this.m_mass.col3.x;
         this.m_mass.col2.z = this.m_mass.col3.y;
         this.m_mass.col3.z = i1 + i2;
         this.m_motorMass = 1 / (i1 + i2);
         if(this.m_enableMotor == false || fixedRotation)
         {
            this.m_motorImpulse = 0;
         }
         if(this.m_enableLimit && !fixedRotation)
         {
            jointAngle = bB.m_sweep.a - bA.m_sweep.a - this.m_referenceAngle;
            if(b2Math.Abs(this.m_upperAngle - this.m_lowerAngle) < 2 * b2Settings.b2_angularSlop)
            {
               this.m_limitState = b2internal::e_equalLimits;
            }
            else if(jointAngle <= this.m_lowerAngle)
            {
               if(this.m_limitState != b2internal::e_atLowerLimit)
               {
                  this.m_impulse.z = 0;
               }
               this.m_limitState = b2internal::e_atLowerLimit;
            }
            else if(jointAngle >= this.m_upperAngle)
            {
               if(this.m_limitState != b2internal::e_atUpperLimit)
               {
                  this.m_impulse.z = 0;
               }
               this.m_limitState = b2internal::e_atUpperLimit;
            }
            else
            {
               this.m_limitState = b2internal::e_inactiveLimit;
               this.m_impulse.z = 0;
            }
         }
         else
         {
            this.m_limitState = b2internal::e_inactiveLimit;
         }
         if(step.warmStarting)
         {
            this.m_impulse.x *= step.dtRatio;
            this.m_impulse.y *= step.dtRatio;
            this.m_motorImpulse *= step.dtRatio;
            PX = this.m_impulse.x;
            PY = this.m_impulse.y;
            bA.m_linearVelocity.x -= m1 * PX;
            bA.m_linearVelocity.y -= m1 * PY;
            bA.m_angularVelocity -= i1 * (r1X * PY - r1Y * PX + this.m_motorImpulse + this.m_impulse.z);
            bB.m_linearVelocity.x += m2 * PX;
            bB.m_linearVelocity.y += m2 * PY;
            bB.m_angularVelocity += i2 * (r2X * PY - r2Y * PX + this.m_motorImpulse + this.m_impulse.z);
         }
         else
         {
            this.m_impulse.SetZero();
            this.m_motorImpulse = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(step:b2TimeStep) : void
      {
         var tMat:b2Mat22 = null;
         var tX:Number = NaN;
         var newImpulse:Number = NaN;
         var r1X:Number = NaN;
         var r1Y:Number = NaN;
         var r2X:Number = NaN;
         var r2Y:Number = NaN;
         var Cdot:Number = NaN;
         var impulse:Number = NaN;
         var oldImpulse:Number = NaN;
         var maxImpulse:Number = NaN;
         var Cdot1X:Number = NaN;
         var Cdot1Y:Number = NaN;
         var Cdot2:Number = NaN;
         var CdotX:Number = NaN;
         var CdotY:Number = NaN;
         var bA:b2Body = b2internal::m_bodyA;
         var bB:b2Body = b2internal::m_bodyB;
         var v1:b2Vec2 = bA.m_linearVelocity;
         var w1:Number = bA.m_angularVelocity;
         var v2:b2Vec2 = bB.m_linearVelocity;
         var w2:Number = bB.m_angularVelocity;
         var m1:Number = bA.m_invMass;
         var m2:Number = bB.m_invMass;
         var i1:Number = bA.m_invI;
         var i2:Number = bB.m_invI;
         var fixedRotation:* = i1 + i2 == 0;
         if(this.m_enableMotor && this.m_limitState != b2internal::e_equalLimits && !fixedRotation)
         {
            Cdot = w2 - w1 - this.m_motorSpeed;
            impulse = this.m_motorMass * -Cdot;
            oldImpulse = this.m_motorImpulse;
            maxImpulse = step.dt * this.m_maxMotorTorque;
            this.m_motorImpulse = b2Math.Clamp(this.m_motorImpulse + impulse,-maxImpulse,maxImpulse);
            impulse = this.m_motorImpulse - oldImpulse;
            w1 -= i1 * impulse;
            w2 += i2 * impulse;
         }
         if(this.m_enableLimit && this.m_limitState != b2internal::e_inactiveLimit && !fixedRotation)
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
            Cdot1X = v2.x + -w2 * r2Y - v1.x - -w1 * r1Y;
            Cdot1Y = v2.y + w2 * r2X - v1.y - w1 * r1X;
            Cdot2 = w2 - w1;
            this.m_mass.Solve33(this.impulse3,-Cdot1X,-Cdot1Y,-Cdot2);
            if(this.m_limitState == b2internal::e_equalLimits)
            {
               this.m_impulse.Add(this.impulse3);
            }
            else if(this.m_limitState == b2internal::e_atLowerLimit)
            {
               newImpulse = this.m_impulse.z + this.impulse3.z;
               if(newImpulse < 0)
               {
                  this.m_mass.Solve22(this.reduced,-Cdot1X + this.m_impulse.z * this.m_mass.col3.x,-Cdot1Y + this.m_impulse.z * this.m_mass.col3.y);
                  this.impulse3.x = this.reduced.x;
                  this.impulse3.y = this.reduced.y;
                  this.impulse3.z = -this.m_impulse.z;
                  this.m_impulse.x += this.reduced.x;
                  this.m_impulse.y += this.reduced.y;
                  this.m_impulse.z = 0;
               }
               else
               {
                  this.m_impulse.x += this.impulse3.x;
                  this.m_impulse.y += this.impulse3.y;
                  this.m_impulse.z += this.impulse3.z;
               }
            }
            else if(this.m_limitState == b2internal::e_atUpperLimit)
            {
               newImpulse = this.m_impulse.z + this.impulse3.z;
               if(newImpulse > 0)
               {
                  this.m_mass.Solve22(this.reduced,-Cdot1X + this.m_impulse.z * this.m_mass.col3.x,-Cdot1Y + this.m_impulse.z * this.m_mass.col3.y);
                  this.impulse3.x = this.reduced.x;
                  this.impulse3.y = this.reduced.y;
                  this.impulse3.z = -this.m_impulse.z;
                  this.m_impulse.x += this.reduced.x;
                  this.m_impulse.y += this.reduced.y;
                  this.m_impulse.z = 0;
               }
               else
               {
                  this.m_impulse.x += this.impulse3.x;
                  this.m_impulse.y += this.impulse3.y;
                  this.m_impulse.z += this.impulse3.z;
               }
            }
            v1.x -= m1 * this.impulse3.x;
            v1.y -= m1 * this.impulse3.y;
            w1 -= i1 * (r1X * this.impulse3.y - r1Y * this.impulse3.x + this.impulse3.z);
            v2.x += m2 * this.impulse3.x;
            v2.y += m2 * this.impulse3.y;
            w2 += i2 * (r2X * this.impulse3.y - r2Y * this.impulse3.x + this.impulse3.z);
         }
         else
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
            CdotX = v2.x + -w2 * r2Y - v1.x - -w1 * r1Y;
            CdotY = v2.y + w2 * r2X - v1.y - w1 * r1X;
            this.m_mass.Solve22(this.impulse2,-CdotX,-CdotY);
            this.m_impulse.x += this.impulse2.x;
            this.m_impulse.y += this.impulse2.y;
            v1.x -= m1 * this.impulse2.x;
            v1.y -= m1 * this.impulse2.y;
            w1 -= i1 * (r1X * this.impulse2.y - r1Y * this.impulse2.x);
            v2.x += m2 * this.impulse2.x;
            v2.y += m2 * this.impulse2.y;
            w2 += i2 * (r2X * this.impulse2.y - r2Y * this.impulse2.x);
         }
         bA.m_linearVelocity.SetV(v1);
         bA.m_angularVelocity = w1;
         bB.m_linearVelocity.SetV(v2);
         bB.m_angularVelocity = w2;
      }
      
      override b2internal function SolvePositionConstraints(baumgarte:Number) : Boolean
      {
         var oldLimitImpulse:Number = NaN;
         var C:Number = NaN;
         var tMat:b2Mat22 = null;
         var tX:Number = NaN;
         var impulseX:Number = NaN;
         var impulseY:Number = NaN;
         var angle:Number = NaN;
         var limitImpulse:Number = NaN;
         var uX:Number = NaN;
         var uY:Number = NaN;
         var k:Number = NaN;
         var m:Number = NaN;
         var k_beta:Number = NaN;
         var bA:b2Body = b2internal::m_bodyA;
         var bB:b2Body = b2internal::m_bodyB;
         var fixedRotation:* = b2internal::m_invIA + b2internal::m_invIB == 0;
         var angularError:Number = 0;
         var positionError:Number = 0;
         if(this.m_enableLimit && this.m_limitState != b2internal::e_inactiveLimit && !fixedRotation)
         {
            angle = bB.m_sweep.a - bA.m_sweep.a - this.m_referenceAngle;
            limitImpulse = 0;
            if(this.m_limitState == b2internal::e_equalLimits)
            {
               C = b2Math.Clamp(angle - this.m_lowerAngle,-b2Settings.b2_maxAngularCorrection,b2Settings.b2_maxAngularCorrection);
               limitImpulse = -this.m_motorMass * C;
               angularError = b2Math.Abs(C);
            }
            else if(this.m_limitState == b2internal::e_atLowerLimit)
            {
               C = angle - this.m_lowerAngle;
               angularError = -C;
               C = b2Math.Clamp(C + b2Settings.b2_angularSlop,-b2Settings.b2_maxAngularCorrection,0);
               limitImpulse = -this.m_motorMass * C;
            }
            else if(this.m_limitState == b2internal::e_atUpperLimit)
            {
               C = angle - this.m_upperAngle;
               angularError = C;
               C = b2Math.Clamp(C - b2Settings.b2_angularSlop,0,b2Settings.b2_maxAngularCorrection);
               limitImpulse = -this.m_motorMass * C;
            }
            bA.m_sweep.a -= bA.m_invI * limitImpulse;
            bB.m_sweep.a += bB.m_invI * limitImpulse;
            bA.SynchronizeTransform();
            bB.SynchronizeTransform();
         }
         tMat = bA.m_xf.R;
         var r1X:Number = this.m_localAnchor1.x - bA.m_sweep.localCenter.x;
         var r1Y:Number = this.m_localAnchor1.y - bA.m_sweep.localCenter.y;
         tX = tMat.col1.x * r1X + tMat.col2.x * r1Y;
         r1Y = tMat.col1.y * r1X + tMat.col2.y * r1Y;
         r1X = tX;
         tMat = bB.m_xf.R;
         var r2X:Number = this.m_localAnchor2.x - bB.m_sweep.localCenter.x;
         var r2Y:Number = this.m_localAnchor2.y - bB.m_sweep.localCenter.y;
         tX = tMat.col1.x * r2X + tMat.col2.x * r2Y;
         r2Y = tMat.col1.y * r2X + tMat.col2.y * r2Y;
         r2X = tX;
         var CX:Number = bB.m_sweep.c.x + r2X - bA.m_sweep.c.x - r1X;
         var CY:Number = bB.m_sweep.c.y + r2Y - bA.m_sweep.c.y - r1Y;
         var CLengthSquared:Number = CX * CX + CY * CY;
         var CLength:Number = Math.sqrt(CLengthSquared);
         positionError = CLength;
         var invMass1:Number = bA.m_invMass;
         var invMass2:Number = bB.m_invMass;
         var invI1:Number = bA.m_invI;
         var invI2:Number = bB.m_invI;
         var k_allowedStretch:Number = 10 * b2Settings.b2_linearSlop * 4;
         if(CLengthSquared > k_allowedStretch * k_allowedStretch)
         {
            uX = CX / CLength;
            uY = CY / CLength;
            k = invMass1 + invMass2;
            m = 1 / k;
            impulseX = m * -CX;
            impulseY = m * -CY;
            k_beta = 0.5;
            bA.m_sweep.c.x -= k_beta * invMass1 * impulseX;
            bA.m_sweep.c.y -= k_beta * invMass1 * impulseY;
            bB.m_sweep.c.x += k_beta * invMass2 * impulseX;
            bB.m_sweep.c.y += k_beta * invMass2 * impulseY;
            CX = bB.m_sweep.c.x + r2X - bA.m_sweep.c.x - r1X;
            CY = bB.m_sweep.c.y + r2Y - bA.m_sweep.c.y - r1Y;
         }
         this.K1.col1.x = invMass1 + invMass2;
         this.K1.col2.x = 0;
         this.K1.col1.y = 0;
         this.K1.col2.y = invMass1 + invMass2;
         this.K2.col1.x = invI1 * r1Y * r1Y;
         this.K2.col2.x = -invI1 * r1X * r1Y;
         this.K2.col1.y = -invI1 * r1X * r1Y;
         this.K2.col2.y = invI1 * r1X * r1X;
         this.K3.col1.x = invI2 * r2Y * r2Y;
         this.K3.col2.x = -invI2 * r2X * r2Y;
         this.K3.col1.y = -invI2 * r2X * r2Y;
         this.K3.col2.y = invI2 * r2X * r2X;
         this.K.SetM(this.K1);
         this.K.AddM(this.K2);
         this.K.AddM(this.K3);
         this.K.Solve(tImpulse,-CX,-CY);
         impulseX = tImpulse.x;
         impulseY = tImpulse.y;
         bA.m_sweep.c.x -= bA.m_invMass * impulseX;
         bA.m_sweep.c.y -= bA.m_invMass * impulseY;
         bA.m_sweep.a -= bA.m_invI * (r1X * impulseY - r1Y * impulseX);
         bB.m_sweep.c.x += bB.m_invMass * impulseX;
         bB.m_sweep.c.y += bB.m_invMass * impulseY;
         bB.m_sweep.a += bB.m_invI * (r2X * impulseY - r2Y * impulseX);
         bA.SynchronizeTransform();
         bB.SynchronizeTransform();
         return positionError <= b2Settings.b2_linearSlop * 4 && angularError <= b2Settings.b2_angularSlop;
      }
   }
}
