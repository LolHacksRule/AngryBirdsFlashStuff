package §!"b§
{
   import §&$+§.b2Settings;
   import §&$+§.b2internal;
   import §'#K§.b2Body;
   import §'#K§.b2TimeStep;
   import §04§.b2Mat22;
   import §04§.b2Math;
   import §04§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2DistanceJoint extends b2Joint
   {
       
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var §;o§:b2Vec2;
      
      private var §=$=§:Number;
      
      private var §"$&§:Number;
      
      private var §=#X§:Number;
      
      private var §^U§:Number;
      
      private var §9b§:Number;
      
      private var §'g§:Number;
      
      private var §!"U§:Number;
      
      public function b2DistanceJoint(param1:b2DistanceJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§;o§ = new b2Vec2();
         super(param1);
         this.m_localAnchor1.SetV(param1.§,#D§);
         this.m_localAnchor2.SetV(param1.§?#d§);
         this.§!"U§ = param1.length;
         this.§=$=§ = param1.§'#%§;
         this.§"$&§ = param1.dampingRatio;
         this.§9b§ = 0;
         this.§=#X§ = 0;
         this.§^U§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::6#6.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::]#j.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§9b§ * this.§;o§.x,param1 * this.§9b§ * this.§;o§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §%#`§() : Number
      {
         return this.§!"U§;
      }
      
      public function §7!I§(param1:Number) : void
      {
         this.§!"U§ = param1;
      }
      
      public function §9#m§() : Number
      {
         return this.§=$=§;
      }
      
      public function §;$%§(param1:Number) : void
      {
         this.§=$=§ = param1;
      }
      
      public function §2"N§() : Number
      {
         return this.§"$&§;
      }
      
      public function §8o§(param1:Number) : void
      {
         this.§"$&§ = param1;
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
         _loc4_ = b2internal::6#6;
         _loc5_ = b2internal::]#j;
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
         this.§;o§.x = _loc5_.m_sweep.c.x + _loc8_ - _loc4_.m_sweep.c.x - _loc6_;
         this.§;o§.y = _loc5_.m_sweep.c.y + _loc9_ - _loc4_.m_sweep.c.y - _loc7_;
         var _loc10_:Number;
         if((_loc10_ = Math.sqrt(this.§;o§.x * this.§;o§.x + this.§;o§.y * this.§;o§.y)) > b2Settings.b2_linearSlop)
         {
            this.§;o§.§#"I§(1 / _loc10_);
         }
         else
         {
            this.§;o§.§3-§();
         }
         var _loc11_:Number = _loc6_ * this.§;o§.y - _loc7_ * this.§;o§.x;
         var _loc12_:Number = _loc8_ * this.§;o§.y - _loc9_ * this.§;o§.x;
         var _loc13_:Number = _loc4_.§<A§ + _loc4_.§2k§ * _loc11_ * _loc11_ + _loc5_.§<A§ + _loc5_.§2k§ * _loc12_ * _loc12_;
         this.§'g§ = _loc13_ != 0 ? Number(1 / _loc13_) : Number(0);
         if(this.§=$=§ > 0)
         {
            _loc14_ = _loc10_ - this.§!"U§;
            _loc15_ = 2 * Math.PI * this.§=$=§;
            _loc16_ = 2 * this.§'g§ * this.§"$&§ * _loc15_;
            _loc17_ = this.§'g§ * _loc15_ * _loc15_;
            this.§=#X§ = param1.dt * (_loc16_ + param1.dt * _loc17_);
            this.§=#X§ = this.§=#X§ != 0 ? Number(1 / this.§=#X§) : Number(0);
            this.§^U§ = _loc14_ * param1.dt * _loc17_ * this.§=#X§;
            this.§'g§ = _loc13_ + this.§=#X§;
            this.§'g§ = this.§'g§ != 0 ? Number(1 / this.§'g§) : Number(0);
         }
         if(param1.§^q§)
         {
            this.§9b§ *= param1.§%!U§;
            _loc18_ = this.§9b§ * this.§;o§.x;
            _loc19_ = this.§9b§ * this.§;o§.y;
            _loc4_.§^%§.x -= _loc4_.§<A§ * _loc18_;
            _loc4_.§^%§.y -= _loc4_.§<A§ * _loc19_;
            _loc4_.m_angularVelocity -= _loc4_.§2k§ * (_loc6_ * _loc19_ - _loc7_ * _loc18_);
            _loc5_.§^%§.x += _loc5_.§<A§ * _loc18_;
            _loc5_.§^%§.y += _loc5_.§<A§ * _loc19_;
            _loc5_.m_angularVelocity += _loc5_.§2k§ * (_loc8_ * _loc19_ - _loc9_ * _loc18_);
         }
         else
         {
            this.§9b§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:b2Body = b2internal::6#6;
         var _loc4_:b2Body = b2internal::]#j;
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
         var _loc10_:Number = _loc3_.§^%§.x + -_loc3_.m_angularVelocity * _loc6_;
         var _loc11_:Number = _loc3_.§^%§.y + _loc3_.m_angularVelocity * _loc5_;
         var _loc12_:Number = _loc4_.§^%§.x + -_loc4_.m_angularVelocity * _loc9_;
         var _loc13_:Number = _loc4_.§^%§.y + _loc4_.m_angularVelocity * _loc8_;
         var _loc14_:Number = this.§;o§.x * (_loc12_ - _loc10_) + this.§;o§.y * (_loc13_ - _loc11_);
         var _loc15_:Number = -this.§'g§ * (_loc14_ + this.§^U§ + this.§=#X§ * this.§9b§);
         this.§9b§ += _loc15_;
         var _loc16_:Number = _loc15_ * this.§;o§.x;
         var _loc17_:Number = _loc15_ * this.§;o§.y;
         _loc3_.§^%§.x -= _loc3_.§<A§ * _loc16_;
         _loc3_.§^%§.y -= _loc3_.§<A§ * _loc17_;
         _loc3_.m_angularVelocity -= _loc3_.§2k§ * (_loc5_ * _loc17_ - _loc6_ * _loc16_);
         _loc4_.§^%§.x += _loc4_.§<A§ * _loc16_;
         _loc4_.§^%§.y += _loc4_.§<A§ * _loc17_;
         _loc4_.m_angularVelocity += _loc4_.§2k§ * (_loc8_ * _loc17_ - _loc9_ * _loc16_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc2_:b2Mat22 = null;
         if(this.§=$=§ > 0)
         {
            return true;
         }
         var _loc3_:b2Body = b2internal::6#6;
         var _loc4_:b2Body = b2internal::]#j;
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
         var _loc13_:Number = _loc12_ - this.§!"U§;
         _loc13_ = b2Math.§!!7§(_loc13_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
         var _loc14_:Number = -this.§'g§ * _loc13_;
         this.§;o§.Set(_loc10_,_loc11_);
         var _loc15_:Number = _loc14_ * this.§;o§.x;
         var _loc16_:Number = _loc14_ * this.§;o§.y;
         _loc3_.m_sweep.c.x -= _loc3_.§<A§ * _loc15_;
         _loc3_.m_sweep.c.y -= _loc3_.§<A§ * _loc16_;
         _loc3_.m_sweep.a -= _loc3_.§2k§ * (_loc5_ * _loc16_ - _loc6_ * _loc15_);
         _loc4_.m_sweep.c.x += _loc4_.§<A§ * _loc15_;
         _loc4_.m_sweep.c.y += _loc4_.§<A§ * _loc16_;
         _loc4_.m_sweep.a += _loc4_.§2k§ * (_loc8_ * _loc16_ - _loc9_ * _loc15_);
         _loc3_.§&" §();
         _loc4_.§&" §();
         return b2Math.§0!2§(_loc13_) < b2Settings.b2_linearSlop;
      }
   }
}
