package §7!3§
{
   import §+d§.b2Body;
   import §+d§.b2TimeStep;
   import §6%§.b2Settings;
   import §6%§.b2internal;
   import §`!^§.b2Mat22;
   import §`!^§.b2Vec2;
   
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
      
      private var §`Q§:b2Jacobian;
      
      private var §6§:Number;
      
      private var §?K§:Number;
      
      private var §3!@§:Number;
      
      private var §[H§:Number;
      
      public function b2GearJoint(param1:b2GearJointDef)
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         this.m_groundAnchor1 = new b2Vec2();
         this.m_groundAnchor2 = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§`Q§ = new b2Jacobian();
         super(param1);
         var _loc2_:int = param1.joint1.§5!'§;
         var _loc3_:int = param1.joint2.§5!'§;
         this.m_revolute1 = null;
         this.m_prismatic1 = null;
         this.m_revolute2 = null;
         this.m_prismatic2 = null;
         this.m_ground1 = param1.joint1.§ !I§();
         §5!R§ = param1.joint1.§"!$§();
         if(_loc2_ == b2Joint.e_revoluteJoint)
         {
            this.m_revolute1 = param1.joint1 as b2RevoluteJoint;
            this.m_groundAnchor1.SetV(this.m_revolute1.m_localAnchor1);
            this.m_localAnchor1.SetV(this.m_revolute1.m_localAnchor2);
            _loc4_ = this.m_revolute1.§>j§();
         }
         else
         {
            this.m_prismatic1 = param1.joint1 as b2PrismaticJoint;
            this.m_groundAnchor1.SetV(this.m_prismatic1.m_localAnchor1);
            this.m_localAnchor1.SetV(this.m_prismatic1.m_localAnchor2);
            _loc4_ = this.m_prismatic1.include();
         }
         this.m_ground2 = param1.joint2.§ !I§();
         §>D§ = param1.joint2.§"!$§();
         if(_loc3_ == b2Joint.e_revoluteJoint)
         {
            this.m_revolute2 = param1.joint2 as b2RevoluteJoint;
            this.m_groundAnchor2.SetV(this.m_revolute2.m_localAnchor1);
            this.m_localAnchor2.SetV(this.m_revolute2.m_localAnchor2);
            _loc5_ = this.m_revolute2.§>j§();
         }
         else
         {
            this.m_prismatic2 = param1.joint2 as b2PrismaticJoint;
            this.m_groundAnchor2.SetV(this.m_prismatic2.m_localAnchor1);
            this.m_localAnchor2.SetV(this.m_prismatic2.m_localAnchor2);
            _loc5_ = this.m_prismatic2.include();
         }
         this.§?K§ = param1.§+Z§;
         this.§6§ = _loc4_ + this.§?K§ * _loc5_;
         this.§[H§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::5!R.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::>D.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§[H§ * this.§`Q§.§0"§.x,param1 * this.§[H§ * this.§`Q§.§0"§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:b2Mat22 = b2internal::>D.m_xf.R;
         var _loc3_:Number = this.m_localAnchor1.x - b2internal::>D.m_sweep.localCenter.x;
         var _loc4_:Number = this.m_localAnchor1.y - b2internal::>D.m_sweep.localCenter.y;
         var _loc5_:Number = _loc2_.col1.x * _loc3_ + _loc2_.col2.x * _loc4_;
         _loc4_ = _loc2_.col1.y * _loc3_ + _loc2_.col2.y * _loc4_;
         _loc3_ = _loc5_;
         var _loc6_:Number = this.§[H§ * this.§`Q§.§0"§.x;
         var _loc7_:Number = this.§[H§ * this.§`Q§.§0"§.y;
         return param1 * (this.§[H§ * this.§`Q§.§<+§ - _loc3_ * _loc7_ + _loc4_ * _loc6_);
      }
      
      public function §0!V§() : Number
      {
         return this.§?K§;
      }
      
      public function §1d§(param1:Number) : void
      {
         this.§?K§ = param1;
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
         _loc4_ = b2internal::5!R;
         var _loc5_:b2Body = b2internal::>D;
         var _loc14_:Number = 0;
         this.§`Q§.§8c§();
         if(this.m_revolute1)
         {
            this.§`Q§.§&!V§ = -1;
            _loc14_ += _loc4_.§8t§;
         }
         else
         {
            _loc10_ = _loc2_.m_xf.R;
            _loc11_ = this.m_prismatic1.§0r§;
            _loc6_ = _loc10_.col1.x * _loc11_.x + _loc10_.col2.x * _loc11_.y;
            _loc7_ = _loc10_.col1.y * _loc11_.x + _loc10_.col2.y * _loc11_.y;
            _loc10_ = _loc4_.m_xf.R;
            _loc8_ = this.m_localAnchor1.x - _loc4_.m_sweep.localCenter.x;
            _loc9_ = this.m_localAnchor1.y - _loc4_.m_sweep.localCenter.y;
            _loc13_ = _loc10_.col1.x * _loc8_ + _loc10_.col2.x * _loc9_;
            _loc9_ = _loc10_.col1.y * _loc8_ + _loc10_.col2.y * _loc9_;
            _loc12_ = (_loc8_ = _loc13_) * _loc7_ - _loc9_ * _loc6_;
            this.§`Q§.§%!a§.Set(-_loc6_,-_loc7_);
            this.§`Q§.§&!V§ = -_loc12_;
            _loc14_ += _loc4_.§@h§ + _loc4_.§8t§ * _loc12_ * _loc12_;
         }
         if(this.m_revolute2)
         {
            this.§`Q§.§<+§ = -this.§?K§;
            _loc14_ += this.§?K§ * this.§?K§ * _loc5_.§8t§;
         }
         else
         {
            _loc10_ = _loc3_.m_xf.R;
            _loc11_ = this.m_prismatic2.§0r§;
            _loc6_ = _loc10_.col1.x * _loc11_.x + _loc10_.col2.x * _loc11_.y;
            _loc7_ = _loc10_.col1.y * _loc11_.x + _loc10_.col2.y * _loc11_.y;
            _loc10_ = _loc5_.m_xf.R;
            _loc8_ = this.m_localAnchor2.x - _loc5_.m_sweep.localCenter.x;
            _loc9_ = this.m_localAnchor2.y - _loc5_.m_sweep.localCenter.y;
            _loc13_ = _loc10_.col1.x * _loc8_ + _loc10_.col2.x * _loc9_;
            _loc9_ = _loc10_.col1.y * _loc8_ + _loc10_.col2.y * _loc9_;
            _loc12_ = (_loc8_ = _loc13_) * _loc7_ - _loc9_ * _loc6_;
            this.§`Q§.§0"§.Set(-this.§?K§ * _loc6_,-this.§?K§ * _loc7_);
            this.§`Q§.§<+§ = -this.§?K§ * _loc12_;
            _loc14_ += this.§?K§ * this.§?K§ * (_loc5_.§@h§ + _loc5_.§8t§ * _loc12_ * _loc12_);
         }
         this.§3!@§ = _loc14_ > 0 ? Number(1 / _loc14_) : Number(0);
         if(param1.§`!;§)
         {
            _loc4_.§^!S§.x += _loc4_.§@h§ * this.§[H§ * this.§`Q§.§%!a§.x;
            _loc4_.§^!S§.y += _loc4_.§@h§ * this.§[H§ * this.§`Q§.§%!a§.y;
            _loc4_.m_angularVelocity += _loc4_.§8t§ * this.§[H§ * this.§`Q§.§&!V§;
            _loc5_.§^!S§.x += _loc5_.§@h§ * this.§[H§ * this.§`Q§.§0"§.x;
            _loc5_.§^!S§.y += _loc5_.§@h§ * this.§[H§ * this.§`Q§.§0"§.y;
            _loc5_.m_angularVelocity += _loc5_.§8t§ * this.§[H§ * this.§`Q§.§<+§;
         }
         else
         {
            this.§[H§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = b2internal::5!R;
         var _loc3_:b2Body = b2internal::>D;
         var _loc4_:Number = this.§`Q§.§1!a§(_loc2_.§^!S§,_loc2_.m_angularVelocity,_loc3_.§^!S§,_loc3_.m_angularVelocity);
         var _loc5_:Number = -this.§3!@§ * _loc4_;
         this.§[H§ += _loc5_;
         _loc2_.§^!S§.x += _loc2_.§@h§ * _loc5_ * this.§`Q§.§%!a§.x;
         _loc2_.§^!S§.y += _loc2_.§@h§ * _loc5_ * this.§`Q§.§%!a§.y;
         _loc2_.m_angularVelocity += _loc2_.§8t§ * _loc5_ * this.§`Q§.§&!V§;
         _loc3_.§^!S§.x += _loc3_.§@h§ * _loc5_ * this.§`Q§.§0"§.x;
         _loc3_.§^!S§.y += _loc3_.§@h§ * _loc5_ * this.§`Q§.§0"§.y;
         _loc3_.m_angularVelocity += _loc3_.§8t§ * _loc5_ * this.§`Q§.§<+§;
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc3_:b2Body = b2internal::5!R;
         var _loc4_:b2Body = b2internal::>D;
         if(this.m_revolute1)
         {
            _loc5_ = this.m_revolute1.§>j§();
         }
         else
         {
            _loc5_ = this.m_prismatic1.include();
         }
         if(this.m_revolute2)
         {
            _loc6_ = this.m_revolute2.§>j§();
         }
         else
         {
            _loc6_ = this.m_prismatic2.include();
         }
         var _loc7_:Number = this.§6§ - (_loc5_ + this.§?K§ * _loc6_);
         var _loc8_:Number = -this.§3!@§ * _loc7_;
         _loc3_.m_sweep.c.x += _loc3_.§@h§ * _loc8_ * this.§`Q§.§%!a§.x;
         _loc3_.m_sweep.c.y += _loc3_.§@h§ * _loc8_ * this.§`Q§.§%!a§.y;
         _loc3_.m_sweep.a += _loc3_.§8t§ * _loc8_ * this.§`Q§.§&!V§;
         _loc4_.m_sweep.c.x += _loc4_.§@h§ * _loc8_ * this.§`Q§.§0"§.x;
         _loc4_.m_sweep.c.y += _loc4_.§@h§ * _loc8_ * this.§`Q§.§0"§.y;
         _loc4_.m_sweep.a += _loc4_.§8t§ * _loc8_ * this.§`Q§.§<+§;
         _loc3_.§%t§();
         _loc4_.§%t§();
         return 0 < b2Settings.b2_linearSlop;
      }
   }
}
