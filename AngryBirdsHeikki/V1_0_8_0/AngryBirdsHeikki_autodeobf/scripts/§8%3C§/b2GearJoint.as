package §8<§
{
   import §0!=§.b2Mat22;
   import §0!=§.b2Vec2;
   import §0!?§.b2Body;
   import §0!?§.b2TimeStep;
   import §0^§.b2Settings;
   import §0^§.b2internal;
   
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
      
      private var §2y§:b2Jacobian;
      
      private var §,S§:Number;
      
      private var §`4§:Number;
      
      private var §[J§:Number;
      
      private var §0$§:Number;
      
      public function b2GearJoint(param1:b2GearJointDef)
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         this.m_groundAnchor1 = new b2Vec2();
         this.m_groundAnchor2 = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§2y§ = new b2Jacobian();
         super(param1);
         var _loc2_:int = param1.joint1.§%P§;
         var _loc3_:int = param1.joint2.§%P§;
         this.m_revolute1 = null;
         this.m_prismatic1 = null;
         this.m_revolute2 = null;
         this.m_prismatic2 = null;
         this.m_ground1 = param1.joint1.§0Q§();
         §?2§ = param1.joint1.§<o§();
         if(_loc2_ == b2Joint.e_revoluteJoint)
         {
            this.m_revolute1 = param1.joint1 as b2RevoluteJoint;
            this.m_groundAnchor1.SetV(this.m_revolute1.m_localAnchor1);
            this.m_localAnchor1.SetV(this.m_revolute1.m_localAnchor2);
            _loc4_ = this.m_revolute1.§0!!§();
         }
         else
         {
            this.m_prismatic1 = param1.joint1 as b2PrismaticJoint;
            this.m_groundAnchor1.SetV(this.m_prismatic1.m_localAnchor1);
            this.m_localAnchor1.SetV(this.m_prismatic1.m_localAnchor2);
            _loc4_ = this.m_prismatic1.§4!=§();
         }
         this.m_ground2 = param1.joint2.§0Q§();
         §!N§ = param1.joint2.§<o§();
         if(_loc3_ == b2Joint.e_revoluteJoint)
         {
            this.m_revolute2 = param1.joint2 as b2RevoluteJoint;
            this.m_groundAnchor2.SetV(this.m_revolute2.m_localAnchor1);
            this.m_localAnchor2.SetV(this.m_revolute2.m_localAnchor2);
            _loc5_ = this.m_revolute2.§0!!§();
         }
         else
         {
            this.m_prismatic2 = param1.joint2 as b2PrismaticJoint;
            this.m_groundAnchor2.SetV(this.m_prismatic2.m_localAnchor1);
            this.m_localAnchor2.SetV(this.m_prismatic2.m_localAnchor2);
            _loc5_ = this.m_prismatic2.§4!=§();
         }
         this.§`4§ = param1.§9!Y§;
         this.§,S§ = _loc4_ + this.§`4§ * _loc5_;
         this.§0$§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::?2.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::!N.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§0$§ * this.§2y§.§ !@§.x,param1 * this.§0$§ * this.§2y§.§ !@§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:b2Mat22 = b2internal::!N.m_xf.R;
         var _loc3_:Number = this.m_localAnchor1.x - b2internal::!N.m_sweep.localCenter.x;
         var _loc4_:Number = this.m_localAnchor1.y - b2internal::!N.m_sweep.localCenter.y;
         var _loc5_:Number = _loc2_.col1.x * _loc3_ + _loc2_.col2.x * _loc4_;
         _loc4_ = _loc2_.col1.y * _loc3_ + _loc2_.col2.y * _loc4_;
         _loc3_ = _loc5_;
         var _loc6_:Number = this.§0$§ * this.§2y§.§ !@§.x;
         var _loc7_:Number = this.§0$§ * this.§2y§.§ !@§.y;
         return param1 * (this.§0$§ * this.§2y§.§&@§ - _loc3_ * _loc7_ + _loc4_ * _loc6_);
      }
      
      public function §?B§() : Number
      {
         return this.§`4§;
      }
      
      public function §`B§(param1:Number) : void
      {
         this.§`4§ = param1;
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
         _loc4_ = b2internal::?2;
         var _loc5_:b2Body = b2internal::!N;
         var _loc14_:Number = 0;
         this.§2y§.§0'§();
         if(this.m_revolute1)
         {
            this.§2y§.§=!Z§ = -1;
            _loc14_ += _loc4_.§&!Y§;
         }
         else
         {
            _loc10_ = _loc2_.m_xf.R;
            _loc11_ = this.m_prismatic1.§%T§;
            _loc6_ = _loc10_.col1.x * _loc11_.x + _loc10_.col2.x * _loc11_.y;
            _loc7_ = _loc10_.col1.y * _loc11_.x + _loc10_.col2.y * _loc11_.y;
            _loc10_ = _loc4_.m_xf.R;
            _loc8_ = this.m_localAnchor1.x - _loc4_.m_sweep.localCenter.x;
            _loc9_ = this.m_localAnchor1.y - _loc4_.m_sweep.localCenter.y;
            _loc13_ = _loc10_.col1.x * _loc8_ + _loc10_.col2.x * _loc9_;
            _loc9_ = _loc10_.col1.y * _loc8_ + _loc10_.col2.y * _loc9_;
            _loc12_ = (_loc8_ = _loc13_) * _loc7_ - _loc9_ * _loc6_;
            this.§2y§.§^-§.Set(-_loc6_,-_loc7_);
            this.§2y§.§=!Z§ = -_loc12_;
            _loc14_ += _loc4_.§!q§ + _loc4_.§&!Y§ * _loc12_ * _loc12_;
         }
         if(this.m_revolute2)
         {
            this.§2y§.§&@§ = -this.§`4§;
            _loc14_ += this.§`4§ * this.§`4§ * _loc5_.§&!Y§;
         }
         else
         {
            _loc10_ = _loc3_.m_xf.R;
            _loc11_ = this.m_prismatic2.§%T§;
            _loc6_ = _loc10_.col1.x * _loc11_.x + _loc10_.col2.x * _loc11_.y;
            _loc7_ = _loc10_.col1.y * _loc11_.x + _loc10_.col2.y * _loc11_.y;
            _loc10_ = _loc5_.m_xf.R;
            _loc8_ = this.m_localAnchor2.x - _loc5_.m_sweep.localCenter.x;
            _loc9_ = this.m_localAnchor2.y - _loc5_.m_sweep.localCenter.y;
            _loc13_ = _loc10_.col1.x * _loc8_ + _loc10_.col2.x * _loc9_;
            _loc9_ = _loc10_.col1.y * _loc8_ + _loc10_.col2.y * _loc9_;
            _loc12_ = (_loc8_ = _loc13_) * _loc7_ - _loc9_ * _loc6_;
            this.§2y§.§ !@§.Set(-this.§`4§ * _loc6_,-this.§`4§ * _loc7_);
            this.§2y§.§&@§ = -this.§`4§ * _loc12_;
            _loc14_ += this.§`4§ * this.§`4§ * (_loc5_.§!q§ + _loc5_.§&!Y§ * _loc12_ * _loc12_);
         }
         this.§[J§ = _loc14_ > 0 ? Number(1 / _loc14_) : Number(0);
         if(param1.§7U§)
         {
            _loc4_.§#P§.x += _loc4_.§!q§ * this.§0$§ * this.§2y§.§^-§.x;
            _loc4_.§#P§.y += _loc4_.§!q§ * this.§0$§ * this.§2y§.§^-§.y;
            _loc4_.m_angularVelocity += _loc4_.§&!Y§ * this.§0$§ * this.§2y§.§=!Z§;
            _loc5_.§#P§.x += _loc5_.§!q§ * this.§0$§ * this.§2y§.§ !@§.x;
            _loc5_.§#P§.y += _loc5_.§!q§ * this.§0$§ * this.§2y§.§ !@§.y;
            _loc5_.m_angularVelocity += _loc5_.§&!Y§ * this.§0$§ * this.§2y§.§&@§;
         }
         else
         {
            this.§0$§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = b2internal::?2;
         var _loc3_:b2Body = b2internal::!N;
         var _loc4_:Number = this.§2y§.§?7§(_loc2_.§#P§,_loc2_.m_angularVelocity,_loc3_.§#P§,_loc3_.m_angularVelocity);
         var _loc5_:Number = -this.§[J§ * _loc4_;
         this.§0$§ += _loc5_;
         _loc2_.§#P§.x += _loc2_.§!q§ * _loc5_ * this.§2y§.§^-§.x;
         _loc2_.§#P§.y += _loc2_.§!q§ * _loc5_ * this.§2y§.§^-§.y;
         _loc2_.m_angularVelocity += _loc2_.§&!Y§ * _loc5_ * this.§2y§.§=!Z§;
         _loc3_.§#P§.x += _loc3_.§!q§ * _loc5_ * this.§2y§.§ !@§.x;
         _loc3_.§#P§.y += _loc3_.§!q§ * _loc5_ * this.§2y§.§ !@§.y;
         _loc3_.m_angularVelocity += _loc3_.§&!Y§ * _loc5_ * this.§2y§.§&@§;
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc3_:b2Body = b2internal::?2;
         var _loc4_:b2Body = b2internal::!N;
         if(this.m_revolute1)
         {
            _loc5_ = this.m_revolute1.§0!!§();
         }
         else
         {
            _loc5_ = this.m_prismatic1.§4!=§();
         }
         if(this.m_revolute2)
         {
            _loc6_ = this.m_revolute2.§0!!§();
         }
         else
         {
            _loc6_ = this.m_prismatic2.§4!=§();
         }
         var _loc7_:Number = this.§,S§ - (_loc5_ + this.§`4§ * _loc6_);
         var _loc8_:Number = -this.§[J§ * _loc7_;
         _loc3_.m_sweep.c.x += _loc3_.§!q§ * _loc8_ * this.§2y§.§^-§.x;
         _loc3_.m_sweep.c.y += _loc3_.§!q§ * _loc8_ * this.§2y§.§^-§.y;
         _loc3_.m_sweep.a += _loc3_.§&!Y§ * _loc8_ * this.§2y§.§=!Z§;
         _loc4_.m_sweep.c.x += _loc4_.§!q§ * _loc8_ * this.§2y§.§ !@§.x;
         _loc4_.m_sweep.c.y += _loc4_.§!q§ * _loc8_ * this.§2y§.§ !@§.y;
         _loc4_.m_sweep.a += _loc4_.§&!Y§ * _loc8_ * this.§2y§.§&@§;
         _loc3_.§ L§();
         _loc4_.§ L§();
         return 0 < b2Settings.b2_linearSlop;
      }
   }
}
