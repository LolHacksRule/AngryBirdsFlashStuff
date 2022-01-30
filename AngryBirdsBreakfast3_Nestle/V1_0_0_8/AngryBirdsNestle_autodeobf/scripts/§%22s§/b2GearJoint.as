package §"s§
{
   import §7!F§.b2Settings;
   import §7!F§.b2internal;
   import §=!c§.b2Body;
   import §=!c§.b2TimeStep;
   import §[K§.b2Mat22;
   import §[K§.b2Vec2;
   
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
      
      private var §,[§:b2Jacobian;
      
      private var §,"§:Number;
      
      private var §!w§:Number;
      
      private var §^-§:Number;
      
      private var §+f§:Number;
      
      public function b2GearJoint(param1:b2GearJointDef)
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         this.m_groundAnchor1 = new b2Vec2();
         this.m_groundAnchor2 = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§,[§ = new b2Jacobian();
         super(param1);
         var _loc2_:int = param1.joint1.§5"6§;
         var _loc3_:int = param1.joint2.§5"6§;
         this.m_revolute1 = null;
         this.m_prismatic1 = null;
         this.m_revolute2 = null;
         this.m_prismatic2 = null;
         this.m_ground1 = param1.joint1.§,f§();
         §;l§ = param1.joint1.§ e§();
         if(_loc2_ == b2Joint.e_revoluteJoint)
         {
            this.m_revolute1 = param1.joint1 as b2RevoluteJoint;
            this.m_groundAnchor1.SetV(this.m_revolute1.m_localAnchor1);
            this.m_localAnchor1.SetV(this.m_revolute1.m_localAnchor2);
            _loc4_ = this.m_revolute1.§^8§();
         }
         else
         {
            this.m_prismatic1 = param1.joint1 as b2PrismaticJoint;
            this.m_groundAnchor1.SetV(this.m_prismatic1.m_localAnchor1);
            this.m_localAnchor1.SetV(this.m_prismatic1.m_localAnchor2);
            _loc4_ = this.m_prismatic1.§ "§();
         }
         this.m_ground2 = param1.joint2.§,f§();
         §2z§ = param1.joint2.§ e§();
         if(_loc3_ == b2Joint.e_revoluteJoint)
         {
            this.m_revolute2 = param1.joint2 as b2RevoluteJoint;
            this.m_groundAnchor2.SetV(this.m_revolute2.m_localAnchor1);
            this.m_localAnchor2.SetV(this.m_revolute2.m_localAnchor2);
            _loc5_ = this.m_revolute2.§^8§();
         }
         else
         {
            this.m_prismatic2 = param1.joint2 as b2PrismaticJoint;
            this.m_groundAnchor2.SetV(this.m_prismatic2.m_localAnchor1);
            this.m_localAnchor2.SetV(this.m_prismatic2.m_localAnchor2);
            _loc5_ = this.m_prismatic2.§ "§();
         }
         this.§!w§ = param1.§3!@§;
         this.§,"§ = _loc4_ + this.§!w§ * _loc5_;
         this.§+f§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::;l.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::2z.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§+f§ * this.§,[§.§`u§.x,param1 * this.§+f§ * this.§,[§.§`u§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:b2Mat22 = b2internal::2z.m_xf.R;
         var _loc3_:Number = this.m_localAnchor1.x - b2internal::2z.m_sweep.localCenter.x;
         var _loc4_:Number = this.m_localAnchor1.y - b2internal::2z.m_sweep.localCenter.y;
         var _loc5_:Number = _loc2_.col1.x * _loc3_ + _loc2_.col2.x * _loc4_;
         _loc4_ = _loc2_.col1.y * _loc3_ + _loc2_.col2.y * _loc4_;
         _loc3_ = _loc5_;
         var _loc6_:Number = this.§+f§ * this.§,[§.§`u§.x;
         var _loc7_:Number = this.§+f§ * this.§,[§.§`u§.y;
         return param1 * (this.§+f§ * this.§,[§.§#"0§ - _loc3_ * _loc7_ + _loc4_ * _loc6_);
      }
      
      public function §@[§() : Number
      {
         return this.§!w§;
      }
      
      public function §0!e§(param1:Number) : void
      {
         this.§!w§ = param1;
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
         _loc4_ = b2internal::;l;
         var _loc5_:b2Body = b2internal::2z;
         var _loc14_:Number = 0;
         this.§,[§.§3S§();
         if(this.m_revolute1)
         {
            this.§,[§.§-!7§ = -1;
            _loc14_ += _loc4_.§;!$§;
         }
         else
         {
            _loc10_ = _loc2_.m_xf.R;
            _loc11_ = this.m_prismatic1.§ !>§;
            _loc6_ = _loc10_.col1.x * _loc11_.x + _loc10_.col2.x * _loc11_.y;
            _loc7_ = _loc10_.col1.y * _loc11_.x + _loc10_.col2.y * _loc11_.y;
            _loc10_ = _loc4_.m_xf.R;
            _loc8_ = this.m_localAnchor1.x - _loc4_.m_sweep.localCenter.x;
            _loc9_ = this.m_localAnchor1.y - _loc4_.m_sweep.localCenter.y;
            _loc13_ = _loc10_.col1.x * _loc8_ + _loc10_.col2.x * _loc9_;
            _loc9_ = _loc10_.col1.y * _loc8_ + _loc10_.col2.y * _loc9_;
            _loc12_ = (_loc8_ = _loc13_) * _loc7_ - _loc9_ * _loc6_;
            this.§,[§.§38§.Set(-_loc6_,-_loc7_);
            this.§,[§.§-!7§ = -_loc12_;
            _loc14_ += _loc4_.§]p§ + _loc4_.§;!$§ * _loc12_ * _loc12_;
         }
         if(this.m_revolute2)
         {
            this.§,[§.§#"0§ = -this.§!w§;
            _loc14_ += this.§!w§ * this.§!w§ * _loc5_.§;!$§;
         }
         else
         {
            _loc10_ = _loc3_.m_xf.R;
            _loc11_ = this.m_prismatic2.§ !>§;
            _loc6_ = _loc10_.col1.x * _loc11_.x + _loc10_.col2.x * _loc11_.y;
            _loc7_ = _loc10_.col1.y * _loc11_.x + _loc10_.col2.y * _loc11_.y;
            _loc10_ = _loc5_.m_xf.R;
            _loc8_ = this.m_localAnchor2.x - _loc5_.m_sweep.localCenter.x;
            _loc9_ = this.m_localAnchor2.y - _loc5_.m_sweep.localCenter.y;
            _loc13_ = _loc10_.col1.x * _loc8_ + _loc10_.col2.x * _loc9_;
            _loc9_ = _loc10_.col1.y * _loc8_ + _loc10_.col2.y * _loc9_;
            _loc12_ = (_loc8_ = _loc13_) * _loc7_ - _loc9_ * _loc6_;
            this.§,[§.§`u§.Set(-this.§!w§ * _loc6_,-this.§!w§ * _loc7_);
            this.§,[§.§#"0§ = -this.§!w§ * _loc12_;
            _loc14_ += this.§!w§ * this.§!w§ * (_loc5_.§]p§ + _loc5_.§;!$§ * _loc12_ * _loc12_);
         }
         this.§^-§ = _loc14_ > 0 ? Number(1 / _loc14_) : Number(0);
         if(param1.§8"4§)
         {
            _loc4_.§;B§.x += _loc4_.§]p§ * this.§+f§ * this.§,[§.§38§.x;
            _loc4_.§;B§.y += _loc4_.§]p§ * this.§+f§ * this.§,[§.§38§.y;
            _loc4_.m_angularVelocity += _loc4_.§;!$§ * this.§+f§ * this.§,[§.§-!7§;
            _loc5_.§;B§.x += _loc5_.§]p§ * this.§+f§ * this.§,[§.§`u§.x;
            _loc5_.§;B§.y += _loc5_.§]p§ * this.§+f§ * this.§,[§.§`u§.y;
            _loc5_.m_angularVelocity += _loc5_.§;!$§ * this.§+f§ * this.§,[§.§#"0§;
         }
         else
         {
            this.§+f§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = b2internal::;l;
         var _loc3_:b2Body = b2internal::2z;
         var _loc4_:Number = this.§,[§.§36§(_loc2_.§;B§,_loc2_.m_angularVelocity,_loc3_.§;B§,_loc3_.m_angularVelocity);
         var _loc5_:Number = -this.§^-§ * _loc4_;
         this.§+f§ += _loc5_;
         _loc2_.§;B§.x += _loc2_.§]p§ * _loc5_ * this.§,[§.§38§.x;
         _loc2_.§;B§.y += _loc2_.§]p§ * _loc5_ * this.§,[§.§38§.y;
         _loc2_.m_angularVelocity += _loc2_.§;!$§ * _loc5_ * this.§,[§.§-!7§;
         _loc3_.§;B§.x += _loc3_.§]p§ * _loc5_ * this.§,[§.§`u§.x;
         _loc3_.§;B§.y += _loc3_.§]p§ * _loc5_ * this.§,[§.§`u§.y;
         _loc3_.m_angularVelocity += _loc3_.§;!$§ * _loc5_ * this.§,[§.§#"0§;
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc3_:b2Body = b2internal::;l;
         var _loc4_:b2Body = b2internal::2z;
         if(this.m_revolute1)
         {
            _loc5_ = this.m_revolute1.§^8§();
         }
         else
         {
            _loc5_ = this.m_prismatic1.§ "§();
         }
         if(this.m_revolute2)
         {
            _loc6_ = this.m_revolute2.§^8§();
         }
         else
         {
            _loc6_ = this.m_prismatic2.§ "§();
         }
         var _loc7_:Number = this.§,"§ - (_loc5_ + this.§!w§ * _loc6_);
         var _loc8_:Number = -this.§^-§ * _loc7_;
         _loc3_.m_sweep.c.x += _loc3_.§]p§ * _loc8_ * this.§,[§.§38§.x;
         _loc3_.m_sweep.c.y += _loc3_.§]p§ * _loc8_ * this.§,[§.§38§.y;
         _loc3_.m_sweep.a += _loc3_.§;!$§ * _loc8_ * this.§,[§.§-!7§;
         _loc4_.m_sweep.c.x += _loc4_.§]p§ * _loc8_ * this.§,[§.§`u§.x;
         _loc4_.m_sweep.c.y += _loc4_.§]p§ * _loc8_ * this.§,[§.§`u§.y;
         _loc4_.m_sweep.a += _loc4_.§;!$§ * _loc8_ * this.§,[§.§#"0§;
         _loc3_.§<!0§();
         _loc4_.§<!0§();
         return 0 < b2Settings.b2_linearSlop;
      }
   }
}
