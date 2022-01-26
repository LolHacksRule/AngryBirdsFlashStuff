package §_-1N§
{
   import §_-Iw§.b2Body;
   import §_-Iw§.b2TimeStep;
   import §_-Ja§.b2Mat22;
   import §_-Ja§.b2Vec2;
   import §_-lh§.b2Settings;
   import §_-lh§.b2internal;
   
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
      
      private var §_-Ib§:b2Jacobian;
      
      private var §_-67§:Number;
      
      private var §_-5R§:Number;
      
      private var §_-jI§:Number;
      
      private var §_-tN§:Number;
      
      public function b2GearJoint(param1:b2GearJointDef)
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         this.m_groundAnchor1 = new b2Vec2();
         this.m_groundAnchor2 = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§_-Ib§ = new b2Jacobian();
         super(param1);
         var _loc2_:int = param1.joint1.§_-Sj§;
         var _loc3_:int = param1.joint2.§_-Sj§;
         this.m_revolute1 = null;
         this.m_prismatic1 = null;
         this.m_revolute2 = null;
         this.m_prismatic2 = null;
         this.m_ground1 = param1.joint1.§_-kE§();
         §_-93§ = param1.joint1.§_-Pl§();
         if(_loc2_ == b2Joint.e_revoluteJoint)
         {
            this.m_revolute1 = param1.joint1 as b2RevoluteJoint;
            this.m_groundAnchor1.SetV(this.m_revolute1.m_localAnchor1);
            this.m_localAnchor1.SetV(this.m_revolute1.m_localAnchor2);
            _loc4_ = this.m_revolute1.§_-sv§();
         }
         else
         {
            this.m_prismatic1 = param1.joint1 as b2PrismaticJoint;
            this.m_groundAnchor1.SetV(this.m_prismatic1.m_localAnchor1);
            this.m_localAnchor1.SetV(this.m_prismatic1.m_localAnchor2);
            _loc4_ = this.m_prismatic1.§_-ke§();
         }
         this.m_ground2 = param1.joint2.§_-kE§();
         §_-9K§ = param1.joint2.§_-Pl§();
         if(_loc3_ == b2Joint.e_revoluteJoint)
         {
            this.m_revolute2 = param1.joint2 as b2RevoluteJoint;
            this.m_groundAnchor2.SetV(this.m_revolute2.m_localAnchor1);
            this.m_localAnchor2.SetV(this.m_revolute2.m_localAnchor2);
            _loc5_ = this.m_revolute2.§_-sv§();
         }
         else
         {
            this.m_prismatic2 = param1.joint2 as b2PrismaticJoint;
            this.m_groundAnchor2.SetV(this.m_prismatic2.m_localAnchor1);
            this.m_localAnchor2.SetV(this.m_prismatic2.m_localAnchor2);
            _loc5_ = this.m_prismatic2.§_-ke§();
         }
         this.§_-5R§ = param1.§_-Qg§;
         this.§_-67§ = _loc4_ + this.§_-5R§ * _loc5_;
         this.§_-tN§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::_-93.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::_-9K.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§_-tN§ * this.§_-Ib§.§_-Jk§.x,param1 * this.§_-tN§ * this.§_-Ib§.§_-Jk§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:b2Mat22 = b2internal::_-9K.m_xf.R;
         var _loc3_:Number = this.m_localAnchor1.x - b2internal::_-9K.m_sweep.localCenter.x;
         var _loc4_:Number = this.m_localAnchor1.y - b2internal::_-9K.m_sweep.localCenter.y;
         var _loc5_:Number = _loc2_.col1.x * _loc3_ + _loc2_.col2.x * _loc4_;
         _loc4_ = _loc2_.col1.y * _loc3_ + _loc2_.col2.y * _loc4_;
         _loc3_ = _loc5_;
         var _loc6_:Number = this.§_-tN§ * this.§_-Ib§.§_-Jk§.x;
         var _loc7_:Number = this.§_-tN§ * this.§_-Ib§.§_-Jk§.y;
         return param1 * (this.§_-tN§ * this.§_-Ib§.§_-IH§ - _loc3_ * _loc7_ + _loc4_ * _loc6_);
      }
      
      public function §_-dY§() : Number
      {
         return this.§_-5R§;
      }
      
      public function §_-wI§(param1:Number) : void
      {
         this.§_-5R§ = param1;
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
         _loc4_ = b2internal::_-93;
         var _loc5_:b2Body = b2internal::_-9K;
         var _loc14_:Number = 0;
         this.§_-Ib§.§_-0a§();
         if(this.m_revolute1)
         {
            this.§_-Ib§.§_-lS§ = -1;
            _loc14_ += _loc4_.§_-DZ§;
         }
         else
         {
            _loc10_ = _loc2_.m_xf.R;
            _loc11_ = this.m_prismatic1.§_-jM§;
            _loc6_ = _loc10_.col1.x * _loc11_.x + _loc10_.col2.x * _loc11_.y;
            _loc7_ = _loc10_.col1.y * _loc11_.x + _loc10_.col2.y * _loc11_.y;
            _loc10_ = _loc4_.m_xf.R;
            _loc8_ = this.m_localAnchor1.x - _loc4_.m_sweep.localCenter.x;
            _loc9_ = this.m_localAnchor1.y - _loc4_.m_sweep.localCenter.y;
            _loc13_ = _loc10_.col1.x * _loc8_ + _loc10_.col2.x * _loc9_;
            _loc9_ = _loc10_.col1.y * _loc8_ + _loc10_.col2.y * _loc9_;
            _loc12_ = (_loc8_ = _loc13_) * _loc7_ - _loc9_ * _loc6_;
            this.§_-Ib§.§_-kX§.Set(-_loc6_,-_loc7_);
            this.§_-Ib§.§_-lS§ = -_loc12_;
            _loc14_ += _loc4_.§_-eZ§ + _loc4_.§_-DZ§ * _loc12_ * _loc12_;
         }
         if(this.m_revolute2)
         {
            this.§_-Ib§.§_-IH§ = -this.§_-5R§;
            _loc14_ += this.§_-5R§ * this.§_-5R§ * _loc5_.§_-DZ§;
         }
         else
         {
            _loc10_ = _loc3_.m_xf.R;
            _loc11_ = this.m_prismatic2.§_-jM§;
            _loc6_ = _loc10_.col1.x * _loc11_.x + _loc10_.col2.x * _loc11_.y;
            _loc7_ = _loc10_.col1.y * _loc11_.x + _loc10_.col2.y * _loc11_.y;
            _loc10_ = _loc5_.m_xf.R;
            _loc8_ = this.m_localAnchor2.x - _loc5_.m_sweep.localCenter.x;
            _loc9_ = this.m_localAnchor2.y - _loc5_.m_sweep.localCenter.y;
            _loc13_ = _loc10_.col1.x * _loc8_ + _loc10_.col2.x * _loc9_;
            _loc9_ = _loc10_.col1.y * _loc8_ + _loc10_.col2.y * _loc9_;
            _loc12_ = (_loc8_ = _loc13_) * _loc7_ - _loc9_ * _loc6_;
            this.§_-Ib§.§_-Jk§.Set(-this.§_-5R§ * _loc6_,-this.§_-5R§ * _loc7_);
            this.§_-Ib§.§_-IH§ = -this.§_-5R§ * _loc12_;
            _loc14_ += this.§_-5R§ * this.§_-5R§ * (_loc5_.§_-eZ§ + _loc5_.§_-DZ§ * _loc12_ * _loc12_);
         }
         this.§_-jI§ = _loc14_ > 0 ? Number(1 / _loc14_) : Number(0);
         if(param1.§_-o-§)
         {
            _loc4_.§_-ZZ§.x += _loc4_.§_-eZ§ * this.§_-tN§ * this.§_-Ib§.§_-kX§.x;
            _loc4_.§_-ZZ§.y += _loc4_.§_-eZ§ * this.§_-tN§ * this.§_-Ib§.§_-kX§.y;
            _loc4_.m_angularVelocity += _loc4_.§_-DZ§ * this.§_-tN§ * this.§_-Ib§.§_-lS§;
            _loc5_.§_-ZZ§.x += _loc5_.§_-eZ§ * this.§_-tN§ * this.§_-Ib§.§_-Jk§.x;
            _loc5_.§_-ZZ§.y += _loc5_.§_-eZ§ * this.§_-tN§ * this.§_-Ib§.§_-Jk§.y;
            _loc5_.m_angularVelocity += _loc5_.§_-DZ§ * this.§_-tN§ * this.§_-Ib§.§_-IH§;
         }
         else
         {
            this.§_-tN§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = b2internal::_-93;
         var _loc3_:b2Body = b2internal::_-9K;
         var _loc4_:Number = this.§_-Ib§.§_-yB§(_loc2_.§_-ZZ§,_loc2_.m_angularVelocity,_loc3_.§_-ZZ§,_loc3_.m_angularVelocity);
         var _loc5_:Number = -this.§_-jI§ * _loc4_;
         this.§_-tN§ += _loc5_;
         _loc2_.§_-ZZ§.x += _loc2_.§_-eZ§ * _loc5_ * this.§_-Ib§.§_-kX§.x;
         _loc2_.§_-ZZ§.y += _loc2_.§_-eZ§ * _loc5_ * this.§_-Ib§.§_-kX§.y;
         _loc2_.m_angularVelocity += _loc2_.§_-DZ§ * _loc5_ * this.§_-Ib§.§_-lS§;
         _loc3_.§_-ZZ§.x += _loc3_.§_-eZ§ * _loc5_ * this.§_-Ib§.§_-Jk§.x;
         _loc3_.§_-ZZ§.y += _loc3_.§_-eZ§ * _loc5_ * this.§_-Ib§.§_-Jk§.y;
         _loc3_.m_angularVelocity += _loc3_.§_-DZ§ * _loc5_ * this.§_-Ib§.§_-IH§;
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc3_:b2Body = b2internal::_-93;
         var _loc4_:b2Body = b2internal::_-9K;
         if(this.m_revolute1)
         {
            _loc5_ = this.m_revolute1.§_-sv§();
         }
         else
         {
            _loc5_ = this.m_prismatic1.§_-ke§();
         }
         if(this.m_revolute2)
         {
            _loc6_ = this.m_revolute2.§_-sv§();
         }
         else
         {
            _loc6_ = this.m_prismatic2.§_-ke§();
         }
         var _loc7_:Number = this.§_-67§ - (_loc5_ + this.§_-5R§ * _loc6_);
         var _loc8_:Number = -this.§_-jI§ * _loc7_;
         _loc3_.m_sweep.c.x += _loc3_.§_-eZ§ * _loc8_ * this.§_-Ib§.§_-kX§.x;
         _loc3_.m_sweep.c.y += _loc3_.§_-eZ§ * _loc8_ * this.§_-Ib§.§_-kX§.y;
         _loc3_.m_sweep.a += _loc3_.§_-DZ§ * _loc8_ * this.§_-Ib§.§_-lS§;
         _loc4_.m_sweep.c.x += _loc4_.§_-eZ§ * _loc8_ * this.§_-Ib§.§_-Jk§.x;
         _loc4_.m_sweep.c.y += _loc4_.§_-eZ§ * _loc8_ * this.§_-Ib§.§_-Jk§.y;
         _loc4_.m_sweep.a += _loc4_.§_-DZ§ * _loc8_ * this.§_-Ib§.§_-IH§;
         _loc3_.§_-Z9§();
         _loc4_.§_-Z9§();
         return 0 < b2Settings.b2_linearSlop;
      }
   }
}
