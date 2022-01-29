package com.rovio.Box2D.Dynamics.Joints
{
   import com.rovio.Box2D.Common.b2Settings;
   import com.rovio.Box2D.Common.b2internal;
   import com.rovio.Box2D.Dynamics.b2Body;
   import com.rovio.Box2D.Dynamics.b2TimeStep;
   import com.rovio.Box2D.Common.Math.b2Mat22;
   import com.rovio.Box2D.Common.Math.b2Mat33;
   import com.rovio.Box2D.Common.Math.b2Math;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Common.Math.b2Vec3;
   
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
      
      public function b2RevoluteJoint(param1:b2RevoluteJointDef)
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
         super(param1);
         this.m_localAnchor1.SetV(param1.localAnchorA);
         this.m_localAnchor2.SetV(param1.localAnchorB);
         this.m_referenceAngle = param1.referenceAngle;
         this.m_impulse.SetZero();
         this.m_motorImpulse = 0;
         this.m_lowerAngle = param1.lowerAngle;
         this.m_upperAngle = param1.upperAngle;
         this.m_maxMotorTorque = param1.maxMotorTorque;
         this.m_motorSpeed = param1.motorSpeed;
         this.m_enableLimit = param1.enableLimit;
         this.m_enableMotor = param1.enableMotor;
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
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.m_impulse.x,param1 * this.m_impulse.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.m_impulse.z;
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
      
      public function EnableLimit(param1:Boolean) : void
      {
         this.m_enableLimit = param1;
      }
      
      public function GetLowerLimit() : Number
      {
         return this.m_lowerAngle;
      }
      
      public function GetUpperLimit() : Number
      {
         return this.m_upperAngle;
      }
      
      public function SetLimits(param1:Number, param2:Number) : void
      {
         this.m_lowerAngle = param1;
         this.m_upperAngle = param2;
      }
      
      override public function IsMotorEnabled() : Boolean
      {
         return this.m_enableMotor;
      }
      
      override public function EnableMotor(param1:Boolean) : void
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
      
      public function SetMaxMotorTorque(param1:Number) : void
      {
         this.m_maxMotorTorque = param1;
      }
      
      public function GetMotorTorque() : Number
      {
         return this.m_maxMotorTorque;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Mat22 = null;
         var _loc5_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         _loc2_ = b2internal::m_bodyA;
         _loc3_ = b2internal::m_bodyB;
         if(this.m_enableMotor || this.m_enableLimit)
         {
         }
         _loc4_ = _loc2_.m_xf.R;
         var _loc6_:Number = this.m_localAnchor1.x - _loc2_.m_sweep.localCenter.x;
         _loc7_ = this.m_localAnchor1.y - _loc2_.m_sweep.localCenter.y;
         _loc5_ = _loc4_.col1.x * _loc6_ + _loc4_.col2.x * _loc7_;
         _loc7_ = _loc4_.col1.y * _loc6_ + _loc4_.col2.y * _loc7_;
         _loc6_ = _loc5_;
         _loc4_ = _loc3_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor2.x - _loc3_.m_sweep.localCenter.x;
         var _loc9_:Number = this.m_localAnchor2.y - _loc3_.m_sweep.localCenter.y;
         _loc5_ = _loc4_.col1.x * _loc8_ + _loc4_.col2.x * _loc9_;
         _loc9_ = _loc4_.col1.y * _loc8_ + _loc4_.col2.y * _loc9_;
         _loc8_ = _loc5_;
         var _loc10_:Number = _loc2_.m_invMass;
         var _loc11_:Number = _loc3_.m_invMass;
         var _loc12_:Number = _loc2_.m_invI;
         var _loc13_:Number = _loc3_.m_invI;
         var _loc14_:* = _loc12_ + _loc13_ == 0;
         this.m_mass.col1.x = _loc10_ + _loc11_ + _loc7_ * _loc7_ * _loc12_ + _loc9_ * _loc9_ * _loc13_;
         this.m_mass.col2.x = -_loc7_ * _loc6_ * _loc12_ - _loc9_ * _loc8_ * _loc13_;
         this.m_mass.col3.x = -_loc7_ * _loc12_ - _loc9_ * _loc13_;
         this.m_mass.col1.y = this.m_mass.col2.x;
         this.m_mass.col2.y = _loc10_ + _loc11_ + _loc6_ * _loc6_ * _loc12_ + _loc8_ * _loc8_ * _loc13_;
         this.m_mass.col3.y = _loc6_ * _loc12_ + _loc8_ * _loc13_;
         this.m_mass.col1.z = this.m_mass.col3.x;
         this.m_mass.col2.z = this.m_mass.col3.y;
         this.m_mass.col3.z = _loc12_ + _loc13_;
         this.m_motorMass = 1 / (_loc12_ + _loc13_);
         if(this.m_enableMotor == false || _loc14_)
         {
            this.m_motorImpulse = 0;
         }
         if(this.m_enableLimit && !_loc14_)
         {
            _loc15_ = _loc3_.m_sweep.a - _loc2_.m_sweep.a - this.m_referenceAngle;
            if(b2Math.Abs(this.m_upperAngle - this.m_lowerAngle) < 2 * b2Settings.b2_angularSlop)
            {
               this.m_limitState = b2internal::e_equalLimits;
            }
            else if(_loc15_ <= this.m_lowerAngle)
            {
               if(this.m_limitState != b2internal::e_atLowerLimit)
               {
                  this.m_impulse.z = 0;
               }
               this.m_limitState = b2internal::e_atLowerLimit;
            }
            else if(_loc15_ >= this.m_upperAngle)
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
         if(param1.warmStarting)
         {
            this.m_impulse.x *= param1.dtRatio;
            this.m_impulse.y *= param1.dtRatio;
            this.m_motorImpulse *= param1.dtRatio;
            _loc16_ = this.m_impulse.x;
            _loc17_ = this.m_impulse.y;
            _loc2_.m_linearVelocity.x -= _loc10_ * _loc16_;
            _loc2_.m_linearVelocity.y -= _loc10_ * _loc17_;
            _loc2_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc17_ - _loc7_ * _loc16_ + this.m_motorImpulse + this.m_impulse.z);
            _loc3_.m_linearVelocity.x += _loc11_ * _loc16_;
            _loc3_.m_linearVelocity.y += _loc11_ * _loc17_;
            _loc3_.m_angularVelocity += _loc13_ * (_loc8_ * _loc17_ - _loc9_ * _loc16_ + this.m_motorImpulse + this.m_impulse.z);
         }
         else
         {
            this.m_impulse.SetZero();
            this.m_motorImpulse = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc4_:b2Mat22 = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc24_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc26_:Number = NaN;
         var _loc27_:Number = NaN;
         var _loc28_:Number = NaN;
         var _loc2_:b2Body = b2internal::m_bodyA;
         var _loc3_:b2Body = b2internal::m_bodyB;
         var _loc11_:b2Vec2 = _loc2_.m_linearVelocity;
         var _loc12_:Number = _loc2_.m_angularVelocity;
         var _loc13_:b2Vec2 = _loc3_.m_linearVelocity;
         var _loc14_:Number = _loc3_.m_angularVelocity;
         var _loc15_:Number = _loc2_.m_invMass;
         var _loc16_:Number = _loc3_.m_invMass;
         var _loc17_:Number = _loc2_.m_invI;
         var _loc18_:Number = _loc3_.m_invI;
         var _loc19_:* = _loc17_ + _loc18_ == 0;
         if(this.m_enableMotor && this.m_limitState != b2internal::e_equalLimits && !_loc19_)
         {
            _loc20_ = _loc14_ - _loc12_ - this.m_motorSpeed;
            _loc21_ = this.m_motorMass * -_loc20_;
            _loc22_ = this.m_motorImpulse;
            _loc23_ = param1.dt * this.m_maxMotorTorque;
            this.m_motorImpulse = b2Math.Clamp(this.m_motorImpulse + _loc21_,-_loc23_,_loc23_);
            _loc21_ = this.m_motorImpulse - _loc22_;
            _loc12_ -= _loc17_ * _loc21_;
            _loc14_ += _loc18_ * _loc21_;
         }
         if(this.m_enableLimit && this.m_limitState != b2internal::e_inactiveLimit && !_loc19_)
         {
            _loc4_ = _loc2_.m_xf.R;
            _loc7_ = this.m_localAnchor1.x - _loc2_.m_sweep.localCenter.x;
            _loc8_ = this.m_localAnchor1.y - _loc2_.m_sweep.localCenter.y;
            _loc5_ = _loc4_.col1.x * _loc7_ + _loc4_.col2.x * _loc8_;
            _loc8_ = _loc4_.col1.y * _loc7_ + _loc4_.col2.y * _loc8_;
            _loc7_ = _loc5_;
            _loc4_ = _loc3_.m_xf.R;
            _loc9_ = this.m_localAnchor2.x - _loc3_.m_sweep.localCenter.x;
            _loc10_ = this.m_localAnchor2.y - _loc3_.m_sweep.localCenter.y;
            _loc5_ = _loc4_.col1.x * _loc9_ + _loc4_.col2.x * _loc10_;
            _loc10_ = _loc4_.col1.y * _loc9_ + _loc4_.col2.y * _loc10_;
            _loc9_ = _loc5_;
            _loc24_ = _loc13_.x + -_loc14_ * _loc10_ - _loc11_.x - -_loc12_ * _loc8_;
            _loc25_ = _loc13_.y + _loc14_ * _loc9_ - _loc11_.y - _loc12_ * _loc7_;
            _loc26_ = _loc14_ - _loc12_;
            this.m_mass.Solve33(this.impulse3,-_loc24_,-_loc25_,-_loc26_);
            if(this.m_limitState == b2internal::e_equalLimits)
            {
               this.m_impulse.Add(this.impulse3);
            }
            else if(this.m_limitState == b2internal::e_atLowerLimit)
            {
               if((_loc6_ = this.m_impulse.z + this.impulse3.z) < 0)
               {
                  this.m_mass.Solve22(this.reduced,-_loc24_ + this.m_impulse.z * this.m_mass.col3.x,-_loc25_ + this.m_impulse.z * this.m_mass.col3.y);
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
               if((_loc6_ = this.m_impulse.z + this.impulse3.z) > 0)
               {
                  this.m_mass.Solve22(this.reduced,-_loc24_ + this.m_impulse.z * this.m_mass.col3.x,-_loc25_ + this.m_impulse.z * this.m_mass.col3.y);
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
            _loc11_.x -= _loc15_ * this.impulse3.x;
            _loc11_.y -= _loc15_ * this.impulse3.y;
            _loc12_ -= _loc17_ * (_loc7_ * this.impulse3.y - _loc8_ * this.impulse3.x + this.impulse3.z);
            _loc13_.x += _loc16_ * this.impulse3.x;
            _loc13_.y += _loc16_ * this.impulse3.y;
            _loc14_ += _loc18_ * (_loc9_ * this.impulse3.y - _loc10_ * this.impulse3.x + this.impulse3.z);
         }
         else
         {
            _loc4_ = _loc2_.m_xf.R;
            _loc7_ = this.m_localAnchor1.x - _loc2_.m_sweep.localCenter.x;
            _loc8_ = this.m_localAnchor1.y - _loc2_.m_sweep.localCenter.y;
            _loc5_ = _loc4_.col1.x * _loc7_ + _loc4_.col2.x * _loc8_;
            _loc8_ = _loc4_.col1.y * _loc7_ + _loc4_.col2.y * _loc8_;
            _loc7_ = _loc5_;
            _loc4_ = _loc3_.m_xf.R;
            _loc9_ = this.m_localAnchor2.x - _loc3_.m_sweep.localCenter.x;
            _loc10_ = this.m_localAnchor2.y - _loc3_.m_sweep.localCenter.y;
            _loc5_ = _loc4_.col1.x * _loc9_ + _loc4_.col2.x * _loc10_;
            _loc10_ = _loc4_.col1.y * _loc9_ + _loc4_.col2.y * _loc10_;
            _loc9_ = _loc5_;
            _loc27_ = _loc13_.x + -_loc14_ * _loc10_ - _loc11_.x - -_loc12_ * _loc8_;
            _loc28_ = _loc13_.y + _loc14_ * _loc9_ - _loc11_.y - _loc12_ * _loc7_;
            this.m_mass.Solve22(this.impulse2,-_loc27_,-_loc28_);
            this.m_impulse.x += this.impulse2.x;
            this.m_impulse.y += this.impulse2.y;
            _loc11_.x -= _loc15_ * this.impulse2.x;
            _loc11_.y -= _loc15_ * this.impulse2.y;
            _loc12_ -= _loc17_ * (_loc7_ * this.impulse2.y - _loc8_ * this.impulse2.x);
            _loc13_.x += _loc16_ * this.impulse2.x;
            _loc13_.y += _loc16_ * this.impulse2.y;
            _loc14_ += _loc18_ * (_loc9_ * this.impulse2.y - _loc10_ * this.impulse2.x);
         }
         _loc2_.m_linearVelocity.SetV(_loc11_);
         _loc2_.m_angularVelocity = _loc12_;
         _loc3_.m_linearVelocity.SetV(_loc13_);
         _loc3_.m_angularVelocity = _loc14_;
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:b2Mat22 = null;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc26_:Number = NaN;
         var _loc27_:Number = NaN;
         var _loc28_:Number = NaN;
         var _loc29_:Number = NaN;
         var _loc30_:Number = NaN;
         var _loc31_:Number = NaN;
         var _loc32_:Number = NaN;
         var _loc5_:b2Body = b2internal::m_bodyA;
         var _loc6_:b2Body = b2internal::m_bodyB;
         var _loc7_:* = b2internal::m_invIA + b2internal::m_invIB == 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 0;
         if(this.m_enableLimit && this.m_limitState != b2internal::e_inactiveLimit && !_loc7_)
         {
            _loc26_ = _loc6_.m_sweep.a - _loc5_.m_sweep.a - this.m_referenceAngle;
            _loc27_ = 0;
            if(this.m_limitState == b2internal::e_equalLimits)
            {
               _loc3_ = b2Math.Clamp(_loc26_ - this.m_lowerAngle,-b2Settings.b2_maxAngularCorrection,b2Settings.b2_maxAngularCorrection);
               _loc27_ = -this.m_motorMass * _loc3_;
               _loc8_ = b2Math.Abs(_loc3_);
            }
            else if(this.m_limitState == b2internal::e_atLowerLimit)
            {
               _loc3_ = _loc26_ - this.m_lowerAngle;
               _loc8_ = -_loc3_;
               _loc3_ = b2Math.Clamp(_loc3_ + b2Settings.b2_angularSlop,-b2Settings.b2_maxAngularCorrection,0);
               _loc27_ = -this.m_motorMass * _loc3_;
            }
            else if(this.m_limitState == b2internal::e_atUpperLimit)
            {
               _loc3_ = _loc26_ - this.m_upperAngle;
               _loc8_ = _loc3_;
               _loc3_ = b2Math.Clamp(_loc3_ - b2Settings.b2_angularSlop,0,b2Settings.b2_maxAngularCorrection);
               _loc27_ = -this.m_motorMass * _loc3_;
            }
            _loc5_.m_sweep.a -= _loc5_.m_invI * _loc27_;
            _loc6_.m_sweep.a += _loc6_.m_invI * _loc27_;
            _loc5_.SynchronizeTransform();
            _loc6_.SynchronizeTransform();
         }
         _loc4_ = _loc5_.m_xf.R;
         var _loc13_:Number = this.m_localAnchor1.x - _loc5_.m_sweep.localCenter.x;
         var _loc14_:Number = this.m_localAnchor1.y - _loc5_.m_sweep.localCenter.y;
         _loc10_ = _loc4_.col1.x * _loc13_ + _loc4_.col2.x * _loc14_;
         _loc14_ = _loc4_.col1.y * _loc13_ + _loc4_.col2.y * _loc14_;
         _loc13_ = _loc10_;
         _loc4_ = _loc6_.m_xf.R;
         var _loc15_:Number = this.m_localAnchor2.x - _loc6_.m_sweep.localCenter.x;
         var _loc16_:Number = this.m_localAnchor2.y - _loc6_.m_sweep.localCenter.y;
         _loc10_ = _loc4_.col1.x * _loc15_ + _loc4_.col2.x * _loc16_;
         _loc16_ = _loc4_.col1.y * _loc15_ + _loc4_.col2.y * _loc16_;
         _loc15_ = _loc10_;
         var _loc17_:Number = _loc6_.m_sweep.c.x + _loc15_ - _loc5_.m_sweep.c.x - _loc13_;
         var _loc18_:Number = _loc6_.m_sweep.c.y + _loc16_ - _loc5_.m_sweep.c.y - _loc14_;
         var _loc19_:Number = _loc17_ * _loc17_ + _loc18_ * _loc18_;
         var _loc20_:Number;
         _loc9_ = _loc20_ = Math.sqrt(_loc19_);
         var _loc21_:Number = _loc5_.m_invMass;
         var _loc22_:Number = _loc6_.m_invMass;
         var _loc23_:Number = _loc5_.m_invI;
         var _loc24_:Number = _loc6_.m_invI;
         var _loc25_:Number = 10 * b2Settings.b2_linearSlop * 4;
         if(_loc19_ > _loc25_ * _loc25_)
         {
            _loc28_ = _loc17_ / _loc20_;
            _loc29_ = _loc18_ / _loc20_;
            _loc30_ = _loc21_ + _loc22_;
            _loc11_ = (_loc31_ = 1 / _loc30_) * -_loc17_;
            _loc12_ = _loc31_ * -_loc18_;
            _loc32_ = 0.5;
            _loc5_.m_sweep.c.x -= _loc32_ * _loc21_ * _loc11_;
            _loc5_.m_sweep.c.y -= _loc32_ * _loc21_ * _loc12_;
            _loc6_.m_sweep.c.x += _loc32_ * _loc22_ * _loc11_;
            _loc6_.m_sweep.c.y += _loc32_ * _loc22_ * _loc12_;
            _loc17_ = _loc6_.m_sweep.c.x + _loc15_ - _loc5_.m_sweep.c.x - _loc13_;
            _loc18_ = _loc6_.m_sweep.c.y + _loc16_ - _loc5_.m_sweep.c.y - _loc14_;
         }
         this.K1.col1.x = _loc21_ + _loc22_;
         this.K1.col2.x = 0;
         this.K1.col1.y = 0;
         this.K1.col2.y = _loc21_ + _loc22_;
         this.K2.col1.x = _loc23_ * _loc14_ * _loc14_;
         this.K2.col2.x = -_loc23_ * _loc13_ * _loc14_;
         this.K2.col1.y = -_loc23_ * _loc13_ * _loc14_;
         this.K2.col2.y = _loc23_ * _loc13_ * _loc13_;
         this.K3.col1.x = _loc24_ * _loc16_ * _loc16_;
         this.K3.col2.x = -_loc24_ * _loc15_ * _loc16_;
         this.K3.col1.y = -_loc24_ * _loc15_ * _loc16_;
         this.K3.col2.y = _loc24_ * _loc15_ * _loc15_;
         this.K.SetM(this.K1);
         this.K.AddM(this.K2);
         this.K.AddM(this.K3);
         this.K.Solve(tImpulse,-_loc17_,-_loc18_);
         _loc11_ = tImpulse.x;
         _loc12_ = tImpulse.y;
         _loc5_.m_sweep.c.x -= _loc5_.m_invMass * _loc11_;
         _loc5_.m_sweep.c.y -= _loc5_.m_invMass * _loc12_;
         _loc5_.m_sweep.a -= _loc5_.m_invI * (_loc13_ * _loc12_ - _loc14_ * _loc11_);
         _loc6_.m_sweep.c.x += _loc6_.m_invMass * _loc11_;
         _loc6_.m_sweep.c.y += _loc6_.m_invMass * _loc12_;
         _loc6_.m_sweep.a += _loc6_.m_invI * (_loc15_ * _loc12_ - _loc16_ * _loc11_);
         _loc5_.SynchronizeTransform();
         _loc6_.SynchronizeTransform();
         return _loc9_ <= b2Settings.b2_linearSlop * 4 && _loc8_ <= b2Settings.b2_angularSlop;
      }
   }
}
