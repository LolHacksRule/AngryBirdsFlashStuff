package §!6§
{
   import § !5§.b2Settings;
   import § !5§.b2internal;
   import §+,§.b2Mat22;
   import §+,§.b2Vec2;
   import §[W§.b2Body;
   import §[W§.b2TimeStep;
   
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
      
      private var §,7§:b2Jacobian;
      
      private var §`G§:Number;
      
      private var §;!M§:Number;
      
      private var §]f§:Number;
      
      private var §;!B§:Number;
      
      public function b2GearJoint(param1:b2GearJointDef)
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         this.m_groundAnchor1 = new b2Vec2();
         this.m_groundAnchor2 = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§,7§ = new b2Jacobian();
         super(param1);
         var _loc2_:int = param1.joint1.§&D§;
         var _loc3_:int = param1.joint2.§&D§;
         this.m_revolute1 = null;
         this.m_prismatic1 = null;
         this.m_revolute2 = null;
         this.m_prismatic2 = null;
         this.m_ground1 = param1.joint1.§+;§();
         §#4§ = param1.joint1.§,A§();
         if(_loc2_ == b2Joint.e_revoluteJoint)
         {
            this.m_revolute1 = param1.joint1 as b2RevoluteJoint;
            this.m_groundAnchor1.SetV(this.m_revolute1.m_localAnchor1);
            this.m_localAnchor1.SetV(this.m_revolute1.m_localAnchor2);
            _loc4_ = this.m_revolute1.§[!_§();
         }
         else
         {
            this.m_prismatic1 = param1.joint1 as b2PrismaticJoint;
            this.m_groundAnchor1.SetV(this.m_prismatic1.m_localAnchor1);
            this.m_localAnchor1.SetV(this.m_prismatic1.m_localAnchor2);
            _loc4_ = this.m_prismatic1.§2?§();
         }
         this.m_ground2 = param1.joint2.§+;§();
         §-!`§ = param1.joint2.§,A§();
         if(_loc3_ == b2Joint.e_revoluteJoint)
         {
            this.m_revolute2 = param1.joint2 as b2RevoluteJoint;
            this.m_groundAnchor2.SetV(this.m_revolute2.m_localAnchor1);
            this.m_localAnchor2.SetV(this.m_revolute2.m_localAnchor2);
            _loc5_ = this.m_revolute2.§[!_§();
         }
         else
         {
            this.m_prismatic2 = param1.joint2 as b2PrismaticJoint;
            this.m_groundAnchor2.SetV(this.m_prismatic2.m_localAnchor1);
            this.m_localAnchor2.SetV(this.m_prismatic2.m_localAnchor2);
            _loc5_ = this.m_prismatic2.§2?§();
         }
         this.§;!M§ = param1.§#!J§;
         this.§`G§ = _loc4_ + this.§;!M§ * _loc5_;
         this.§;!B§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::#4.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::-!`.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§;!B§ * this.§,7§.§1§.x,param1 * this.§;!B§ * this.§,7§.§1§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:b2Mat22 = b2internal::-!`.m_xf.R;
         var _loc3_:Number = this.m_localAnchor1.x - b2internal::-!`.m_sweep.localCenter.x;
         var _loc4_:Number = this.m_localAnchor1.y - b2internal::-!`.m_sweep.localCenter.y;
         var _loc5_:Number = _loc2_.col1.x * _loc3_ + _loc2_.col2.x * _loc4_;
         _loc4_ = _loc2_.col1.y * _loc3_ + _loc2_.col2.y * _loc4_;
         _loc3_ = _loc5_;
         var _loc6_:Number = this.§;!B§ * this.§,7§.§1§.x;
         var _loc7_:Number = this.§;!B§ * this.§,7§.§1§.y;
         return param1 * (this.§;!B§ * this.§,7§.§ t§ - _loc3_ * _loc7_ + _loc4_ * _loc6_);
      }
      
      public function §3!R§() : Number
      {
         return this.§;!M§;
      }
      
      public function §,0§(param1:Number) : void
      {
         this.§;!M§ = param1;
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
         _loc4_ = b2internal::#4;
         var _loc5_:b2Body = b2internal::-!`;
         var _loc14_:Number = 0;
         this.§,7§.§&N§();
         if(this.m_revolute1)
         {
            this.§,7§.§!!B§ = -1;
            _loc14_ += _loc4_.§^U§;
         }
         else
         {
            _loc10_ = _loc2_.m_xf.R;
            _loc11_ = this.m_prismatic1.§9!Z§;
            _loc6_ = _loc10_.col1.x * _loc11_.x + _loc10_.col2.x * _loc11_.y;
            _loc7_ = _loc10_.col1.y * _loc11_.x + _loc10_.col2.y * _loc11_.y;
            _loc10_ = _loc4_.m_xf.R;
            _loc8_ = this.m_localAnchor1.x - _loc4_.m_sweep.localCenter.x;
            _loc9_ = this.m_localAnchor1.y - _loc4_.m_sweep.localCenter.y;
            _loc13_ = _loc10_.col1.x * _loc8_ + _loc10_.col2.x * _loc9_;
            _loc9_ = _loc10_.col1.y * _loc8_ + _loc10_.col2.y * _loc9_;
            _loc12_ = (_loc8_ = _loc13_) * _loc7_ - _loc9_ * _loc6_;
            this.§,7§.§@V§.Set(-_loc6_,-_loc7_);
            this.§,7§.§!!B§ = -_loc12_;
            _loc14_ += _loc4_.§^!^§ + _loc4_.§^U§ * _loc12_ * _loc12_;
         }
         if(this.m_revolute2)
         {
            this.§,7§.§ t§ = -this.§;!M§;
            _loc14_ += this.§;!M§ * this.§;!M§ * _loc5_.§^U§;
         }
         else
         {
            _loc10_ = _loc3_.m_xf.R;
            _loc11_ = this.m_prismatic2.§9!Z§;
            _loc6_ = _loc10_.col1.x * _loc11_.x + _loc10_.col2.x * _loc11_.y;
            _loc7_ = _loc10_.col1.y * _loc11_.x + _loc10_.col2.y * _loc11_.y;
            _loc10_ = _loc5_.m_xf.R;
            _loc8_ = this.m_localAnchor2.x - _loc5_.m_sweep.localCenter.x;
            _loc9_ = this.m_localAnchor2.y - _loc5_.m_sweep.localCenter.y;
            _loc13_ = _loc10_.col1.x * _loc8_ + _loc10_.col2.x * _loc9_;
            _loc9_ = _loc10_.col1.y * _loc8_ + _loc10_.col2.y * _loc9_;
            _loc12_ = (_loc8_ = _loc13_) * _loc7_ - _loc9_ * _loc6_;
            this.§,7§.§1§.Set(-this.§;!M§ * _loc6_,-this.§;!M§ * _loc7_);
            this.§,7§.§ t§ = -this.§;!M§ * _loc12_;
            _loc14_ += this.§;!M§ * this.§;!M§ * (_loc5_.§^!^§ + _loc5_.§^U§ * _loc12_ * _loc12_);
         }
         this.§]f§ = _loc14_ > 0 ? Number(1 / _loc14_) : Number(0);
         if(param1.§'K§)
         {
            _loc4_.§%!N§.x += _loc4_.§^!^§ * this.§;!B§ * this.§,7§.§@V§.x;
            _loc4_.§%!N§.y += _loc4_.§^!^§ * this.§;!B§ * this.§,7§.§@V§.y;
            _loc4_.m_angularVelocity += _loc4_.§^U§ * this.§;!B§ * this.§,7§.§!!B§;
            _loc5_.§%!N§.x += _loc5_.§^!^§ * this.§;!B§ * this.§,7§.§1§.x;
            _loc5_.§%!N§.y += _loc5_.§^!^§ * this.§;!B§ * this.§,7§.§1§.y;
            _loc5_.m_angularVelocity += _loc5_.§^U§ * this.§;!B§ * this.§,7§.§ t§;
         }
         else
         {
            this.§;!B§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = b2internal::#4;
         var _loc3_:b2Body = b2internal::-!`;
         var _loc4_:Number = this.§,7§.§^!>§(_loc2_.§%!N§,_loc2_.m_angularVelocity,_loc3_.§%!N§,_loc3_.m_angularVelocity);
         var _loc5_:Number = -this.§]f§ * _loc4_;
         this.§;!B§ += _loc5_;
         _loc2_.§%!N§.x += _loc2_.§^!^§ * _loc5_ * this.§,7§.§@V§.x;
         _loc2_.§%!N§.y += _loc2_.§^!^§ * _loc5_ * this.§,7§.§@V§.y;
         _loc2_.m_angularVelocity += _loc2_.§^U§ * _loc5_ * this.§,7§.§!!B§;
         _loc3_.§%!N§.x += _loc3_.§^!^§ * _loc5_ * this.§,7§.§1§.x;
         _loc3_.§%!N§.y += _loc3_.§^!^§ * _loc5_ * this.§,7§.§1§.y;
         _loc3_.m_angularVelocity += _loc3_.§^U§ * _loc5_ * this.§,7§.§ t§;
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc3_:b2Body = b2internal::#4;
         var _loc4_:b2Body = b2internal::-!`;
         if(this.m_revolute1)
         {
            _loc5_ = this.m_revolute1.§[!_§();
         }
         else
         {
            _loc5_ = this.m_prismatic1.§2?§();
         }
         if(this.m_revolute2)
         {
            _loc6_ = this.m_revolute2.§[!_§();
         }
         else
         {
            _loc6_ = this.m_prismatic2.§2?§();
         }
         var _loc7_:Number = this.§`G§ - (_loc5_ + this.§;!M§ * _loc6_);
         var _loc8_:Number = -this.§]f§ * _loc7_;
         _loc3_.m_sweep.c.x += _loc3_.§^!^§ * _loc8_ * this.§,7§.§@V§.x;
         _loc3_.m_sweep.c.y += _loc3_.§^!^§ * _loc8_ * this.§,7§.§@V§.y;
         _loc3_.m_sweep.a += _loc3_.§^U§ * _loc8_ * this.§,7§.§!!B§;
         _loc4_.m_sweep.c.x += _loc4_.§^!^§ * _loc8_ * this.§,7§.§1§.x;
         _loc4_.m_sweep.c.y += _loc4_.§^!^§ * _loc8_ * this.§,7§.§1§.y;
         _loc4_.m_sweep.a += _loc4_.§^U§ * _loc8_ * this.§,7§.§ t§;
         _loc3_.§'!N§();
         _loc4_.§'!N§();
         return 0 < b2Settings.b2_linearSlop;
      }
   }
}
