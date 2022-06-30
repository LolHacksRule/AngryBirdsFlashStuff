package §@!]§
{
   import §,!3§.b2Mat22;
   import §,!3§.b2Math;
   import §,!3§.b2Vec2;
   import §3'§.b2Settings;
   import §3'§.b2internal;
   import §?!F§.b2Body;
   import §?!F§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2DistanceJoint extends b2Joint
   {
       
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var §8!?§:b2Vec2;
      
      private var §@r§:Number;
      
      private var §%!I§:Number;
      
      private var §1!$§:Number;
      
      private var §-!N§:Number;
      
      private var §9y§:Number;
      
      private var §8!#§:Number;
      
      private var §,J§:Number;
      
      public function b2DistanceJoint(param1:b2DistanceJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§8!?§ = new b2Vec2();
         super(param1);
         this.m_localAnchor1.SetV(param1.§&!0§);
         this.m_localAnchor2.SetV(param1.§,%§);
         this.§,J§ = param1.length;
         this.§@r§ = param1.§?1§;
         this.§%!I§ = param1.§%m§;
         this.§9y§ = 0;
         this.§1!$§ = 0;
         this.§-!N§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::]!O.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::2!=.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§9y§ * this.§8!?§.x,param1 * this.§9y§ * this.§8!?§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §^L§() : Number
      {
         return this.§,J§;
      }
      
      public function §3!,§(param1:Number) : void
      {
         this.§,J§ = param1;
      }
      
      public function §&!`§() : Number
      {
         return this.§@r§;
      }
      
      public function §>m§(param1:Number) : void
      {
         this.§@r§ = param1;
      }
      
      public function §38§() : Number
      {
         return this.§%!I§;
      }
      
      public function §?c§(param1:Number) : void
      {
         this.§%!I§ = param1;
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
         _loc4_ = b2internal::]!O;
         _loc5_ = b2internal::2!=;
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
         this.§8!?§.x = _loc5_.m_sweep.c.x + _loc8_ - _loc4_.m_sweep.c.x - _loc6_;
         this.§8!?§.y = _loc5_.m_sweep.c.y + _loc9_ - _loc4_.m_sweep.c.y - _loc7_;
         var _loc10_:Number;
         if((_loc10_ = Math.sqrt(this.§8!?§.x * this.§8!?§.x + this.§8!?§.y * this.§8!?§.y)) > b2Settings.b2_linearSlop)
         {
            this.§8!?§.§6!%§(1 / _loc10_);
         }
         else
         {
            this.§8!?§.§#!d§();
         }
         var _loc11_:Number = _loc6_ * this.§8!?§.y - _loc7_ * this.§8!?§.x;
         var _loc12_:Number = _loc8_ * this.§8!?§.y - _loc9_ * this.§8!?§.x;
         var _loc13_:Number = _loc4_.§;!E§ + _loc4_.§8z§ * _loc11_ * _loc11_ + _loc5_.§;!E§ + _loc5_.§8z§ * _loc12_ * _loc12_;
         this.§8!#§ = _loc13_ != 0 ? Number(1 / _loc13_) : Number(0);
         if(this.§@r§ > 0)
         {
            _loc14_ = _loc10_ - this.§,J§;
            _loc15_ = 2 * Math.PI * this.§@r§;
            _loc16_ = 2 * this.§8!#§ * this.§%!I§ * _loc15_;
            _loc17_ = this.§8!#§ * _loc15_ * _loc15_;
            this.§1!$§ = param1.§3v§ * (_loc16_ + param1.§3v§ * _loc17_);
            this.§1!$§ = this.§1!$§ != 0 ? Number(1 / this.§1!$§) : Number(0);
            this.§-!N§ = _loc14_ * param1.§3v§ * _loc17_ * this.§1!$§;
            this.§8!#§ = _loc13_ + this.§1!$§;
            this.§8!#§ = this.§8!#§ != 0 ? Number(1 / this.§8!#§) : Number(0);
         }
         if(param1.§3+§)
         {
            this.§9y§ *= param1.§%"§;
            _loc18_ = this.§9y§ * this.§8!?§.x;
            _loc19_ = this.§9y§ * this.§8!?§.y;
            _loc4_.§#A§.x -= _loc4_.§;!E§ * _loc18_;
            _loc4_.§#A§.y -= _loc4_.§;!E§ * _loc19_;
            _loc4_.m_angularVelocity -= _loc4_.§8z§ * (_loc6_ * _loc19_ - _loc7_ * _loc18_);
            _loc5_.§#A§.x += _loc5_.§;!E§ * _loc18_;
            _loc5_.§#A§.y += _loc5_.§;!E§ * _loc19_;
            _loc5_.m_angularVelocity += _loc5_.§8z§ * (_loc8_ * _loc19_ - _loc9_ * _loc18_);
         }
         else
         {
            this.§9y§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:b2Body = b2internal::]!O;
         var _loc4_:b2Body = b2internal::2!=;
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
         var _loc10_:Number = _loc3_.§#A§.x + -_loc3_.m_angularVelocity * _loc6_;
         var _loc11_:Number = _loc3_.§#A§.y + _loc3_.m_angularVelocity * _loc5_;
         var _loc12_:Number = _loc4_.§#A§.x + -_loc4_.m_angularVelocity * _loc9_;
         var _loc13_:Number = _loc4_.§#A§.y + _loc4_.m_angularVelocity * _loc8_;
         var _loc14_:Number = this.§8!?§.x * (_loc12_ - _loc10_) + this.§8!?§.y * (_loc13_ - _loc11_);
         var _loc15_:Number = -this.§8!#§ * (_loc14_ + this.§-!N§ + this.§1!$§ * this.§9y§);
         this.§9y§ += _loc15_;
         var _loc16_:Number = _loc15_ * this.§8!?§.x;
         var _loc17_:Number = _loc15_ * this.§8!?§.y;
         _loc3_.§#A§.x -= _loc3_.§;!E§ * _loc16_;
         _loc3_.§#A§.y -= _loc3_.§;!E§ * _loc17_;
         _loc3_.m_angularVelocity -= _loc3_.§8z§ * (_loc5_ * _loc17_ - _loc6_ * _loc16_);
         _loc4_.§#A§.x += _loc4_.§;!E§ * _loc16_;
         _loc4_.§#A§.y += _loc4_.§;!E§ * _loc17_;
         _loc4_.m_angularVelocity += _loc4_.§8z§ * (_loc8_ * _loc17_ - _loc9_ * _loc16_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc2_:b2Mat22 = null;
         if(this.§@r§ > 0)
         {
            return true;
         }
         var _loc3_:b2Body = b2internal::]!O;
         var _loc4_:b2Body = b2internal::2!=;
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
         var _loc13_:Number = _loc12_ - this.§,J§;
         _loc13_ = b2Math.§8![§(_loc13_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
         var _loc14_:Number = -this.§8!#§ * _loc13_;
         this.§8!?§.Set(_loc10_,_loc11_);
         var _loc15_:Number = _loc14_ * this.§8!?§.x;
         var _loc16_:Number = _loc14_ * this.§8!?§.y;
         _loc3_.m_sweep.c.x -= _loc3_.§;!E§ * _loc15_;
         _loc3_.m_sweep.c.y -= _loc3_.§;!E§ * _loc16_;
         _loc3_.m_sweep.a -= _loc3_.§8z§ * (_loc5_ * _loc16_ - _loc6_ * _loc15_);
         _loc4_.m_sweep.c.x += _loc4_.§;!E§ * _loc15_;
         _loc4_.m_sweep.c.y += _loc4_.§;!E§ * _loc16_;
         _loc4_.m_sweep.a += _loc4_.§8z§ * (_loc8_ * _loc16_ - _loc9_ * _loc15_);
         _loc3_.§+?§();
         _loc4_.§+?§();
         return b2Math.§?A§(_loc13_) < b2Settings.b2_linearSlop;
      }
   }
}
