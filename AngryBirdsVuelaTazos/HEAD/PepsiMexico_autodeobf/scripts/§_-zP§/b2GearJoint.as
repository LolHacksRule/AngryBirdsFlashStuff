package §_-zP§
{
   import §_-bA§.b2Mat22;
   import §_-bA§.b2Vec2;
   import §_-rz§.b2Settings;
   import §_-rz§.b2internal;
   import §_-vk§.b2Body;
   import §_-vk§.b2TimeStep;
   
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
      
      private var §_-K6§:b2Jacobian;
      
      private var §_-JV§:Number;
      
      private var §_-eJ§:Number;
      
      private var §_-aR§:Number;
      
      private var §_-TZ§:Number;
      
      public function b2GearJoint(param1:b2GearJointDef)
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         this.m_groundAnchor1 = new b2Vec2();
         this.m_groundAnchor2 = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§_-K6§ = new b2Jacobian();
         super(param1);
         var _loc2_:int = param1.joint1.§_-Ra§;
         var _loc3_:int = param1.joint2.§_-Ra§;
         this.m_revolute1 = null;
         this.m_prismatic1 = null;
         this.m_revolute2 = null;
         this.m_prismatic2 = null;
         this.m_ground1 = param1.joint1.§_-tM§();
         §_-Vj§ = param1.joint1.§_-fu§();
         if(_loc2_ == b2Joint.e_revoluteJoint)
         {
            this.m_revolute1 = param1.joint1 as b2RevoluteJoint;
            this.m_groundAnchor1.SetV(this.m_revolute1.m_localAnchor1);
            this.m_localAnchor1.SetV(this.m_revolute1.m_localAnchor2);
            _loc4_ = this.m_revolute1.§_-80§();
         }
         else
         {
            this.m_prismatic1 = param1.joint1 as b2PrismaticJoint;
            this.m_groundAnchor1.SetV(this.m_prismatic1.m_localAnchor1);
            this.m_localAnchor1.SetV(this.m_prismatic1.m_localAnchor2);
            _loc4_ = this.m_prismatic1.§_-YC§();
         }
         this.m_ground2 = param1.joint2.§_-tM§();
         §_-qa§ = param1.joint2.§_-fu§();
         if(_loc3_ == b2Joint.e_revoluteJoint)
         {
            this.m_revolute2 = param1.joint2 as b2RevoluteJoint;
            this.m_groundAnchor2.SetV(this.m_revolute2.m_localAnchor1);
            this.m_localAnchor2.SetV(this.m_revolute2.m_localAnchor2);
            _loc5_ = this.m_revolute2.§_-80§();
         }
         else
         {
            this.m_prismatic2 = param1.joint2 as b2PrismaticJoint;
            this.m_groundAnchor2.SetV(this.m_prismatic2.m_localAnchor1);
            this.m_localAnchor2.SetV(this.m_prismatic2.m_localAnchor2);
            _loc5_ = this.m_prismatic2.§_-YC§();
         }
         this.§_-eJ§ = param1.§_-An§;
         this.§_-JV§ = _loc4_ + this.§_-eJ§ * _loc5_;
         this.§_-TZ§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::_-Vj.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::_-qa.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§_-TZ§ * this.§_-K6§.§_-qN§.x,param1 * this.§_-TZ§ * this.§_-K6§.§_-qN§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:b2Mat22 = b2internal::_-qa.m_xf.R;
         var _loc3_:Number = this.m_localAnchor1.x - b2internal::_-qa.m_sweep.localCenter.x;
         var _loc4_:Number = this.m_localAnchor1.y - b2internal::_-qa.m_sweep.localCenter.y;
         var _loc5_:Number = _loc2_.col1.x * _loc3_ + _loc2_.col2.x * _loc4_;
         _loc4_ = _loc2_.col1.y * _loc3_ + _loc2_.col2.y * _loc4_;
         _loc3_ = _loc5_;
         var _loc6_:Number = this.§_-TZ§ * this.§_-K6§.§_-qN§.x;
         var _loc7_:Number = this.§_-TZ§ * this.§_-K6§.§_-qN§.y;
         return param1 * (this.§_-TZ§ * this.§_-K6§.§_-QK§ - _loc3_ * _loc7_ + _loc4_ * _loc6_);
      }
      
      public function §_-lZ§() : Number
      {
         return this.§_-eJ§;
      }
      
      public function §_-57§(param1:Number) : void
      {
         this.§_-eJ§ = param1;
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
         _loc4_ = b2internal::_-Vj;
         var _loc5_:b2Body = b2internal::_-qa;
         var _loc14_:Number = 0;
         this.§_-K6§.§_-qi§();
         if(this.m_revolute1)
         {
            this.§_-K6§.§_-x0§ = -1;
            _loc14_ += _loc4_.§_-Ox§;
         }
         else
         {
            _loc10_ = _loc2_.m_xf.R;
            _loc11_ = this.m_prismatic1.§_-lW§;
            _loc6_ = _loc10_.col1.x * _loc11_.x + _loc10_.col2.x * _loc11_.y;
            _loc7_ = _loc10_.col1.y * _loc11_.x + _loc10_.col2.y * _loc11_.y;
            _loc10_ = _loc4_.m_xf.R;
            _loc8_ = this.m_localAnchor1.x - _loc4_.m_sweep.localCenter.x;
            _loc9_ = this.m_localAnchor1.y - _loc4_.m_sweep.localCenter.y;
            _loc13_ = _loc10_.col1.x * _loc8_ + _loc10_.col2.x * _loc9_;
            _loc9_ = _loc10_.col1.y * _loc8_ + _loc10_.col2.y * _loc9_;
            _loc12_ = (_loc8_ = _loc13_) * _loc7_ - _loc9_ * _loc6_;
            this.§_-K6§.§_-Q5§.Set(-_loc6_,-_loc7_);
            this.§_-K6§.§_-x0§ = -_loc12_;
            _loc14_ += _loc4_.§_-Wd§ + _loc4_.§_-Ox§ * _loc12_ * _loc12_;
         }
         if(this.m_revolute2)
         {
            this.§_-K6§.§_-QK§ = -this.§_-eJ§;
            _loc14_ += this.§_-eJ§ * this.§_-eJ§ * _loc5_.§_-Ox§;
         }
         else
         {
            _loc10_ = _loc3_.m_xf.R;
            _loc11_ = this.m_prismatic2.§_-lW§;
            _loc6_ = _loc10_.col1.x * _loc11_.x + _loc10_.col2.x * _loc11_.y;
            _loc7_ = _loc10_.col1.y * _loc11_.x + _loc10_.col2.y * _loc11_.y;
            _loc10_ = _loc5_.m_xf.R;
            _loc8_ = this.m_localAnchor2.x - _loc5_.m_sweep.localCenter.x;
            _loc9_ = this.m_localAnchor2.y - _loc5_.m_sweep.localCenter.y;
            _loc13_ = _loc10_.col1.x * _loc8_ + _loc10_.col2.x * _loc9_;
            _loc9_ = _loc10_.col1.y * _loc8_ + _loc10_.col2.y * _loc9_;
            _loc12_ = (_loc8_ = _loc13_) * _loc7_ - _loc9_ * _loc6_;
            this.§_-K6§.§_-qN§.Set(-this.§_-eJ§ * _loc6_,-this.§_-eJ§ * _loc7_);
            this.§_-K6§.§_-QK§ = -this.§_-eJ§ * _loc12_;
            _loc14_ += this.§_-eJ§ * this.§_-eJ§ * (_loc5_.§_-Wd§ + _loc5_.§_-Ox§ * _loc12_ * _loc12_);
         }
         this.§_-aR§ = _loc14_ > 0 ? Number(1 / _loc14_) : Number(0);
         if(param1.§_-uU§)
         {
            _loc4_.§_-At§.x += _loc4_.§_-Wd§ * this.§_-TZ§ * this.§_-K6§.§_-Q5§.x;
            _loc4_.§_-At§.y += _loc4_.§_-Wd§ * this.§_-TZ§ * this.§_-K6§.§_-Q5§.y;
            _loc4_.m_angularVelocity += _loc4_.§_-Ox§ * this.§_-TZ§ * this.§_-K6§.§_-x0§;
            _loc5_.§_-At§.x += _loc5_.§_-Wd§ * this.§_-TZ§ * this.§_-K6§.§_-qN§.x;
            _loc5_.§_-At§.y += _loc5_.§_-Wd§ * this.§_-TZ§ * this.§_-K6§.§_-qN§.y;
            _loc5_.m_angularVelocity += _loc5_.§_-Ox§ * this.§_-TZ§ * this.§_-K6§.§_-QK§;
         }
         else
         {
            this.§_-TZ§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = b2internal::_-Vj;
         var _loc3_:b2Body = b2internal::_-qa;
         var _loc4_:Number = this.§_-K6§.§_-XU§(_loc2_.§_-At§,_loc2_.m_angularVelocity,_loc3_.§_-At§,_loc3_.m_angularVelocity);
         var _loc5_:Number = -this.§_-aR§ * _loc4_;
         this.§_-TZ§ += _loc5_;
         _loc2_.§_-At§.x += _loc2_.§_-Wd§ * _loc5_ * this.§_-K6§.§_-Q5§.x;
         _loc2_.§_-At§.y += _loc2_.§_-Wd§ * _loc5_ * this.§_-K6§.§_-Q5§.y;
         _loc2_.m_angularVelocity += _loc2_.§_-Ox§ * _loc5_ * this.§_-K6§.§_-x0§;
         _loc3_.§_-At§.x += _loc3_.§_-Wd§ * _loc5_ * this.§_-K6§.§_-qN§.x;
         _loc3_.§_-At§.y += _loc3_.§_-Wd§ * _loc5_ * this.§_-K6§.§_-qN§.y;
         _loc3_.m_angularVelocity += _loc3_.§_-Ox§ * _loc5_ * this.§_-K6§.§_-QK§;
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc3_:b2Body = b2internal::_-Vj;
         var _loc4_:b2Body = b2internal::_-qa;
         if(this.m_revolute1)
         {
            _loc5_ = this.m_revolute1.§_-80§();
         }
         else
         {
            _loc5_ = this.m_prismatic1.§_-YC§();
         }
         if(this.m_revolute2)
         {
            _loc6_ = this.m_revolute2.§_-80§();
         }
         else
         {
            _loc6_ = this.m_prismatic2.§_-YC§();
         }
         var _loc7_:Number = this.§_-JV§ - (_loc5_ + this.§_-eJ§ * _loc6_);
         var _loc8_:Number = -this.§_-aR§ * _loc7_;
         _loc3_.m_sweep.§_-Zh§.x += _loc3_.§_-Wd§ * _loc8_ * this.§_-K6§.§_-Q5§.x;
         _loc3_.m_sweep.§_-Zh§.y += _loc3_.§_-Wd§ * _loc8_ * this.§_-K6§.§_-Q5§.y;
         _loc3_.m_sweep.a += _loc3_.§_-Ox§ * _loc8_ * this.§_-K6§.§_-x0§;
         _loc4_.m_sweep.§_-Zh§.x += _loc4_.§_-Wd§ * _loc8_ * this.§_-K6§.§_-qN§.x;
         _loc4_.m_sweep.§_-Zh§.y += _loc4_.§_-Wd§ * _loc8_ * this.§_-K6§.§_-qN§.y;
         _loc4_.m_sweep.a += _loc4_.§_-Ox§ * _loc8_ * this.§_-K6§.§_-QK§;
         _loc3_.§_-I5§();
         _loc4_.§_-I5§();
         return 0 < b2Settings.b2_linearSlop;
      }
   }
}
