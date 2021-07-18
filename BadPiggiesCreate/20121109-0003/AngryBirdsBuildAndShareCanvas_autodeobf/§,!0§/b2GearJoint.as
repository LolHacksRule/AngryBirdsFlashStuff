package §,!0§
{
   import §"J§.b2Body;
   import §"J§.b2TimeStep;
   import §<!a§.b2Mat22;
   import §<!a§.b2Vec2;
   import §<";§.b2Settings;
   import §<";§.b2internal;
   
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
      
      private var §[!I§:b2Jacobian;
      
      private var §1v§:Number;
      
      private var §6!q§:Number;
      
      private var §?j§:Number;
      
      private var §5!i§:Number;
      
      public function b2GearJoint(param1:b2GearJointDef)
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         this.m_groundAnchor1 = new b2Vec2();
         this.m_groundAnchor2 = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§[!I§ = new b2Jacobian();
         super(param1);
         var _loc2_:int = param1.joint1.§0!,§;
         var _loc3_:int = param1.joint2.§0!,§;
         this.m_revolute1 = null;
         this.m_prismatic1 = null;
         this.m_revolute2 = null;
         this.m_prismatic2 = null;
         this.m_ground1 = param1.joint1.§<D§();
         §+d§ = param1.joint1.§3@§();
         if(_loc2_ == b2Joint.e_revoluteJoint)
         {
            this.m_revolute1 = param1.joint1 as b2RevoluteJoint;
            this.m_groundAnchor1.SetV(this.m_revolute1.m_localAnchor1);
            this.m_localAnchor1.SetV(this.m_revolute1.m_localAnchor2);
            _loc4_ = this.m_revolute1.§7i§();
         }
         else
         {
            this.m_prismatic1 = param1.joint1 as b2PrismaticJoint;
            this.m_groundAnchor1.SetV(this.m_prismatic1.m_localAnchor1);
            this.m_localAnchor1.SetV(this.m_prismatic1.m_localAnchor2);
            _loc4_ = this.m_prismatic1.§>!b§();
         }
         this.m_ground2 = param1.joint2.§<D§();
         §"!l§ = param1.joint2.§3@§();
         if(_loc3_ == b2Joint.e_revoluteJoint)
         {
            this.m_revolute2 = param1.joint2 as b2RevoluteJoint;
            this.m_groundAnchor2.SetV(this.m_revolute2.m_localAnchor1);
            this.m_localAnchor2.SetV(this.m_revolute2.m_localAnchor2);
            _loc5_ = this.m_revolute2.§7i§();
         }
         else
         {
            this.m_prismatic2 = param1.joint2 as b2PrismaticJoint;
            this.m_groundAnchor2.SetV(this.m_prismatic2.m_localAnchor1);
            this.m_localAnchor2.SetV(this.m_prismatic2.m_localAnchor2);
            _loc5_ = this.m_prismatic2.§>!b§();
         }
         this.§6!q§ = param1.§+"2§;
         this.§1v§ = _loc4_ + this.§6!q§ * _loc5_;
         this.§5!i§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::+d.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::"!l.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§5!i§ * this.§[!I§.§>!p§.x,param1 * this.§5!i§ * this.§[!I§.§>!p§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:b2Mat22 = b2internal::"!l.m_xf.R;
         var _loc3_:Number = this.m_localAnchor1.x - b2internal::"!l.m_sweep.localCenter.x;
         var _loc4_:Number = this.m_localAnchor1.y - b2internal::"!l.m_sweep.localCenter.y;
         var _loc5_:Number = _loc2_.col1.x * _loc3_ + _loc2_.col2.x * _loc4_;
         _loc4_ = _loc2_.col1.y * _loc3_ + _loc2_.col2.y * _loc4_;
         _loc3_ = _loc5_;
         var _loc6_:Number = this.§5!i§ * this.§[!I§.§>!p§.x;
         var _loc7_:Number = this.§5!i§ * this.§[!I§.§>!p§.y;
         return param1 * (this.§5!i§ * this.§[!I§.§=!m§ - _loc3_ * _loc7_ + _loc4_ * _loc6_);
      }
      
      public function § !k§() : Number
      {
         return this.§6!q§;
      }
      
      public function §[!5§(param1:Number) : void
      {
         this.§6!q§ = param1;
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
         _loc4_ = b2internal::+d;
         var _loc5_:b2Body = b2internal::"!l;
         var _loc14_:Number = 0;
         this.§[!I§.§?b§();
         if(this.m_revolute1)
         {
            this.§[!I§.§2!j§ = -1;
            _loc14_ += _loc4_.§=!N§;
         }
         else
         {
            _loc10_ = _loc2_.m_xf.R;
            _loc11_ = this.m_prismatic1.§01§;
            _loc6_ = _loc10_.col1.x * _loc11_.x + _loc10_.col2.x * _loc11_.y;
            _loc7_ = _loc10_.col1.y * _loc11_.x + _loc10_.col2.y * _loc11_.y;
            _loc10_ = _loc4_.m_xf.R;
            _loc8_ = this.m_localAnchor1.x - _loc4_.m_sweep.localCenter.x;
            _loc9_ = this.m_localAnchor1.y - _loc4_.m_sweep.localCenter.y;
            _loc13_ = _loc10_.col1.x * _loc8_ + _loc10_.col2.x * _loc9_;
            _loc9_ = _loc10_.col1.y * _loc8_ + _loc10_.col2.y * _loc9_;
            _loc12_ = (_loc8_ = _loc13_) * _loc7_ - _loc9_ * _loc6_;
            this.§[!I§.§4!J§.Set(-_loc6_,-_loc7_);
            this.§[!I§.§2!j§ = -_loc12_;
            _loc14_ += _loc4_.§@"!§ + _loc4_.§=!N§ * _loc12_ * _loc12_;
         }
         if(this.m_revolute2)
         {
            this.§[!I§.§=!m§ = -this.§6!q§;
            _loc14_ += this.§6!q§ * this.§6!q§ * _loc5_.§=!N§;
         }
         else
         {
            _loc10_ = _loc3_.m_xf.R;
            _loc11_ = this.m_prismatic2.§01§;
            _loc6_ = _loc10_.col1.x * _loc11_.x + _loc10_.col2.x * _loc11_.y;
            _loc7_ = _loc10_.col1.y * _loc11_.x + _loc10_.col2.y * _loc11_.y;
            _loc10_ = _loc5_.m_xf.R;
            _loc8_ = this.m_localAnchor2.x - _loc5_.m_sweep.localCenter.x;
            _loc9_ = this.m_localAnchor2.y - _loc5_.m_sweep.localCenter.y;
            _loc13_ = _loc10_.col1.x * _loc8_ + _loc10_.col2.x * _loc9_;
            _loc9_ = _loc10_.col1.y * _loc8_ + _loc10_.col2.y * _loc9_;
            _loc12_ = (_loc8_ = _loc13_) * _loc7_ - _loc9_ * _loc6_;
            this.§[!I§.§>!p§.Set(-this.§6!q§ * _loc6_,-this.§6!q§ * _loc7_);
            this.§[!I§.§=!m§ = -this.§6!q§ * _loc12_;
            _loc14_ += this.§6!q§ * this.§6!q§ * (_loc5_.§@"!§ + _loc5_.§=!N§ * _loc12_ * _loc12_);
         }
         this.§?j§ = _loc14_ > 0 ? Number(1 / _loc14_) : Number(0);
         if(param1.§@!D§)
         {
            _loc4_.§]!g§.x += _loc4_.§@"!§ * this.§5!i§ * this.§[!I§.§4!J§.x;
            _loc4_.§]!g§.y += _loc4_.§@"!§ * this.§5!i§ * this.§[!I§.§4!J§.y;
            _loc4_.m_angularVelocity += _loc4_.§=!N§ * this.§5!i§ * this.§[!I§.§2!j§;
            _loc5_.§]!g§.x += _loc5_.§@"!§ * this.§5!i§ * this.§[!I§.§>!p§.x;
            _loc5_.§]!g§.y += _loc5_.§@"!§ * this.§5!i§ * this.§[!I§.§>!p§.y;
            _loc5_.m_angularVelocity += _loc5_.§=!N§ * this.§5!i§ * this.§[!I§.§=!m§;
         }
         else
         {
            this.§5!i§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = b2internal::+d;
         var _loc3_:b2Body = b2internal::"!l;
         var _loc4_:Number = this.§[!I§.§14§(_loc2_.§]!g§,_loc2_.m_angularVelocity,_loc3_.§]!g§,_loc3_.m_angularVelocity);
         var _loc5_:Number = -this.§?j§ * _loc4_;
         this.§5!i§ += _loc5_;
         _loc2_.§]!g§.x += _loc2_.§@"!§ * _loc5_ * this.§[!I§.§4!J§.x;
         _loc2_.§]!g§.y += _loc2_.§@"!§ * _loc5_ * this.§[!I§.§4!J§.y;
         _loc2_.m_angularVelocity += _loc2_.§=!N§ * _loc5_ * this.§[!I§.§2!j§;
         _loc3_.§]!g§.x += _loc3_.§@"!§ * _loc5_ * this.§[!I§.§>!p§.x;
         _loc3_.§]!g§.y += _loc3_.§@"!§ * _loc5_ * this.§[!I§.§>!p§.y;
         _loc3_.m_angularVelocity += _loc3_.§=!N§ * _loc5_ * this.§[!I§.§=!m§;
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc3_:b2Body = b2internal::+d;
         var _loc4_:b2Body = b2internal::"!l;
         if(this.m_revolute1)
         {
            _loc5_ = this.m_revolute1.§7i§();
         }
         else
         {
            _loc5_ = this.m_prismatic1.§>!b§();
         }
         if(this.m_revolute2)
         {
            _loc6_ = this.m_revolute2.§7i§();
         }
         else
         {
            _loc6_ = this.m_prismatic2.§>!b§();
         }
         var _loc7_:Number = this.§1v§ - (_loc5_ + this.§6!q§ * _loc6_);
         var _loc8_:Number = -this.§?j§ * _loc7_;
         _loc3_.m_sweep.c.x += _loc3_.§@"!§ * _loc8_ * this.§[!I§.§4!J§.x;
         _loc3_.m_sweep.c.y += _loc3_.§@"!§ * _loc8_ * this.§[!I§.§4!J§.y;
         _loc3_.m_sweep.a += _loc3_.§=!N§ * _loc8_ * this.§[!I§.§2!j§;
         _loc4_.m_sweep.c.x += _loc4_.§@"!§ * _loc8_ * this.§[!I§.§>!p§.x;
         _loc4_.m_sweep.c.y += _loc4_.§@"!§ * _loc8_ * this.§[!I§.§>!p§.y;
         _loc4_.m_sweep.a += _loc4_.§=!N§ * _loc8_ * this.§[!I§.§=!m§;
         _loc3_.§=&§();
         _loc4_.§=&§();
         return 0 < b2Settings.b2_linearSlop;
      }
   }
}
