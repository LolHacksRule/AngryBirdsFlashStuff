package §&a§
{
   import §#V§.b2Body;
   import §#V§.b2TimeStep;
   import §3!m§.b2Settings;
   import §3!m§.b2internal;
   import §;%§.b2Mat22;
   import §;%§.b2Vec2;
   
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
      
      private var §#!=§:b2Jacobian;
      
      private var §?A§:Number;
      
      private var §=G§:Number;
      
      private var § ,§:Number;
      
      private var §<<§:Number;
      
      public function b2GearJoint(param1:b2GearJointDef)
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         this.m_groundAnchor1 = new b2Vec2();
         this.m_groundAnchor2 = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§#!=§ = new b2Jacobian();
         super(param1);
         var _loc2_:int = param1.joint1.§"_§;
         var _loc3_:int = param1.joint2.§"_§;
         this.m_revolute1 = null;
         this.m_prismatic1 = null;
         this.m_revolute2 = null;
         this.m_prismatic2 = null;
         this.m_ground1 = param1.joint1.§>!0§();
         §>0§ = param1.joint1.§&@§();
         if(_loc2_ == b2Joint.e_revoluteJoint)
         {
            this.m_revolute1 = param1.joint1 as b2RevoluteJoint;
            this.m_groundAnchor1.SetV(this.m_revolute1.m_localAnchor1);
            this.m_localAnchor1.SetV(this.m_revolute1.m_localAnchor2);
            _loc4_ = this.m_revolute1.§?O§();
         }
         else
         {
            this.m_prismatic1 = param1.joint1 as b2PrismaticJoint;
            this.m_groundAnchor1.SetV(this.m_prismatic1.m_localAnchor1);
            this.m_localAnchor1.SetV(this.m_prismatic1.m_localAnchor2);
            _loc4_ = this.m_prismatic1.§null §();
         }
         this.m_ground2 = param1.joint2.§>!0§();
         §[=§ = param1.joint2.§&@§();
         if(_loc3_ == b2Joint.e_revoluteJoint)
         {
            this.m_revolute2 = param1.joint2 as b2RevoluteJoint;
            this.m_groundAnchor2.SetV(this.m_revolute2.m_localAnchor1);
            this.m_localAnchor2.SetV(this.m_revolute2.m_localAnchor2);
            _loc5_ = this.m_revolute2.§?O§();
         }
         else
         {
            this.m_prismatic2 = param1.joint2 as b2PrismaticJoint;
            this.m_groundAnchor2.SetV(this.m_prismatic2.m_localAnchor1);
            this.m_localAnchor2.SetV(this.m_prismatic2.m_localAnchor2);
            _loc5_ = this.m_prismatic2.§null §();
         }
         this.§=G§ = param1.§ N§;
         this.§?A§ = _loc4_ + this.§=G§ * _loc5_;
         this.§<<§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::>0.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::[=.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§<<§ * this.§#!=§.§2>§.x,param1 * this.§<<§ * this.§#!=§.§2>§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:b2Mat22 = b2internal::[=.m_xf.R;
         var _loc3_:Number = this.m_localAnchor1.x - b2internal::[=.m_sweep.localCenter.x;
         var _loc4_:Number = this.m_localAnchor1.y - b2internal::[=.m_sweep.localCenter.y;
         var _loc5_:Number = _loc2_.col1.x * _loc3_ + _loc2_.col2.x * _loc4_;
         _loc4_ = _loc2_.col1.y * _loc3_ + _loc2_.col2.y * _loc4_;
         _loc3_ = _loc5_;
         var _loc6_:Number = this.§<<§ * this.§#!=§.§2>§.x;
         var _loc7_:Number = this.§<<§ * this.§#!=§.§2>§.y;
         return param1 * (this.§<<§ * this.§#!=§.§,$§ - _loc3_ * _loc7_ + _loc4_ * _loc6_);
      }
      
      public function §>@§() : Number
      {
         return this.§=G§;
      }
      
      public function §+!x§(param1:Number) : void
      {
         this.§=G§ = param1;
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
         _loc4_ = b2internal::>0;
         var _loc5_:b2Body = b2internal::[=;
         var _loc14_:Number = 0;
         this.§#!=§.§&!K§();
         if(this.m_revolute1)
         {
            this.§#!=§.§5!a§ = -1;
            _loc14_ += _loc4_.§,!o§;
         }
         else
         {
            _loc10_ = _loc2_.m_xf.R;
            _loc11_ = this.m_prismatic1.§!1§;
            _loc6_ = _loc10_.col1.x * _loc11_.x + _loc10_.col2.x * _loc11_.y;
            _loc7_ = _loc10_.col1.y * _loc11_.x + _loc10_.col2.y * _loc11_.y;
            _loc10_ = _loc4_.m_xf.R;
            _loc8_ = this.m_localAnchor1.x - _loc4_.m_sweep.localCenter.x;
            _loc9_ = this.m_localAnchor1.y - _loc4_.m_sweep.localCenter.y;
            _loc13_ = _loc10_.col1.x * _loc8_ + _loc10_.col2.x * _loc9_;
            _loc9_ = _loc10_.col1.y * _loc8_ + _loc10_.col2.y * _loc9_;
            _loc12_ = (_loc8_ = _loc13_) * _loc7_ - _loc9_ * _loc6_;
            this.§#!=§.§1E§.Set(-_loc6_,-_loc7_);
            this.§#!=§.§5!a§ = -_loc12_;
            _loc14_ += _loc4_.§-7§ + _loc4_.§,!o§ * _loc12_ * _loc12_;
         }
         if(this.m_revolute2)
         {
            this.§#!=§.§,$§ = -this.§=G§;
            _loc14_ += this.§=G§ * this.§=G§ * _loc5_.§,!o§;
         }
         else
         {
            _loc10_ = _loc3_.m_xf.R;
            _loc11_ = this.m_prismatic2.§!1§;
            _loc6_ = _loc10_.col1.x * _loc11_.x + _loc10_.col2.x * _loc11_.y;
            _loc7_ = _loc10_.col1.y * _loc11_.x + _loc10_.col2.y * _loc11_.y;
            _loc10_ = _loc5_.m_xf.R;
            _loc8_ = this.m_localAnchor2.x - _loc5_.m_sweep.localCenter.x;
            _loc9_ = this.m_localAnchor2.y - _loc5_.m_sweep.localCenter.y;
            _loc13_ = _loc10_.col1.x * _loc8_ + _loc10_.col2.x * _loc9_;
            _loc9_ = _loc10_.col1.y * _loc8_ + _loc10_.col2.y * _loc9_;
            _loc12_ = (_loc8_ = _loc13_) * _loc7_ - _loc9_ * _loc6_;
            this.§#!=§.§2>§.Set(-this.§=G§ * _loc6_,-this.§=G§ * _loc7_);
            this.§#!=§.§,$§ = -this.§=G§ * _loc12_;
            _loc14_ += this.§=G§ * this.§=G§ * (_loc5_.§-7§ + _loc5_.§,!o§ * _loc12_ * _loc12_);
         }
         this.§ ,§ = _loc14_ > 0 ? Number(1 / _loc14_) : Number(0);
         if(param1.§#!P§)
         {
            _loc4_.§%!V§.x += _loc4_.§-7§ * this.§<<§ * this.§#!=§.§1E§.x;
            _loc4_.§%!V§.y += _loc4_.§-7§ * this.§<<§ * this.§#!=§.§1E§.y;
            _loc4_.m_angularVelocity += _loc4_.§,!o§ * this.§<<§ * this.§#!=§.§5!a§;
            _loc5_.§%!V§.x += _loc5_.§-7§ * this.§<<§ * this.§#!=§.§2>§.x;
            _loc5_.§%!V§.y += _loc5_.§-7§ * this.§<<§ * this.§#!=§.§2>§.y;
            _loc5_.m_angularVelocity += _loc5_.§,!o§ * this.§<<§ * this.§#!=§.§,$§;
         }
         else
         {
            this.§<<§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = b2internal::>0;
         var _loc3_:b2Body = b2internal::[=;
         var _loc4_:Number = this.§#!=§.§2!<§(_loc2_.§%!V§,_loc2_.m_angularVelocity,_loc3_.§%!V§,_loc3_.m_angularVelocity);
         var _loc5_:Number = -this.§ ,§ * _loc4_;
         this.§<<§ += _loc5_;
         _loc2_.§%!V§.x += _loc2_.§-7§ * _loc5_ * this.§#!=§.§1E§.x;
         _loc2_.§%!V§.y += _loc2_.§-7§ * _loc5_ * this.§#!=§.§1E§.y;
         _loc2_.m_angularVelocity += _loc2_.§,!o§ * _loc5_ * this.§#!=§.§5!a§;
         _loc3_.§%!V§.x += _loc3_.§-7§ * _loc5_ * this.§#!=§.§2>§.x;
         _loc3_.§%!V§.y += _loc3_.§-7§ * _loc5_ * this.§#!=§.§2>§.y;
         _loc3_.m_angularVelocity += _loc3_.§,!o§ * _loc5_ * this.§#!=§.§,$§;
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc3_:b2Body = b2internal::>0;
         var _loc4_:b2Body = b2internal::[=;
         if(this.m_revolute1)
         {
            _loc5_ = this.m_revolute1.§?O§();
         }
         else
         {
            _loc5_ = this.m_prismatic1.§null §();
         }
         if(this.m_revolute2)
         {
            _loc6_ = this.m_revolute2.§?O§();
         }
         else
         {
            _loc6_ = this.m_prismatic2.§null §();
         }
         var _loc7_:Number = this.§?A§ - (_loc5_ + this.§=G§ * _loc6_);
         var _loc8_:Number = -this.§ ,§ * _loc7_;
         _loc3_.m_sweep.c.x += _loc3_.§-7§ * _loc8_ * this.§#!=§.§1E§.x;
         _loc3_.m_sweep.c.y += _loc3_.§-7§ * _loc8_ * this.§#!=§.§1E§.y;
         _loc3_.m_sweep.a += _loc3_.§,!o§ * _loc8_ * this.§#!=§.§5!a§;
         _loc4_.m_sweep.c.x += _loc4_.§-7§ * _loc8_ * this.§#!=§.§2>§.x;
         _loc4_.m_sweep.c.y += _loc4_.§-7§ * _loc8_ * this.§#!=§.§2>§.y;
         _loc4_.m_sweep.a += _loc4_.§,!o§ * _loc8_ * this.§#!=§.§,$§;
         _loc3_.§#3§();
         _loc4_.§#3§();
         return 0 < b2Settings.b2_linearSlop;
      }
   }
}
