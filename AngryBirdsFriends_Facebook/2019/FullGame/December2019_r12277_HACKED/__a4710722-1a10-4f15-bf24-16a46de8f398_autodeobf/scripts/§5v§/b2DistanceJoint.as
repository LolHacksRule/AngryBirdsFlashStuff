package §5v§
{
   import §1#F§.b2Settings;
   import §1#F§.b2internal;
   import §3#h§.b2Body;
   import §3#h§.b2TimeStep;
   import §6!R§.b2Mat22;
   import §6!R§.b2Math;
   import §6!R§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2DistanceJoint extends b2Joint
   {
       
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var §`$+§:b2Vec2;
      
      private var §+#F§:Number;
      
      private var §1m§:Number;
      
      private var §2!i§:Number;
      
      private var §4"t§:Number;
      
      private var §]#N§:Number;
      
      private var §!#v§:Number;
      
      private var §7u§:Number;
      
      public function b2DistanceJoint(param1:b2DistanceJointDef)
      {
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§`$+§ = new b2Vec2();
         super(param1);
         this.m_localAnchor1.SetV(param1.§"#b§);
         this.m_localAnchor2.SetV(param1.§[#b§);
         this.§7u§ = param1.length;
         this.§+#F§ = param1.§6"%§;
         this.§1m§ = param1.dampingRatio;
         this.§]#N§ = 0;
         this.§2!i§ = 0;
         this.§4"t§ = 0;
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
         return new b2Vec2(param1 * this.§]#N§ * this.§`$+§.x,param1 * this.§]#N§ * this.§`$+§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §6F§() : Number
      {
         return this.§7u§;
      }
      
      public function §`"P§(param1:Number) : void
      {
         this.§7u§ = param1;
      }
      
      public function §`#z§() : Number
      {
         return this.§+#F§;
      }
      
      public function §#",§(param1:Number) : void
      {
         this.§+#F§ = param1;
      }
      
      public function § "i§() : Number
      {
         return this.§1m§;
      }
      
      public function §4#+§(param1:Number) : void
      {
         this.§1m§ = param1;
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
         _loc4_ = b2internal:: ?;
         _loc5_ = b2internal:: #q;
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
         this.§`$+§.x = _loc5_.m_sweep.c.x + _loc8_ - _loc4_.m_sweep.c.x - _loc6_;
         this.§`$+§.y = _loc5_.m_sweep.c.y + _loc9_ - _loc4_.m_sweep.c.y - _loc7_;
         var _loc10_:Number;
         if((_loc10_ = Math.sqrt(this.§`$+§.x * this.§`$+§.x + this.§`$+§.y * this.§`$+§.y)) > b2Settings.b2_linearSlop)
         {
            this.§`$+§.§%!G§(1 / _loc10_);
         }
         else
         {
            this.§`$+§.§%"N§();
         }
         var _loc11_:Number = _loc6_ * this.§`$+§.y - _loc7_ * this.§`$+§.x;
         var _loc12_:Number = _loc8_ * this.§`$+§.y - _loc9_ * this.§`$+§.x;
         var _loc13_:Number = _loc4_.§0#d§ + _loc4_.§!!!§ * _loc11_ * _loc11_ + _loc5_.§0#d§ + _loc5_.§!!!§ * _loc12_ * _loc12_;
         this.§!#v§ = _loc13_ != 0 ? Number(1 / _loc13_) : Number(0);
         if(this.§+#F§ > 0)
         {
            _loc14_ = _loc10_ - this.§7u§;
            _loc15_ = 2 * Math.PI * this.§+#F§;
            _loc16_ = 2 * this.§!#v§ * this.§1m§ * _loc15_;
            _loc17_ = this.§!#v§ * _loc15_ * _loc15_;
            this.§2!i§ = param1.dt * (_loc16_ + param1.dt * _loc17_);
            this.§2!i§ = this.§2!i§ != 0 ? Number(1 / this.§2!i§) : Number(0);
            this.§4"t§ = _loc14_ * param1.dt * _loc17_ * this.§2!i§;
            this.§!#v§ = _loc13_ + this.§2!i§;
            this.§!#v§ = this.§!#v§ != 0 ? Number(1 / this.§!#v§) : Number(0);
         }
         if(param1.§+L§)
         {
            this.§]#N§ *= param1.§1$5§;
            _loc18_ = this.§]#N§ * this.§`$+§.x;
            _loc19_ = this.§]#N§ * this.§`$+§.y;
            _loc4_.§=!c§.x -= _loc4_.§0#d§ * _loc18_;
            _loc4_.§=!c§.y -= _loc4_.§0#d§ * _loc19_;
            _loc4_.m_angularVelocity -= _loc4_.§!!!§ * (_loc6_ * _loc19_ - _loc7_ * _loc18_);
            _loc5_.§=!c§.x += _loc5_.§0#d§ * _loc18_;
            _loc5_.§=!c§.y += _loc5_.§0#d§ * _loc19_;
            _loc5_.m_angularVelocity += _loc5_.§!!!§ * (_loc8_ * _loc19_ - _loc9_ * _loc18_);
         }
         else
         {
            this.§]#N§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:b2Body = b2internal:: ?;
         var _loc4_:b2Body = b2internal:: #q;
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
         var _loc10_:Number = _loc3_.§=!c§.x + -_loc3_.m_angularVelocity * _loc6_;
         var _loc11_:Number = _loc3_.§=!c§.y + _loc3_.m_angularVelocity * _loc5_;
         var _loc12_:Number = _loc4_.§=!c§.x + -_loc4_.m_angularVelocity * _loc9_;
         var _loc13_:Number = _loc4_.§=!c§.y + _loc4_.m_angularVelocity * _loc8_;
         var _loc14_:Number = this.§`$+§.x * (_loc12_ - _loc10_) + this.§`$+§.y * (_loc13_ - _loc11_);
         var _loc15_:Number = -this.§!#v§ * (_loc14_ + this.§4"t§ + this.§2!i§ * this.§]#N§);
         this.§]#N§ += _loc15_;
         var _loc16_:Number = _loc15_ * this.§`$+§.x;
         var _loc17_:Number = _loc15_ * this.§`$+§.y;
         _loc3_.§=!c§.x -= _loc3_.§0#d§ * _loc16_;
         _loc3_.§=!c§.y -= _loc3_.§0#d§ * _loc17_;
         _loc3_.m_angularVelocity -= _loc3_.§!!!§ * (_loc5_ * _loc17_ - _loc6_ * _loc16_);
         _loc4_.§=!c§.x += _loc4_.§0#d§ * _loc16_;
         _loc4_.§=!c§.y += _loc4_.§0#d§ * _loc17_;
         _loc4_.m_angularVelocity += _loc4_.§!!!§ * (_loc8_ * _loc17_ - _loc9_ * _loc16_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc2_:b2Mat22 = null;
         if(this.§+#F§ > 0)
         {
            return true;
         }
         var _loc3_:b2Body = b2internal:: ?;
         var _loc4_:b2Body = b2internal:: #q;
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
         var _loc13_:Number = _loc12_ - this.§7u§;
         _loc13_ = b2Math.§-$"§(_loc13_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
         var _loc14_:Number = -this.§!#v§ * _loc13_;
         this.§`$+§.Set(_loc10_,_loc11_);
         var _loc15_:Number = _loc14_ * this.§`$+§.x;
         var _loc16_:Number = _loc14_ * this.§`$+§.y;
         _loc3_.m_sweep.c.x -= _loc3_.§0#d§ * _loc15_;
         _loc3_.m_sweep.c.y -= _loc3_.§0#d§ * _loc16_;
         _loc3_.m_sweep.a -= _loc3_.§!!!§ * (_loc5_ * _loc16_ - _loc6_ * _loc15_);
         _loc4_.m_sweep.c.x += _loc4_.§0#d§ * _loc15_;
         _loc4_.m_sweep.c.y += _loc4_.§0#d§ * _loc16_;
         _loc4_.m_sweep.a += _loc4_.§!!!§ * (_loc8_ * _loc16_ - _loc9_ * _loc15_);
         _loc3_.§[!C§();
         _loc4_.§[!C§();
         return b2Math.§##%§(_loc13_) < b2Settings.b2_linearSlop;
      }
   }
}
