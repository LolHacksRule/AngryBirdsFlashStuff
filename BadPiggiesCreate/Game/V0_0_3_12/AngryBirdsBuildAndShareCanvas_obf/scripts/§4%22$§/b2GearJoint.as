package §4"$§
{
   import §&!M§.b2Body;
   import §&!M§.b2TimeStep;
   import §3!t§.b2Mat22;
   import §3!t§.b2Vec2;
   import §6!`§.b2Settings;
   import §6!`§.b2internal;
   
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
      
      private var §!!F§:b2Jacobian;
      
      private var §;";§:Number;
      
      private var §<o§:Number;
      
      private var §=!i§:Number;
      
      private var §>&§:Number;
      
      public function b2GearJoint(param1:b2GearJointDef)
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         this.m_groundAnchor1 = new b2Vec2();
         this.m_groundAnchor2 = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§!!F§ = new b2Jacobian();
         super(param1);
         var _loc2_:int = param1.joint1.§+V§;
         var _loc3_:int = param1.joint2.§+V§;
         this.m_revolute1 = null;
         this.m_prismatic1 = null;
         this.m_revolute2 = null;
         this.m_prismatic2 = null;
         this.m_ground1 = param1.joint1.§>`§();
         §"!U§ = param1.joint1.§@B§();
         if(_loc2_ == b2Joint.e_revoluteJoint)
         {
            this.m_revolute1 = param1.joint1 as b2RevoluteJoint;
            this.m_groundAnchor1.SetV(this.m_revolute1.m_localAnchor1);
            this.m_localAnchor1.SetV(this.m_revolute1.m_localAnchor2);
            _loc4_ = this.m_revolute1.§+M§();
         }
         else
         {
            this.m_prismatic1 = param1.joint1 as b2PrismaticJoint;
            this.m_groundAnchor1.SetV(this.m_prismatic1.m_localAnchor1);
            this.m_localAnchor1.SetV(this.m_prismatic1.m_localAnchor2);
            _loc4_ = this.m_prismatic1.§^"6§();
         }
         this.m_ground2 = param1.joint2.§>`§();
         §!!3§ = param1.joint2.§@B§();
         if(_loc3_ == b2Joint.e_revoluteJoint)
         {
            this.m_revolute2 = param1.joint2 as b2RevoluteJoint;
            this.m_groundAnchor2.SetV(this.m_revolute2.m_localAnchor1);
            this.m_localAnchor2.SetV(this.m_revolute2.m_localAnchor2);
            _loc5_ = this.m_revolute2.§+M§();
         }
         else
         {
            this.m_prismatic2 = param1.joint2 as b2PrismaticJoint;
            this.m_groundAnchor2.SetV(this.m_prismatic2.m_localAnchor1);
            this.m_localAnchor2.SetV(this.m_prismatic2.m_localAnchor2);
            _loc5_ = this.m_prismatic2.§^"6§();
         }
         this.§<o§ = param1.§`!!§;
         this.§;";§ = _loc4_ + this.§<o§ * _loc5_;
         this.§>&§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::"!U.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::!!3.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§>&§ * this.§!!F§.§ !x§.x,param1 * this.§>&§ * this.§!!F§.§ !x§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:b2Mat22 = b2internal::!!3.m_xf.R;
         var _loc3_:Number = this.m_localAnchor1.x - b2internal::!!3.m_sweep.localCenter.x;
         var _loc4_:Number = this.m_localAnchor1.y - b2internal::!!3.m_sweep.localCenter.y;
         var _loc5_:Number = _loc2_.col1.x * _loc3_ + _loc2_.col2.x * _loc4_;
         _loc4_ = _loc2_.col1.y * _loc3_ + _loc2_.col2.y * _loc4_;
         _loc3_ = _loc5_;
         var _loc6_:Number = this.§>&§ * this.§!!F§.§ !x§.x;
         var _loc7_:Number = this.§>&§ * this.§!!F§.§ !x§.y;
         return param1 * (this.§>&§ * this.§!!F§.§4R§ - _loc3_ * _loc7_ + _loc4_ * _loc6_);
      }
      
      public function §??§() : Number
      {
         return this.§<o§;
      }
      
      public function §0!Y§(param1:Number) : void
      {
         this.§<o§ = param1;
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
         _loc4_ = b2internal::"!U;
         var _loc5_:b2Body = b2internal::!!3;
         var _loc14_:Number = 0;
         this.§!!F§.§ 4§();
         if(this.m_revolute1)
         {
            this.§!!F§.§=p§ = -1;
            _loc14_ += _loc4_.§#f§;
         }
         else
         {
            _loc10_ = _loc2_.m_xf.R;
            _loc11_ = this.m_prismatic1.§?s§;
            _loc6_ = _loc10_.col1.x * _loc11_.x + _loc10_.col2.x * _loc11_.y;
            _loc7_ = _loc10_.col1.y * _loc11_.x + _loc10_.col2.y * _loc11_.y;
            _loc10_ = _loc4_.m_xf.R;
            _loc8_ = this.m_localAnchor1.x - _loc4_.m_sweep.localCenter.x;
            _loc9_ = this.m_localAnchor1.y - _loc4_.m_sweep.localCenter.y;
            _loc13_ = _loc10_.col1.x * _loc8_ + _loc10_.col2.x * _loc9_;
            _loc9_ = _loc10_.col1.y * _loc8_ + _loc10_.col2.y * _loc9_;
            _loc12_ = (_loc8_ = _loc13_) * _loc7_ - _loc9_ * _loc6_;
            this.§!!F§.§!!]§.Set(-_loc6_,-_loc7_);
            this.§!!F§.§=p§ = -_loc12_;
            _loc14_ += _loc4_.§+!O§ + _loc4_.§#f§ * _loc12_ * _loc12_;
         }
         if(this.m_revolute2)
         {
            this.§!!F§.§4R§ = -this.§<o§;
            _loc14_ += this.§<o§ * this.§<o§ * _loc5_.§#f§;
         }
         else
         {
            _loc10_ = _loc3_.m_xf.R;
            _loc11_ = this.m_prismatic2.§?s§;
            _loc6_ = _loc10_.col1.x * _loc11_.x + _loc10_.col2.x * _loc11_.y;
            _loc7_ = _loc10_.col1.y * _loc11_.x + _loc10_.col2.y * _loc11_.y;
            _loc10_ = _loc5_.m_xf.R;
            _loc8_ = this.m_localAnchor2.x - _loc5_.m_sweep.localCenter.x;
            _loc9_ = this.m_localAnchor2.y - _loc5_.m_sweep.localCenter.y;
            _loc13_ = _loc10_.col1.x * _loc8_ + _loc10_.col2.x * _loc9_;
            _loc9_ = _loc10_.col1.y * _loc8_ + _loc10_.col2.y * _loc9_;
            _loc12_ = (_loc8_ = _loc13_) * _loc7_ - _loc9_ * _loc6_;
            this.§!!F§.§ !x§.Set(-this.§<o§ * _loc6_,-this.§<o§ * _loc7_);
            this.§!!F§.§4R§ = -this.§<o§ * _loc12_;
            _loc14_ += this.§<o§ * this.§<o§ * (_loc5_.§+!O§ + _loc5_.§#f§ * _loc12_ * _loc12_);
         }
         this.§=!i§ = _loc14_ > 0 ? Number(1 / _loc14_) : Number(0);
         if(param1.§50§)
         {
            _loc4_.§[!m§.x += _loc4_.§+!O§ * this.§>&§ * this.§!!F§.§!!]§.x;
            _loc4_.§[!m§.y += _loc4_.§+!O§ * this.§>&§ * this.§!!F§.§!!]§.y;
            _loc4_.m_angularVelocity += _loc4_.§#f§ * this.§>&§ * this.§!!F§.§=p§;
            _loc5_.§[!m§.x += _loc5_.§+!O§ * this.§>&§ * this.§!!F§.§ !x§.x;
            _loc5_.§[!m§.y += _loc5_.§+!O§ * this.§>&§ * this.§!!F§.§ !x§.y;
            _loc5_.m_angularVelocity += _loc5_.§#f§ * this.§>&§ * this.§!!F§.§4R§;
         }
         else
         {
            this.§>&§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = b2internal::"!U;
         var _loc3_:b2Body = b2internal::!!3;
         var _loc4_:Number = this.§!!F§.§&f§(_loc2_.§[!m§,_loc2_.m_angularVelocity,_loc3_.§[!m§,_loc3_.m_angularVelocity);
         var _loc5_:Number = -this.§=!i§ * _loc4_;
         this.§>&§ += _loc5_;
         _loc2_.§[!m§.x += _loc2_.§+!O§ * _loc5_ * this.§!!F§.§!!]§.x;
         _loc2_.§[!m§.y += _loc2_.§+!O§ * _loc5_ * this.§!!F§.§!!]§.y;
         _loc2_.m_angularVelocity += _loc2_.§#f§ * _loc5_ * this.§!!F§.§=p§;
         _loc3_.§[!m§.x += _loc3_.§+!O§ * _loc5_ * this.§!!F§.§ !x§.x;
         _loc3_.§[!m§.y += _loc3_.§+!O§ * _loc5_ * this.§!!F§.§ !x§.y;
         _loc3_.m_angularVelocity += _loc3_.§#f§ * _loc5_ * this.§!!F§.§4R§;
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc3_:b2Body = b2internal::"!U;
         var _loc4_:b2Body = b2internal::!!3;
         if(this.m_revolute1)
         {
            _loc5_ = this.m_revolute1.§+M§();
         }
         else
         {
            _loc5_ = this.m_prismatic1.§^"6§();
         }
         if(this.m_revolute2)
         {
            _loc6_ = this.m_revolute2.§+M§();
         }
         else
         {
            _loc6_ = this.m_prismatic2.§^"6§();
         }
         var _loc7_:Number = this.§;";§ - (_loc5_ + this.§<o§ * _loc6_);
         var _loc8_:Number = -this.§=!i§ * _loc7_;
         _loc3_.m_sweep.c.x += _loc3_.§+!O§ * _loc8_ * this.§!!F§.§!!]§.x;
         _loc3_.m_sweep.c.y += _loc3_.§+!O§ * _loc8_ * this.§!!F§.§!!]§.y;
         _loc3_.m_sweep.a += _loc3_.§#f§ * _loc8_ * this.§!!F§.§=p§;
         _loc4_.m_sweep.c.x += _loc4_.§+!O§ * _loc8_ * this.§!!F§.§ !x§.x;
         _loc4_.m_sweep.c.y += _loc4_.§+!O§ * _loc8_ * this.§!!F§.§ !x§.y;
         _loc4_.m_sweep.a += _loc4_.§#f§ * _loc8_ * this.§!!F§.§4R§;
         _loc3_.§=!z§();
         _loc4_.§=!z§();
         return 0 < b2Settings.b2_linearSlop;
      }
   }
}
