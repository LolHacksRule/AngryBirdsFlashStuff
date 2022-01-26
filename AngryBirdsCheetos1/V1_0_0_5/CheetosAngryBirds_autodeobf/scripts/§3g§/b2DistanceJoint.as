package §3g§
{
   import §;]§.b2Settings;
   import §;]§.b2internal;
   import §=E§.b2Mat22;
   import §=E§.b2Math;
   import §=E§.b2Vec2;
   import §?!0§.b2Body;
   import §?!0§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2DistanceJoint extends b2Joint
   {
       
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var §=U§:b2Vec2;
      
      private var §"g§:Number;
      
      private var §6!L§:Number;
      
      private var §;!8§:Number;
      
      private var § !Z§:Number;
      
      private var §8v§:Number;
      
      private var §#!&§:Number;
      
      private var §6z§:Number;
      
      public function b2DistanceJoint(param1:b2DistanceJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§=U§ = new b2Vec2();
         super(param1);
         this.m_localAnchor1.SetV(param1.§4B§);
         this.m_localAnchor2.SetV(param1.§ !Q§);
         this.§6z§ = param1.length;
         this.§"g§ = param1.§5X§;
         this.§6!L§ = param1.§@N§;
         this.§8v§ = 0;
         this.§;!8§ = 0;
         this.§ !Z§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::2!D.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::;B.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§8v§ * this.§=U§.x,param1 * this.§8v§ * this.§=U§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §;!E§() : Number
      {
         return this.§6z§;
      }
      
      public function §;S§(param1:Number) : void
      {
         this.§6z§ = param1;
      }
      
      public function §3K§() : Number
      {
         return this.§"g§;
      }
      
      public function §?!D§(param1:Number) : void
      {
         this.§"g§ = param1;
      }
      
      public function §,!&§() : Number
      {
         return this.§6!L§;
      }
      
      public function §8!G§(param1:Number) : void
      {
         this.§6!L§ = param1;
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
         _loc4_ = b2internal::2!D;
         _loc5_ = b2internal::;B;
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
         this.§=U§.x = _loc5_.m_sweep.c.x + _loc8_ - _loc4_.m_sweep.c.x - _loc6_;
         this.§=U§.y = _loc5_.m_sweep.c.y + _loc9_ - _loc4_.m_sweep.c.y - _loc7_;
         var _loc10_:Number;
         if((_loc10_ = Math.sqrt(this.§=U§.x * this.§=U§.x + this.§=U§.y * this.§=U§.y)) > b2Settings.b2_linearSlop)
         {
            this.§=U§.§5y§(1 / _loc10_);
         }
         else
         {
            this.§=U§.§^!#§();
         }
         var _loc11_:Number = _loc6_ * this.§=U§.y - _loc7_ * this.§=U§.x;
         var _loc12_:Number = _loc8_ * this.§=U§.y - _loc9_ * this.§=U§.x;
         var _loc13_:Number = _loc4_.§9g§ + _loc4_.§8>§ * _loc11_ * _loc11_ + _loc5_.§9g§ + _loc5_.§8>§ * _loc12_ * _loc12_;
         this.§#!&§ = _loc13_ != 0 ? Number(1 / _loc13_) : Number(0);
         if(this.§"g§ > 0)
         {
            _loc14_ = _loc10_ - this.§6z§;
            _loc15_ = 2 * Math.PI * this.§"g§;
            _loc16_ = 2 * this.§#!&§ * this.§6!L§ * _loc15_;
            _loc17_ = this.§#!&§ * _loc15_ * _loc15_;
            this.§;!8§ = param1.§7?§ * (_loc16_ + param1.§7?§ * _loc17_);
            this.§;!8§ = this.§;!8§ != 0 ? Number(1 / this.§;!8§) : Number(0);
            this.§ !Z§ = _loc14_ * param1.§7?§ * _loc17_ * this.§;!8§;
            this.§#!&§ = _loc13_ + this.§;!8§;
            this.§#!&§ = this.§#!&§ != 0 ? Number(1 / this.§#!&§) : Number(0);
         }
         if(param1.§<W§)
         {
            this.§8v§ *= param1.§5!B§;
            _loc18_ = this.§8v§ * this.§=U§.x;
            _loc19_ = this.§8v§ * this.§=U§.y;
            _loc4_.§0+§.x -= _loc4_.§9g§ * _loc18_;
            _loc4_.§0+§.y -= _loc4_.§9g§ * _loc19_;
            _loc4_.m_angularVelocity -= _loc4_.§8>§ * (_loc6_ * _loc19_ - _loc7_ * _loc18_);
            _loc5_.§0+§.x += _loc5_.§9g§ * _loc18_;
            _loc5_.§0+§.y += _loc5_.§9g§ * _loc19_;
            _loc5_.m_angularVelocity += _loc5_.§8>§ * (_loc8_ * _loc19_ - _loc9_ * _loc18_);
         }
         else
         {
            this.§8v§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:b2Body = b2internal::2!D;
         var _loc4_:b2Body = b2internal::;B;
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
         var _loc10_:Number = _loc3_.§0+§.x + -_loc3_.m_angularVelocity * _loc6_;
         var _loc11_:Number = _loc3_.§0+§.y + _loc3_.m_angularVelocity * _loc5_;
         var _loc12_:Number = _loc4_.§0+§.x + -_loc4_.m_angularVelocity * _loc9_;
         var _loc13_:Number = _loc4_.§0+§.y + _loc4_.m_angularVelocity * _loc8_;
         var _loc14_:Number = this.§=U§.x * (_loc12_ - _loc10_) + this.§=U§.y * (_loc13_ - _loc11_);
         var _loc15_:Number = -this.§#!&§ * (_loc14_ + this.§ !Z§ + this.§;!8§ * this.§8v§);
         this.§8v§ += _loc15_;
         var _loc16_:Number = _loc15_ * this.§=U§.x;
         var _loc17_:Number = _loc15_ * this.§=U§.y;
         _loc3_.§0+§.x -= _loc3_.§9g§ * _loc16_;
         _loc3_.§0+§.y -= _loc3_.§9g§ * _loc17_;
         _loc3_.m_angularVelocity -= _loc3_.§8>§ * (_loc5_ * _loc17_ - _loc6_ * _loc16_);
         _loc4_.§0+§.x += _loc4_.§9g§ * _loc16_;
         _loc4_.§0+§.y += _loc4_.§9g§ * _loc17_;
         _loc4_.m_angularVelocity += _loc4_.§8>§ * (_loc8_ * _loc17_ - _loc9_ * _loc16_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc2_:b2Mat22 = null;
         if(this.§"g§ > 0)
         {
            return true;
         }
         var _loc3_:b2Body = b2internal::2!D;
         var _loc4_:b2Body = b2internal::;B;
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
         var _loc13_:Number = _loc12_ - this.§6z§;
         _loc13_ = b2Math.§2a§(_loc13_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
         var _loc14_:Number = -this.§#!&§ * _loc13_;
         this.§=U§.Set(_loc10_,_loc11_);
         var _loc15_:Number = _loc14_ * this.§=U§.x;
         var _loc16_:Number = _loc14_ * this.§=U§.y;
         _loc3_.m_sweep.c.x -= _loc3_.§9g§ * _loc15_;
         _loc3_.m_sweep.c.y -= _loc3_.§9g§ * _loc16_;
         _loc3_.m_sweep.a -= _loc3_.§8>§ * (_loc5_ * _loc16_ - _loc6_ * _loc15_);
         _loc4_.m_sweep.c.x += _loc4_.§9g§ * _loc15_;
         _loc4_.m_sweep.c.y += _loc4_.§9g§ * _loc16_;
         _loc4_.m_sweep.a += _loc4_.§8>§ * (_loc8_ * _loc16_ - _loc9_ * _loc15_);
         _loc3_.§-D§();
         _loc4_.§-D§();
         return b2Math.§<!K§(_loc13_) < b2Settings.b2_linearSlop;
      }
   }
}
