package §,H§
{
   import §'I§.b2Settings;
   import §'I§.b2internal;
   import §9!Z§.b2Body;
   import §9!Z§.b2TimeStep;
   import §?"'§.b2Mat22;
   import §?"'§.b2Vec2;
   
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
      
      private var §&c§:b2Jacobian;
      
      private var §+!>§:Number;
      
      private var §8B§:Number;
      
      private var §<Q§:Number;
      
      private var §9!z§:Number;
      
      public function b2GearJoint(param1:b2GearJointDef)
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         this.m_groundAnchor1 = new b2Vec2();
         this.m_groundAnchor2 = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§&c§ = new b2Jacobian();
         super(param1);
         var _loc2_:int = param1.joint1.§[!5§;
         var _loc3_:int = param1.joint2.§[!5§;
         this.m_revolute1 = null;
         this.m_prismatic1 = null;
         this.m_revolute2 = null;
         this.m_prismatic2 = null;
         this.m_ground1 = param1.joint1.§5!c§();
         §3v§ = param1.joint1.§^7§();
         if(_loc2_ == b2Joint.e_revoluteJoint)
         {
            this.m_revolute1 = param1.joint1 as b2RevoluteJoint;
            this.m_groundAnchor1.SetV(this.m_revolute1.m_localAnchor1);
            this.m_localAnchor1.SetV(this.m_revolute1.m_localAnchor2);
            _loc4_ = this.m_revolute1.§=!;§();
         }
         else
         {
            this.m_prismatic1 = param1.joint1 as b2PrismaticJoint;
            this.m_groundAnchor1.SetV(this.m_prismatic1.m_localAnchor1);
            this.m_localAnchor1.SetV(this.m_prismatic1.m_localAnchor2);
            _loc4_ = this.m_prismatic1.§"!@§();
         }
         this.m_ground2 = param1.joint2.§5!c§();
         §;Q§ = param1.joint2.§^7§();
         if(_loc3_ == b2Joint.e_revoluteJoint)
         {
            this.m_revolute2 = param1.joint2 as b2RevoluteJoint;
            this.m_groundAnchor2.SetV(this.m_revolute2.m_localAnchor1);
            this.m_localAnchor2.SetV(this.m_revolute2.m_localAnchor2);
            _loc5_ = this.m_revolute2.§=!;§();
         }
         else
         {
            this.m_prismatic2 = param1.joint2 as b2PrismaticJoint;
            this.m_groundAnchor2.SetV(this.m_prismatic2.m_localAnchor1);
            this.m_localAnchor2.SetV(this.m_prismatic2.m_localAnchor2);
            _loc5_ = this.m_prismatic2.§"!@§();
         }
         this.§8B§ = param1.§%"7§;
         this.§+!>§ = _loc4_ + this.§8B§ * _loc5_;
         this.§9!z§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::3v.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::;Q.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§9!z§ * this.§&c§.§"'§.x,param1 * this.§9!z§ * this.§&c§.§"'§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:b2Mat22 = b2internal::;Q.m_xf.R;
         var _loc3_:Number = this.m_localAnchor1.x - b2internal::;Q.m_sweep.localCenter.x;
         var _loc4_:Number = this.m_localAnchor1.y - b2internal::;Q.m_sweep.localCenter.y;
         var _loc5_:Number = _loc2_.col1.x * _loc3_ + _loc2_.col2.x * _loc4_;
         _loc4_ = _loc2_.col1.y * _loc3_ + _loc2_.col2.y * _loc4_;
         _loc3_ = _loc5_;
         var _loc6_:Number = this.§9!z§ * this.§&c§.§"'§.x;
         var _loc7_:Number = this.§9!z§ * this.§&c§.§"'§.y;
         return param1 * (this.§9!z§ * this.§&c§.§[6§ - _loc3_ * _loc7_ + _loc4_ * _loc6_);
      }
      
      public function § !0§() : Number
      {
         return this.§8B§;
      }
      
      public function §`!8§(param1:Number) : void
      {
         this.§8B§ = param1;
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
         _loc4_ = b2internal::3v;
         var _loc5_:b2Body = b2internal::;Q;
         var _loc14_:Number = 0;
         this.§&c§.§6!c§();
         if(this.m_revolute1)
         {
            this.§&c§.§6!V§ = -1;
            _loc14_ += _loc4_.§1!k§;
         }
         else
         {
            _loc10_ = _loc2_.m_xf.R;
            _loc11_ = this.m_prismatic1.§7!t§;
            _loc6_ = _loc10_.col1.x * _loc11_.x + _loc10_.col2.x * _loc11_.y;
            _loc7_ = _loc10_.col1.y * _loc11_.x + _loc10_.col2.y * _loc11_.y;
            _loc10_ = _loc4_.m_xf.R;
            _loc8_ = this.m_localAnchor1.x - _loc4_.m_sweep.localCenter.x;
            _loc9_ = this.m_localAnchor1.y - _loc4_.m_sweep.localCenter.y;
            _loc13_ = _loc10_.col1.x * _loc8_ + _loc10_.col2.x * _loc9_;
            _loc9_ = _loc10_.col1.y * _loc8_ + _loc10_.col2.y * _loc9_;
            _loc12_ = (_loc8_ = _loc13_) * _loc7_ - _loc9_ * _loc6_;
            this.§&c§.§<!v§.Set(-_loc6_,-_loc7_);
            this.§&c§.§6!V§ = -_loc12_;
            _loc14_ += _loc4_.§;!R§ + _loc4_.§1!k§ * _loc12_ * _loc12_;
         }
         if(this.m_revolute2)
         {
            this.§&c§.§[6§ = -this.§8B§;
            _loc14_ += this.§8B§ * this.§8B§ * _loc5_.§1!k§;
         }
         else
         {
            _loc10_ = _loc3_.m_xf.R;
            _loc11_ = this.m_prismatic2.§7!t§;
            _loc6_ = _loc10_.col1.x * _loc11_.x + _loc10_.col2.x * _loc11_.y;
            _loc7_ = _loc10_.col1.y * _loc11_.x + _loc10_.col2.y * _loc11_.y;
            _loc10_ = _loc5_.m_xf.R;
            _loc8_ = this.m_localAnchor2.x - _loc5_.m_sweep.localCenter.x;
            _loc9_ = this.m_localAnchor2.y - _loc5_.m_sweep.localCenter.y;
            _loc13_ = _loc10_.col1.x * _loc8_ + _loc10_.col2.x * _loc9_;
            _loc9_ = _loc10_.col1.y * _loc8_ + _loc10_.col2.y * _loc9_;
            _loc12_ = (_loc8_ = _loc13_) * _loc7_ - _loc9_ * _loc6_;
            this.§&c§.§"'§.Set(-this.§8B§ * _loc6_,-this.§8B§ * _loc7_);
            this.§&c§.§[6§ = -this.§8B§ * _loc12_;
            _loc14_ += this.§8B§ * this.§8B§ * (_loc5_.§;!R§ + _loc5_.§1!k§ * _loc12_ * _loc12_);
         }
         this.§<Q§ = _loc14_ > 0 ? Number(1 / _loc14_) : Number(0);
         if(param1.§#=§)
         {
            _loc4_.§ Y§.x += _loc4_.§;!R§ * this.§9!z§ * this.§&c§.§<!v§.x;
            _loc4_.§ Y§.y += _loc4_.§;!R§ * this.§9!z§ * this.§&c§.§<!v§.y;
            _loc4_.m_angularVelocity += _loc4_.§1!k§ * this.§9!z§ * this.§&c§.§6!V§;
            _loc5_.§ Y§.x += _loc5_.§;!R§ * this.§9!z§ * this.§&c§.§"'§.x;
            _loc5_.§ Y§.y += _loc5_.§;!R§ * this.§9!z§ * this.§&c§.§"'§.y;
            _loc5_.m_angularVelocity += _loc5_.§1!k§ * this.§9!z§ * this.§&c§.§[6§;
         }
         else
         {
            this.§9!z§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = b2internal::3v;
         var _loc3_:b2Body = b2internal::;Q;
         var _loc4_:Number = this.§&c§.§@!a§(_loc2_.§ Y§,_loc2_.m_angularVelocity,_loc3_.§ Y§,_loc3_.m_angularVelocity);
         var _loc5_:Number = -this.§<Q§ * _loc4_;
         this.§9!z§ += _loc5_;
         _loc2_.§ Y§.x += _loc2_.§;!R§ * _loc5_ * this.§&c§.§<!v§.x;
         _loc2_.§ Y§.y += _loc2_.§;!R§ * _loc5_ * this.§&c§.§<!v§.y;
         _loc2_.m_angularVelocity += _loc2_.§1!k§ * _loc5_ * this.§&c§.§6!V§;
         _loc3_.§ Y§.x += _loc3_.§;!R§ * _loc5_ * this.§&c§.§"'§.x;
         _loc3_.§ Y§.y += _loc3_.§;!R§ * _loc5_ * this.§&c§.§"'§.y;
         _loc3_.m_angularVelocity += _loc3_.§1!k§ * _loc5_ * this.§&c§.§[6§;
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc3_:b2Body = b2internal::3v;
         var _loc4_:b2Body = b2internal::;Q;
         if(this.m_revolute1)
         {
            _loc5_ = this.m_revolute1.§=!;§();
         }
         else
         {
            _loc5_ = this.m_prismatic1.§"!@§();
         }
         if(this.m_revolute2)
         {
            _loc6_ = this.m_revolute2.§=!;§();
         }
         else
         {
            _loc6_ = this.m_prismatic2.§"!@§();
         }
         var _loc7_:Number = this.§+!>§ - (_loc5_ + this.§8B§ * _loc6_);
         var _loc8_:Number = -this.§<Q§ * _loc7_;
         _loc3_.m_sweep.c.x += _loc3_.§;!R§ * _loc8_ * this.§&c§.§<!v§.x;
         _loc3_.m_sweep.c.y += _loc3_.§;!R§ * _loc8_ * this.§&c§.§<!v§.y;
         _loc3_.m_sweep.a += _loc3_.§1!k§ * _loc8_ * this.§&c§.§6!V§;
         _loc4_.m_sweep.c.x += _loc4_.§;!R§ * _loc8_ * this.§&c§.§"'§.x;
         _loc4_.m_sweep.c.y += _loc4_.§;!R§ * _loc8_ * this.§&c§.§"'§.y;
         _loc4_.m_sweep.a += _loc4_.§1!k§ * _loc8_ * this.§&c§.§[6§;
         _loc3_.§>#§();
         _loc4_.§>#§();
         return 0 < b2Settings.b2_linearSlop;
      }
   }
}
