package §6$§
{
   import §&!L§.b2Mat22;
   import §&!L§.b2Math;
   import §&!L§.b2Vec2;
   import §3f§.b2Body;
   import §3f§.b2TimeStep;
   import §7!C§.b2Settings;
   import §7!C§.b2internal;
   
   use namespace b2internal;
   
   public class b2DistanceJoint extends b2Joint
   {
       
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var §?e§:b2Vec2;
      
      private var §&k§:Number;
      
      private var §%!W§:Number;
      
      private var §,!D§:Number;
      
      private var §2Y§:Number;
      
      private var §7!P§:Number;
      
      private var § !4§:Number;
      
      private var §"N§:Number;
      
      public function b2DistanceJoint(param1:b2DistanceJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§?e§ = new b2Vec2();
         super(param1);
         this.m_localAnchor1.SetV(param1.§8!Z§);
         this.m_localAnchor2.SetV(param1.§]!P§);
         this.§"N§ = param1.length;
         this.§&k§ = param1.§#;§;
         this.§%!W§ = param1.§8u§;
         this.§7!P§ = 0;
         this.§,!D§ = 0;
         this.§2Y§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::2!I.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::%!#.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§7!P§ * this.§?e§.x,param1 * this.§7!P§ * this.§?e§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §-!=§() : Number
      {
         return this.§"N§;
      }
      
      public function §&!F§(param1:Number) : void
      {
         this.§"N§ = param1;
      }
      
      public function §=S§() : Number
      {
         return this.§&k§;
      }
      
      public function §7!T§(param1:Number) : void
      {
         this.§&k§ = param1;
      }
      
      public function §39§() : Number
      {
         return this.§%!W§;
      }
      
      public function §,T§(param1:Number) : void
      {
         this.§%!W§ = param1;
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
         _loc4_ = b2internal::2!I;
         _loc5_ = b2internal::%!#;
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
         this.§?e§.x = _loc5_.m_sweep.c.x + _loc8_ - _loc4_.m_sweep.c.x - _loc6_;
         this.§?e§.y = _loc5_.m_sweep.c.y + _loc9_ - _loc4_.m_sweep.c.y - _loc7_;
         var _loc10_:Number;
         if((_loc10_ = Math.sqrt(this.§?e§.x * this.§?e§.x + this.§?e§.y * this.§?e§.y)) > b2Settings.b2_linearSlop)
         {
            this.§?e§.§?!4§(1 / _loc10_);
         }
         else
         {
            this.§?e§.§`§();
         }
         var _loc11_:Number = _loc6_ * this.§?e§.y - _loc7_ * this.§?e§.x;
         var _loc12_:Number = _loc8_ * this.§?e§.y - _loc9_ * this.§?e§.x;
         var _loc13_:Number = _loc4_.§3!`§ + _loc4_.§=4§ * _loc11_ * _loc11_ + _loc5_.§3!`§ + _loc5_.§=4§ * _loc12_ * _loc12_;
         this.§ !4§ = _loc13_ != 0 ? Number(1 / _loc13_) : Number(0);
         if(this.§&k§ > 0)
         {
            _loc14_ = _loc10_ - this.§"N§;
            _loc15_ = 2 * Math.PI * this.§&k§;
            _loc16_ = 2 * this.§ !4§ * this.§%!W§ * _loc15_;
            _loc17_ = this.§ !4§ * _loc15_ * _loc15_;
            this.§,!D§ = param1.§"p§ * (_loc16_ + param1.§"p§ * _loc17_);
            this.§,!D§ = this.§,!D§ != 0 ? Number(1 / this.§,!D§) : Number(0);
            this.§2Y§ = _loc14_ * param1.§"p§ * _loc17_ * this.§,!D§;
            this.§ !4§ = _loc13_ + this.§,!D§;
            this.§ !4§ = this.§ !4§ != 0 ? Number(1 / this.§ !4§) : Number(0);
         }
         if(param1.§&!X§)
         {
            this.§7!P§ *= param1.§@=§;
            _loc18_ = this.§7!P§ * this.§?e§.x;
            _loc19_ = this.§7!P§ * this.§?e§.y;
            _loc4_.§9!Q§.x -= _loc4_.§3!`§ * _loc18_;
            _loc4_.§9!Q§.y -= _loc4_.§3!`§ * _loc19_;
            _loc4_.m_angularVelocity -= _loc4_.§=4§ * (_loc6_ * _loc19_ - _loc7_ * _loc18_);
            _loc5_.§9!Q§.x += _loc5_.§3!`§ * _loc18_;
            _loc5_.§9!Q§.y += _loc5_.§3!`§ * _loc19_;
            _loc5_.m_angularVelocity += _loc5_.§=4§ * (_loc8_ * _loc19_ - _loc9_ * _loc18_);
         }
         else
         {
            this.§7!P§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:b2Body = b2internal::2!I;
         var _loc4_:b2Body = b2internal::%!#;
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
         var _loc10_:Number = _loc3_.§9!Q§.x + -_loc3_.m_angularVelocity * _loc6_;
         var _loc11_:Number = _loc3_.§9!Q§.y + _loc3_.m_angularVelocity * _loc5_;
         var _loc12_:Number = _loc4_.§9!Q§.x + -_loc4_.m_angularVelocity * _loc9_;
         var _loc13_:Number = _loc4_.§9!Q§.y + _loc4_.m_angularVelocity * _loc8_;
         var _loc14_:Number = this.§?e§.x * (_loc12_ - _loc10_) + this.§?e§.y * (_loc13_ - _loc11_);
         var _loc15_:Number = -this.§ !4§ * (_loc14_ + this.§2Y§ + this.§,!D§ * this.§7!P§);
         this.§7!P§ += _loc15_;
         var _loc16_:Number = _loc15_ * this.§?e§.x;
         var _loc17_:Number = _loc15_ * this.§?e§.y;
         _loc3_.§9!Q§.x -= _loc3_.§3!`§ * _loc16_;
         _loc3_.§9!Q§.y -= _loc3_.§3!`§ * _loc17_;
         _loc3_.m_angularVelocity -= _loc3_.§=4§ * (_loc5_ * _loc17_ - _loc6_ * _loc16_);
         _loc4_.§9!Q§.x += _loc4_.§3!`§ * _loc16_;
         _loc4_.§9!Q§.y += _loc4_.§3!`§ * _loc17_;
         _loc4_.m_angularVelocity += _loc4_.§=4§ * (_loc8_ * _loc17_ - _loc9_ * _loc16_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc2_:b2Mat22 = null;
         if(this.§&k§ > 0)
         {
            return true;
         }
         var _loc3_:b2Body = b2internal::2!I;
         var _loc4_:b2Body = b2internal::%!#;
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
         var _loc13_:Number = _loc12_ - this.§"N§;
         _loc13_ = b2Math.§2m§(_loc13_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
         var _loc14_:Number = -this.§ !4§ * _loc13_;
         this.§?e§.Set(_loc10_,_loc11_);
         var _loc15_:Number = _loc14_ * this.§?e§.x;
         var _loc16_:Number = _loc14_ * this.§?e§.y;
         _loc3_.m_sweep.c.x -= _loc3_.§3!`§ * _loc15_;
         _loc3_.m_sweep.c.y -= _loc3_.§3!`§ * _loc16_;
         _loc3_.m_sweep.a -= _loc3_.§=4§ * (_loc5_ * _loc16_ - _loc6_ * _loc15_);
         _loc4_.m_sweep.c.x += _loc4_.§3!`§ * _loc15_;
         _loc4_.m_sweep.c.y += _loc4_.§3!`§ * _loc16_;
         _loc4_.m_sweep.a += _loc4_.§=4§ * (_loc8_ * _loc16_ - _loc9_ * _loc15_);
         _loc3_.§4B§();
         _loc4_.§4B§();
         return b2Math.§5y§(_loc13_) < b2Settings.b2_linearSlop;
      }
   }
}
