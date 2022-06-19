package §const§
{
   import §_-b4§.b2Settings;
   import §_-b4§.b2internal;
   import §_-cP§.b2Mat22;
   import §_-cP§.b2Vec2;
   import §try§.b2Body;
   import §try§.b2TimeStep;
   
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
      
      private var §_-5W§:b2Jacobian;
      
      private var §_-gh§:Number;
      
      private var §_-UX§:Number;
      
      private var §_-p4§:Number;
      
      private var §_-gD§:Number;
      
      public function b2GearJoint(param1:b2GearJointDef)
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         this.m_groundAnchor1 = new b2Vec2();
         this.m_groundAnchor2 = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§_-5W§ = new b2Jacobian();
         super(param1);
         var _loc2_:int = param1.joint1.§_-f7§;
         var _loc3_:int = param1.joint2.§_-f7§;
         this.m_revolute1 = null;
         this.m_prismatic1 = null;
         this.m_revolute2 = null;
         this.m_prismatic2 = null;
         this.m_ground1 = param1.joint1.§_-qJ§();
         §_-Jb§ = param1.joint1.§_-CS§();
         if(_loc2_ == b2Joint.e_revoluteJoint)
         {
            this.m_revolute1 = param1.joint1 as b2RevoluteJoint;
            this.m_groundAnchor1.SetV(this.m_revolute1.m_localAnchor1);
            this.m_localAnchor1.SetV(this.m_revolute1.m_localAnchor2);
            _loc4_ = this.m_revolute1.§_-2a§();
         }
         else
         {
            this.m_prismatic1 = param1.joint1 as b2PrismaticJoint;
            this.m_groundAnchor1.SetV(this.m_prismatic1.m_localAnchor1);
            this.m_localAnchor1.SetV(this.m_prismatic1.m_localAnchor2);
            _loc4_ = this.m_prismatic1.§_-8e§();
         }
         this.m_ground2 = param1.joint2.§_-qJ§();
         §_-RO§ = param1.joint2.§_-CS§();
         if(_loc3_ == b2Joint.e_revoluteJoint)
         {
            this.m_revolute2 = param1.joint2 as b2RevoluteJoint;
            this.m_groundAnchor2.SetV(this.m_revolute2.m_localAnchor1);
            this.m_localAnchor2.SetV(this.m_revolute2.m_localAnchor2);
            _loc5_ = this.m_revolute2.§_-2a§();
         }
         else
         {
            this.m_prismatic2 = param1.joint2 as b2PrismaticJoint;
            this.m_groundAnchor2.SetV(this.m_prismatic2.m_localAnchor1);
            this.m_localAnchor2.SetV(this.m_prismatic2.m_localAnchor2);
            _loc5_ = this.m_prismatic2.§_-8e§();
         }
         this.§_-UX§ = param1.§_-6d§;
         this.§_-gh§ = _loc4_ + this.§_-UX§ * _loc5_;
         this.§_-gD§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::_-Jb.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::_-RO.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§_-gD§ * this.§_-5W§.§_-5e§.x,param1 * this.§_-gD§ * this.§_-5W§.§_-5e§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:b2Mat22 = b2internal::_-RO.m_xf.R;
         var _loc3_:Number = this.m_localAnchor1.x - b2internal::_-RO.m_sweep.localCenter.x;
         var _loc4_:Number = this.m_localAnchor1.y - b2internal::_-RO.m_sweep.localCenter.y;
         var _loc5_:Number = _loc2_.col1.x * _loc3_ + _loc2_.col2.x * _loc4_;
         _loc4_ = _loc2_.col1.y * _loc3_ + _loc2_.col2.y * _loc4_;
         _loc3_ = _loc5_;
         var _loc6_:Number = this.§_-gD§ * this.§_-5W§.§_-5e§.x;
         var _loc7_:Number = this.§_-gD§ * this.§_-5W§.§_-5e§.y;
         return param1 * (this.§_-gD§ * this.§_-5W§.§_-5q§ - _loc3_ * _loc7_ + _loc4_ * _loc6_);
      }
      
      public function §_-ph§() : Number
      {
         return this.§_-UX§;
      }
      
      public function §_-a9§(param1:Number) : void
      {
         this.§_-UX§ = param1;
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
         _loc4_ = b2internal::_-Jb;
         var _loc5_:b2Body = b2internal::_-RO;
         var _loc14_:Number = 0;
         this.§_-5W§.§_-WO§();
         if(this.m_revolute1)
         {
            this.§_-5W§.§_-B2§ = -1;
            _loc14_ += _loc4_.§_-LF§;
         }
         else
         {
            _loc10_ = _loc2_.m_xf.R;
            _loc11_ = this.m_prismatic1.§_-9L§;
            _loc6_ = _loc10_.col1.x * _loc11_.x + _loc10_.col2.x * _loc11_.y;
            _loc7_ = _loc10_.col1.y * _loc11_.x + _loc10_.col2.y * _loc11_.y;
            _loc10_ = _loc4_.m_xf.R;
            _loc8_ = this.m_localAnchor1.x - _loc4_.m_sweep.localCenter.x;
            _loc9_ = this.m_localAnchor1.y - _loc4_.m_sweep.localCenter.y;
            _loc13_ = _loc10_.col1.x * _loc8_ + _loc10_.col2.x * _loc9_;
            _loc9_ = _loc10_.col1.y * _loc8_ + _loc10_.col2.y * _loc9_;
            _loc12_ = (_loc8_ = _loc13_) * _loc7_ - _loc9_ * _loc6_;
            this.§_-5W§.§_-ZY§.Set(-_loc6_,-_loc7_);
            this.§_-5W§.§_-B2§ = -_loc12_;
            _loc14_ += _loc4_.§_-hk§ + _loc4_.§_-LF§ * _loc12_ * _loc12_;
         }
         if(this.m_revolute2)
         {
            this.§_-5W§.§_-5q§ = -this.§_-UX§;
            _loc14_ += this.§_-UX§ * this.§_-UX§ * _loc5_.§_-LF§;
         }
         else
         {
            _loc10_ = _loc3_.m_xf.R;
            _loc11_ = this.m_prismatic2.§_-9L§;
            _loc6_ = _loc10_.col1.x * _loc11_.x + _loc10_.col2.x * _loc11_.y;
            _loc7_ = _loc10_.col1.y * _loc11_.x + _loc10_.col2.y * _loc11_.y;
            _loc10_ = _loc5_.m_xf.R;
            _loc8_ = this.m_localAnchor2.x - _loc5_.m_sweep.localCenter.x;
            _loc9_ = this.m_localAnchor2.y - _loc5_.m_sweep.localCenter.y;
            _loc13_ = _loc10_.col1.x * _loc8_ + _loc10_.col2.x * _loc9_;
            _loc9_ = _loc10_.col1.y * _loc8_ + _loc10_.col2.y * _loc9_;
            _loc12_ = (_loc8_ = _loc13_) * _loc7_ - _loc9_ * _loc6_;
            this.§_-5W§.§_-5e§.Set(-this.§_-UX§ * _loc6_,-this.§_-UX§ * _loc7_);
            this.§_-5W§.§_-5q§ = -this.§_-UX§ * _loc12_;
            _loc14_ += this.§_-UX§ * this.§_-UX§ * (_loc5_.§_-hk§ + _loc5_.§_-LF§ * _loc12_ * _loc12_);
         }
         this.§_-p4§ = _loc14_ > 0 ? Number(1 / _loc14_) : Number(0);
         if(param1.§_-0X§)
         {
            _loc4_.§_-PK§.x += _loc4_.§_-hk§ * this.§_-gD§ * this.§_-5W§.§_-ZY§.x;
            _loc4_.§_-PK§.y += _loc4_.§_-hk§ * this.§_-gD§ * this.§_-5W§.§_-ZY§.y;
            _loc4_.m_angularVelocity += _loc4_.§_-LF§ * this.§_-gD§ * this.§_-5W§.§_-B2§;
            _loc5_.§_-PK§.x += _loc5_.§_-hk§ * this.§_-gD§ * this.§_-5W§.§_-5e§.x;
            _loc5_.§_-PK§.y += _loc5_.§_-hk§ * this.§_-gD§ * this.§_-5W§.§_-5e§.y;
            _loc5_.m_angularVelocity += _loc5_.§_-LF§ * this.§_-gD§ * this.§_-5W§.§_-5q§;
         }
         else
         {
            this.§_-gD§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = b2internal::_-Jb;
         var _loc3_:b2Body = b2internal::_-RO;
         var _loc4_:Number = this.§_-5W§.§_-nI§(_loc2_.§_-PK§,_loc2_.m_angularVelocity,_loc3_.§_-PK§,_loc3_.m_angularVelocity);
         var _loc5_:Number = -this.§_-p4§ * _loc4_;
         this.§_-gD§ += _loc5_;
         _loc2_.§_-PK§.x += _loc2_.§_-hk§ * _loc5_ * this.§_-5W§.§_-ZY§.x;
         _loc2_.§_-PK§.y += _loc2_.§_-hk§ * _loc5_ * this.§_-5W§.§_-ZY§.y;
         _loc2_.m_angularVelocity += _loc2_.§_-LF§ * _loc5_ * this.§_-5W§.§_-B2§;
         _loc3_.§_-PK§.x += _loc3_.§_-hk§ * _loc5_ * this.§_-5W§.§_-5e§.x;
         _loc3_.§_-PK§.y += _loc3_.§_-hk§ * _loc5_ * this.§_-5W§.§_-5e§.y;
         _loc3_.m_angularVelocity += _loc3_.§_-LF§ * _loc5_ * this.§_-5W§.§_-5q§;
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc3_:b2Body = b2internal::_-Jb;
         var _loc4_:b2Body = b2internal::_-RO;
         if(this.m_revolute1)
         {
            _loc5_ = this.m_revolute1.§_-2a§();
         }
         else
         {
            _loc5_ = this.m_prismatic1.§_-8e§();
         }
         if(this.m_revolute2)
         {
            _loc6_ = this.m_revolute2.§_-2a§();
         }
         else
         {
            _loc6_ = this.m_prismatic2.§_-8e§();
         }
         var _loc7_:Number = this.§_-gh§ - (_loc5_ + this.§_-UX§ * _loc6_);
         var _loc8_:Number = -this.§_-p4§ * _loc7_;
         _loc3_.m_sweep.§_-xQ§.x += _loc3_.§_-hk§ * _loc8_ * this.§_-5W§.§_-ZY§.x;
         _loc3_.m_sweep.§_-xQ§.y += _loc3_.§_-hk§ * _loc8_ * this.§_-5W§.§_-ZY§.y;
         _loc3_.m_sweep.a += _loc3_.§_-LF§ * _loc8_ * this.§_-5W§.§_-B2§;
         _loc4_.m_sweep.§_-xQ§.x += _loc4_.§_-hk§ * _loc8_ * this.§_-5W§.§_-5e§.x;
         _loc4_.m_sweep.§_-xQ§.y += _loc4_.§_-hk§ * _loc8_ * this.§_-5W§.§_-5e§.y;
         _loc4_.m_sweep.a += _loc4_.§_-LF§ * _loc8_ * this.§_-5W§.§_-5q§;
         _loc3_.§_-fH§();
         _loc4_.§_-fH§();
         return 0 < b2Settings.b2_linearSlop;
      }
   }
}
