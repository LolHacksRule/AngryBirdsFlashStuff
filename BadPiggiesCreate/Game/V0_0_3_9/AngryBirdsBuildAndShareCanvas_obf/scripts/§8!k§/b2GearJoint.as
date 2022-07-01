package §8!k§
{
   import §-!G§.b2Mat22;
   import §-!G§.b2Vec2;
   import §7"'§.b2Settings;
   import §7"'§.b2internal;
   import §=9§.b2Body;
   import §=9§.b2TimeStep;
   
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
      
      private var §%",§:b2Jacobian;
      
      private var §7?§:Number;
      
      private var §3"5§:Number;
      
      private var §9!>§:Number;
      
      private var §8!u§:Number;
      
      public function b2GearJoint(param1:b2GearJointDef)
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         this.m_groundAnchor1 = new b2Vec2();
         this.m_groundAnchor2 = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§%",§ = new b2Jacobian();
         super(param1);
         var _loc2_:int = param1.joint1.§!!y§;
         var _loc3_:int = param1.joint2.§!!y§;
         this.m_revolute1 = null;
         this.m_prismatic1 = null;
         this.m_revolute2 = null;
         this.m_prismatic2 = null;
         this.m_ground1 = param1.joint1.§="2§();
         §#U§ = param1.joint1.§]C§();
         if(_loc2_ == b2Joint.e_revoluteJoint)
         {
            this.m_revolute1 = param1.joint1 as b2RevoluteJoint;
            this.m_groundAnchor1.SetV(this.m_revolute1.m_localAnchor1);
            this.m_localAnchor1.SetV(this.m_revolute1.m_localAnchor2);
            _loc4_ = this.m_revolute1.§&"-§();
         }
         else
         {
            this.m_prismatic1 = param1.joint1 as b2PrismaticJoint;
            this.m_groundAnchor1.SetV(this.m_prismatic1.m_localAnchor1);
            this.m_localAnchor1.SetV(this.m_prismatic1.m_localAnchor2);
            _loc4_ = this.m_prismatic1.§;E§();
         }
         this.m_ground2 = param1.joint2.§="2§();
         §&W§ = param1.joint2.§]C§();
         if(_loc3_ == b2Joint.e_revoluteJoint)
         {
            this.m_revolute2 = param1.joint2 as b2RevoluteJoint;
            this.m_groundAnchor2.SetV(this.m_revolute2.m_localAnchor1);
            this.m_localAnchor2.SetV(this.m_revolute2.m_localAnchor2);
            _loc5_ = this.m_revolute2.§&"-§();
         }
         else
         {
            this.m_prismatic2 = param1.joint2 as b2PrismaticJoint;
            this.m_groundAnchor2.SetV(this.m_prismatic2.m_localAnchor1);
            this.m_localAnchor2.SetV(this.m_prismatic2.m_localAnchor2);
            _loc5_ = this.m_prismatic2.§;E§();
         }
         this.§3"5§ = param1.§=u§;
         this.§7?§ = _loc4_ + this.§3"5§ * _loc5_;
         this.§8!u§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::#U.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::&W.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§8!u§ * this.§%",§.§ l§.x,param1 * this.§8!u§ * this.§%",§.§ l§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:b2Mat22 = b2internal::&W.m_xf.R;
         var _loc3_:Number = this.m_localAnchor1.x - b2internal::&W.m_sweep.localCenter.x;
         var _loc4_:Number = this.m_localAnchor1.y - b2internal::&W.m_sweep.localCenter.y;
         var _loc5_:Number = _loc2_.col1.x * _loc3_ + _loc2_.col2.x * _loc4_;
         _loc4_ = _loc2_.col1.y * _loc3_ + _loc2_.col2.y * _loc4_;
         _loc3_ = _loc5_;
         var _loc6_:Number = this.§8!u§ * this.§%",§.§ l§.x;
         var _loc7_:Number = this.§8!u§ * this.§%",§.§ l§.y;
         return param1 * (this.§8!u§ * this.§%",§.§=! § - _loc3_ * _loc7_ + _loc4_ * _loc6_);
      }
      
      public function §]!^§() : Number
      {
         return this.§3"5§;
      }
      
      public function §0!U§(param1:Number) : void
      {
         this.§3"5§ = param1;
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
         _loc4_ = b2internal::#U;
         var _loc5_:b2Body = b2internal::&W;
         var _loc14_:Number = 0;
         this.§%",§.§7!@§();
         if(this.m_revolute1)
         {
            this.§%",§.§,!<§ = -1;
            _loc14_ += _loc4_.§!!o§;
         }
         else
         {
            _loc10_ = _loc2_.m_xf.R;
            _loc11_ = this.m_prismatic1.§]B§;
            _loc6_ = _loc10_.col1.x * _loc11_.x + _loc10_.col2.x * _loc11_.y;
            _loc7_ = _loc10_.col1.y * _loc11_.x + _loc10_.col2.y * _loc11_.y;
            _loc10_ = _loc4_.m_xf.R;
            _loc8_ = this.m_localAnchor1.x - _loc4_.m_sweep.localCenter.x;
            _loc9_ = this.m_localAnchor1.y - _loc4_.m_sweep.localCenter.y;
            _loc13_ = _loc10_.col1.x * _loc8_ + _loc10_.col2.x * _loc9_;
            _loc9_ = _loc10_.col1.y * _loc8_ + _loc10_.col2.y * _loc9_;
            _loc12_ = (_loc8_ = _loc13_) * _loc7_ - _loc9_ * _loc6_;
            this.§%",§.§<!9§.Set(-_loc6_,-_loc7_);
            this.§%",§.§,!<§ = -_loc12_;
            _loc14_ += _loc4_.§@"!§ + _loc4_.§!!o§ * _loc12_ * _loc12_;
         }
         if(this.m_revolute2)
         {
            this.§%",§.§=! § = -this.§3"5§;
            _loc14_ += this.§3"5§ * this.§3"5§ * _loc5_.§!!o§;
         }
         else
         {
            _loc10_ = _loc3_.m_xf.R;
            _loc11_ = this.m_prismatic2.§]B§;
            _loc6_ = _loc10_.col1.x * _loc11_.x + _loc10_.col2.x * _loc11_.y;
            _loc7_ = _loc10_.col1.y * _loc11_.x + _loc10_.col2.y * _loc11_.y;
            _loc10_ = _loc5_.m_xf.R;
            _loc8_ = this.m_localAnchor2.x - _loc5_.m_sweep.localCenter.x;
            _loc9_ = this.m_localAnchor2.y - _loc5_.m_sweep.localCenter.y;
            _loc13_ = _loc10_.col1.x * _loc8_ + _loc10_.col2.x * _loc9_;
            _loc9_ = _loc10_.col1.y * _loc8_ + _loc10_.col2.y * _loc9_;
            _loc12_ = (_loc8_ = _loc13_) * _loc7_ - _loc9_ * _loc6_;
            this.§%",§.§ l§.Set(-this.§3"5§ * _loc6_,-this.§3"5§ * _loc7_);
            this.§%",§.§=! § = -this.§3"5§ * _loc12_;
            _loc14_ += this.§3"5§ * this.§3"5§ * (_loc5_.§@"!§ + _loc5_.§!!o§ * _loc12_ * _loc12_);
         }
         this.§9!>§ = _loc14_ > 0 ? Number(1 / _loc14_) : Number(0);
         if(param1.§2!z§)
         {
            _loc4_.§?!@§.x += _loc4_.§@"!§ * this.§8!u§ * this.§%",§.§<!9§.x;
            _loc4_.§?!@§.y += _loc4_.§@"!§ * this.§8!u§ * this.§%",§.§<!9§.y;
            _loc4_.m_angularVelocity += _loc4_.§!!o§ * this.§8!u§ * this.§%",§.§,!<§;
            _loc5_.§?!@§.x += _loc5_.§@"!§ * this.§8!u§ * this.§%",§.§ l§.x;
            _loc5_.§?!@§.y += _loc5_.§@"!§ * this.§8!u§ * this.§%",§.§ l§.y;
            _loc5_.m_angularVelocity += _loc5_.§!!o§ * this.§8!u§ * this.§%",§.§=! §;
         }
         else
         {
            this.§8!u§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = b2internal::#U;
         var _loc3_:b2Body = b2internal::&W;
         var _loc4_:Number = this.§%",§.§#!b§(_loc2_.§?!@§,_loc2_.m_angularVelocity,_loc3_.§?!@§,_loc3_.m_angularVelocity);
         var _loc5_:Number = -this.§9!>§ * _loc4_;
         this.§8!u§ += _loc5_;
         _loc2_.§?!@§.x += _loc2_.§@"!§ * _loc5_ * this.§%",§.§<!9§.x;
         _loc2_.§?!@§.y += _loc2_.§@"!§ * _loc5_ * this.§%",§.§<!9§.y;
         _loc2_.m_angularVelocity += _loc2_.§!!o§ * _loc5_ * this.§%",§.§,!<§;
         _loc3_.§?!@§.x += _loc3_.§@"!§ * _loc5_ * this.§%",§.§ l§.x;
         _loc3_.§?!@§.y += _loc3_.§@"!§ * _loc5_ * this.§%",§.§ l§.y;
         _loc3_.m_angularVelocity += _loc3_.§!!o§ * _loc5_ * this.§%",§.§=! §;
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc3_:b2Body = b2internal::#U;
         var _loc4_:b2Body = b2internal::&W;
         if(this.m_revolute1)
         {
            _loc5_ = this.m_revolute1.§&"-§();
         }
         else
         {
            _loc5_ = this.m_prismatic1.§;E§();
         }
         if(this.m_revolute2)
         {
            _loc6_ = this.m_revolute2.§&"-§();
         }
         else
         {
            _loc6_ = this.m_prismatic2.§;E§();
         }
         var _loc7_:Number = this.§7?§ - (_loc5_ + this.§3"5§ * _loc6_);
         var _loc8_:Number = -this.§9!>§ * _loc7_;
         _loc3_.m_sweep.c.x += _loc3_.§@"!§ * _loc8_ * this.§%",§.§<!9§.x;
         _loc3_.m_sweep.c.y += _loc3_.§@"!§ * _loc8_ * this.§%",§.§<!9§.y;
         _loc3_.m_sweep.a += _loc3_.§!!o§ * _loc8_ * this.§%",§.§,!<§;
         _loc4_.m_sweep.c.x += _loc4_.§@"!§ * _loc8_ * this.§%",§.§ l§.x;
         _loc4_.m_sweep.c.y += _loc4_.§@"!§ * _loc8_ * this.§%",§.§ l§.y;
         _loc4_.m_sweep.a += _loc4_.§!!o§ * _loc8_ * this.§%",§.§=! §;
         _loc3_.§+"+§();
         _loc4_.§+"+§();
         return 0 < b2Settings.b2_linearSlop;
      }
   }
}
