package §=;§
{
   import §+!g§.b2Settings;
   import §+!g§.b2internal;
   import §>!8§.b2Mat22;
   import §>!8§.b2Vec2;
   import §>!L§.b2Body;
   import §>!L§.b2TimeStep;
   
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
      
      private var §,H§:b2Jacobian;
      
      private var §,!U§:Number;
      
      private var §2Z§:Number;
      
      private var §@U§:Number;
      
      private var §;D§:Number;
      
      public function b2GearJoint(param1:b2GearJointDef)
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         this.m_groundAnchor1 = new b2Vec2();
         this.m_groundAnchor2 = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§,H§ = new b2Jacobian();
         super(param1);
         var _loc2_:int = param1.joint1.§2!5§;
         var _loc3_:int = param1.joint2.§2!5§;
         this.m_revolute1 = null;
         this.m_prismatic1 = null;
         this.m_revolute2 = null;
         this.m_prismatic2 = null;
         this.m_ground1 = param1.joint1.§0!M§();
         §-;§ = param1.joint1.§,n§();
         if(_loc2_ == b2Joint.e_revoluteJoint)
         {
            this.m_revolute1 = param1.joint1 as b2RevoluteJoint;
            this.m_groundAnchor1.SetV(this.m_revolute1.m_localAnchor1);
            this.m_localAnchor1.SetV(this.m_revolute1.m_localAnchor2);
            _loc4_ = this.m_revolute1.§4X§();
         }
         else
         {
            this.m_prismatic1 = param1.joint1 as b2PrismaticJoint;
            this.m_groundAnchor1.SetV(this.m_prismatic1.m_localAnchor1);
            this.m_localAnchor1.SetV(this.m_prismatic1.m_localAnchor2);
            _loc4_ = this.m_prismatic1.§]f§();
         }
         this.m_ground2 = param1.joint2.§0!M§();
         §`x§ = param1.joint2.§,n§();
         if(_loc3_ == b2Joint.e_revoluteJoint)
         {
            this.m_revolute2 = param1.joint2 as b2RevoluteJoint;
            this.m_groundAnchor2.SetV(this.m_revolute2.m_localAnchor1);
            this.m_localAnchor2.SetV(this.m_revolute2.m_localAnchor2);
            _loc5_ = this.m_revolute2.§4X§();
         }
         else
         {
            this.m_prismatic2 = param1.joint2 as b2PrismaticJoint;
            this.m_groundAnchor2.SetV(this.m_prismatic2.m_localAnchor1);
            this.m_localAnchor2.SetV(this.m_prismatic2.m_localAnchor2);
            _loc5_ = this.m_prismatic2.§]f§();
         }
         this.§2Z§ = param1.§@!4§;
         this.§,!U§ = _loc4_ + this.§2Z§ * _loc5_;
         this.§;D§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return §-;§.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return §`x§.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§;D§ * this.§,H§.§=!-§.x,param1 * this.§;D§ * this.§,H§.§=!-§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:b2Mat22 = §`x§.m_xf.R;
         var _loc3_:Number = this.m_localAnchor1.x - §`x§.m_sweep.localCenter.x;
         var _loc4_:Number = this.m_localAnchor1.y - §`x§.m_sweep.localCenter.y;
         var _loc5_:Number = _loc2_.col1.x * _loc3_ + _loc2_.col2.x * _loc4_;
         _loc4_ = _loc2_.col1.y * _loc3_ + _loc2_.col2.y * _loc4_;
         _loc3_ = _loc5_;
         var _loc6_:Number = this.§;D§ * this.§,H§.§=!-§.x;
         var _loc7_:Number = this.§;D§ * this.§,H§.§=!-§.y;
         return param1 * (this.§;D§ * this.§,H§.§9@§ - _loc3_ * _loc7_ + _loc4_ * _loc6_);
      }
      
      public function §`8§() : Number
      {
         return this.§2Z§;
      }
      
      public function §3!9§(param1:Number) : void
      {
         this.§2Z§ = param1;
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
         _loc4_ = §-;§;
         var _loc5_:b2Body = §`x§;
         var _loc14_:Number = 0;
         this.§,H§.§@!;§();
         if(this.m_revolute1)
         {
            this.§,H§.§2>§ = -1;
            _loc14_ += _loc4_.§1&§;
         }
         else
         {
            _loc10_ = _loc2_.m_xf.R;
            _loc11_ = this.m_prismatic1.§!-§;
            _loc6_ = _loc10_.col1.x * _loc11_.x + _loc10_.col2.x * _loc11_.y;
            _loc7_ = _loc10_.col1.y * _loc11_.x + _loc10_.col2.y * _loc11_.y;
            _loc10_ = _loc4_.m_xf.R;
            _loc8_ = this.m_localAnchor1.x - _loc4_.m_sweep.localCenter.x;
            _loc9_ = this.m_localAnchor1.y - _loc4_.m_sweep.localCenter.y;
            _loc13_ = _loc10_.col1.x * _loc8_ + _loc10_.col2.x * _loc9_;
            _loc9_ = _loc10_.col1.y * _loc8_ + _loc10_.col2.y * _loc9_;
            _loc8_ = _loc13_;
            _loc12_ = _loc8_ * _loc7_ - _loc9_ * _loc6_;
            this.§,H§.§-P§.Set(-_loc6_,-_loc7_);
            this.§,H§.§2>§ = -_loc12_;
            _loc14_ += _loc4_.§=n§ + _loc4_.§1&§ * _loc12_ * _loc12_;
         }
         if(this.m_revolute2)
         {
            this.§,H§.§9@§ = -this.§2Z§;
            _loc14_ += this.§2Z§ * this.§2Z§ * _loc5_.§1&§;
         }
         else
         {
            _loc10_ = _loc3_.m_xf.R;
            _loc11_ = this.m_prismatic2.§!-§;
            _loc6_ = _loc10_.col1.x * _loc11_.x + _loc10_.col2.x * _loc11_.y;
            _loc7_ = _loc10_.col1.y * _loc11_.x + _loc10_.col2.y * _loc11_.y;
            _loc10_ = _loc5_.m_xf.R;
            _loc8_ = this.m_localAnchor2.x - _loc5_.m_sweep.localCenter.x;
            _loc9_ = this.m_localAnchor2.y - _loc5_.m_sweep.localCenter.y;
            _loc13_ = _loc10_.col1.x * _loc8_ + _loc10_.col2.x * _loc9_;
            _loc9_ = _loc10_.col1.y * _loc8_ + _loc10_.col2.y * _loc9_;
            _loc8_ = _loc13_;
            _loc12_ = _loc8_ * _loc7_ - _loc9_ * _loc6_;
            this.§,H§.§=!-§.Set(-this.§2Z§ * _loc6_,-this.§2Z§ * _loc7_);
            this.§,H§.§9@§ = -this.§2Z§ * _loc12_;
            _loc14_ += this.§2Z§ * this.§2Z§ * (_loc5_.§=n§ + _loc5_.§1&§ * _loc12_ * _loc12_);
         }
         this.§@U§ = _loc14_ > 0 ? Number(1 / _loc14_) : Number(0);
         if(param1.§-K§)
         {
            _loc4_.§4!h§.x += _loc4_.§=n§ * this.§;D§ * this.§,H§.§-P§.x;
            _loc4_.§4!h§.y += _loc4_.§=n§ * this.§;D§ * this.§,H§.§-P§.y;
            _loc4_.m_angularVelocity += _loc4_.§1&§ * this.§;D§ * this.§,H§.§2>§;
            _loc5_.§4!h§.x += _loc5_.§=n§ * this.§;D§ * this.§,H§.§=!-§.x;
            _loc5_.§4!h§.y += _loc5_.§=n§ * this.§;D§ * this.§,H§.§=!-§.y;
            _loc5_.m_angularVelocity += _loc5_.§1&§ * this.§;D§ * this.§,H§.§9@§;
         }
         else
         {
            this.§;D§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = §-;§;
         var _loc3_:b2Body = §`x§;
         var _loc4_:Number = this.§,H§.§5!i§(_loc2_.§4!h§,_loc2_.m_angularVelocity,_loc3_.§4!h§,_loc3_.m_angularVelocity);
         var _loc5_:Number = -this.§@U§ * _loc4_;
         this.§;D§ += _loc5_;
         _loc2_.§4!h§.x += _loc2_.§=n§ * _loc5_ * this.§,H§.§-P§.x;
         _loc2_.§4!h§.y += _loc2_.§=n§ * _loc5_ * this.§,H§.§-P§.y;
         _loc2_.m_angularVelocity += _loc2_.§1&§ * _loc5_ * this.§,H§.§2>§;
         _loc3_.§4!h§.x += _loc3_.§=n§ * _loc5_ * this.§,H§.§=!-§.x;
         _loc3_.§4!h§.y += _loc3_.§=n§ * _loc5_ * this.§,H§.§=!-§.y;
         _loc3_.m_angularVelocity += _loc3_.§1&§ * _loc5_ * this.§,H§.§9@§;
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc3_:b2Body = §-;§;
         var _loc4_:b2Body = §`x§;
         if(this.m_revolute1)
         {
            _loc5_ = this.m_revolute1.§4X§();
         }
         else
         {
            _loc5_ = this.m_prismatic1.§]f§();
         }
         if(this.m_revolute2)
         {
            _loc6_ = this.m_revolute2.§4X§();
         }
         else
         {
            _loc6_ = this.m_prismatic2.§]f§();
         }
         var _loc7_:Number = this.§,!U§ - (_loc5_ + this.§2Z§ * _loc6_);
         var _loc8_:Number = -this.§@U§ * _loc7_;
         _loc3_.m_sweep.c.x += _loc3_.§=n§ * _loc8_ * this.§,H§.§-P§.x;
         _loc3_.m_sweep.c.y += _loc3_.§=n§ * _loc8_ * this.§,H§.§-P§.y;
         _loc3_.m_sweep.a += _loc3_.§1&§ * _loc8_ * this.§,H§.§2>§;
         _loc4_.m_sweep.c.x += _loc4_.§=n§ * _loc8_ * this.§,H§.§=!-§.x;
         _loc4_.m_sweep.c.y += _loc4_.§=n§ * _loc8_ * this.§,H§.§=!-§.y;
         _loc4_.m_sweep.a += _loc4_.§1&§ * _loc8_ * this.§,H§.§9@§;
         _loc3_.§"!_§();
         _loc4_.§"!_§();
         return 0 < b2Settings.b2_linearSlop;
      }
   }
}
