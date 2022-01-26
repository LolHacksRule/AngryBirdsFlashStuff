package §_-E6§
{
   import §_-WW§.b2Body;
   import §_-WW§.b2TimeStep;
   import §_-dx§.b2Mat22;
   import §_-dx§.b2Vec2;
   import §_-iO§.b2Settings;
   import §_-iO§.b2internal;
   
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
      
      private var §_-Ih§:b2Jacobian;
      
      private var §_-pP§:Number;
      
      private var §_-h7§:Number;
      
      private var §_-dz§:Number;
      
      private var §_-TC§:Number;
      
      public function b2GearJoint(param1:b2GearJointDef)
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         this.m_groundAnchor1 = new b2Vec2();
         this.m_groundAnchor2 = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§_-Ih§ = new b2Jacobian();
         super(param1);
         var _loc2_:int = param1.joint1.§_-9f§;
         var _loc3_:int = param1.joint2.§_-9f§;
         this.m_revolute1 = null;
         this.m_prismatic1 = null;
         this.m_revolute2 = null;
         this.m_prismatic2 = null;
         this.m_ground1 = param1.joint1.§_-qv§();
         §_-t6§ = param1.joint1.§_-3h§();
         if(_loc2_ == b2Joint.e_revoluteJoint)
         {
            this.m_revolute1 = param1.joint1 as b2RevoluteJoint;
            this.m_groundAnchor1.SetV(this.m_revolute1.m_localAnchor1);
            this.m_localAnchor1.SetV(this.m_revolute1.m_localAnchor2);
            _loc4_ = this.m_revolute1.§_-k4§();
         }
         else
         {
            this.m_prismatic1 = param1.joint1 as b2PrismaticJoint;
            this.m_groundAnchor1.SetV(this.m_prismatic1.m_localAnchor1);
            this.m_localAnchor1.SetV(this.m_prismatic1.m_localAnchor2);
            _loc4_ = this.m_prismatic1.§_-KA§();
         }
         this.m_ground2 = param1.joint2.§_-qv§();
         §_-7f§ = param1.joint2.§_-3h§();
         if(_loc3_ == b2Joint.e_revoluteJoint)
         {
            this.m_revolute2 = param1.joint2 as b2RevoluteJoint;
            this.m_groundAnchor2.SetV(this.m_revolute2.m_localAnchor1);
            this.m_localAnchor2.SetV(this.m_revolute2.m_localAnchor2);
            _loc5_ = this.m_revolute2.§_-k4§();
         }
         else
         {
            this.m_prismatic2 = param1.joint2 as b2PrismaticJoint;
            this.m_groundAnchor2.SetV(this.m_prismatic2.m_localAnchor1);
            this.m_localAnchor2.SetV(this.m_prismatic2.m_localAnchor2);
            _loc5_ = this.m_prismatic2.§_-KA§();
         }
         this.§_-h7§ = param1.§_-8n§;
         this.§_-pP§ = _loc4_ + this.§_-h7§ * _loc5_;
         this.§_-TC§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::_-t6.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::_-7f.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§_-TC§ * this.§_-Ih§.§_-4t§.x,param1 * this.§_-TC§ * this.§_-Ih§.§_-4t§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:b2Mat22 = b2internal::_-7f.m_xf.R;
         var _loc3_:Number = this.m_localAnchor1.x - b2internal::_-7f.m_sweep.localCenter.x;
         var _loc4_:Number = this.m_localAnchor1.y - b2internal::_-7f.m_sweep.localCenter.y;
         var _loc5_:Number = _loc2_.col1.x * _loc3_ + _loc2_.col2.x * _loc4_;
         _loc4_ = _loc2_.col1.y * _loc3_ + _loc2_.col2.y * _loc4_;
         _loc3_ = _loc5_;
         var _loc6_:Number = this.§_-TC§ * this.§_-Ih§.§_-4t§.x;
         var _loc7_:Number = this.§_-TC§ * this.§_-Ih§.§_-4t§.y;
         return param1 * (this.§_-TC§ * this.§_-Ih§.§_-C4§ - _loc3_ * _loc7_ + _loc4_ * _loc6_);
      }
      
      public function §_-hp§() : Number
      {
         return this.§_-h7§;
      }
      
      public function §_-Fd§(param1:Number) : void
      {
         this.§_-h7§ = param1;
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
         _loc4_ = b2internal::_-t6;
         var _loc5_:b2Body = b2internal::_-7f;
         var _loc14_:Number = 0;
         this.§_-Ih§.§_-pZ§();
         if(this.m_revolute1)
         {
            this.§_-Ih§.§_-9C§ = -1;
            _loc14_ += _loc4_.§_-49§;
         }
         else
         {
            _loc10_ = _loc2_.m_xf.R;
            _loc11_ = this.m_prismatic1.§_-8L§;
            _loc6_ = _loc10_.col1.x * _loc11_.x + _loc10_.col2.x * _loc11_.y;
            _loc7_ = _loc10_.col1.y * _loc11_.x + _loc10_.col2.y * _loc11_.y;
            _loc10_ = _loc4_.m_xf.R;
            _loc8_ = this.m_localAnchor1.x - _loc4_.m_sweep.localCenter.x;
            _loc9_ = this.m_localAnchor1.y - _loc4_.m_sweep.localCenter.y;
            _loc13_ = _loc10_.col1.x * _loc8_ + _loc10_.col2.x * _loc9_;
            _loc9_ = _loc10_.col1.y * _loc8_ + _loc10_.col2.y * _loc9_;
            _loc12_ = (_loc8_ = _loc13_) * _loc7_ - _loc9_ * _loc6_;
            this.§_-Ih§.§_-05§.Set(-_loc6_,-_loc7_);
            this.§_-Ih§.§_-9C§ = -_loc12_;
            _loc14_ += _loc4_.§_-YH§ + _loc4_.§_-49§ * _loc12_ * _loc12_;
         }
         if(this.m_revolute2)
         {
            this.§_-Ih§.§_-C4§ = -this.§_-h7§;
            _loc14_ += this.§_-h7§ * this.§_-h7§ * _loc5_.§_-49§;
         }
         else
         {
            _loc10_ = _loc3_.m_xf.R;
            _loc11_ = this.m_prismatic2.§_-8L§;
            _loc6_ = _loc10_.col1.x * _loc11_.x + _loc10_.col2.x * _loc11_.y;
            _loc7_ = _loc10_.col1.y * _loc11_.x + _loc10_.col2.y * _loc11_.y;
            _loc10_ = _loc5_.m_xf.R;
            _loc8_ = this.m_localAnchor2.x - _loc5_.m_sweep.localCenter.x;
            _loc9_ = this.m_localAnchor2.y - _loc5_.m_sweep.localCenter.y;
            _loc13_ = _loc10_.col1.x * _loc8_ + _loc10_.col2.x * _loc9_;
            _loc9_ = _loc10_.col1.y * _loc8_ + _loc10_.col2.y * _loc9_;
            _loc12_ = (_loc8_ = _loc13_) * _loc7_ - _loc9_ * _loc6_;
            this.§_-Ih§.§_-4t§.Set(-this.§_-h7§ * _loc6_,-this.§_-h7§ * _loc7_);
            this.§_-Ih§.§_-C4§ = -this.§_-h7§ * _loc12_;
            _loc14_ += this.§_-h7§ * this.§_-h7§ * (_loc5_.§_-YH§ + _loc5_.§_-49§ * _loc12_ * _loc12_);
         }
         this.§_-dz§ = _loc14_ > 0 ? Number(1 / _loc14_) : Number(0);
         if(param1.§_-xV§)
         {
            _loc4_.§_-Ce§.x += _loc4_.§_-YH§ * this.§_-TC§ * this.§_-Ih§.§_-05§.x;
            _loc4_.§_-Ce§.y += _loc4_.§_-YH§ * this.§_-TC§ * this.§_-Ih§.§_-05§.y;
            _loc4_.m_angularVelocity += _loc4_.§_-49§ * this.§_-TC§ * this.§_-Ih§.§_-9C§;
            _loc5_.§_-Ce§.x += _loc5_.§_-YH§ * this.§_-TC§ * this.§_-Ih§.§_-4t§.x;
            _loc5_.§_-Ce§.y += _loc5_.§_-YH§ * this.§_-TC§ * this.§_-Ih§.§_-4t§.y;
            _loc5_.m_angularVelocity += _loc5_.§_-49§ * this.§_-TC§ * this.§_-Ih§.§_-C4§;
         }
         else
         {
            this.§_-TC§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = b2internal::_-t6;
         var _loc3_:b2Body = b2internal::_-7f;
         var _loc4_:Number = this.§_-Ih§.§if §(_loc2_.§_-Ce§,_loc2_.m_angularVelocity,_loc3_.§_-Ce§,_loc3_.m_angularVelocity);
         var _loc5_:Number = -this.§_-dz§ * _loc4_;
         this.§_-TC§ += _loc5_;
         _loc2_.§_-Ce§.x += _loc2_.§_-YH§ * _loc5_ * this.§_-Ih§.§_-05§.x;
         _loc2_.§_-Ce§.y += _loc2_.§_-YH§ * _loc5_ * this.§_-Ih§.§_-05§.y;
         _loc2_.m_angularVelocity += _loc2_.§_-49§ * _loc5_ * this.§_-Ih§.§_-9C§;
         _loc3_.§_-Ce§.x += _loc3_.§_-YH§ * _loc5_ * this.§_-Ih§.§_-4t§.x;
         _loc3_.§_-Ce§.y += _loc3_.§_-YH§ * _loc5_ * this.§_-Ih§.§_-4t§.y;
         _loc3_.m_angularVelocity += _loc3_.§_-49§ * _loc5_ * this.§_-Ih§.§_-C4§;
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc3_:b2Body = b2internal::_-t6;
         var _loc4_:b2Body = b2internal::_-7f;
         if(this.m_revolute1)
         {
            _loc5_ = this.m_revolute1.§_-k4§();
         }
         else
         {
            _loc5_ = this.m_prismatic1.§_-KA§();
         }
         if(this.m_revolute2)
         {
            _loc6_ = this.m_revolute2.§_-k4§();
         }
         else
         {
            _loc6_ = this.m_prismatic2.§_-KA§();
         }
         var _loc7_:Number = this.§_-pP§ - (_loc5_ + this.§_-h7§ * _loc6_);
         var _loc8_:Number = -this.§_-dz§ * _loc7_;
         _loc3_.m_sweep.c.x += _loc3_.§_-YH§ * _loc8_ * this.§_-Ih§.§_-05§.x;
         _loc3_.m_sweep.c.y += _loc3_.§_-YH§ * _loc8_ * this.§_-Ih§.§_-05§.y;
         _loc3_.m_sweep.a += _loc3_.§_-49§ * _loc8_ * this.§_-Ih§.§_-9C§;
         _loc4_.m_sweep.c.x += _loc4_.§_-YH§ * _loc8_ * this.§_-Ih§.§_-4t§.x;
         _loc4_.m_sweep.c.y += _loc4_.§_-YH§ * _loc8_ * this.§_-Ih§.§_-4t§.y;
         _loc4_.m_sweep.a += _loc4_.§_-49§ * _loc8_ * this.§_-Ih§.§_-C4§;
         _loc3_.§_-B0§();
         _loc4_.§_-B0§();
         return 0 < b2Settings.b2_linearSlop;
      }
   }
}
