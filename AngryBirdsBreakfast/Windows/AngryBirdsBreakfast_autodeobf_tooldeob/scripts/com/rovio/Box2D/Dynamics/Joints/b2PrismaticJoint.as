package com.rovio.Box2D.Dynamics.Joints
{
   import com.rovio.Box2D.Common.b2Settings;
   import com.rovio.Box2D.Common.b2internal;
   import com.rovio.Box2D.Dynamics.b2Body;
   import com.rovio.Box2D.Dynamics.b2TimeStep;
   import com.rovio.Box2D.Common.Math.b2Mat22;
   import com.rovio.Box2D.Common.Math.b2Mat33;
   import com.rovio.Box2D.Common.Math.b2Math;
   import com.rovio.Box2D.Common.Math.b2Transform;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Common.Math.b2Vec3;
   
   use namespace b2internal;
   
   public class b2PrismaticJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var m_localXAxis1:b2Vec2;
      
      private var m_localYAxis1:b2Vec2;
      
      private var m_refAngle:Number;
      
      private var m_axis:b2Vec2;
      
      private var m_perp:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var m_K:b2Mat33;
      
      private var m_impulse:b2Vec3;
      
      private var m_motorMass:Number;
      
      private var m_motorImpulse:Number;
      
      private var m_lowerTranslation:Number;
      
      private var m_upperTranslation:Number;
      
      private var m_maxMotorForce:Number;
      
      private var m_motorSpeed:Number;
      
      private var m_enableLimit:Boolean;
      
      private var m_enableMotor:Boolean;
      
      private var m_limitState:int;
      
      public function b2PrismaticJoint(param1:b2PrismaticJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.m_localXAxis1 = new b2Vec2();
         this.m_localYAxis1 = new b2Vec2();
         this.m_axis = new b2Vec2();
         this.m_perp = new b2Vec2();
         this.m_K = new b2Mat33();
         this.m_impulse = new b2Vec3();
         super(param1);
         this.m_localAnchor1.SetV(param1.localAnchorA);
         this.m_localAnchor2.SetV(param1.localAnchorB);
         this.m_localXAxis1.SetV(param1.localAxisA);
         this.m_localYAxis1.x = -this.m_localXAxis1.y;
         this.m_localYAxis1.y = this.m_localXAxis1.x;
         this.m_refAngle = param1.referenceAngle;
         this.m_impulse.SetZero();
         this.m_motorMass = 0;
         this.m_motorImpulse = 0;
         this.m_lowerTranslation = param1.lowerTranslation;
         this.m_upperTranslation = param1.upperTranslation;
         this.m_maxMotorForce = param1.maxMotorForce;
         this.m_motorSpeed = param1.motorSpeed;
         this.m_enableLimit = param1.enableLimit;
         this.m_enableMotor = param1.enableMotor;
         this.m_limitState = b2internal::-!Z;
         this.m_axis.SetZero();
         this.m_perp.SetZero();
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::[Z.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::8!F.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * (this.m_impulse.x * this.m_perp.x + (this.m_motorImpulse + this.m_impulse.z) * this.m_axis.x),param1 * (this.m_impulse.x * this.m_perp.y + (this.m_motorImpulse + this.m_impulse.z) * this.m_axis.y));
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.m_impulse.y;
      }
      
      public function GetJointTranslation() : Number
      {
         var _loc1_:b2Body = b2internal::[Z;
         var _loc2_:b2Body = b2internal::8!F;
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
         var _loc1_:b2Body = b2internal::[Z;
         var _loc2_:b2Body = b2internal::8!F;
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
         b2internal::[Z.SetAwake(true);
         b2internal::8!F.SetAwake(true);
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
         b2internal::[Z.SetAwake(true);
         b2internal::8!F.SetAwake(true);
         this.m_lowerTranslation = param1;
         this.m_upperTranslation = param2;
      }
      
      override public function IsMotorEnabled() : Boolean
      {
         return this.m_enableMotor;
      }
      
      override public function EnableMotor(param1:Boolean) : void
      {
         b2internal::[Z.SetAwake(true);
         b2internal::8!F.SetAwake(true);
         this.m_enableMotor = param1;
      }
      
      public function SetMotorSpeed(param1:Number) : void
      {
         b2internal::[Z.SetAwake(true);
         b2internal::8!F.SetAwake(true);
         this.m_motorSpeed = param1;
      }
      
      public function GetMotorSpeed() : Number
      {
         return this.m_motorSpeed;
      }
      
      public function SetMaxMotorForce(param1:Number) : void
      {
         b2internal::[Z.SetAwake(true);
         b2internal::8!F.SetAwake(true);
         this.m_maxMotorForce = param1;
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
         var _loc2_:b2Body = b2internal::[Z;
         var _loc3_:b2Body = b2internal::8!F;
         b2internal::[y.SetV(_loc2_.GetLocalCenter());
         b2internal::]i.SetV(_loc3_.GetLocalCenter());
         var _loc6_:b2Transform = _loc2_.GetTransform();
         var _loc7_:b2Transform = _loc3_.GetTransform();
         _loc4_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor1.x - b2internal::[y.x;
         var _loc9_:Number = this.m_localAnchor1.y - b2internal::[y.y;
         _loc5_ = _loc4_.col1.x * _loc8_ + _loc4_.col2.x * _loc9_;
         _loc9_ = _loc4_.col1.y * _loc8_ + _loc4_.col2.y * _loc9_;
         _loc8_ = _loc5_;
         _loc4_ = _loc3_.m_xf.R;
         var _loc10_:Number = this.m_localAnchor2.x - b2internal::]i.x;
         var _loc11_:Number = this.m_localAnchor2.y - b2internal::]i.y;
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
         this.m_motorMass = b2internal::>+ + b2internal::5"" + b2internal::`2 * this.m_a1 * this.m_a1 + b2internal::,T * this.m_a2 * this.m_a2;
         if(this.m_motorMass > Number.MIN_VALUE)
         {
            this.m_motorMass = 1 / this.m_motorMass;
         }
         this.m_perp.SetV(b2Math.MulMV(_loc6_.R,this.m_localYAxis1));
         this.m_s1 = (_loc12_ + _loc8_) * this.m_perp.y - (_loc13_ + _loc9_) * this.m_perp.x;
         this.m_s2 = _loc10_ * this.m_perp.y - _loc11_ * this.m_perp.x;
         var _loc14_:Number = b2internal::>+;
         var _loc15_:Number = b2internal::5"";
         var _loc16_:Number = b2internal::`2;
         var _loc17_:Number = b2internal::,T;
         this.m_K.col1.x = _loc14_ + _loc15_ + _loc16_ * this.m_s1 * this.m_s1 + _loc17_ * this.m_s2 * this.m_s2;
         this.m_K.col1.y = _loc16_ * this.m_s1 + _loc17_ * this.m_s2;
         this.m_K.col1.z = _loc16_ * this.m_s1 * this.m_a1 + _loc17_ * this.m_s2 * this.m_a2;
         this.m_K.col2.x = this.m_K.col1.y;
         if(_loc16_ + _loc17_ != 0)
         {
            this.m_K.col2.y = _loc16_ + _loc17_;
         }
         else
         {
            this.m_K.col2.y = 1;
         }
         this.m_K.col2.z = _loc16_ * this.m_a1 + _loc17_ * this.m_a2;
         this.m_K.col3.x = this.m_K.col1.z;
         this.m_K.col3.y = this.m_K.col2.z;
         this.m_K.col3.z = _loc14_ + _loc15_ + _loc16_ * this.m_a1 * this.m_a1 + _loc17_ * this.m_a2 * this.m_a2;
         if(this.m_enableLimit)
         {
            _loc18_ = this.m_axis.x * _loc12_ + this.m_axis.y * _loc13_;
            if(b2Math.Abs(this.m_upperTranslation - this.m_lowerTranslation) < 2 * b2Settings.b2_linearSlop)
            {
               this.m_limitState = b2internal::8!E;
            }
            else if(_loc18_ <= this.m_lowerTranslation)
            {
               if(this.m_limitState != b2internal::@<)
               {
                  this.m_limitState = b2internal::@<;
                  this.m_impulse.z = 0;
               }
            }
            else if(_loc18_ >= this.m_upperTranslation)
            {
               if(this.m_limitState != b2internal::%S)
               {
                  this.m_limitState = b2internal::%S;
                  this.m_impulse.z = 0;
               }
            }
            else
            {
               this.m_limitState = b2internal::-!Z;
               this.m_impulse.z = 0;
            }
         }
         else
         {
            this.m_limitState = b2internal::-!Z;
            this.m_impulse.z = 0;
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
            _loc19_ = this.m_impulse.x * this.m_perp.x + (this.m_motorImpulse + this.m_impulse.z) * this.m_axis.x;
            _loc20_ = this.m_impulse.x * this.m_perp.y + (this.m_motorImpulse + this.m_impulse.z) * this.m_axis.y;
            _loc21_ = this.m_impulse.x * this.m_s1 + this.m_impulse.y + (this.m_motorImpulse + this.m_impulse.z) * this.m_a1;
            _loc22_ = this.m_impulse.x * this.m_s2 + this.m_impulse.y + (this.m_motorImpulse + this.m_impulse.z) * this.m_a2;
            _loc2_.m_linearVelocity.x -= b2internal::>+ * _loc19_;
            _loc2_.m_linearVelocity.y -= b2internal::>+ * _loc20_;
            _loc2_.m_angularVelocity -= b2internal::`2 * _loc21_;
            _loc3_.m_linearVelocity.x += b2internal::5"" * _loc19_;
            _loc3_.m_linearVelocity.y += b2internal::5"" * _loc20_;
            _loc3_.m_angularVelocity += b2internal::,T * _loc22_;
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
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:b2Vec3 = null;
         var _loc20_:b2Vec3 = null;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:b2Vec2 = null;
         var _loc24_:b2Vec2 = null;
         var _loc2_:b2Body = b2internal::[Z;
         var _loc3_:b2Body = b2internal::8!F;
         var _loc4_:b2Vec2 = _loc2_.m_linearVelocity;
         var _loc5_:Number = _loc2_.m_angularVelocity;
         var _loc6_:b2Vec2 = _loc3_.m_linearVelocity;
         var _loc7_:Number = _loc3_.m_angularVelocity;
         if(this.m_enableMotor && this.m_limitState != b2internal::8!E)
         {
            _loc14_ = this.m_axis.x * (_loc6_.x - _loc4_.x) + this.m_axis.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc15_ = this.m_motorMass * (this.m_motorSpeed - _loc14_);
            _loc16_ = this.m_motorImpulse;
            _loc17_ = param1.dt * this.m_maxMotorForce;
            this.m_motorImpulse = b2Math.Clamp(this.m_motorImpulse + _loc15_,-_loc17_,_loc17_);
            _loc8_ = (_loc15_ = this.m_motorImpulse - _loc16_) * this.m_axis.x;
            _loc9_ = _loc15_ * this.m_axis.y;
            _loc10_ = _loc15_ * this.m_a1;
            _loc11_ = _loc15_ * this.m_a2;
            _loc4_.x -= b2internal::>+ * _loc8_;
            _loc4_.y -= b2internal::>+ * _loc9_;
            _loc5_ -= b2internal::`2 * _loc10_;
            _loc6_.x += b2internal::5"" * _loc8_;
            _loc6_.y += b2internal::5"" * _loc9_;
            _loc7_ += b2internal::,T * _loc11_;
         }
         var _loc12_:Number = this.m_perp.x * (_loc6_.x - _loc4_.x) + this.m_perp.y * (_loc6_.y - _loc4_.y) + this.m_s2 * _loc7_ - this.m_s1 * _loc5_;
         var _loc13_:Number = _loc7_ - _loc5_;
         if(this.m_enableLimit && this.m_limitState != b2internal::-!Z)
         {
            _loc18_ = this.m_axis.x * (_loc6_.x - _loc4_.x) + this.m_axis.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc19_ = this.m_impulse.Copy();
            _loc20_ = this.m_K.Solve33(new b2Vec3(),-_loc12_,-_loc13_,-_loc18_);
            this.m_impulse.Add(_loc20_);
            if(this.m_limitState == b2internal::@<)
            {
               this.m_impulse.z = b2Math.Max(this.m_impulse.z,0);
            }
            else if(this.m_limitState == b2internal::%S)
            {
               this.m_impulse.z = b2Math.Min(this.m_impulse.z,0);
            }
            _loc21_ = -_loc12_ - (this.m_impulse.z - _loc19_.z) * this.m_K.col3.x;
            _loc22_ = -_loc13_ - (this.m_impulse.z - _loc19_.z) * this.m_K.col3.y;
            _loc23_ = this.m_K.Solve22(new b2Vec2(),_loc21_,_loc22_);
            _loc23_.x += _loc19_.x;
            _loc23_.y += _loc19_.y;
            this.m_impulse.x = _loc23_.x;
            this.m_impulse.y = _loc23_.y;
            _loc20_.x = this.m_impulse.x - _loc19_.x;
            _loc20_.y = this.m_impulse.y - _loc19_.y;
            _loc20_.z = this.m_impulse.z - _loc19_.z;
            _loc8_ = _loc20_.x * this.m_perp.x + _loc20_.z * this.m_axis.x;
            _loc9_ = _loc20_.x * this.m_perp.y + _loc20_.z * this.m_axis.y;
            _loc10_ = _loc20_.x * this.m_s1 + _loc20_.y + _loc20_.z * this.m_a1;
            _loc11_ = _loc20_.x * this.m_s2 + _loc20_.y + _loc20_.z * this.m_a2;
            _loc4_.x -= b2internal::>+ * _loc8_;
            _loc4_.y -= b2internal::>+ * _loc9_;
            _loc5_ -= b2internal::`2 * _loc10_;
            _loc6_.x += b2internal::5"" * _loc8_;
            _loc6_.y += b2internal::5"" * _loc9_;
            _loc7_ += b2internal::,T * _loc11_;
         }
         else
         {
            _loc24_ = this.m_K.Solve22(new b2Vec2(),-_loc12_,-_loc13_);
            this.m_impulse.x += _loc24_.x;
            this.m_impulse.y += _loc24_.y;
            _loc8_ = _loc24_.x * this.m_perp.x;
            _loc9_ = _loc24_.x * this.m_perp.y;
            _loc10_ = _loc24_.x * this.m_s1 + _loc24_.y;
            _loc11_ = _loc24_.x * this.m_s2 + _loc24_.y;
            _loc4_.x -= b2internal::>+ * _loc8_;
            _loc4_.y -= b2internal::>+ * _loc9_;
            _loc5_ -= b2internal::`2 * _loc10_;
            _loc6_.x += b2internal::5"" * _loc8_;
            _loc6_.y += b2internal::5"" * _loc9_;
            _loc7_ += b2internal::,T * _loc11_;
         }
         _loc2_.m_linearVelocity.SetV(_loc4_);
         _loc2_.m_angularVelocity = _loc5_;
         _loc3_.m_linearVelocity.SetV(_loc6_);
         _loc3_.m_angularVelocity = _loc7_;
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 2686
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
   }
}
