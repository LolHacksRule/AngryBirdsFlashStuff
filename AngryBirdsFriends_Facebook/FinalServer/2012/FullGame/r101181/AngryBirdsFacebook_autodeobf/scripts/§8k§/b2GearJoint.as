package §8k§
{
   import §#]§.b2Mat22;
   import §#]§.b2Vec2;
   import §4!!§.b2Settings;
   import §4!!§.b2internal;
   import §48§.b2Body;
   import §48§.b2TimeStep;
   
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
      
      private var §?6§:b2Jacobian;
      
      private var §3!A§:Number;
      
      private var §9!+§:Number;
      
      private var §+J§:Number;
      
      private var §0!y§:Number;
      
      public function b2GearJoint(param1:b2GearJointDef)
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         this.m_groundAnchor1 = new b2Vec2();
         this.m_groundAnchor2 = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§?6§ = new b2Jacobian();
         super(param1);
         var _loc2_:int = param1.joint1.§<";§;
         var _loc3_:int = param1.joint2.§<";§;
         this.m_revolute1 = null;
         this.m_prismatic1 = null;
         this.m_revolute2 = null;
         this.m_prismatic2 = null;
         this.m_ground1 = param1.joint1.§6p§();
         §8!Z§ = param1.joint1.§]%§();
         if(_loc2_ == b2Joint.e_revoluteJoint)
         {
            this.m_revolute1 = param1.joint1 as b2RevoluteJoint;
            this.m_groundAnchor1.SetV(this.m_revolute1.m_localAnchor1);
            this.m_localAnchor1.SetV(this.m_revolute1.m_localAnchor2);
            _loc4_ = this.m_revolute1.§'r§();
         }
         else
         {
            this.m_prismatic1 = param1.joint1 as b2PrismaticJoint;
            this.m_groundAnchor1.SetV(this.m_prismatic1.m_localAnchor1);
            this.m_localAnchor1.SetV(this.m_prismatic1.m_localAnchor2);
            _loc4_ = this.m_prismatic1.§`z§();
         }
         this.m_ground2 = param1.joint2.§6p§();
         §4"0§ = param1.joint2.§]%§();
         if(_loc3_ == b2Joint.e_revoluteJoint)
         {
            this.m_revolute2 = param1.joint2 as b2RevoluteJoint;
            this.m_groundAnchor2.SetV(this.m_revolute2.m_localAnchor1);
            this.m_localAnchor2.SetV(this.m_revolute2.m_localAnchor2);
            _loc5_ = this.m_revolute2.§'r§();
         }
         else
         {
            this.m_prismatic2 = param1.joint2 as b2PrismaticJoint;
            this.m_groundAnchor2.SetV(this.m_prismatic2.m_localAnchor1);
            this.m_localAnchor2.SetV(this.m_prismatic2.m_localAnchor2);
            _loc5_ = this.m_prismatic2.§`z§();
         }
         this.§9!+§ = param1.§""3§;
         this.§3!A§ = _loc4_ + this.§9!+§ * _loc5_;
         this.§0!y§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::8!Z.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::4"0.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§0!y§ * this.§?6§.§`O§.x,param1 * this.§0!y§ * this.§?6§.§`O§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:b2Mat22 = b2internal::4"0.m_xf.R;
         var _loc3_:Number = this.m_localAnchor1.x - b2internal::4"0.m_sweep.localCenter.x;
         var _loc4_:Number = this.m_localAnchor1.y - b2internal::4"0.m_sweep.localCenter.y;
         var _loc5_:Number = _loc2_.col1.x * _loc3_ + _loc2_.col2.x * _loc4_;
         _loc4_ = _loc2_.col1.y * _loc3_ + _loc2_.col2.y * _loc4_;
         _loc3_ = _loc5_;
         var _loc6_:Number = this.§0!y§ * this.§?6§.§`O§.x;
         var _loc7_:Number = this.§0!y§ * this.§?6§.§`O§.y;
         return param1 * (this.§0!y§ * this.§?6§.§package§ - _loc3_ * _loc7_ + _loc4_ * _loc6_);
      }
      
      public function §`A§() : Number
      {
         return this.§9!+§;
      }
      
      public function §#L§(param1:Number) : void
      {
         this.§9!+§ = param1;
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
         _loc4_ = b2internal::8!Z;
         var _loc5_:b2Body = b2internal::4"0;
         var _loc14_:Number = 0;
         this.§?6§.§;v§();
         if(this.m_revolute1)
         {
            this.§?6§.§&L§ = -1;
            _loc14_ += _loc4_.§"g§;
         }
         else
         {
            _loc10_ = _loc2_.m_xf.R;
            _loc11_ = this.m_prismatic1.§5!n§;
            _loc6_ = _loc10_.col1.x * _loc11_.x + _loc10_.col2.x * _loc11_.y;
            _loc7_ = _loc10_.col1.y * _loc11_.x + _loc10_.col2.y * _loc11_.y;
            _loc10_ = _loc4_.m_xf.R;
            _loc8_ = this.m_localAnchor1.x - _loc4_.m_sweep.localCenter.x;
            _loc9_ = this.m_localAnchor1.y - _loc4_.m_sweep.localCenter.y;
            _loc13_ = _loc10_.col1.x * _loc8_ + _loc10_.col2.x * _loc9_;
            _loc9_ = _loc10_.col1.y * _loc8_ + _loc10_.col2.y * _loc9_;
            _loc12_ = (_loc8_ = _loc13_) * _loc7_ - _loc9_ * _loc6_;
            this.§?6§.§+"'§.Set(-_loc6_,-_loc7_);
            this.§?6§.§&L§ = -_loc12_;
            _loc14_ += _loc4_.§["A§ + _loc4_.§"g§ * _loc12_ * _loc12_;
         }
         if(this.m_revolute2)
         {
            this.§?6§.§package§ = -this.§9!+§;
            _loc14_ += this.§9!+§ * this.§9!+§ * _loc5_.§"g§;
         }
         else
         {
            _loc10_ = _loc3_.m_xf.R;
            _loc11_ = this.m_prismatic2.§5!n§;
            _loc6_ = _loc10_.col1.x * _loc11_.x + _loc10_.col2.x * _loc11_.y;
            _loc7_ = _loc10_.col1.y * _loc11_.x + _loc10_.col2.y * _loc11_.y;
            _loc10_ = _loc5_.m_xf.R;
            _loc8_ = this.m_localAnchor2.x - _loc5_.m_sweep.localCenter.x;
            _loc9_ = this.m_localAnchor2.y - _loc5_.m_sweep.localCenter.y;
            _loc13_ = _loc10_.col1.x * _loc8_ + _loc10_.col2.x * _loc9_;
            _loc9_ = _loc10_.col1.y * _loc8_ + _loc10_.col2.y * _loc9_;
            _loc12_ = (_loc8_ = _loc13_) * _loc7_ - _loc9_ * _loc6_;
            this.§?6§.§`O§.Set(-this.§9!+§ * _loc6_,-this.§9!+§ * _loc7_);
            this.§?6§.§package§ = -this.§9!+§ * _loc12_;
            _loc14_ += this.§9!+§ * this.§9!+§ * (_loc5_.§["A§ + _loc5_.§"g§ * _loc12_ * _loc12_);
         }
         this.§+J§ = _loc14_ > 0 ? Number(1 / _loc14_) : Number(0);
         if(param1.§'i§)
         {
            _loc4_.§="8§.x += _loc4_.§["A§ * this.§0!y§ * this.§?6§.§+"'§.x;
            _loc4_.§="8§.y += _loc4_.§["A§ * this.§0!y§ * this.§?6§.§+"'§.y;
            _loc4_.m_angularVelocity += _loc4_.§"g§ * this.§0!y§ * this.§?6§.§&L§;
            _loc5_.§="8§.x += _loc5_.§["A§ * this.§0!y§ * this.§?6§.§`O§.x;
            _loc5_.§="8§.y += _loc5_.§["A§ * this.§0!y§ * this.§?6§.§`O§.y;
            _loc5_.m_angularVelocity += _loc5_.§"g§ * this.§0!y§ * this.§?6§.§package§;
         }
         else
         {
            this.§0!y§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = b2internal::8!Z;
         var _loc3_:b2Body = b2internal::4"0;
         var _loc4_:Number = this.§?6§.§,u§(_loc2_.§="8§,_loc2_.m_angularVelocity,_loc3_.§="8§,_loc3_.m_angularVelocity);
         var _loc5_:Number = -this.§+J§ * _loc4_;
         this.§0!y§ += _loc5_;
         _loc2_.§="8§.x += _loc2_.§["A§ * _loc5_ * this.§?6§.§+"'§.x;
         _loc2_.§="8§.y += _loc2_.§["A§ * _loc5_ * this.§?6§.§+"'§.y;
         _loc2_.m_angularVelocity += _loc2_.§"g§ * _loc5_ * this.§?6§.§&L§;
         _loc3_.§="8§.x += _loc3_.§["A§ * _loc5_ * this.§?6§.§`O§.x;
         _loc3_.§="8§.y += _loc3_.§["A§ * _loc5_ * this.§?6§.§`O§.y;
         _loc3_.m_angularVelocity += _loc3_.§"g§ * _loc5_ * this.§?6§.§package§;
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc3_:b2Body = b2internal::8!Z;
         var _loc4_:b2Body = b2internal::4"0;
         if(this.m_revolute1)
         {
            _loc5_ = this.m_revolute1.§'r§();
         }
         else
         {
            _loc5_ = this.m_prismatic1.§`z§();
         }
         if(this.m_revolute2)
         {
            _loc6_ = this.m_revolute2.§'r§();
         }
         else
         {
            _loc6_ = this.m_prismatic2.§`z§();
         }
         var _loc7_:Number = this.§3!A§ - (_loc5_ + this.§9!+§ * _loc6_);
         var _loc8_:Number = -this.§+J§ * _loc7_;
         _loc3_.m_sweep.c.x += _loc3_.§["A§ * _loc8_ * this.§?6§.§+"'§.x;
         _loc3_.m_sweep.c.y += _loc3_.§["A§ * _loc8_ * this.§?6§.§+"'§.y;
         _loc3_.m_sweep.a += _loc3_.§"g§ * _loc8_ * this.§?6§.§&L§;
         _loc4_.m_sweep.c.x += _loc4_.§["A§ * _loc8_ * this.§?6§.§`O§.x;
         _loc4_.m_sweep.c.y += _loc4_.§["A§ * _loc8_ * this.§?6§.§`O§.y;
         _loc4_.m_sweep.a += _loc4_.§"g§ * _loc8_ * this.§?6§.§package§;
         _loc3_.§,6§();
         _loc4_.§,6§();
         return 0 < b2Settings.b2_linearSlop;
      }
   }
}
