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
      
      public function b2LineJoint(param1:b2LineJointDef)
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.m_localXAxis1 = new b2Vec2();
         this.m_localYAxis1 = new b2Vec2();
         this.m_axis = new b2Vec2();
         this.m_perp = new b2Vec2();
         this.m_K = new b2Mat22();
         this.m_impulse = new b2Vec2();
         super(param1);
         this.m_localAnchor1.SetV(param1.localAnchorA);
         this.m_localAnchor2.SetV(param1.localAnchorB);
         this.m_localXAxis1.SetV(param1.localAxisA);
         this.m_localYAxis1.x = -this.m_localXAxis1.y;
         this.m_localYAxis1.y = this.m_localXAxis1.x;
         this.m_impulse.SetZero();
         this.m_motorMass = 0;
         this.m_motorImpulse = 0;
         this.m_lowerTranslation = param1.lowerTranslation;
         this.m_upperTranslation = param1.upperTranslation;
         this.m_maxMotorForce = param1.maxMotorForce;
         this.m_motorSpeed = param1.motorSpeed;
         this.m_enableLimit = param1.enableLimit;
         this.m_enableMotor = param1.enableMotor;
         this.m_limitState = b2internal::e_inactiveLimit;
         this.m_axis.SetZero();
         this.m_perp.SetZero();
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::m_bodyA.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::m_bodyB.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * (this.m_impulse.x * this.m_perp.x + (this.m_motorImpulse + this.m_impulse.y) * this.m_axis.x),param1 * (this.m_impulse.x * this.m_perp.y + (this.m_motorImpulse + this.m_impulse.y) * this.m_axis.y));
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.m_impulse.y;
      }
      
      public function GetJointTranslation() : Number
      {
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::m_bodyA;
         var _loc2_:b2Body = b2internal::m_bodyB;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         var _loc6_:Number = (_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x - _loc4_.x;
         var _loc7_:Number = _loc5_.y - _loc4_.y;
         var _loc8_:b2Vec2;
         return Number((_loc8_ = _loc1_.GetWorldVector(this.m_localXAxis1)).x * _loc6_ + _loc8_.y * _loc7_);
      }
      
      public function GetJointSpeed() : Number
      {
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::m_bodyA;
         var _loc2_:b2Body = b2internal::m_bodyB;
         _loc3_ = _loc1_.m_xf.R;
         var _loc4_:Number = this.m_localAnchor1.x - _loc1_.m_sweep.localCenter.x;
         var _loc5_:Number = this.m_localAnchor1.y - _loc1_.m_sweep.localCenter.y;
         var _loc6_:Number = _loc3_.col1.x * _loc4_ + _loc3_.col2.x * _loc5_;
         _loc5_ = _loc3_.col1.y * _loc4_ + _loc3_.col2.y * _loc5_;
         _loc4_ = _loc6_;
         _loc3_ = _loc2_.m_xf.R;
         var _loc7_:Number = this.m_localAnchor2.x - _loc2_.m_sweep.localCenter.x;
         var _loc8_:Number = this.m_localAnchor2.y - _loc2_.m_sweep.localCenter.y;
         _loc6_ = _loc3_.col1.x * _loc7_ + _loc3_.col2.x * _loc8_;
         _loc8_ = _loc3_.col1.y * _loc7_ + _loc3_.col2.y * _loc8_;
         _loc7_ = _loc6_;
         var _loc9_:Number = _loc1_.m_sweep.c.x + _loc4_;
         var _loc10_:Number = _loc1_.m_sweep.c.y + _loc5_;
         var _loc11_:Number = _loc2_.m_sweep.c.x + _loc7_;
         var _loc12_:Number = _loc2_.m_sweep.c.y + _loc8_;
         var _loc13_:Number = _loc11_ - _loc9_;
         var _loc14_:Number = _loc12_ - _loc10_;
         var _loc15_:b2Vec2 = _loc1_.GetWorldVector(this.m_localXAxis1);
         var _loc16_:b2Vec2 = _loc1_.m_linearVelocity;
         var _loc17_:b2Vec2 = _loc2_.m_linearVelocity;
         var _loc18_:Number = _loc1_.m_angularVelocity;
         var _loc19_:Number = _loc2_.m_angularVelocity;
         return Number(_loc13_ * (-_loc18_ * _loc15_.y) + _loc14_ * (_loc18_ * _loc15_.x) + (_loc15_.x * (_loc17_.x + -_loc19_ * _loc8_ - _loc16_.x - -_loc18_ * _loc5_) + _loc15_.y * (_loc17_.y + _loc19_ * _loc7_ - _loc16_.y - _loc18_ * _loc4_)));
      }
      
      public function IsLimitEnabled() : Boolean
      {
         return this.m_enableLimit;
      }
      
      public function EnableLimit(param1:Boolean) : void
      {
         b2internal::m_bodyA.SetAwake(true);
         b2internal::m_bodyB.SetAwake(true);
         this.m_enableLimit = param1;
      }
      
      public function GetLowerLimit() : Number
      {
         return this.m_lowerTranslation;
      }
      
      public function GetUpperLimit() : Number
      {
         return this.m_upperTranslation;
      }
      
      public function SetLimits(param1:Number, param2:Number) : void
      {
         b2internal::m_bodyA.SetAwake(true);
         b2internal::m_bodyB.SetAwake(true);
         this.m_lowerTranslation = param1;
         this.m_upperTranslation = param2;
      }
      
      public function IsMotorEnabled() : Boolean
      {
         return this.m_enableMotor;
      }
      
      public function EnableMotor(param1:Boolean) : void
      {
         b2internal::m_bodyA.SetAwake(true);
         b2internal::m_bodyB.SetAwake(true);
         this.m_enableMotor = param1;
      }
      
      public function SetMotorSpeed(param1:Number) : void
      {
         b2internal::m_bodyA.SetAwake(true);
         b2internal::m_bodyB.SetAwake(true);
         this.m_motorSpeed = param1;
      }
      
      public function GetMotorSpeed() : Number
      {
         return this.m_motorSpeed;
      }
      
      public function SetMaxMotorForce(param1:Number) : void
      {
         b2internal::m_bodyA.SetAwake(true);
         b2internal::m_bodyB.SetAwake(true);
         this.m_maxMotorForce = param1;
      }
      
      public function GetMaxMotorForce() : Number
      {
         return this.m_maxMotorForce;
      }
      
      public function GetMotorForce() : Number
      {
         return this.m_motorImpulse;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc4_:b2Mat22 = null;
         var _loc5_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc2_:b2Body = b2internal::m_bodyA;
         var _loc3_:b2Body = b2internal::m_bodyB;
         b2internal::m_localCenterA.SetV(_loc2_.GetLocalCenter());
         b2internal::m_localCenterB.SetV(_loc3_.GetLocalCenter());
         var _loc6_:b2Transform = _loc2_.GetTransform();
         var _loc7_:b2Transform = _loc3_.GetTransform();
         _loc4_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor1.x - b2internal::m_localCenterA.x;
         var _loc9_:Number = this.m_localAnchor1.y - b2internal::m_localCenterA.y;
         _loc5_ = _loc4_.col1.x * _loc8_ + _loc4_.col2.x * _loc9_;
         _loc9_ = _loc4_.col1.y * _loc8_ + _loc4_.col2.y * _loc9_;
         _loc8_ = _loc5_;
         _loc4_ = _loc3_.m_xf.R;
         var _loc10_:Number = this.m_localAnchor2.x - b2internal::m_localCenterB.x;
         var _loc11_:Number = this.m_localAnchor2.y - b2internal::m_localCenterB.y;
         _loc5_ = _loc4_.col1.x * _loc10_ + _loc4_.col2.x * _loc11_;
         _loc11_ = _loc4_.col1.y * _loc10_ + _loc4_.col2.y * _loc11_;
         _loc10_ = _loc5_;
         var _loc12_:Number = _loc3_.m_sweep.c.x + _loc10_ - _loc2_.m_sweep.c.x - _loc8_;
         var _loc13_:Number = _loc3_.m_sweep.c.y + _loc11_ - _loc2_.m_sweep.c.y - _loc9_;
         m_invMassA = _loc2_.m_invMass;
         m_invMassB = _loc3_.m_invMass;
         m_invIA = _loc2_.m_invI;
         m_invIB = _loc3_.m_invI;
         this.m_axis.SetV(b2Math.MulMV(_loc6_.R,this.m_localXAxis1));
         this.m_a1 = (_loc12_ + _loc8_) * this.m_axis.y - (_loc13_ + _loc9_) * this.m_axis.x;
         this.m_a2 = _loc10_ * this.m_axis.y - _loc11_ * this.m_axis.x;
         this.m_motorMass = b2internal::m_invMassA + b2internal::m_invMassB + b2internal::m_invIA * this.m_a1 * this.m_a1 + b2internal::m_invIB * this.m_a2 * this.m_a2;
         this.m_motorMass = this.m_motorMass > Number.MIN_VALUE ? Number(1 / this.m_motorMass) : Number(0);
         this.m_perp.SetV(b2Math.MulMV(_loc6_.R,this.m_localYAxis1));
         this.m_s1 = (_loc12_ + _loc8_) * this.m_perp.y - (_loc13_ + _loc9_) * this.m_perp.x;
         this.m_s2 = _loc10_ * this.m_perp.y - _loc11_ * this.m_perp.x;
         var _loc14_:Number = b2internal::m_invMassA;
         var _loc15_:Number = b2internal::m_invMassB;
         var _loc16_:Number = b2internal::m_invIA;
         var _loc17_:Number = b2internal::m_invIB;
         this.m_K.col1.x = _loc14_ + _loc15_ + _loc16_ * this.m_s1 * this.m_s1 + _loc17_ * this.m_s2 * this.m_s2;
         this.m_K.col1.y = _loc16_ * this.m_s1 * this.m_a1 + _loc17_ * this.m_s2 * this.m_a2;
         this.m_K.col2.x = this.m_K.col1.y;
         this.m_K.col2.y = _loc14_ + _loc15_ + _loc16_ * this.m_a1 * this.m_a1 + _loc17_ * this.m_a2 * this.m_a2;
         if(this.m_enableLimit)
         {
            _loc18_ = this.m_axis.x * _loc12_ + this.m_axis.y * _loc13_;
            if(b2Math.Abs(this.m_upperTranslation - this.m_lowerTranslation) < 2 * b2Settings.b2_linearSlop)
            {
               this.m_limitState = b2internal::e_equalLimits;
            }
            else if(_loc18_ <= this.m_lowerTranslation)
            {
               if(this.m_limitState != b2internal::e_atLowerLimit)
               {
                  this.m_limitState = b2internal::e_atLowerLimit;
                  this.m_impulse.y = 0;
               }
            }
            else if(_loc18_ >= this.m_upperTranslation)
            {
               if(this.m_limitState != b2internal::e_atUpperLimit)
               {
                  this.m_limitState = b2internal::e_atUpperLimit;
                  this.m_impulse.y = 0;
               }
            }
            else
            {
               this.m_limitState = b2internal::e_inactiveLimit;
               this.m_impulse.y = 0;
            }
         }
         else
         {
            this.m_limitState = b2internal::e_inactiveLimit;
         }
         if(this.m_enableMotor == false)
         {
            this.m_motorImpulse = 0;
         }
         if(param1.warmStarting)
         {
            this.m_impulse.x *= param1.dtRatio;
            this.m_impulse.y *= param1.dtRatio;
            this.m_motorImpulse *= param1.dtRatio;
            _loc19_ = this.m_impulse.x * this.m_perp.x + (this.m_motorImpulse + this.m_impulse.y) * this.m_axis.x;
            _loc20_ = this.m_impulse.x * this.m_perp.y + (this.m_motorImpulse + this.m_impulse.y) * this.m_axis.y;
            _loc21_ = this.m_impulse.x * this.m_s1 + (this.m_motorImpulse + this.m_impulse.y) * this.m_a1;
            _loc22_ = this.m_impulse.x * this.m_s2 + (this.m_motorImpulse + this.m_impulse.y) * this.m_a2;
            _loc2_.m_linearVelocity.x -= b2internal::m_invMassA * _loc19_;
            _loc2_.m_linearVelocity.y -= b2internal::m_invMassA * _loc20_;
            _loc2_.m_angularVelocity -= b2internal::m_invIA * _loc21_;
            _loc3_.m_linearVelocity.x += b2internal::m_invMassB * _loc19_;
            _loc3_.m_linearVelocity.y += b2internal::m_invMassB * _loc20_;
            _loc3_.m_angularVelocity += b2internal::m_invIB * _loc22_;
         }
         else
         {
            this.m_impulse.SetZero();
            this.m_motorImpulse = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:b2Vec2 = null;
         var _loc19_:b2Vec2 = null;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc2_:b2Body = b2internal::m_bodyA;
         var _loc3_:b2Body = b2internal::m_bodyB;
         var _loc4_:b2Vec2 = _loc2_.m_linearVelocity;
         var _loc5_:Number = _loc2_.m_angularVelocity;
         var _loc6_:b2Vec2 = _loc3_.m_linearVelocity;
         var _loc7_:Number = _loc3_.m_angularVelocity;
         if(this.m_enableMotor && this.m_limitState != b2internal::e_equalLimits)
         {
            _loc13_ = this.m_axis.x * (_loc6_.x - _loc4_.x) + this.m_axis.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc14_ = this.m_motorMass * (this.m_motorSpeed - _loc13_);
            _loc15_ = this.m_motorImpulse;
            _loc16_ = param1.dt * this.m_maxMotorForce;
            this.m_motorImpulse = b2Math.Clamp(this.m_motorImpulse + _loc14_,-_loc16_,_loc16_);
            _loc8_ = (_loc14_ = this.m_motorImpulse - _loc15_) * this.m_axis.x;
            _loc9_ = _loc14_ * this.m_axis.y;
            _loc10_ = _loc14_ * this.m_a1;
            _loc11_ = _loc14_ * this.m_a2;
            _loc4_.x -= b2internal::m_invMassA * _loc8_;
            _loc4_.y -= b2internal::m_invMassA * _loc9_;
            _loc5_ -= b2internal::m_invIA * _loc10_;
            _loc6_.x += b2internal::m_invMassB * _loc8_;
            _loc6_.y += b2internal::m_invMassB * _loc9_;
            _loc7_ += b2internal::m_invIB * _loc11_;
         }
         var _loc12_:Number = this.m_perp.x * (_loc6_.x - _loc4_.x) + this.m_perp.y * (_loc6_.y - _loc4_.y) + this.m_s2 * _loc7_ - this.m_s1 * _loc5_;
         if(this.m_enableLimit && this.m_limitState != b2internal::e_inactiveLimit)
         {
            _loc17_ = this.m_axis.x * (_loc6_.x - _loc4_.x) + this.m_axis.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc18_ = this.m_impulse.Copy();
            _loc19_ = this.m_K.Solve(new b2Vec2(),-_loc12_,-_loc17_);
            this.m_impulse.Add(_loc19_);
            if(this.m_limitState == b2internal::e_atLowerLimit)
            {
               this.m_impulse.y = b2Math.Max(this.m_impulse.y,0);
            }
            else if(this.m_limitState == b2internal::e_atUpperLimit)
            {
               this.m_impulse.y = b2Math.Min(this.m_impulse.y,0);
            }
            _loc20_ = -_loc12_ - (this.m_impulse.y - _loc18_.y) * this.m_K.col2.x;
            if(this.m_K.col1.x != 0)
            {
               _loc21_ = _loc20_ / this.m_K.col1.x + _loc18_.x;
            }
            else
            {
               _loc21_ = _loc18_.x;
            }
            this.m_impulse.x = _loc21_;
            _loc19_.x = this.m_impulse.x - _loc18_.x;
            _loc19_.y = this.m_impulse.y - _loc18_.y;
            _loc8_ = _loc19_.x * this.m_perp.x + _loc19_.y * this.m_axis.x;
            _loc9_ = _loc19_.x * this.m_perp.y + _loc19_.y * this.m_axis.y;
            _loc10_ = _loc19_.x * this.m_s1 + _loc19_.y * this.m_a1;
            _loc11_ = _loc19_.x * this.m_s2 + _loc19_.y * this.m_a2;
            _loc4_.x -= b2internal::m_invMassA * _loc8_;
            _loc4_.y -= b2internal::m_invMassA * _loc9_;
            _loc5_ -= b2internal::m_invIA * _loc10_;
            _loc6_.x += b2internal::m_invMassB * _loc8_;
            _loc6_.y += b2internal::m_invMassB * _loc9_;
            _loc7_ += b2internal::m_invIB * _loc11_;
         }
         else
         {
            if(this.m_K.col1.x != 0)
            {
               _loc22_ = -_loc12_ / this.m_K.col1.x;
            }
            else
            {
               _loc22_ = 0;
            }
            this.m_impulse.x += _loc22_;
            _loc8_ = _loc22_ * this.m_perp.x;
            _loc9_ = _loc22_ * this.m_perp.y;
            _loc10_ = _loc22_ * this.m_s1;
            _loc11_ = _loc22_ * this.m_s2;
            _loc4_.x -= b2internal::m_invMassA * _loc8_;
            _loc4_.y -= b2internal::m_invMassA * _loc9_;
            _loc5_ -= b2internal::m_invIA * _loc10_;
            _loc6_.x += b2internal::m_invMassB * _loc8_;
            _loc6_.y += b2internal::m_invMassB * _loc9_;
            _loc7_ += b2internal::m_invIB * _loc11_;
         }
         _loc2_.m_linearVelocity.SetV(_loc4_);
         _loc2_.m_angularVelocity = _loc5_;
         _loc3_.m_linearVelocity.SetV(_loc6_);
         _loc3_.m_angularVelocity = _loc7_;
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc10_:b2Mat22 = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc34_:Number = NaN;
         var _loc35_:Number = NaN;
         var _loc36_:Number = NaN;
         var _loc4_:b2Body = b2internal::m_bodyA;
         var _loc5_:b2Body = b2internal::m_bodyB;
         var _loc6_:b2Vec2 = _loc4_.m_sweep.c;
         var _loc7_:Number = _loc4_.m_sweep.a;
         var _loc8_:b2Vec2 = _loc5_.m_sweep.c;
         var _loc9_:Number = _loc5_.m_sweep.a;
         var _loc16_:Number = 0;
         var _loc17_:Number = 0;
         var _loc18_:Boolean = false;
         var _loc19_:Number = 0;
         var _loc20_:b2Mat22 = b2Mat22.FromAngle(_loc7_);
         var _loc21_:b2Mat22 = b2Mat22.FromAngle(_loc9_);
         _loc10_ = _loc20_;
         var _loc22_:Number = this.m_localAnchor1.x - b2internal::m_localCenterA.x;
         var _loc23_:Number = this.m_localAnchor1.y - b2internal::m_localCenterA.y;
         _loc11_ = _loc10_.col1.x * _loc22_ + _loc10_.col2.x * _loc23_;
         _loc23_ = _loc10_.col1.y * _loc22_ + _loc10_.col2.y * _loc23_;
         _loc22_ = _loc11_;
         _loc10_ = _loc21_;
         var _loc24_:Number = this.m_localAnchor2.x - b2internal::m_localCenterB.x;
         var _loc25_:Number = this.m_localAnchor2.y - b2internal::m_localCenterB.y;
         _loc11_ = _loc10_.col1.x * _loc24_ + _loc10_.col2.x * _loc25_;
         _loc25_ = _loc10_.col1.y * _loc24_ + _loc10_.col2.y * _loc25_;
         _loc24_ = _loc11_;
         var _loc26_:Number = _loc8_.x + _loc24_ - _loc6_.x - _loc22_;
         var _loc27_:Number = _loc8_.y + _loc25_ - _loc6_.y - _loc23_;
         if(this.m_enableLimit)
         {
            this.m_axis = b2Math.MulMV(_loc20_,this.m_localXAxis1);
            this.m_a1 = (_loc26_ + _loc22_) * this.m_axis.y - (_loc27_ + _loc23_) * this.m_axis.x;
            this.m_a2 = _loc24_ * this.m_axis.y - _loc25_ * this.m_axis.x;
            _loc34_ = this.m_axis.x * _loc26_ + this.m_axis.y * _loc27_;
            if(b2Math.Abs(this.m_upperTranslation - this.m_lowerTranslation) < 2 * b2Settings.b2_linearSlop)
            {
               _loc19_ = b2Math.Clamp(_loc34_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
               _loc16_ = b2Math.Abs(_loc34_);
               _loc18_ = true;
            }
            else if(_loc34_ <= this.m_lowerTranslation)
            {
               _loc19_ = b2Math.Clamp(_loc34_ - this.m_lowerTranslation + b2Settings.b2_linearSlop,-b2Settings.b2_maxLinearCorrection,0);
               _loc16_ = this.m_lowerTranslation - _loc34_;
               _loc18_ = true;
            }
            else if(_loc34_ >= this.m_upperTranslation)
            {
               _loc19_ = b2Math.Clamp(_loc34_ - this.m_upperTranslation + b2Settings.b2_linearSlop,0,b2Settings.b2_maxLinearCorrection);
               _loc16_ = _loc34_ - this.m_upperTranslation;
               _loc18_ = true;
            }
         }
         this.m_perp = b2Math.MulMV(_loc20_,this.m_localYAxis1);
         this.m_s1 = (_loc26_ + _loc22_) * this.m_perp.y - (_loc27_ + _loc23_) * this.m_perp.x;
         this.m_s2 = _loc24_ * this.m_perp.y - _loc25_ * this.m_perp.x;
         var _loc28_:b2Vec2 = new b2Vec2();
         var _loc29_:Number = this.m_perp.x * _loc26_ + this.m_perp.y * _loc27_;
         _loc16_ = b2Math.Max(_loc16_,b2Math.Abs(_loc29_));
         _loc17_ = 0;
         if(_loc18_)
         {
            _loc12_ = b2internal::m_invMassA;
            _loc13_ = b2internal::m_invMassB;
            _loc14_ = b2internal::m_invIA;
            _loc15_ = b2internal::m_invIB;
            this.m_K.col1.x = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            this.m_K.col1.y = _loc14_ * this.m_s1 * this.m_a1 + _loc15_ * this.m_s2 * this.m_a2;
            this.m_K.col2.x = this.m_K.col1.y;
            this.m_K.col2.y = _loc12_ + _loc13_ + _loc14_ * this.m_a1 * this.m_a1 + _loc15_ * this.m_a2 * this.m_a2;
            this.m_K.Solve(_loc28_,-_loc29_,-_loc19_);
         }
         else
         {
            _loc12_ = b2internal::m_invMassA;
            _loc13_ = b2internal::m_invMassB;
            _loc14_ = b2internal::m_invIA;
            _loc15_ = b2internal::m_invIB;
            if((_loc35_ = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2) != 0)
            {
               _loc36_ = -_loc29_ / _loc35_;
            }
            else
            {
               _loc36_ = 0;
            }
            _loc28_.x = _loc36_;
            _loc28_.y = 0;
         }
         var _loc30_:Number = _loc28_.x * this.m_perp.x + _loc28_.y * this.m_axis.x;
         var _loc31_:Number = _loc28_.x * this.m_perp.y + _loc28_.y * this.m_axis.y;
         var _loc32_:Number = _loc28_.x * this.m_s1 + _loc28_.y * this.m_a1;
         var _loc33_:Number = _loc28_.x * this.m_s2 + _loc28_.y * this.m_a2;
         _loc6_.x -= b2internal::m_invMassA * _loc30_;
         _loc6_.y -= b2internal::m_invMassA * _loc31_;
         _loc7_ -= b2internal::m_invIA * _loc32_;
         _loc8_.x += b2internal::m_invMassB * _loc30_;
         _loc8_.y += b2internal::m_invMassB * _loc31_;
         _loc9_ += b2internal::m_invIB * _loc33_;
         _loc4_.m_sweep.a = _loc7_;
         _loc5_.m_sweep.a = _loc9_;
         _loc4_.SynchronizeTransform();
         _loc5_.SynchronizeTransform();
         return _loc16_ <= b2Settings.b2_linearSlop && _loc17_ <= b2Settings.b2_angularSlop;
      }
   }
}
