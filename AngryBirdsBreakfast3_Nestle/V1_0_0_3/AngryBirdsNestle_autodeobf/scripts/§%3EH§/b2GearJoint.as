package §>H§
{
   import § !%§.b2Settings;
   import § !%§.b2internal;
   import §,!k§.b2Mat22;
   import §,!k§.b2Vec2;
   import §;'§.b2Body;
   import §;'§.b2TimeStep;
   
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
      
      private var § null§:b2Jacobian;
      
      private var §%!L§:Number;
      
      private var §["0§:Number;
      
      private var §]B§:Number;
      
      private var §@_§:Number;
      
      public function b2GearJoint(param1:b2GearJointDef)
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         this.m_groundAnchor1 = new b2Vec2();
         this.m_groundAnchor2 = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§ null§ = new b2Jacobian();
         super(param1);
         var _loc2_:int = param1.joint1.§=!;§;
         var _loc3_:int = param1.joint2.§=!;§;
         this.m_revolute1 = null;
         this.m_prismatic1 = null;
         this.m_revolute2 = null;
         this.m_prismatic2 = null;
         this.m_ground1 = param1.joint1.§0!0§();
         §9!>§ = param1.joint1.§"!z§();
         if(_loc2_ == b2Joint.e_revoluteJoint)
         {
            this.m_revolute1 = param1.joint1 as b2RevoluteJoint;
            this.m_groundAnchor1.SetV(this.m_revolute1.m_localAnchor1);
            this.m_localAnchor1.SetV(this.m_revolute1.m_localAnchor2);
            _loc4_ = this.m_revolute1.§8!u§();
         }
         else
         {
            this.m_prismatic1 = param1.joint1 as b2PrismaticJoint;
            this.m_groundAnchor1.SetV(this.m_prismatic1.m_localAnchor1);
            this.m_localAnchor1.SetV(this.m_prismatic1.m_localAnchor2);
            _loc4_ = this.m_prismatic1.§%R§();
         }
         this.m_ground2 = param1.joint2.§0!0§();
         § N§ = param1.joint2.§"!z§();
         if(_loc3_ == b2Joint.e_revoluteJoint)
         {
            this.m_revolute2 = param1.joint2 as b2RevoluteJoint;
            this.m_groundAnchor2.SetV(this.m_revolute2.m_localAnchor1);
            this.m_localAnchor2.SetV(this.m_revolute2.m_localAnchor2);
            _loc5_ = this.m_revolute2.§8!u§();
         }
         else
         {
            this.m_prismatic2 = param1.joint2 as b2PrismaticJoint;
            this.m_groundAnchor2.SetV(this.m_prismatic2.m_localAnchor1);
            this.m_localAnchor2.SetV(this.m_prismatic2.m_localAnchor2);
            _loc5_ = this.m_prismatic2.§%R§();
         }
         this.§["0§ = param1.§-&§;
         this.§%!L§ = _loc4_ + this.§["0§ * _loc5_;
         this.§@_§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::9!>.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal:: N.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§@_§ * this.§ null§.§#3§.x,param1 * this.§@_§ * this.§ null§.§#3§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:b2Mat22 = b2internal:: N.m_xf.R;
         var _loc3_:Number = this.m_localAnchor1.x - b2internal:: N.m_sweep.localCenter.x;
         var _loc4_:Number = this.m_localAnchor1.y - b2internal:: N.m_sweep.localCenter.y;
         var _loc5_:Number = _loc2_.col1.x * _loc3_ + _loc2_.col2.x * _loc4_;
         _loc4_ = _loc2_.col1.y * _loc3_ + _loc2_.col2.y * _loc4_;
         _loc3_ = _loc5_;
         var _loc6_:Number = this.§@_§ * this.§ null§.§#3§.x;
         var _loc7_:Number = this.§@_§ * this.§ null§.§#3§.y;
         return param1 * (this.§@_§ * this.§ null§.§0!`§ - _loc3_ * _loc7_ + _loc4_ * _loc6_);
      }
      
      public function §^!4§() : Number
      {
         return this.§["0§;
      }
      
      public function § !$§(param1:Number) : void
      {
         this.§["0§ = param1;
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
         _loc4_ = b2internal::9!>;
         var _loc5_:b2Body = b2internal:: N;
         var _loc14_:Number = 0;
         this.§ null§.§2!n§();
         if(this.m_revolute1)
         {
            this.§ null§.§?P§ = -1;
            _loc14_ += _loc4_.§+%§;
         }
         else
         {
            _loc10_ = _loc2_.m_xf.R;
            _loc11_ = this.m_prismatic1.§<%§;
            _loc6_ = _loc10_.col1.x * _loc11_.x + _loc10_.col2.x * _loc11_.y;
            _loc7_ = _loc10_.col1.y * _loc11_.x + _loc10_.col2.y * _loc11_.y;
            _loc10_ = _loc4_.m_xf.R;
            _loc8_ = this.m_localAnchor1.x - _loc4_.m_sweep.localCenter.x;
            _loc9_ = this.m_localAnchor1.y - _loc4_.m_sweep.localCenter.y;
            _loc13_ = _loc10_.col1.x * _loc8_ + _loc10_.col2.x * _loc9_;
            _loc9_ = _loc10_.col1.y * _loc8_ + _loc10_.col2.y * _loc9_;
            _loc12_ = (_loc8_ = _loc13_) * _loc7_ - _loc9_ * _loc6_;
            this.§ null§.§-!I§.Set(-_loc6_,-_loc7_);
            this.§ null§.§?P§ = -_loc12_;
            _loc14_ += _loc4_.§1!#§ + _loc4_.§+%§ * _loc12_ * _loc12_;
         }
         if(this.m_revolute2)
         {
            this.§ null§.§0!`§ = -this.§["0§;
            _loc14_ += this.§["0§ * this.§["0§ * _loc5_.§+%§;
         }
         else
         {
            _loc10_ = _loc3_.m_xf.R;
            _loc11_ = this.m_prismatic2.§<%§;
            _loc6_ = _loc10_.col1.x * _loc11_.x + _loc10_.col2.x * _loc11_.y;
            _loc7_ = _loc10_.col1.y * _loc11_.x + _loc10_.col2.y * _loc11_.y;
            _loc10_ = _loc5_.m_xf.R;
            _loc8_ = this.m_localAnchor2.x - _loc5_.m_sweep.localCenter.x;
            _loc9_ = this.m_localAnchor2.y - _loc5_.m_sweep.localCenter.y;
            _loc13_ = _loc10_.col1.x * _loc8_ + _loc10_.col2.x * _loc9_;
            _loc9_ = _loc10_.col1.y * _loc8_ + _loc10_.col2.y * _loc9_;
            _loc12_ = (_loc8_ = _loc13_) * _loc7_ - _loc9_ * _loc6_;
            this.§ null§.§#3§.Set(-this.§["0§ * _loc6_,-this.§["0§ * _loc7_);
            this.§ null§.§0!`§ = -this.§["0§ * _loc12_;
            _loc14_ += this.§["0§ * this.§["0§ * (_loc5_.§1!#§ + _loc5_.§+%§ * _loc12_ * _loc12_);
         }
         this.§]B§ = _loc14_ > 0 ? Number(1 / _loc14_) : Number(0);
         if(param1.§0!_§)
         {
            _loc4_.§1N§.x += _loc4_.§1!#§ * this.§@_§ * this.§ null§.§-!I§.x;
            _loc4_.§1N§.y += _loc4_.§1!#§ * this.§@_§ * this.§ null§.§-!I§.y;
            _loc4_.m_angularVelocity += _loc4_.§+%§ * this.§@_§ * this.§ null§.§?P§;
            _loc5_.§1N§.x += _loc5_.§1!#§ * this.§@_§ * this.§ null§.§#3§.x;
            _loc5_.§1N§.y += _loc5_.§1!#§ * this.§@_§ * this.§ null§.§#3§.y;
            _loc5_.m_angularVelocity += _loc5_.§+%§ * this.§@_§ * this.§ null§.§0!`§;
         }
         else
         {
            this.§@_§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = b2internal::9!>;
         var _loc3_:b2Body = b2internal:: N;
         var _loc4_:Number = this.§ null§.§%!s§(_loc2_.§1N§,_loc2_.m_angularVelocity,_loc3_.§1N§,_loc3_.m_angularVelocity);
         var _loc5_:Number = -this.§]B§ * _loc4_;
         this.§@_§ += _loc5_;
         _loc2_.§1N§.x += _loc2_.§1!#§ * _loc5_ * this.§ null§.§-!I§.x;
         _loc2_.§1N§.y += _loc2_.§1!#§ * _loc5_ * this.§ null§.§-!I§.y;
         _loc2_.m_angularVelocity += _loc2_.§+%§ * _loc5_ * this.§ null§.§?P§;
         _loc3_.§1N§.x += _loc3_.§1!#§ * _loc5_ * this.§ null§.§#3§.x;
         _loc3_.§1N§.y += _loc3_.§1!#§ * _loc5_ * this.§ null§.§#3§.y;
         _loc3_.m_angularVelocity += _loc3_.§+%§ * _loc5_ * this.§ null§.§0!`§;
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc3_:b2Body = b2internal::9!>;
         var _loc4_:b2Body = b2internal:: N;
         if(this.m_revolute1)
         {
            _loc5_ = this.m_revolute1.§8!u§();
         }
         else
         {
            _loc5_ = this.m_prismatic1.§%R§();
         }
         if(this.m_revolute2)
         {
            _loc6_ = this.m_revolute2.§8!u§();
         }
         else
         {
            _loc6_ = this.m_prismatic2.§%R§();
         }
         var _loc7_:Number = this.§%!L§ - (_loc5_ + this.§["0§ * _loc6_);
         var _loc8_:Number = -this.§]B§ * _loc7_;
         _loc3_.m_sweep.c.x += _loc3_.§1!#§ * _loc8_ * this.§ null§.§-!I§.x;
         _loc3_.m_sweep.c.y += _loc3_.§1!#§ * _loc8_ * this.§ null§.§-!I§.y;
         _loc3_.m_sweep.a += _loc3_.§+%§ * _loc8_ * this.§ null§.§?P§;
         _loc4_.m_sweep.c.x += _loc4_.§1!#§ * _loc8_ * this.§ null§.§#3§.x;
         _loc4_.m_sweep.c.y += _loc4_.§1!#§ * _loc8_ * this.§ null§.§#3§.y;
         _loc4_.m_sweep.a += _loc4_.§+%§ * _loc8_ * this.§ null§.§0!`§;
         _loc3_.§@!5§();
         _loc4_.§@!5§();
         return 0 < b2Settings.b2_linearSlop;
      }
   }
}
