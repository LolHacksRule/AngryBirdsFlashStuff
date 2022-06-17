package §5v§
{
   import §1#F§.b2Settings;
   import §1#F§.b2internal;
   import §3#h§.b2Body;
   import §3#h§.b2TimeStep;
   import §6!R§.b2Mat22;
   import §6!R§.b2Vec2;
   
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
      
      private var §'"T§:b2Jacobian;
      
      private var §#D§:Number;
      
      private var §5#H§:Number;
      
      private var §!#v§:Number;
      
      private var §]#N§:Number;
      
      public function b2GearJoint(param1:b2GearJointDef)
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         this.m_groundAnchor1 = new b2Vec2();
         this.m_groundAnchor2 = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§'"T§ = new b2Jacobian();
         super(param1);
         var _loc2_:int = param1.joint1.§ "u§;
         var _loc3_:int = param1.joint2.§ "u§;
         this.m_revolute1 = null;
         this.m_prismatic1 = null;
         this.m_revolute2 = null;
         this.m_prismatic2 = null;
         this.m_ground1 = param1.joint1.§""V§();
         § ?§ = param1.joint1.§""?§();
         if(_loc2_ == b2Joint.e_revoluteJoint)
         {
            this.m_revolute1 = param1.joint1 as b2RevoluteJoint;
            this.m_groundAnchor1.SetV(this.m_revolute1.m_localAnchor1);
            this.m_localAnchor1.SetV(this.m_revolute1.m_localAnchor2);
            _loc4_ = this.m_revolute1.§<U§();
         }
         else
         {
            this.m_prismatic1 = param1.joint1 as b2PrismaticJoint;
            this.m_groundAnchor1.SetV(this.m_prismatic1.m_localAnchor1);
            this.m_localAnchor1.SetV(this.m_prismatic1.m_localAnchor2);
            _loc4_ = this.m_prismatic1.§-#k§();
         }
         this.m_ground2 = param1.joint2.§""V§();
         § #q§ = param1.joint2.§""?§();
         if(_loc3_ == b2Joint.e_revoluteJoint)
         {
            this.m_revolute2 = param1.joint2 as b2RevoluteJoint;
            this.m_groundAnchor2.SetV(this.m_revolute2.m_localAnchor1);
            this.m_localAnchor2.SetV(this.m_revolute2.m_localAnchor2);
            _loc5_ = this.m_revolute2.§<U§();
         }
         else
         {
            this.m_prismatic2 = param1.joint2 as b2PrismaticJoint;
            this.m_groundAnchor2.SetV(this.m_prismatic2.m_localAnchor1);
            this.m_localAnchor2.SetV(this.m_prismatic2.m_localAnchor2);
            _loc5_ = this.m_prismatic2.§-#k§();
         }
         this.§5#H§ = param1.§>#K§;
         this.§#D§ = _loc4_ + this.§5#H§ * _loc5_;
         this.§]#N§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal:: ?.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal:: #q.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§]#N§ * this.§'"T§.§`#m§.x,param1 * this.§]#N§ * this.§'"T§.§`#m§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:b2Mat22 = b2internal:: #q.m_xf.R;
         var _loc3_:Number = this.m_localAnchor1.x - b2internal:: #q.m_sweep.localCenter.x;
         var _loc4_:Number = this.m_localAnchor1.y - b2internal:: #q.m_sweep.localCenter.y;
         var _loc5_:Number = _loc2_.col1.x * _loc3_ + _loc2_.col2.x * _loc4_;
         _loc4_ = _loc2_.col1.y * _loc3_ + _loc2_.col2.y * _loc4_;
         _loc3_ = _loc5_;
         var _loc6_:Number = this.§]#N§ * this.§'"T§.§`#m§.x;
         var _loc7_:Number = this.§]#N§ * this.§'"T§.§`#m§.y;
         return param1 * (this.§]#N§ * this.§'"T§.§!#l§ - _loc3_ * _loc7_ + _loc4_ * _loc6_);
      }
      
      public function § !R§() : Number
      {
         return this.§5#H§;
      }
      
      public function §,#f§(param1:Number) : void
      {
         this.§5#H§ = param1;
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
         _loc4_ = b2internal:: ?;
         var _loc5_:b2Body = b2internal:: #q;
         var _loc14_:Number = 0;
         this.§'"T§.§%"N§();
         if(this.m_revolute1)
         {
            this.§'"T§.§>$=§ = -1;
            _loc14_ += _loc4_.§!!!§;
         }
         else
         {
            _loc10_ = _loc2_.m_xf.R;
            _loc11_ = this.m_prismatic1.§',§;
            _loc6_ = _loc10_.col1.x * _loc11_.x + _loc10_.col2.x * _loc11_.y;
            _loc7_ = _loc10_.col1.y * _loc11_.x + _loc10_.col2.y * _loc11_.y;
            _loc10_ = _loc4_.m_xf.R;
            _loc8_ = this.m_localAnchor1.x - _loc4_.m_sweep.localCenter.x;
            _loc9_ = this.m_localAnchor1.y - _loc4_.m_sweep.localCenter.y;
            _loc13_ = _loc10_.col1.x * _loc8_ + _loc10_.col2.x * _loc9_;
            _loc9_ = _loc10_.col1.y * _loc8_ + _loc10_.col2.y * _loc9_;
            _loc12_ = (_loc8_ = _loc13_) * _loc7_ - _loc9_ * _loc6_;
            this.§'"T§.§do §.Set(-_loc6_,-_loc7_);
            this.§'"T§.§>$=§ = -_loc12_;
            _loc14_ += _loc4_.§0#d§ + _loc4_.§!!!§ * _loc12_ * _loc12_;
         }
         if(this.m_revolute2)
         {
            this.§'"T§.§!#l§ = -this.§5#H§;
            _loc14_ += this.§5#H§ * this.§5#H§ * _loc5_.§!!!§;
         }
         else
         {
            _loc10_ = _loc3_.m_xf.R;
            _loc11_ = this.m_prismatic2.§',§;
            _loc6_ = _loc10_.col1.x * _loc11_.x + _loc10_.col2.x * _loc11_.y;
            _loc7_ = _loc10_.col1.y * _loc11_.x + _loc10_.col2.y * _loc11_.y;
            _loc10_ = _loc5_.m_xf.R;
            _loc8_ = this.m_localAnchor2.x - _loc5_.m_sweep.localCenter.x;
            _loc9_ = this.m_localAnchor2.y - _loc5_.m_sweep.localCenter.y;
            _loc13_ = _loc10_.col1.x * _loc8_ + _loc10_.col2.x * _loc9_;
            _loc9_ = _loc10_.col1.y * _loc8_ + _loc10_.col2.y * _loc9_;
            _loc12_ = (_loc8_ = _loc13_) * _loc7_ - _loc9_ * _loc6_;
            this.§'"T§.§`#m§.Set(-this.§5#H§ * _loc6_,-this.§5#H§ * _loc7_);
            this.§'"T§.§!#l§ = -this.§5#H§ * _loc12_;
            _loc14_ += this.§5#H§ * this.§5#H§ * (_loc5_.§0#d§ + _loc5_.§!!!§ * _loc12_ * _loc12_);
         }
         this.§!#v§ = _loc14_ > 0 ? Number(1 / _loc14_) : Number(0);
         if(param1.§+L§)
         {
            _loc4_.§=!c§.x += _loc4_.§0#d§ * this.§]#N§ * this.§'"T§.§do §.x;
            _loc4_.§=!c§.y += _loc4_.§0#d§ * this.§]#N§ * this.§'"T§.§do §.y;
            _loc4_.m_angularVelocity += _loc4_.§!!!§ * this.§]#N§ * this.§'"T§.§>$=§;
            _loc5_.§=!c§.x += _loc5_.§0#d§ * this.§]#N§ * this.§'"T§.§`#m§.x;
            _loc5_.§=!c§.y += _loc5_.§0#d§ * this.§]#N§ * this.§'"T§.§`#m§.y;
            _loc5_.m_angularVelocity += _loc5_.§!!!§ * this.§]#N§ * this.§'"T§.§!#l§;
         }
         else
         {
            this.§]#N§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = b2internal:: ?;
         var _loc3_:b2Body = b2internal:: #q;
         var _loc4_:Number = this.§'"T§.§1#V§(_loc2_.§=!c§,_loc2_.m_angularVelocity,_loc3_.§=!c§,_loc3_.m_angularVelocity);
         var _loc5_:Number = -this.§!#v§ * _loc4_;
         this.§]#N§ += _loc5_;
         _loc2_.§=!c§.x += _loc2_.§0#d§ * _loc5_ * this.§'"T§.§do §.x;
         _loc2_.§=!c§.y += _loc2_.§0#d§ * _loc5_ * this.§'"T§.§do §.y;
         _loc2_.m_angularVelocity += _loc2_.§!!!§ * _loc5_ * this.§'"T§.§>$=§;
         _loc3_.§=!c§.x += _loc3_.§0#d§ * _loc5_ * this.§'"T§.§`#m§.x;
         _loc3_.§=!c§.y += _loc3_.§0#d§ * _loc5_ * this.§'"T§.§`#m§.y;
         _loc3_.m_angularVelocity += _loc3_.§!!!§ * _loc5_ * this.§'"T§.§!#l§;
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc3_:b2Body = b2internal:: ?;
         var _loc4_:b2Body = b2internal:: #q;
         if(this.m_revolute1)
         {
            _loc5_ = this.m_revolute1.§<U§();
         }
         else
         {
            _loc5_ = this.m_prismatic1.§-#k§();
         }
         if(this.m_revolute2)
         {
            _loc6_ = this.m_revolute2.§<U§();
         }
         else
         {
            _loc6_ = this.m_prismatic2.§-#k§();
         }
         var _loc7_:Number = this.§#D§ - (_loc5_ + this.§5#H§ * _loc6_);
         var _loc8_:Number = -this.§!#v§ * _loc7_;
         _loc3_.m_sweep.c.x += _loc3_.§0#d§ * _loc8_ * this.§'"T§.§do §.x;
         _loc3_.m_sweep.c.y += _loc3_.§0#d§ * _loc8_ * this.§'"T§.§do §.y;
         _loc3_.m_sweep.a += _loc3_.§!!!§ * _loc8_ * this.§'"T§.§>$=§;
         _loc4_.m_sweep.c.x += _loc4_.§0#d§ * _loc8_ * this.§'"T§.§`#m§.x;
         _loc4_.m_sweep.c.y += _loc4_.§0#d§ * _loc8_ * this.§'"T§.§`#m§.y;
         _loc4_.m_sweep.a += _loc4_.§!!!§ * _loc8_ * this.§'"T§.§!#l§;
         _loc3_.§[!C§();
         _loc4_.§[!C§();
         return 0 < b2Settings.b2_linearSlop;
      }
   }
}
