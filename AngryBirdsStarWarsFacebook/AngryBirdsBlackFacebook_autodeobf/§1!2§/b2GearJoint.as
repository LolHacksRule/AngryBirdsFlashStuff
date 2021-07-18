package §1!2§
{
   import §+#$§.b2Body;
   import §+#$§.b2TimeStep;
   import §5"i§.b2Settings;
   import §5"i§.b2internal;
   import §[R§.b2Mat22;
   import §[R§.b2Vec2;
   
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
      
      private var §'!V§:b2Jacobian;
      
      private var §-"§:Number;
      
      private var §-_§:Number;
      
      private var §9#6§:Number;
      
      private var §##,§:Number;
      
      public function b2GearJoint(param1:b2GearJointDef)
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         this.m_groundAnchor1 = new b2Vec2();
         this.m_groundAnchor2 = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§'!V§ = new b2Jacobian();
         super(param1);
         var _loc2_:int = param1.joint1.§%!9§;
         var _loc3_:int = param1.joint2.§%!9§;
         this.m_revolute1 = null;
         this.m_prismatic1 = null;
         this.m_revolute2 = null;
         this.m_prismatic2 = null;
         this.m_ground1 = param1.joint1.§;!`§();
         §2!g§ = param1.joint1.§8!'§();
         if(_loc2_ == b2Joint.e_revoluteJoint)
         {
            this.m_revolute1 = param1.joint1 as b2RevoluteJoint;
            this.m_groundAnchor1.SetV(this.m_revolute1.m_localAnchor1);
            this.m_localAnchor1.SetV(this.m_revolute1.m_localAnchor2);
            _loc4_ = this.m_revolute1.§4"F§();
         }
         else
         {
            this.m_prismatic1 = param1.joint1 as b2PrismaticJoint;
            this.m_groundAnchor1.SetV(this.m_prismatic1.m_localAnchor1);
            this.m_localAnchor1.SetV(this.m_prismatic1.m_localAnchor2);
            _loc4_ = this.m_prismatic1.§##2§();
         }
         this.m_ground2 = param1.joint2.§;!`§();
         § "z§ = param1.joint2.§8!'§();
         if(_loc3_ == b2Joint.e_revoluteJoint)
         {
            this.m_revolute2 = param1.joint2 as b2RevoluteJoint;
            this.m_groundAnchor2.SetV(this.m_revolute2.m_localAnchor1);
            this.m_localAnchor2.SetV(this.m_revolute2.m_localAnchor2);
            _loc5_ = this.m_revolute2.§4"F§();
         }
         else
         {
            this.m_prismatic2 = param1.joint2 as b2PrismaticJoint;
            this.m_groundAnchor2.SetV(this.m_prismatic2.m_localAnchor1);
            this.m_localAnchor2.SetV(this.m_prismatic2.m_localAnchor2);
            _loc5_ = this.m_prismatic2.§##2§();
         }
         this.§-_§ = param1.§@!%§;
         this.§-"§ = _loc4_ + this.§-_§ * _loc5_;
         this.§##,§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::2!g.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal:: "z.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§##,§ * this.§'!V§.§`#C§.x,param1 * this.§##,§ * this.§'!V§.§`#C§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:b2Mat22 = b2internal:: "z.m_xf.R;
         var _loc3_:Number = this.m_localAnchor1.x - b2internal:: "z.m_sweep.localCenter.x;
         var _loc4_:Number = this.m_localAnchor1.y - b2internal:: "z.m_sweep.localCenter.y;
         var _loc5_:Number = _loc2_.col1.x * _loc3_ + _loc2_.col2.x * _loc4_;
         _loc4_ = _loc2_.col1.y * _loc3_ + _loc2_.col2.y * _loc4_;
         _loc3_ = _loc5_;
         var _loc6_:Number = this.§##,§ * this.§'!V§.§`#C§.x;
         var _loc7_:Number = this.§##,§ * this.§'!V§.§`#C§.y;
         return param1 * (this.§##,§ * this.§'!V§.§5V§ - _loc3_ * _loc7_ + _loc4_ * _loc6_);
      }
      
      public function § #U§() : Number
      {
         return this.§-_§;
      }
      
      public function §&#]§(param1:Number) : void
      {
         this.§-_§ = param1;
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
         _loc4_ = b2internal::2!g;
         var _loc5_:b2Body = b2internal:: "z;
         var _loc14_:Number = 0;
         this.§'!V§.§&"Q§();
         if(this.m_revolute1)
         {
            this.§'!V§.§'[§ = -1;
            _loc14_ += _loc4_.§3"y§;
         }
         else
         {
            _loc10_ = _loc2_.m_xf.R;
            _loc11_ = this.m_prismatic1.§"j§;
            _loc6_ = _loc10_.col1.x * _loc11_.x + _loc10_.col2.x * _loc11_.y;
            _loc7_ = _loc10_.col1.y * _loc11_.x + _loc10_.col2.y * _loc11_.y;
            _loc10_ = _loc4_.m_xf.R;
            _loc8_ = this.m_localAnchor1.x - _loc4_.m_sweep.localCenter.x;
            _loc9_ = this.m_localAnchor1.y - _loc4_.m_sweep.localCenter.y;
            _loc13_ = _loc10_.col1.x * _loc8_ + _loc10_.col2.x * _loc9_;
            _loc9_ = _loc10_.col1.y * _loc8_ + _loc10_.col2.y * _loc9_;
            _loc12_ = (_loc8_ = _loc13_) * _loc7_ - _loc9_ * _loc6_;
            this.§'!V§.§43§.Set(-_loc6_,-_loc7_);
            this.§'!V§.§'[§ = -_loc12_;
            _loc14_ += _loc4_.§3#>§ + _loc4_.§3"y§ * _loc12_ * _loc12_;
         }
         if(this.m_revolute2)
         {
            this.§'!V§.§5V§ = -this.§-_§;
            _loc14_ += this.§-_§ * this.§-_§ * _loc5_.§3"y§;
         }
         else
         {
            _loc10_ = _loc3_.m_xf.R;
            _loc11_ = this.m_prismatic2.§"j§;
            _loc6_ = _loc10_.col1.x * _loc11_.x + _loc10_.col2.x * _loc11_.y;
            _loc7_ = _loc10_.col1.y * _loc11_.x + _loc10_.col2.y * _loc11_.y;
            _loc10_ = _loc5_.m_xf.R;
            _loc8_ = this.m_localAnchor2.x - _loc5_.m_sweep.localCenter.x;
            _loc9_ = this.m_localAnchor2.y - _loc5_.m_sweep.localCenter.y;
            _loc13_ = _loc10_.col1.x * _loc8_ + _loc10_.col2.x * _loc9_;
            _loc9_ = _loc10_.col1.y * _loc8_ + _loc10_.col2.y * _loc9_;
            _loc12_ = (_loc8_ = _loc13_) * _loc7_ - _loc9_ * _loc6_;
            this.§'!V§.§`#C§.Set(-this.§-_§ * _loc6_,-this.§-_§ * _loc7_);
            this.§'!V§.§5V§ = -this.§-_§ * _loc12_;
            _loc14_ += this.§-_§ * this.§-_§ * (_loc5_.§3#>§ + _loc5_.§3"y§ * _loc12_ * _loc12_);
         }
         this.§9#6§ = _loc14_ > 0 ? Number(1 / _loc14_) : Number(0);
         if(param1.§-'§)
         {
            _loc4_.§ #`§.x += _loc4_.§3#>§ * this.§##,§ * this.§'!V§.§43§.x;
            _loc4_.§ #`§.y += _loc4_.§3#>§ * this.§##,§ * this.§'!V§.§43§.y;
            _loc4_.m_angularVelocity += _loc4_.§3"y§ * this.§##,§ * this.§'!V§.§'[§;
            _loc5_.§ #`§.x += _loc5_.§3#>§ * this.§##,§ * this.§'!V§.§`#C§.x;
            _loc5_.§ #`§.y += _loc5_.§3#>§ * this.§##,§ * this.§'!V§.§`#C§.y;
            _loc5_.m_angularVelocity += _loc5_.§3"y§ * this.§##,§ * this.§'!V§.§5V§;
         }
         else
         {
            this.§##,§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = b2internal::2!g;
         var _loc3_:b2Body = b2internal:: "z;
         var _loc4_:Number = this.§'!V§.§1#7§(_loc2_.§ #`§,_loc2_.m_angularVelocity,_loc3_.§ #`§,_loc3_.m_angularVelocity);
         var _loc5_:Number = -this.§9#6§ * _loc4_;
         this.§##,§ += _loc5_;
         _loc2_.§ #`§.x += _loc2_.§3#>§ * _loc5_ * this.§'!V§.§43§.x;
         _loc2_.§ #`§.y += _loc2_.§3#>§ * _loc5_ * this.§'!V§.§43§.y;
         _loc2_.m_angularVelocity += _loc2_.§3"y§ * _loc5_ * this.§'!V§.§'[§;
         _loc3_.§ #`§.x += _loc3_.§3#>§ * _loc5_ * this.§'!V§.§`#C§.x;
         _loc3_.§ #`§.y += _loc3_.§3#>§ * _loc5_ * this.§'!V§.§`#C§.y;
         _loc3_.m_angularVelocity += _loc3_.§3"y§ * _loc5_ * this.§'!V§.§5V§;
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc3_:b2Body = b2internal::2!g;
         var _loc4_:b2Body = b2internal:: "z;
         if(this.m_revolute1)
         {
            _loc5_ = this.m_revolute1.§4"F§();
         }
         else
         {
            _loc5_ = this.m_prismatic1.§##2§();
         }
         if(this.m_revolute2)
         {
            _loc6_ = this.m_revolute2.§4"F§();
         }
         else
         {
            _loc6_ = this.m_prismatic2.§##2§();
         }
         var _loc7_:Number = this.§-"§ - (_loc5_ + this.§-_§ * _loc6_);
         var _loc8_:Number = -this.§9#6§ * _loc7_;
         _loc3_.m_sweep.c.x += _loc3_.§3#>§ * _loc8_ * this.§'!V§.§43§.x;
         _loc3_.m_sweep.c.y += _loc3_.§3#>§ * _loc8_ * this.§'!V§.§43§.y;
         _loc3_.m_sweep.a += _loc3_.§3"y§ * _loc8_ * this.§'!V§.§'[§;
         _loc4_.m_sweep.c.x += _loc4_.§3#>§ * _loc8_ * this.§'!V§.§`#C§.x;
         _loc4_.m_sweep.c.y += _loc4_.§3#>§ * _loc8_ * this.§'!V§.§`#C§.y;
         _loc4_.m_sweep.a += _loc4_.§3"y§ * _loc8_ * this.§'!V§.§5V§;
         _loc3_.§`"a§();
         _loc4_.§`"a§();
         return 0 < b2Settings.b2_linearSlop;
      }
   }
}
