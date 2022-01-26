package §_-Rb§
{
   import §_-Zl§.b2Mat22;
   import §_-Zl§.b2Vec2;
   import §_-rg§.b2Body;
   import §_-rg§.b2TimeStep;
   import §_-uS§.b2Settings;
   import §_-uS§.b2internal;
   
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
      
      private var §_-6h§:b2Jacobian;
      
      private var §_-2q§:Number;
      
      private var §_-gV§:Number;
      
      private var §_-qa§:Number;
      
      private var §_-ro§:Number;
      
      public function b2GearJoint(param1:b2GearJointDef)
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         this.m_groundAnchor1 = new b2Vec2();
         this.m_groundAnchor2 = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§_-6h§ = new b2Jacobian();
         super(param1);
         var _loc2_:int = param1.joint1.§_-K9§;
         var _loc3_:int = param1.joint2.§_-K9§;
         this.m_revolute1 = null;
         this.m_prismatic1 = null;
         this.m_revolute2 = null;
         this.m_prismatic2 = null;
         this.m_ground1 = param1.joint1.§_-ut§();
         §_-Rz§ = param1.joint1.§_-ir§();
         if(_loc2_ == b2Joint.e_revoluteJoint)
         {
            this.m_revolute1 = param1.joint1 as b2RevoluteJoint;
            this.m_groundAnchor1.SetV(this.m_revolute1.m_localAnchor1);
            this.m_localAnchor1.SetV(this.m_revolute1.m_localAnchor2);
            _loc4_ = this.m_revolute1.§_-Cy§();
         }
         else
         {
            this.m_prismatic1 = param1.joint1 as b2PrismaticJoint;
            this.m_groundAnchor1.SetV(this.m_prismatic1.m_localAnchor1);
            this.m_localAnchor1.SetV(this.m_prismatic1.m_localAnchor2);
            _loc4_ = this.m_prismatic1.§_-p§();
         }
         this.m_ground2 = param1.joint2.§_-ut§();
         §_-GP§ = param1.joint2.§_-ir§();
         if(_loc3_ == b2Joint.e_revoluteJoint)
         {
            this.m_revolute2 = param1.joint2 as b2RevoluteJoint;
            this.m_groundAnchor2.SetV(this.m_revolute2.m_localAnchor1);
            this.m_localAnchor2.SetV(this.m_revolute2.m_localAnchor2);
            _loc5_ = this.m_revolute2.§_-Cy§();
         }
         else
         {
            this.m_prismatic2 = param1.joint2 as b2PrismaticJoint;
            this.m_groundAnchor2.SetV(this.m_prismatic2.m_localAnchor1);
            this.m_localAnchor2.SetV(this.m_prismatic2.m_localAnchor2);
            _loc5_ = this.m_prismatic2.§_-p§();
         }
         this.§_-gV§ = param1.§_-u5§;
         this.§_-2q§ = _loc4_ + this.§_-gV§ * _loc5_;
         this.§_-ro§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::_-Rz.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::_-GP.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§_-ro§ * this.§_-6h§.§_-lx§.x,param1 * this.§_-ro§ * this.§_-6h§.§_-lx§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:b2Mat22 = b2internal::_-GP.m_xf.R;
         var _loc3_:Number = this.m_localAnchor1.x - b2internal::_-GP.m_sweep.localCenter.x;
         var _loc4_:Number = this.m_localAnchor1.y - b2internal::_-GP.m_sweep.localCenter.y;
         var _loc5_:Number = _loc2_.col1.x * _loc3_ + _loc2_.col2.x * _loc4_;
         _loc4_ = _loc2_.col1.y * _loc3_ + _loc2_.col2.y * _loc4_;
         _loc3_ = _loc5_;
         var _loc6_:Number = this.§_-ro§ * this.§_-6h§.§_-lx§.x;
         var _loc7_:Number = this.§_-ro§ * this.§_-6h§.§_-lx§.y;
         return param1 * (this.§_-ro§ * this.§_-6h§.§_-on§ - _loc3_ * _loc7_ + _loc4_ * _loc6_);
      }
      
      public function §_-YG§() : Number
      {
         return this.§_-gV§;
      }
      
      public function §_-9T§(param1:Number) : void
      {
         this.§_-gV§ = param1;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc4_:b2Body = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:b2Mat22 = null;
         var _loc11_:b2Vec2 = null;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc2_:b2Body = this.m_ground1;
         var _loc3_:b2Body = this.m_ground2;
         _loc4_ = b2internal::_-Rz;
         var _loc5_:b2Body = b2internal::_-GP;
         var _loc14_:Number = 0;
         this.§_-6h§.§_-Vw§();
         if(this.m_revolute1)
         {
            this.§_-6h§.§_-oJ§ = -1;
            _loc14_ += _loc4_.§_-TW§;
         }
         else
         {
            _loc10_ = _loc2_.m_xf.R;
            _loc11_ = this.m_prismatic1.§_-0u§;
            _loc6_ = _loc10_.col1.x * _loc11_.x + _loc10_.col2.x * _loc11_.y;
            _loc7_ = _loc10_.col1.y * _loc11_.x + _loc10_.col2.y * _loc11_.y;
            _loc10_ = _loc4_.m_xf.R;
            _loc8_ = this.m_localAnchor1.x - _loc4_.m_sweep.localCenter.x;
            _loc9_ = this.m_localAnchor1.y - _loc4_.m_sweep.localCenter.y;
            _loc13_ = _loc10_.col1.x * _loc8_ + _loc10_.col2.x * _loc9_;
            _loc9_ = _loc10_.col1.y * _loc8_ + _loc10_.col2.y * _loc9_;
            _loc12_ = (_loc8_ = _loc13_) * _loc7_ - _loc9_ * _loc6_;
            this.§_-6h§.§_-JX§.Set(-_loc6_,-_loc7_);
            this.§_-6h§.§_-oJ§ = -_loc12_;
            _loc14_ += _loc4_.§_-s§ + _loc4_.§_-TW§ * _loc12_ * _loc12_;
         }
         if(this.m_revolute2)
         {
            this.§_-6h§.§_-on§ = -this.§_-gV§;
            _loc14_ += this.§_-gV§ * this.§_-gV§ * _loc5_.§_-TW§;
         }
         else
         {
            _loc10_ = _loc3_.m_xf.R;
            _loc11_ = this.m_prismatic2.§_-0u§;
            _loc6_ = _loc10_.col1.x * _loc11_.x + _loc10_.col2.x * _loc11_.y;
            _loc7_ = _loc10_.col1.y * _loc11_.x + _loc10_.col2.y * _loc11_.y;
            _loc10_ = _loc5_.m_xf.R;
            _loc8_ = this.m_localAnchor2.x - _loc5_.m_sweep.localCenter.x;
            _loc9_ = this.m_localAnchor2.y - _loc5_.m_sweep.localCenter.y;
            _loc13_ = _loc10_.col1.x * _loc8_ + _loc10_.col2.x * _loc9_;
            _loc9_ = _loc10_.col1.y * _loc8_ + _loc10_.col2.y * _loc9_;
            _loc12_ = (_loc8_ = _loc13_) * _loc7_ - _loc9_ * _loc6_;
            this.§_-6h§.§_-lx§.Set(-this.§_-gV§ * _loc6_,-this.§_-gV§ * _loc7_);
            this.§_-6h§.§_-on§ = -this.§_-gV§ * _loc12_;
            _loc14_ += this.§_-gV§ * this.§_-gV§ * (_loc5_.§_-s§ + _loc5_.§_-TW§ * _loc12_ * _loc12_);
         }
         this.§_-qa§ = _loc14_ > 0 ? Number(1 / _loc14_) : Number(0);
         if(param1.§_-Fx§)
         {
            _loc4_.§_-Ng§.x += _loc4_.§_-s§ * this.§_-ro§ * this.§_-6h§.§_-JX§.x;
            _loc4_.§_-Ng§.y += _loc4_.§_-s§ * this.§_-ro§ * this.§_-6h§.§_-JX§.y;
            _loc4_.m_angularVelocity += _loc4_.§_-TW§ * this.§_-ro§ * this.§_-6h§.§_-oJ§;
            _loc5_.§_-Ng§.x += _loc5_.§_-s§ * this.§_-ro§ * this.§_-6h§.§_-lx§.x;
            _loc5_.§_-Ng§.y += _loc5_.§_-s§ * this.§_-ro§ * this.§_-6h§.§_-lx§.y;
            _loc5_.m_angularVelocity += _loc5_.§_-TW§ * this.§_-ro§ * this.§_-6h§.§_-on§;
         }
         else
         {
            this.§_-ro§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = b2internal::_-Rz;
         var _loc3_:b2Body = b2internal::_-GP;
         var _loc4_:Number = this.§_-6h§.§_-U§(_loc2_.§_-Ng§,_loc2_.m_angularVelocity,_loc3_.§_-Ng§,_loc3_.m_angularVelocity);
         var _loc5_:Number = -this.§_-qa§ * _loc4_;
         this.§_-ro§ += _loc5_;
         _loc2_.§_-Ng§.x += _loc2_.§_-s§ * _loc5_ * this.§_-6h§.§_-JX§.x;
         _loc2_.§_-Ng§.y += _loc2_.§_-s§ * _loc5_ * this.§_-6h§.§_-JX§.y;
         _loc2_.m_angularVelocity += _loc2_.§_-TW§ * _loc5_ * this.§_-6h§.§_-oJ§;
         _loc3_.§_-Ng§.x += _loc3_.§_-s§ * _loc5_ * this.§_-6h§.§_-lx§.x;
         _loc3_.§_-Ng§.y += _loc3_.§_-s§ * _loc5_ * this.§_-6h§.§_-lx§.y;
         _loc3_.m_angularVelocity += _loc3_.§_-TW§ * _loc5_ * this.§_-6h§.§_-on§;
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc3_:b2Body = b2internal::_-Rz;
         var _loc4_:b2Body = b2internal::_-GP;
         if(this.m_revolute1)
         {
            _loc5_ = this.m_revolute1.§_-Cy§();
         }
         else
         {
            _loc5_ = this.m_prismatic1.§_-p§();
         }
         if(this.m_revolute2)
         {
            _loc6_ = this.m_revolute2.§_-Cy§();
         }
         else
         {
            _loc6_ = this.m_prismatic2.§_-p§();
         }
         var _loc7_:Number = this.§_-2q§ - (_loc5_ + this.§_-gV§ * _loc6_);
         var _loc8_:Number = -this.§_-qa§ * _loc7_;
         _loc3_.m_sweep.c.x += _loc3_.§_-s§ * _loc8_ * this.§_-6h§.§_-JX§.x;
         _loc3_.m_sweep.c.y += _loc3_.§_-s§ * _loc8_ * this.§_-6h§.§_-JX§.y;
         _loc3_.m_sweep.a += _loc3_.§_-TW§ * _loc8_ * this.§_-6h§.§_-oJ§;
         _loc4_.m_sweep.c.x += _loc4_.§_-s§ * _loc8_ * this.§_-6h§.§_-lx§.x;
         _loc4_.m_sweep.c.y += _loc4_.§_-s§ * _loc8_ * this.§_-6h§.§_-lx§.y;
         _loc4_.m_sweep.a += _loc4_.§_-TW§ * _loc8_ * this.§_-6h§.§_-on§;
         _loc3_.§_-Ax§();
         _loc4_.§_-Ax§();
         return 0 < b2Settings.b2_linearSlop;
      }
   }
}
