package §_-Ox§
{
   import §_-9z§.b2Mat22;
   import §_-9z§.b2Vec2;
   import §_-EH§.b2Body;
   import §_-EH§.b2TimeStep;
   import §_-sU§.b2Settings;
   import §_-sU§.b2internal;
   
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
      
      private var §_-a4§:b2Jacobian;
      
      private var §_-Q8§:Number;
      
      private var §_-kQ§:Number;
      
      private var §_-hE§:Number;
      
      private var §_-AM§:Number;
      
      public function b2GearJoint(param1:b2GearJointDef)
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         this.m_groundAnchor1 = new b2Vec2();
         this.m_groundAnchor2 = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§_-a4§ = new b2Jacobian();
         super(param1);
         var _loc2_:int = param1.joint1.§_-g1§;
         var _loc3_:int = param1.joint2.§_-g1§;
         this.m_revolute1 = null;
         this.m_prismatic1 = null;
         this.m_revolute2 = null;
         this.m_prismatic2 = null;
         this.m_ground1 = param1.joint1.§_-Kk§();
         §_-e4§ = param1.joint1.§_-pc§();
         if(_loc2_ == b2Joint.e_revoluteJoint)
         {
            this.m_revolute1 = param1.joint1 as b2RevoluteJoint;
            this.m_groundAnchor1.SetV(this.m_revolute1.m_localAnchor1);
            this.m_localAnchor1.SetV(this.m_revolute1.m_localAnchor2);
            _loc4_ = this.m_revolute1.§_-5T§();
         }
         else
         {
            this.m_prismatic1 = param1.joint1 as b2PrismaticJoint;
            this.m_groundAnchor1.SetV(this.m_prismatic1.m_localAnchor1);
            this.m_localAnchor1.SetV(this.m_prismatic1.m_localAnchor2);
            _loc4_ = this.m_prismatic1.§_-4B§();
         }
         this.m_ground2 = param1.joint2.§_-Kk§();
         §_-qA§ = param1.joint2.§_-pc§();
         if(_loc3_ == b2Joint.e_revoluteJoint)
         {
            this.m_revolute2 = param1.joint2 as b2RevoluteJoint;
            this.m_groundAnchor2.SetV(this.m_revolute2.m_localAnchor1);
            this.m_localAnchor2.SetV(this.m_revolute2.m_localAnchor2);
            _loc5_ = this.m_revolute2.§_-5T§();
         }
         else
         {
            this.m_prismatic2 = param1.joint2 as b2PrismaticJoint;
            this.m_groundAnchor2.SetV(this.m_prismatic2.m_localAnchor1);
            this.m_localAnchor2.SetV(this.m_prismatic2.m_localAnchor2);
            _loc5_ = this.m_prismatic2.§_-4B§();
         }
         this.§_-kQ§ = param1.§_-SD§;
         this.§_-Q8§ = _loc4_ + this.§_-kQ§ * _loc5_;
         this.§_-AM§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::_-e4.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::_-qA.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§_-AM§ * this.§_-a4§.§_-XW§.x,param1 * this.§_-AM§ * this.§_-a4§.§_-XW§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:b2Mat22 = b2internal::_-qA.m_xf.R;
         var _loc3_:Number = this.m_localAnchor1.x - b2internal::_-qA.m_sweep.localCenter.x;
         var _loc4_:Number = this.m_localAnchor1.y - b2internal::_-qA.m_sweep.localCenter.y;
         var _loc5_:Number = _loc2_.col1.x * _loc3_ + _loc2_.col2.x * _loc4_;
         _loc4_ = _loc2_.col1.y * _loc3_ + _loc2_.col2.y * _loc4_;
         _loc3_ = _loc5_;
         var _loc6_:Number = this.§_-AM§ * this.§_-a4§.§_-XW§.x;
         var _loc7_:Number = this.§_-AM§ * this.§_-a4§.§_-XW§.y;
         return param1 * (this.§_-AM§ * this.§_-a4§.§_-vN§ - _loc3_ * _loc7_ + _loc4_ * _loc6_);
      }
      
      public function §_-wY§() : Number
      {
         return this.§_-kQ§;
      }
      
      public function §_-E7§(param1:Number) : void
      {
         this.§_-kQ§ = param1;
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
         _loc4_ = b2internal::_-e4;
         var _loc5_:b2Body = b2internal::_-qA;
         var _loc14_:Number = 0;
         this.§_-a4§.§_-TJ§();
         if(this.m_revolute1)
         {
            this.§_-a4§.§_-Nr§ = -1;
            _loc14_ += _loc4_.§_-sp§;
         }
         else
         {
            _loc10_ = _loc2_.m_xf.R;
            _loc11_ = this.m_prismatic1.§ case§;
            _loc6_ = _loc10_.col1.x * _loc11_.x + _loc10_.col2.x * _loc11_.y;
            _loc7_ = _loc10_.col1.y * _loc11_.x + _loc10_.col2.y * _loc11_.y;
            _loc10_ = _loc4_.m_xf.R;
            _loc8_ = this.m_localAnchor1.x - _loc4_.m_sweep.localCenter.x;
            _loc9_ = this.m_localAnchor1.y - _loc4_.m_sweep.localCenter.y;
            _loc13_ = _loc10_.col1.x * _loc8_ + _loc10_.col2.x * _loc9_;
            _loc9_ = _loc10_.col1.y * _loc8_ + _loc10_.col2.y * _loc9_;
            _loc12_ = (_loc8_ = _loc13_) * _loc7_ - _loc9_ * _loc6_;
            this.§_-a4§.§_-GQ§.Set(-_loc6_,-_loc7_);
            this.§_-a4§.§_-Nr§ = -_loc12_;
            _loc14_ += _loc4_.§_-dH§ + _loc4_.§_-sp§ * _loc12_ * _loc12_;
         }
         if(this.m_revolute2)
         {
            this.§_-a4§.§_-vN§ = -this.§_-kQ§;
            _loc14_ += this.§_-kQ§ * this.§_-kQ§ * _loc5_.§_-sp§;
         }
         else
         {
            _loc10_ = _loc3_.m_xf.R;
            _loc11_ = this.m_prismatic2.§ case§;
            _loc6_ = _loc10_.col1.x * _loc11_.x + _loc10_.col2.x * _loc11_.y;
            _loc7_ = _loc10_.col1.y * _loc11_.x + _loc10_.col2.y * _loc11_.y;
            _loc10_ = _loc5_.m_xf.R;
            _loc8_ = this.m_localAnchor2.x - _loc5_.m_sweep.localCenter.x;
            _loc9_ = this.m_localAnchor2.y - _loc5_.m_sweep.localCenter.y;
            _loc13_ = _loc10_.col1.x * _loc8_ + _loc10_.col2.x * _loc9_;
            _loc9_ = _loc10_.col1.y * _loc8_ + _loc10_.col2.y * _loc9_;
            _loc12_ = (_loc8_ = _loc13_) * _loc7_ - _loc9_ * _loc6_;
            this.§_-a4§.§_-XW§.Set(-this.§_-kQ§ * _loc6_,-this.§_-kQ§ * _loc7_);
            this.§_-a4§.§_-vN§ = -this.§_-kQ§ * _loc12_;
            _loc14_ += this.§_-kQ§ * this.§_-kQ§ * (_loc5_.§_-dH§ + _loc5_.§_-sp§ * _loc12_ * _loc12_);
         }
         this.§_-hE§ = _loc14_ > 0 ? Number(1 / _loc14_) : Number(0);
         if(param1.§_-lZ§)
         {
            _loc4_.§_-wk§.x += _loc4_.§_-dH§ * this.§_-AM§ * this.§_-a4§.§_-GQ§.x;
            _loc4_.§_-wk§.y += _loc4_.§_-dH§ * this.§_-AM§ * this.§_-a4§.§_-GQ§.y;
            _loc4_.m_angularVelocity += _loc4_.§_-sp§ * this.§_-AM§ * this.§_-a4§.§_-Nr§;
            _loc5_.§_-wk§.x += _loc5_.§_-dH§ * this.§_-AM§ * this.§_-a4§.§_-XW§.x;
            _loc5_.§_-wk§.y += _loc5_.§_-dH§ * this.§_-AM§ * this.§_-a4§.§_-XW§.y;
            _loc5_.m_angularVelocity += _loc5_.§_-sp§ * this.§_-AM§ * this.§_-a4§.§_-vN§;
         }
         else
         {
            this.§_-AM§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = b2internal::_-e4;
         var _loc3_:b2Body = b2internal::_-qA;
         var _loc4_:Number = this.§_-a4§.§_-Ga§(_loc2_.§_-wk§,_loc2_.m_angularVelocity,_loc3_.§_-wk§,_loc3_.m_angularVelocity);
         var _loc5_:Number = -this.§_-hE§ * _loc4_;
         this.§_-AM§ += _loc5_;
         _loc2_.§_-wk§.x += _loc2_.§_-dH§ * _loc5_ * this.§_-a4§.§_-GQ§.x;
         _loc2_.§_-wk§.y += _loc2_.§_-dH§ * _loc5_ * this.§_-a4§.§_-GQ§.y;
         _loc2_.m_angularVelocity += _loc2_.§_-sp§ * _loc5_ * this.§_-a4§.§_-Nr§;
         _loc3_.§_-wk§.x += _loc3_.§_-dH§ * _loc5_ * this.§_-a4§.§_-XW§.x;
         _loc3_.§_-wk§.y += _loc3_.§_-dH§ * _loc5_ * this.§_-a4§.§_-XW§.y;
         _loc3_.m_angularVelocity += _loc3_.§_-sp§ * _loc5_ * this.§_-a4§.§_-vN§;
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc3_:b2Body = b2internal::_-e4;
         var _loc4_:b2Body = b2internal::_-qA;
         if(this.m_revolute1)
         {
            _loc5_ = this.m_revolute1.§_-5T§();
         }
         else
         {
            _loc5_ = this.m_prismatic1.§_-4B§();
         }
         if(this.m_revolute2)
         {
            _loc6_ = this.m_revolute2.§_-5T§();
         }
         else
         {
            _loc6_ = this.m_prismatic2.§_-4B§();
         }
         var _loc7_:Number = this.§_-Q8§ - (_loc5_ + this.§_-kQ§ * _loc6_);
         var _loc8_:Number = -this.§_-hE§ * _loc7_;
         _loc3_.m_sweep.c.x += _loc3_.§_-dH§ * _loc8_ * this.§_-a4§.§_-GQ§.x;
         _loc3_.m_sweep.c.y += _loc3_.§_-dH§ * _loc8_ * this.§_-a4§.§_-GQ§.y;
         _loc3_.m_sweep.a += _loc3_.§_-sp§ * _loc8_ * this.§_-a4§.§_-Nr§;
         _loc4_.m_sweep.c.x += _loc4_.§_-dH§ * _loc8_ * this.§_-a4§.§_-XW§.x;
         _loc4_.m_sweep.c.y += _loc4_.§_-dH§ * _loc8_ * this.§_-a4§.§_-XW§.y;
         _loc4_.m_sweep.a += _loc4_.§_-sp§ * _loc8_ * this.§_-a4§.§_-vN§;
         _loc3_.§_-dS§();
         _loc4_.§_-dS§();
         return 0 < b2Settings.b2_linearSlop;
      }
   }
}
