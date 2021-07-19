package §,,§
{
   import §,"[§.b2Settings;
   import §,"[§.b2internal;
   import §6!^§.b2Mat22;
   import §6!^§.b2Math;
   import §6!^§.b2Vec2;
   import §6"1§.b2Body;
   import §6"1§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2DistanceJoint extends b2Joint
   {
       
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var §^"N§:b2Vec2;
      
      private var §&j§:Number;
      
      private var §6!A§:Number;
      
      private var §3'§:Number;
      
      private var §@>§:Number;
      
      private var §2!_§:Number;
      
      private var §,!v§:Number;
      
      private var §+!A§:Number;
      
      public function b2DistanceJoint(param1:b2DistanceJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§^"N§ = new b2Vec2();
         super(param1);
         this.m_localAnchor1.SetV(param1.§-!,§);
         this.m_localAnchor2.SetV(param1.§["9§);
         this.§+!A§ = param1.length;
         this.§&j§ = param1.§0c§;
         this.§6!A§ = param1.§6!i§;
         this.§2!_§ = 0;
         this.§3'§ = 0;
         this.§@>§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::3"X.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::5!.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§2!_§ * this.§^"N§.x,param1 * this.§2!_§ * this.§^"N§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §%x§() : Number
      {
         return this.§+!A§;
      }
      
      public function §?"%§(param1:Number) : void
      {
         this.§+!A§ = param1;
      }
      
      public function §-!o§() : Number
      {
         return this.§&j§;
      }
      
      public function § !x§(param1:Number) : void
      {
         this.§&j§ = param1;
      }
      
      public function §%g§() : Number
      {
         return this.§6!A§;
      }
      
      public function §^!v§(param1:Number) : void
      {
         this.§6!A§ = param1;
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
         _loc4_ = b2internal::3"X;
         _loc5_ = b2internal::5!;
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
         this.§^"N§.x = _loc5_.m_sweep.c.x + _loc8_ - _loc4_.m_sweep.c.x - _loc6_;
         this.§^"N§.y = _loc5_.m_sweep.c.y + _loc9_ - _loc4_.m_sweep.c.y - _loc7_;
         var _loc10_:Number;
         if((_loc10_ = Math.sqrt(this.§^"N§.x * this.§^"N§.x + this.§^"N§.y * this.§^"N§.y)) > b2Settings.b2_linearSlop)
         {
            this.§^"N§.§!!L§(1 / _loc10_);
         }
         else
         {
            this.§^"N§.§%y§();
         }
         var _loc11_:Number = _loc6_ * this.§^"N§.y - _loc7_ * this.§^"N§.x;
         var _loc12_:Number = _loc8_ * this.§^"N§.y - _loc9_ * this.§^"N§.x;
         var _loc13_:Number = _loc4_.§-@§ + _loc4_.§,H§ * _loc11_ * _loc11_ + _loc5_.§-@§ + _loc5_.§,H§ * _loc12_ * _loc12_;
         this.§,!v§ = _loc13_ != 0 ? Number(1 / _loc13_) : Number(0);
         if(this.§&j§ > 0)
         {
            _loc14_ = _loc10_ - this.§+!A§;
            _loc15_ = 2 * Math.PI * this.§&j§;
            _loc16_ = 2 * this.§,!v§ * this.§6!A§ * _loc15_;
            _loc17_ = this.§,!v§ * _loc15_ * _loc15_;
            this.§3'§ = param1.§;J§ * (_loc16_ + param1.§;J§ * _loc17_);
            this.§3'§ = this.§3'§ != 0 ? Number(1 / this.§3'§) : Number(0);
            this.§@>§ = _loc14_ * param1.§;J§ * _loc17_ * this.§3'§;
            this.§,!v§ = _loc13_ + this.§3'§;
            this.§,!v§ = this.§,!v§ != 0 ? Number(1 / this.§,!v§) : Number(0);
         }
         if(param1.§@I§)
         {
            this.§2!_§ *= param1.§]'§;
            _loc18_ = this.§2!_§ * this.§^"N§.x;
            _loc19_ = this.§2!_§ * this.§^"N§.y;
            _loc4_.§"!_§.x -= _loc4_.§-@§ * _loc18_;
            _loc4_.§"!_§.y -= _loc4_.§-@§ * _loc19_;
            _loc4_.m_angularVelocity -= _loc4_.§,H§ * (_loc6_ * _loc19_ - _loc7_ * _loc18_);
            _loc5_.§"!_§.x += _loc5_.§-@§ * _loc18_;
            _loc5_.§"!_§.y += _loc5_.§-@§ * _loc19_;
            _loc5_.m_angularVelocity += _loc5_.§,H§ * (_loc8_ * _loc19_ - _loc9_ * _loc18_);
         }
         else
         {
            this.§2!_§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:b2Body = b2internal::3"X;
         var _loc4_:b2Body = b2internal::5!;
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
         var _loc10_:Number = _loc3_.§"!_§.x + -_loc3_.m_angularVelocity * _loc6_;
         var _loc11_:Number = _loc3_.§"!_§.y + _loc3_.m_angularVelocity * _loc5_;
         var _loc12_:Number = _loc4_.§"!_§.x + -_loc4_.m_angularVelocity * _loc9_;
         var _loc13_:Number = _loc4_.§"!_§.y + _loc4_.m_angularVelocity * _loc8_;
         var _loc14_:Number = this.§^"N§.x * (_loc12_ - _loc10_) + this.§^"N§.y * (_loc13_ - _loc11_);
         var _loc15_:Number = -this.§,!v§ * (_loc14_ + this.§@>§ + this.§3'§ * this.§2!_§);
         this.§2!_§ += _loc15_;
         var _loc16_:Number = _loc15_ * this.§^"N§.x;
         var _loc17_:Number = _loc15_ * this.§^"N§.y;
         _loc3_.§"!_§.x -= _loc3_.§-@§ * _loc16_;
         _loc3_.§"!_§.y -= _loc3_.§-@§ * _loc17_;
         _loc3_.m_angularVelocity -= _loc3_.§,H§ * (_loc5_ * _loc17_ - _loc6_ * _loc16_);
         _loc4_.§"!_§.x += _loc4_.§-@§ * _loc16_;
         _loc4_.§"!_§.y += _loc4_.§-@§ * _loc17_;
         _loc4_.m_angularVelocity += _loc4_.§,H§ * (_loc8_ * _loc17_ - _loc9_ * _loc16_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc2_:b2Mat22 = null;
         if(this.§&j§ > 0)
         {
            return true;
         }
         var _loc3_:b2Body = b2internal::3"X;
         var _loc4_:b2Body = b2internal::5!;
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
         var _loc13_:Number = _loc12_ - this.§+!A§;
         _loc13_ = b2Math.§1"T§(_loc13_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
         var _loc14_:Number = -this.§,!v§ * _loc13_;
         this.§^"N§.Set(_loc10_,_loc11_);
         var _loc15_:Number = _loc14_ * this.§^"N§.x;
         var _loc16_:Number = _loc14_ * this.§^"N§.y;
         _loc3_.m_sweep.c.x -= _loc3_.§-@§ * _loc15_;
         _loc3_.m_sweep.c.y -= _loc3_.§-@§ * _loc16_;
         _loc3_.m_sweep.a -= _loc3_.§,H§ * (_loc5_ * _loc16_ - _loc6_ * _loc15_);
         _loc4_.m_sweep.c.x += _loc4_.§-@§ * _loc15_;
         _loc4_.m_sweep.c.y += _loc4_.§-@§ * _loc16_;
         _loc4_.m_sweep.a += _loc4_.§,H§ * (_loc8_ * _loc16_ - _loc9_ * _loc15_);
         _loc3_.§+!q§();
         _loc4_.§+!q§();
         return b2Math.§#X§(_loc13_) < b2Settings.b2_linearSlop;
      }
   }
}
