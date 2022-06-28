package §=;§
{
   import §+!g§.b2Settings;
   import §+!g§.b2internal;
   import §>!8§.b2Mat22;
   import §>!8§.b2Math;
   import §>!8§.b2Vec2;
   import §>!L§.b2Body;
   import §>!L§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2DistanceJoint extends b2Joint
   {
       
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var §45§:b2Vec2;
      
      private var §!!@§:Number;
      
      private var §-e§:Number;
      
      private var §<!'§:Number;
      
      private var §;'§:Number;
      
      private var §;D§:Number;
      
      private var §@U§:Number;
      
      private var §6M§:Number;
      
      public function b2DistanceJoint(param1:b2DistanceJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§45§ = new b2Vec2();
         super(param1);
         this.m_localAnchor1.SetV(param1.§>!g§);
         this.m_localAnchor2.SetV(param1.§&1§);
         this.§6M§ = param1.length;
         this.§!!@§ = param1.§5Q§;
         this.§-e§ = param1.§=$§;
         this.§;D§ = 0;
         this.§<!'§ = 0;
         this.§;'§ = 0;
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
         return new b2Vec2(param1 * this.§;D§ * this.§45§.x,param1 * this.§;D§ * this.§45§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §8>§() : Number
      {
         return this.§6M§;
      }
      
      public function §2!d§(param1:Number) : void
      {
         this.§6M§ = param1;
      }
      
      public function §<V§() : Number
      {
         return this.§!!@§;
      }
      
      public function §<7§(param1:Number) : void
      {
         this.§!!@§ = param1;
      }
      
      public function §7"§() : Number
      {
         return this.§-e§;
      }
      
      public function § C§(param1:Number) : void
      {
         this.§-e§ = param1;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc7_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         _loc4_ = §-;§;
         _loc5_ = §`x§;
         _loc2_ = _loc4_.m_xf.R;
         var _loc6_:Number = this.m_localAnchor1.x - _loc4_.m_sweep.localCenter.x;
         _loc7_ = this.m_localAnchor1.y - _loc4_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor2.x - _loc5_.m_sweep.localCenter.x;
         _loc9_ = this.m_localAnchor2.y - _loc5_.m_sweep.localCenter.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         this.§45§.x = _loc5_.m_sweep.c.x + _loc8_ - _loc4_.m_sweep.c.x - _loc6_;
         this.§45§.y = _loc5_.m_sweep.c.y + _loc9_ - _loc4_.m_sweep.c.y - _loc7_;
         var _loc10_:Number = Math.sqrt(this.§45§.x * this.§45§.x + this.§45§.y * this.§45§.y);
         if(_loc10_ > b2Settings.b2_linearSlop)
         {
            this.§45§.§2p§(1 / _loc10_);
         }
         else
         {
            this.§45§.§@!;§();
         }
         var _loc11_:Number = _loc6_ * this.§45§.y - _loc7_ * this.§45§.x;
         var _loc12_:Number = _loc8_ * this.§45§.y - _loc9_ * this.§45§.x;
         var _loc13_:Number = _loc4_.§=n§ + _loc4_.§1&§ * _loc11_ * _loc11_ + _loc5_.§=n§ + _loc5_.§1&§ * _loc12_ * _loc12_;
         this.§@U§ = _loc13_ != 0 ? Number(1 / _loc13_) : Number(0);
         if(this.§!!@§ > 0)
         {
            _loc14_ = _loc10_ - this.§6M§;
            _loc15_ = 2 * Math.PI * this.§!!@§;
            _loc16_ = 2 * this.§@U§ * this.§-e§ * _loc15_;
            _loc17_ = this.§@U§ * _loc15_ * _loc15_;
            this.§<!'§ = param1.§`M§ * (_loc16_ + param1.§`M§ * _loc17_);
            this.§<!'§ = this.§<!'§ != 0 ? Number(1 / this.§<!'§) : Number(0);
            this.§;'§ = _loc14_ * param1.§`M§ * _loc17_ * this.§<!'§;
            this.§@U§ = _loc13_ + this.§<!'§;
            this.§@U§ = this.§@U§ != 0 ? Number(1 / this.§@U§) : Number(0);
         }
         if(param1.§-K§)
         {
            this.§;D§ *= param1.§&s§;
            _loc18_ = this.§;D§ * this.§45§.x;
            _loc19_ = this.§;D§ * this.§45§.y;
            _loc4_.§4!h§.x -= _loc4_.§=n§ * _loc18_;
            _loc4_.§4!h§.y -= _loc4_.§=n§ * _loc19_;
            _loc4_.m_angularVelocity -= _loc4_.§1&§ * (_loc6_ * _loc19_ - _loc7_ * _loc18_);
            _loc5_.§4!h§.x += _loc5_.§=n§ * _loc18_;
            _loc5_.§4!h§.y += _loc5_.§=n§ * _loc19_;
            _loc5_.m_angularVelocity += _loc5_.§1&§ * (_loc8_ * _loc19_ - _loc9_ * _loc18_);
         }
         else
         {
            this.§;D§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:b2Body = §-;§;
         var _loc4_:b2Body = §`x§;
         _loc2_ = _loc3_.m_xf.R;
         var _loc5_:Number = this.m_localAnchor1.x - _loc3_.m_sweep.localCenter.x;
         var _loc6_:Number = this.m_localAnchor1.y - _loc3_.m_sweep.localCenter.y;
         var _loc7_:Number = _loc2_.col1.x * _loc5_ + _loc2_.col2.x * _loc6_;
         _loc6_ = _loc2_.col1.y * _loc5_ + _loc2_.col2.y * _loc6_;
         _loc5_ = _loc7_;
         _loc2_ = _loc4_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor2.x - _loc4_.m_sweep.localCenter.x;
         var _loc9_:Number = this.m_localAnchor2.y - _loc4_.m_sweep.localCenter.y;
         _loc7_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc7_;
         var _loc10_:Number = _loc3_.§4!h§.x + -_loc3_.m_angularVelocity * _loc6_;
         var _loc11_:Number = _loc3_.§4!h§.y + _loc3_.m_angularVelocity * _loc5_;
         var _loc12_:Number = _loc4_.§4!h§.x + -_loc4_.m_angularVelocity * _loc9_;
         var _loc13_:Number = _loc4_.§4!h§.y + _loc4_.m_angularVelocity * _loc8_;
         var _loc14_:Number = this.§45§.x * (_loc12_ - _loc10_) + this.§45§.y * (_loc13_ - _loc11_);
         var _loc15_:Number = -this.§@U§ * (_loc14_ + this.§;'§ + this.§<!'§ * this.§;D§);
         this.§;D§ += _loc15_;
         var _loc16_:Number = _loc15_ * this.§45§.x;
         var _loc17_:Number = _loc15_ * this.§45§.y;
         _loc3_.§4!h§.x -= _loc3_.§=n§ * _loc16_;
         _loc3_.§4!h§.y -= _loc3_.§=n§ * _loc17_;
         _loc3_.m_angularVelocity -= _loc3_.§1&§ * (_loc5_ * _loc17_ - _loc6_ * _loc16_);
         _loc4_.§4!h§.x += _loc4_.§=n§ * _loc16_;
         _loc4_.§4!h§.y += _loc4_.§=n§ * _loc17_;
         _loc4_.m_angularVelocity += _loc4_.§1&§ * (_loc8_ * _loc17_ - _loc9_ * _loc16_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc2_:b2Mat22 = null;
         if(this.§!!@§ > 0)
         {
            return true;
         }
         var _loc3_:b2Body = §-;§;
         var _loc4_:b2Body = §`x§;
         _loc2_ = _loc3_.m_xf.R;
         var _loc5_:Number = this.m_localAnchor1.x - _loc3_.m_sweep.localCenter.x;
         var _loc6_:Number = this.m_localAnchor1.y - _loc3_.m_sweep.localCenter.y;
         var _loc7_:Number = _loc2_.col1.x * _loc5_ + _loc2_.col2.x * _loc6_;
         _loc6_ = _loc2_.col1.y * _loc5_ + _loc2_.col2.y * _loc6_;
         _loc5_ = _loc7_;
         _loc2_ = _loc4_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor2.x - _loc4_.m_sweep.localCenter.x;
         var _loc9_:Number = this.m_localAnchor2.y - _loc4_.m_sweep.localCenter.y;
         _loc7_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc7_;
         var _loc10_:Number = _loc4_.m_sweep.c.x + _loc8_ - _loc3_.m_sweep.c.x - _loc5_;
         var _loc11_:Number = _loc4_.m_sweep.c.y + _loc9_ - _loc3_.m_sweep.c.y - _loc6_;
         var _loc12_:Number = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
         _loc10_ /= _loc12_;
         _loc11_ /= _loc12_;
         var _loc13_:Number = _loc12_ - this.§6M§;
         _loc13_ = b2Math.§3X§(_loc13_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
         var _loc14_:Number = -this.§@U§ * _loc13_;
         this.§45§.Set(_loc10_,_loc11_);
         var _loc15_:Number = _loc14_ * this.§45§.x;
         var _loc16_:Number = _loc14_ * this.§45§.y;
         _loc3_.m_sweep.c.x -= _loc3_.§=n§ * _loc15_;
         _loc3_.m_sweep.c.y -= _loc3_.§=n§ * _loc16_;
         _loc3_.m_sweep.a -= _loc3_.§1&§ * (_loc5_ * _loc16_ - _loc6_ * _loc15_);
         _loc4_.m_sweep.c.x += _loc4_.§=n§ * _loc15_;
         _loc4_.m_sweep.c.y += _loc4_.§=n§ * _loc16_;
         _loc4_.m_sweep.a += _loc4_.§1&§ * (_loc8_ * _loc16_ - _loc9_ * _loc15_);
         _loc3_.§"!_§();
         _loc4_.§"!_§();
         return b2Math.§&!]§(_loc13_) < b2Settings.b2_linearSlop;
      }
   }
}
