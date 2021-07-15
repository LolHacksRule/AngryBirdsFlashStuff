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
         this.m_limitState = b2internal::-!Z;
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
         return new b2Vec2(param1 * this.m_impulse.x,param1 * this.m_impulse.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.m_impulse.z;
      }
      
      public function GetJointAngle() : Number
      {
         return b2internal::8!F.m_sweep.a - b2internal::[Z.m_sweep.a - this.m_referenceAngle;
      }
      
      public function GetJointSpeed() : Number
      {
         return b2internal::8!F.m_angularVelocity - b2internal::[Z.m_angularVelocity;
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
         _loc2_ = b2internal::[Z;
         _loc3_ = b2internal::8!F;
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
               this.m_limitState = b2internal::8!E;
            }
            else if(_loc15_ <= this.m_lowerAngle)
            {
               if(this.m_limitState != b2internal::@<)
               {
                  this.m_impulse.z = 0;
               }
               this.m_limitState = b2internal::@<;
            }
            else if(_loc15_ >= this.m_upperAngle)
            {
               if(this.m_limitState != b2internal::%S)
               {
                  this.m_impulse.z = 0;
               }
               this.m_limitState = b2internal::%S;
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
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 3428
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 2880
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
   }
}
