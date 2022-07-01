package §,H§
{
   import §'I§.b2Settings;
   import §'I§.b2internal;
   import §9!Z§.b2Body;
   import §9!Z§.b2TimeStep;
   import §?"'§.b2Mat22;
   import §?"'§.b2Math;
   import §?"'§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2DistanceJoint extends b2Joint
   {
       
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var §^X§:b2Vec2;
      
      private var §@s§:Number;
      
      private var §0?§:Number;
      
      private var §'!S§:Number;
      
      private var §-<§:Number;
      
      private var §9!z§:Number;
      
      private var §<Q§:Number;
      
      private var §4!s§:Number;
      
      public function b2DistanceJoint(param1:b2DistanceJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§^X§ = new b2Vec2();
         super(param1);
         this.m_localAnchor1.SetV(param1.§'&§);
         this.m_localAnchor2.SetV(param1.§%"0§);
         this.§4!s§ = param1.length;
         this.§@s§ = param1.§;K§;
         this.§0?§ = param1.dampingRatio;
         this.§9!z§ = 0;
         this.§'!S§ = 0;
         this.§-<§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::3v.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::;Q.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§9!z§ * this.§^X§.x,param1 * this.§9!z§ * this.§^X§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §0!t§() : Number
      {
         return this.§4!s§;
      }
      
      public function §`N§(param1:Number) : void
      {
         this.§4!s§ = param1;
      }
      
      public function §[r§() : Number
      {
         return this.§@s§;
      }
      
      public function §9]§(param1:Number) : void
      {
         this.§@s§ = param1;
      }
      
      public function §!L§() : Number
      {
         return this.§0?§;
      }
      
      public function §3!D§(param1:Number) : void
      {
         this.§0?§ = param1;
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
         _loc4_ = b2internal::3v;
         _loc5_ = b2internal::;Q;
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
         this.§^X§.x = _loc5_.m_sweep.c.x + _loc8_ - _loc4_.m_sweep.c.x - _loc6_;
         this.§^X§.y = _loc5_.m_sweep.c.y + _loc9_ - _loc4_.m_sweep.c.y - _loc7_;
         var _loc10_:Number;
         if((_loc10_ = Math.sqrt(this.§^X§.x * this.§^X§.x + this.§^X§.y * this.§^X§.y)) > b2Settings.b2_linearSlop)
         {
            this.§^X§.§'9§(1 / _loc10_);
         }
         else
         {
            this.§^X§.§6!c§();
         }
         var _loc11_:Number = _loc6_ * this.§^X§.y - _loc7_ * this.§^X§.x;
         var _loc12_:Number = _loc8_ * this.§^X§.y - _loc9_ * this.§^X§.x;
         var _loc13_:Number = _loc4_.§;!R§ + _loc4_.§1!k§ * _loc11_ * _loc11_ + _loc5_.§;!R§ + _loc5_.§1!k§ * _loc12_ * _loc12_;
         this.§<Q§ = _loc13_ != 0 ? Number(1 / _loc13_) : Number(0);
         if(this.§@s§ > 0)
         {
            _loc14_ = _loc10_ - this.§4!s§;
            _loc15_ = 2 * Math.PI * this.§@s§;
            _loc16_ = 2 * this.§<Q§ * this.§0?§ * _loc15_;
            _loc17_ = this.§<Q§ * _loc15_ * _loc15_;
            this.§'!S§ = param1.§>!`§ * (_loc16_ + param1.§>!`§ * _loc17_);
            this.§'!S§ = this.§'!S§ != 0 ? Number(1 / this.§'!S§) : Number(0);
            this.§-<§ = _loc14_ * param1.§>!`§ * _loc17_ * this.§'!S§;
            this.§<Q§ = _loc13_ + this.§'!S§;
            this.§<Q§ = this.§<Q§ != 0 ? Number(1 / this.§<Q§) : Number(0);
         }
         if(param1.§#=§)
         {
            this.§9!z§ *= param1.§6!'§;
            _loc18_ = this.§9!z§ * this.§^X§.x;
            _loc19_ = this.§9!z§ * this.§^X§.y;
            _loc4_.§ Y§.x -= _loc4_.§;!R§ * _loc18_;
            _loc4_.§ Y§.y -= _loc4_.§;!R§ * _loc19_;
            _loc4_.m_angularVelocity -= _loc4_.§1!k§ * (_loc6_ * _loc19_ - _loc7_ * _loc18_);
            _loc5_.§ Y§.x += _loc5_.§;!R§ * _loc18_;
            _loc5_.§ Y§.y += _loc5_.§;!R§ * _loc19_;
            _loc5_.m_angularVelocity += _loc5_.§1!k§ * (_loc8_ * _loc19_ - _loc9_ * _loc18_);
         }
         else
         {
            this.§9!z§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:b2Body = b2internal::3v;
         var _loc4_:b2Body = b2internal::;Q;
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
         var _loc10_:Number = _loc3_.§ Y§.x + -_loc3_.m_angularVelocity * _loc6_;
         var _loc11_:Number = _loc3_.§ Y§.y + _loc3_.m_angularVelocity * _loc5_;
         var _loc12_:Number = _loc4_.§ Y§.x + -_loc4_.m_angularVelocity * _loc9_;
         var _loc13_:Number = _loc4_.§ Y§.y + _loc4_.m_angularVelocity * _loc8_;
         var _loc14_:Number = this.§^X§.x * (_loc12_ - _loc10_) + this.§^X§.y * (_loc13_ - _loc11_);
         var _loc15_:Number = -this.§<Q§ * (_loc14_ + this.§-<§ + this.§'!S§ * this.§9!z§);
         this.§9!z§ += _loc15_;
         var _loc16_:Number = _loc15_ * this.§^X§.x;
         var _loc17_:Number = _loc15_ * this.§^X§.y;
         _loc3_.§ Y§.x -= _loc3_.§;!R§ * _loc16_;
         _loc3_.§ Y§.y -= _loc3_.§;!R§ * _loc17_;
         _loc3_.m_angularVelocity -= _loc3_.§1!k§ * (_loc5_ * _loc17_ - _loc6_ * _loc16_);
         _loc4_.§ Y§.x += _loc4_.§;!R§ * _loc16_;
         _loc4_.§ Y§.y += _loc4_.§;!R§ * _loc17_;
         _loc4_.m_angularVelocity += _loc4_.§1!k§ * (_loc8_ * _loc17_ - _loc9_ * _loc16_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc2_:b2Mat22 = null;
         if(this.§@s§ > 0)
         {
            return true;
         }
         var _loc3_:b2Body = b2internal::3v;
         var _loc4_:b2Body = b2internal::;Q;
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
         var _loc13_:Number = _loc12_ - this.§4!s§;
         _loc13_ = b2Math.§8M§(_loc13_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
         var _loc14_:Number = -this.§<Q§ * _loc13_;
         this.§^X§.Set(_loc10_,_loc11_);
         var _loc15_:Number = _loc14_ * this.§^X§.x;
         var _loc16_:Number = _loc14_ * this.§^X§.y;
         _loc3_.m_sweep.c.x -= _loc3_.§;!R§ * _loc15_;
         _loc3_.m_sweep.c.y -= _loc3_.§;!R§ * _loc16_;
         _loc3_.m_sweep.a -= _loc3_.§1!k§ * (_loc5_ * _loc16_ - _loc6_ * _loc15_);
         _loc4_.m_sweep.c.x += _loc4_.§;!R§ * _loc15_;
         _loc4_.m_sweep.c.y += _loc4_.§;!R§ * _loc16_;
         _loc4_.m_sweep.a += _loc4_.§1!k§ * (_loc8_ * _loc16_ - _loc9_ * _loc15_);
         _loc3_.§>#§();
         _loc4_.§>#§();
         return b2Math.§<#§(_loc13_) < b2Settings.b2_linearSlop;
      }
   }
}
