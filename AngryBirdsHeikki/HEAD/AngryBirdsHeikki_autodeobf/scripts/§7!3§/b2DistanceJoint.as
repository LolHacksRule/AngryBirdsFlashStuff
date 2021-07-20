package §7!3§
{
   import §+d§.b2Body;
   import §+d§.b2TimeStep;
   import §6%§.b2Settings;
   import §6%§.b2internal;
   import §`!^§.b2Mat22;
   import §`!^§.b2Math;
   import §`!^§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2DistanceJoint extends b2Joint
   {
       
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var §#!J§:b2Vec2;
      
      private var §5!K§:Number;
      
      private var §>d§:Number;
      
      private var §`u§:Number;
      
      private var §=!?§:Number;
      
      private var §[H§:Number;
      
      private var §3!@§:Number;
      
      private var §set §:Number;
      
      public function b2DistanceJoint(param1:b2DistanceJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§#!J§ = new b2Vec2();
         super(param1);
         this.m_localAnchor1.SetV(param1.§ 3§);
         this.m_localAnchor2.SetV(param1.§&!-§);
         this.§set § = param1.length;
         this.§5!K§ = param1.§^!e§;
         this.§>d§ = param1.§4!G§;
         this.§[H§ = 0;
         this.§`u§ = 0;
         this.§=!?§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::5!R.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::>D.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§[H§ * this.§#!J§.x,param1 * this.§[H§ * this.§#!J§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §!!,§() : Number
      {
         return this.§set §;
      }
      
      public function §]p§(param1:Number) : void
      {
         this.§set § = param1;
      }
      
      public function §,t§() : Number
      {
         return this.§5!K§;
      }
      
      public function §,!G§(param1:Number) : void
      {
         this.§5!K§ = param1;
      }
      
      public function §+i§() : Number
      {
         return this.§>d§;
      }
      
      public function §2!&§(param1:Number) : void
      {
         this.§>d§ = param1;
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
         _loc4_ = b2internal::5!R;
         _loc5_ = b2internal::>D;
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
         this.§#!J§.x = _loc5_.m_sweep.c.x + _loc8_ - _loc4_.m_sweep.c.x - _loc6_;
         this.§#!J§.y = _loc5_.m_sweep.c.y + _loc9_ - _loc4_.m_sweep.c.y - _loc7_;
         var _loc10_:Number;
         if((_loc10_ = Math.sqrt(this.§#!J§.x * this.§#!J§.x + this.§#!J§.y * this.§#!J§.y)) > b2Settings.b2_linearSlop)
         {
            this.§#!J§.§6Q§(1 / _loc10_);
         }
         else
         {
            this.§#!J§.§8c§();
         }
         var _loc11_:Number = _loc6_ * this.§#!J§.y - _loc7_ * this.§#!J§.x;
         var _loc12_:Number = _loc8_ * this.§#!J§.y - _loc9_ * this.§#!J§.x;
         var _loc13_:Number = _loc4_.§@h§ + _loc4_.§8t§ * _loc11_ * _loc11_ + _loc5_.§@h§ + _loc5_.§8t§ * _loc12_ * _loc12_;
         this.§3!@§ = _loc13_ != 0 ? Number(1 / _loc13_) : Number(0);
         if(this.§5!K§ > 0)
         {
            _loc14_ = _loc10_ - this.§set §;
            _loc15_ = 2 * Math.PI * this.§5!K§;
            _loc16_ = 2 * this.§3!@§ * this.§>d§ * _loc15_;
            _loc17_ = this.§3!@§ * _loc15_ * _loc15_;
            this.§`u§ = param1.§,>§ * (_loc16_ + param1.§,>§ * _loc17_);
            this.§`u§ = this.§`u§ != 0 ? Number(1 / this.§`u§) : Number(0);
            this.§=!?§ = _loc14_ * param1.§,>§ * _loc17_ * this.§`u§;
            this.§3!@§ = _loc13_ + this.§`u§;
            this.§3!@§ = this.§3!@§ != 0 ? Number(1 / this.§3!@§) : Number(0);
         }
         if(param1.§`!;§)
         {
            this.§[H§ *= param1.§"§;
            _loc18_ = this.§[H§ * this.§#!J§.x;
            _loc19_ = this.§[H§ * this.§#!J§.y;
            _loc4_.§^!S§.x -= _loc4_.§@h§ * _loc18_;
            _loc4_.§^!S§.y -= _loc4_.§@h§ * _loc19_;
            _loc4_.m_angularVelocity -= _loc4_.§8t§ * (_loc6_ * _loc19_ - _loc7_ * _loc18_);
            _loc5_.§^!S§.x += _loc5_.§@h§ * _loc18_;
            _loc5_.§^!S§.y += _loc5_.§@h§ * _loc19_;
            _loc5_.m_angularVelocity += _loc5_.§8t§ * (_loc8_ * _loc19_ - _loc9_ * _loc18_);
         }
         else
         {
            this.§[H§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:b2Body = b2internal::5!R;
         var _loc4_:b2Body = b2internal::>D;
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
         var _loc10_:Number = _loc3_.§^!S§.x + -_loc3_.m_angularVelocity * _loc6_;
         var _loc11_:Number = _loc3_.§^!S§.y + _loc3_.m_angularVelocity * _loc5_;
         var _loc12_:Number = _loc4_.§^!S§.x + -_loc4_.m_angularVelocity * _loc9_;
         var _loc13_:Number = _loc4_.§^!S§.y + _loc4_.m_angularVelocity * _loc8_;
         var _loc14_:Number = this.§#!J§.x * (_loc12_ - _loc10_) + this.§#!J§.y * (_loc13_ - _loc11_);
         var _loc15_:Number = -this.§3!@§ * (_loc14_ + this.§=!?§ + this.§`u§ * this.§[H§);
         this.§[H§ += _loc15_;
         var _loc16_:Number = _loc15_ * this.§#!J§.x;
         var _loc17_:Number = _loc15_ * this.§#!J§.y;
         _loc3_.§^!S§.x -= _loc3_.§@h§ * _loc16_;
         _loc3_.§^!S§.y -= _loc3_.§@h§ * _loc17_;
         _loc3_.m_angularVelocity -= _loc3_.§8t§ * (_loc5_ * _loc17_ - _loc6_ * _loc16_);
         _loc4_.§^!S§.x += _loc4_.§@h§ * _loc16_;
         _loc4_.§^!S§.y += _loc4_.§@h§ * _loc17_;
         _loc4_.m_angularVelocity += _loc4_.§8t§ * (_loc8_ * _loc17_ - _loc9_ * _loc16_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc2_:b2Mat22 = null;
         if(this.§5!K§ > 0)
         {
            return true;
         }
         var _loc3_:b2Body = b2internal::5!R;
         var _loc4_:b2Body = b2internal::>D;
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
         var _loc13_:Number = _loc12_ - this.§set §;
         _loc13_ = b2Math.§6m§(_loc13_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
         var _loc14_:Number = -this.§3!@§ * _loc13_;
         this.§#!J§.Set(_loc10_,_loc11_);
         var _loc15_:Number = _loc14_ * this.§#!J§.x;
         var _loc16_:Number = _loc14_ * this.§#!J§.y;
         _loc3_.m_sweep.c.x -= _loc3_.§@h§ * _loc15_;
         _loc3_.m_sweep.c.y -= _loc3_.§@h§ * _loc16_;
         _loc3_.m_sweep.a -= _loc3_.§8t§ * (_loc5_ * _loc16_ - _loc6_ * _loc15_);
         _loc4_.m_sweep.c.x += _loc4_.§@h§ * _loc15_;
         _loc4_.m_sweep.c.y += _loc4_.§@h§ * _loc16_;
         _loc4_.m_sweep.a += _loc4_.§8t§ * (_loc8_ * _loc16_ - _loc9_ * _loc15_);
         _loc3_.§%t§();
         _loc4_.§%t§();
         return b2Math.§6!L§(_loc13_) < b2Settings.b2_linearSlop;
      }
   }
}
