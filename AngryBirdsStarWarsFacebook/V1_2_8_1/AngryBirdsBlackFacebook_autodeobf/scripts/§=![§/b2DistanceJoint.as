package §=![§
{
   import §7!I§.b2Settings;
   import §7!I§.b2internal;
   import §7"A§.b2Mat22;
   import §7"A§.b2Math;
   import §7"A§.b2Vec2;
   import §>"_§.b2Body;
   import §>"_§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2DistanceJoint extends b2Joint
   {
       
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var §@!y§:b2Vec2;
      
      private var §?Z§:Number;
      
      private var §+!6§:Number;
      
      private var §%"4§:Number;
      
      private var §]z§:Number;
      
      private var §8!t§:Number;
      
      private var §;,§:Number;
      
      private var §]#%§:Number;
      
      public function b2DistanceJoint(param1:b2DistanceJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§@!y§ = new b2Vec2();
         super(param1);
         this.m_localAnchor1.SetV(param1.§?"y§);
         this.m_localAnchor2.SetV(param1.§0d§);
         this.§]#%§ = param1.length;
         this.§?Z§ = param1.§?"^§;
         this.§+!6§ = param1.dampingRatio;
         this.§8!t§ = 0;
         this.§%"4§ = 0;
         this.§]z§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal:: ,.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::?!p.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§8!t§ * this.§@!y§.x,param1 * this.§8!t§ * this.§@!y§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §1#1§() : Number
      {
         return this.§]#%§;
      }
      
      public function §>""§(param1:Number) : void
      {
         this.§]#%§ = param1;
      }
      
      public function §%!z§() : Number
      {
         return this.§?Z§;
      }
      
      public function §3"H§(param1:Number) : void
      {
         this.§?Z§ = param1;
      }
      
      public function §>"2§() : Number
      {
         return this.§+!6§;
      }
      
      public function §,!f§(param1:Number) : void
      {
         this.§+!6§ = param1;
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
         _loc4_ = b2internal:: ,;
         _loc5_ = b2internal::?!p;
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
         this.§@!y§.x = _loc5_.m_sweep.c.x + _loc8_ - _loc4_.m_sweep.c.x - _loc6_;
         this.§@!y§.y = _loc5_.m_sweep.c.y + _loc9_ - _loc4_.m_sweep.c.y - _loc7_;
         var _loc10_:Number;
         if((_loc10_ = Math.sqrt(this.§@!y§.x * this.§@!y§.x + this.§@!y§.y * this.§@!y§.y)) > b2Settings.b2_linearSlop)
         {
            this.§@!y§.§ 6§(1 / _loc10_);
         }
         else
         {
            this.§@!y§.§6![§();
         }
         var _loc11_:Number = _loc6_ * this.§@!y§.y - _loc7_ * this.§@!y§.x;
         var _loc12_:Number = _loc8_ * this.§@!y§.y - _loc9_ * this.§@!y§.x;
         var _loc13_:Number = _loc4_.§ !o§ + _loc4_.§&#+§ * _loc11_ * _loc11_ + _loc5_.§ !o§ + _loc5_.§&#+§ * _loc12_ * _loc12_;
         this.§;,§ = _loc13_ != 0 ? Number(1 / _loc13_) : Number(0);
         if(this.§?Z§ > 0)
         {
            _loc14_ = _loc10_ - this.§]#%§;
            _loc15_ = 2 * Math.PI * this.§?Z§;
            _loc16_ = 2 * this.§;,§ * this.§+!6§ * _loc15_;
            _loc17_ = this.§;,§ * _loc15_ * _loc15_;
            this.§%"4§ = param1.§-!@§ * (_loc16_ + param1.§-!@§ * _loc17_);
            this.§%"4§ = this.§%"4§ != 0 ? Number(1 / this.§%"4§) : Number(0);
            this.§]z§ = _loc14_ * param1.§-!@§ * _loc17_ * this.§%"4§;
            this.§;,§ = _loc13_ + this.§%"4§;
            this.§;,§ = this.§;,§ != 0 ? Number(1 / this.§;,§) : Number(0);
         }
         if(param1.§?!'§)
         {
            this.§8!t§ *= param1.§!"J§;
            _loc18_ = this.§8!t§ * this.§@!y§.x;
            _loc19_ = this.§8!t§ * this.§@!y§.y;
            _loc4_.§9"H§.x -= _loc4_.§ !o§ * _loc18_;
            _loc4_.§9"H§.y -= _loc4_.§ !o§ * _loc19_;
            _loc4_.m_angularVelocity -= _loc4_.§&#+§ * (_loc6_ * _loc19_ - _loc7_ * _loc18_);
            _loc5_.§9"H§.x += _loc5_.§ !o§ * _loc18_;
            _loc5_.§9"H§.y += _loc5_.§ !o§ * _loc19_;
            _loc5_.m_angularVelocity += _loc5_.§&#+§ * (_loc8_ * _loc19_ - _loc9_ * _loc18_);
         }
         else
         {
            this.§8!t§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:b2Body = b2internal:: ,;
         var _loc4_:b2Body = b2internal::?!p;
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
         var _loc10_:Number = _loc3_.§9"H§.x + -_loc3_.m_angularVelocity * _loc6_;
         var _loc11_:Number = _loc3_.§9"H§.y + _loc3_.m_angularVelocity * _loc5_;
         var _loc12_:Number = _loc4_.§9"H§.x + -_loc4_.m_angularVelocity * _loc9_;
         var _loc13_:Number = _loc4_.§9"H§.y + _loc4_.m_angularVelocity * _loc8_;
         var _loc14_:Number = this.§@!y§.x * (_loc12_ - _loc10_) + this.§@!y§.y * (_loc13_ - _loc11_);
         var _loc15_:Number = -this.§;,§ * (_loc14_ + this.§]z§ + this.§%"4§ * this.§8!t§);
         this.§8!t§ += _loc15_;
         var _loc16_:Number = _loc15_ * this.§@!y§.x;
         var _loc17_:Number = _loc15_ * this.§@!y§.y;
         _loc3_.§9"H§.x -= _loc3_.§ !o§ * _loc16_;
         _loc3_.§9"H§.y -= _loc3_.§ !o§ * _loc17_;
         _loc3_.m_angularVelocity -= _loc3_.§&#+§ * (_loc5_ * _loc17_ - _loc6_ * _loc16_);
         _loc4_.§9"H§.x += _loc4_.§ !o§ * _loc16_;
         _loc4_.§9"H§.y += _loc4_.§ !o§ * _loc17_;
         _loc4_.m_angularVelocity += _loc4_.§&#+§ * (_loc8_ * _loc17_ - _loc9_ * _loc16_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc2_:b2Mat22 = null;
         if(this.§?Z§ > 0)
         {
            return true;
         }
         var _loc3_:b2Body = b2internal:: ,;
         var _loc4_:b2Body = b2internal::?!p;
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
         var _loc13_:Number = _loc12_ - this.§]#%§;
         _loc13_ = b2Math.§0!M§(_loc13_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
         var _loc14_:Number = -this.§;,§ * _loc13_;
         this.§@!y§.Set(_loc10_,_loc11_);
         var _loc15_:Number = _loc14_ * this.§@!y§.x;
         var _loc16_:Number = _loc14_ * this.§@!y§.y;
         _loc3_.m_sweep.c.x -= _loc3_.§ !o§ * _loc15_;
         _loc3_.m_sweep.c.y -= _loc3_.§ !o§ * _loc16_;
         _loc3_.m_sweep.a -= _loc3_.§&#+§ * (_loc5_ * _loc16_ - _loc6_ * _loc15_);
         _loc4_.m_sweep.c.x += _loc4_.§ !o§ * _loc15_;
         _loc4_.m_sweep.c.y += _loc4_.§ !o§ * _loc16_;
         _loc4_.m_sweep.a += _loc4_.§&#+§ * (_loc8_ * _loc16_ - _loc9_ * _loc15_);
         _loc3_.§&"]§();
         _loc4_.§&"]§();
         return b2Math.§>b§(_loc13_) < b2Settings.b2_linearSlop;
      }
   }
}
