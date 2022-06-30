package §6>§
{
   import §4x§.b2Settings;
   import §4x§.b2internal;
   import §8!I§.b2Body;
   import §8!I§.b2TimeStep;
   import §=i§.b2Mat22;
   import §=i§.b2Math;
   import §=i§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2DistanceJoint extends b2Joint
   {
       
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var §4Q§:b2Vec2;
      
      private var §=!^§:Number;
      
      private var §6!5§:Number;
      
      private var §<A§:Number;
      
      private var §3!1§:Number;
      
      private var §=!3§:Number;
      
      private var §!!9§:Number;
      
      private var §9M§:Number;
      
      public function b2DistanceJoint(param1:b2DistanceJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§4Q§ = new b2Vec2();
         super(param1);
         this.m_localAnchor1.SetV(param1.§ i§);
         this.m_localAnchor2.SetV(param1.§<=§);
         this.§9M§ = param1.length;
         this.§=!^§ = param1.§<!F§;
         this.§6!5§ = param1.§%z§;
         this.§=!3§ = 0;
         this.§<A§ = 0;
         this.§3!1§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::+!N.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::@;.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§=!3§ * this.§4Q§.x,param1 * this.§=!3§ * this.§4Q§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §?e§() : Number
      {
         return this.§9M§;
      }
      
      public function §[B§(param1:Number) : void
      {
         this.§9M§ = param1;
      }
      
      public function §,8§() : Number
      {
         return this.§=!^§;
      }
      
      public function §<Q§(param1:Number) : void
      {
         this.§=!^§ = param1;
      }
      
      public function §-!§() : Number
      {
         return this.§6!5§;
      }
      
      public function §!B§(param1:Number) : void
      {
         this.§6!5§ = param1;
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
         _loc4_ = b2internal::+!N;
         _loc5_ = b2internal::@;;
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
         this.§4Q§.x = _loc5_.m_sweep.c.x + _loc8_ - _loc4_.m_sweep.c.x - _loc6_;
         this.§4Q§.y = _loc5_.m_sweep.c.y + _loc9_ - _loc4_.m_sweep.c.y - _loc7_;
         var _loc10_:Number;
         if((_loc10_ = Math.sqrt(this.§4Q§.x * this.§4Q§.x + this.§4Q§.y * this.§4Q§.y)) > b2Settings.b2_linearSlop)
         {
            this.§4Q§.§[![§(1 / _loc10_);
         }
         else
         {
            this.§4Q§.§0!=§();
         }
         var _loc11_:Number = _loc6_ * this.§4Q§.y - _loc7_ * this.§4Q§.x;
         var _loc12_:Number = _loc8_ * this.§4Q§.y - _loc9_ * this.§4Q§.x;
         var _loc13_:Number = _loc4_.§=!C§ + _loc4_.§!!§ * _loc11_ * _loc11_ + _loc5_.§=!C§ + _loc5_.§!!§ * _loc12_ * _loc12_;
         this.§!!9§ = _loc13_ != 0 ? Number(1 / _loc13_) : Number(0);
         if(this.§=!^§ > 0)
         {
            _loc14_ = _loc10_ - this.§9M§;
            _loc15_ = 2 * Math.PI * this.§=!^§;
            _loc16_ = 2 * this.§!!9§ * this.§6!5§ * _loc15_;
            _loc17_ = this.§!!9§ * _loc15_ * _loc15_;
            this.§<A§ = param1.§5!8§ * (_loc16_ + param1.§5!8§ * _loc17_);
            this.§<A§ = this.§<A§ != 0 ? Number(1 / this.§<A§) : Number(0);
            this.§3!1§ = _loc14_ * param1.§5!8§ * _loc17_ * this.§<A§;
            this.§!!9§ = _loc13_ + this.§<A§;
            this.§!!9§ = this.§!!9§ != 0 ? Number(1 / this.§!!9§) : Number(0);
         }
         if(param1.§%r§)
         {
            this.§=!3§ *= param1.§^!Y§;
            _loc18_ = this.§=!3§ * this.§4Q§.x;
            _loc19_ = this.§=!3§ * this.§4Q§.y;
            _loc4_.§]J§.x -= _loc4_.§=!C§ * _loc18_;
            _loc4_.§]J§.y -= _loc4_.§=!C§ * _loc19_;
            _loc4_.m_angularVelocity -= _loc4_.§!!§ * (_loc6_ * _loc19_ - _loc7_ * _loc18_);
            _loc5_.§]J§.x += _loc5_.§=!C§ * _loc18_;
            _loc5_.§]J§.y += _loc5_.§=!C§ * _loc19_;
            _loc5_.m_angularVelocity += _loc5_.§!!§ * (_loc8_ * _loc19_ - _loc9_ * _loc18_);
         }
         else
         {
            this.§=!3§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:b2Body = b2internal::+!N;
         var _loc4_:b2Body = b2internal::@;;
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
         var _loc10_:Number = _loc3_.§]J§.x + -_loc3_.m_angularVelocity * _loc6_;
         var _loc11_:Number = _loc3_.§]J§.y + _loc3_.m_angularVelocity * _loc5_;
         var _loc12_:Number = _loc4_.§]J§.x + -_loc4_.m_angularVelocity * _loc9_;
         var _loc13_:Number = _loc4_.§]J§.y + _loc4_.m_angularVelocity * _loc8_;
         var _loc14_:Number = this.§4Q§.x * (_loc12_ - _loc10_) + this.§4Q§.y * (_loc13_ - _loc11_);
         var _loc15_:Number = -this.§!!9§ * (_loc14_ + this.§3!1§ + this.§<A§ * this.§=!3§);
         this.§=!3§ += _loc15_;
         var _loc16_:Number = _loc15_ * this.§4Q§.x;
         var _loc17_:Number = _loc15_ * this.§4Q§.y;
         _loc3_.§]J§.x -= _loc3_.§=!C§ * _loc16_;
         _loc3_.§]J§.y -= _loc3_.§=!C§ * _loc17_;
         _loc3_.m_angularVelocity -= _loc3_.§!!§ * (_loc5_ * _loc17_ - _loc6_ * _loc16_);
         _loc4_.§]J§.x += _loc4_.§=!C§ * _loc16_;
         _loc4_.§]J§.y += _loc4_.§=!C§ * _loc17_;
         _loc4_.m_angularVelocity += _loc4_.§!!§ * (_loc8_ * _loc17_ - _loc9_ * _loc16_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc2_:b2Mat22 = null;
         if(this.§=!^§ > 0)
         {
            return true;
         }
         var _loc3_:b2Body = b2internal::+!N;
         var _loc4_:b2Body = b2internal::@;;
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
         var _loc13_:Number = _loc12_ - this.§9M§;
         _loc13_ = b2Math.§%!c§(_loc13_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
         var _loc14_:Number = -this.§!!9§ * _loc13_;
         this.§4Q§.Set(_loc10_,_loc11_);
         var _loc15_:Number = _loc14_ * this.§4Q§.x;
         var _loc16_:Number = _loc14_ * this.§4Q§.y;
         _loc3_.m_sweep.c.x -= _loc3_.§=!C§ * _loc15_;
         _loc3_.m_sweep.c.y -= _loc3_.§=!C§ * _loc16_;
         _loc3_.m_sweep.a -= _loc3_.§!!§ * (_loc5_ * _loc16_ - _loc6_ * _loc15_);
         _loc4_.m_sweep.c.x += _loc4_.§=!C§ * _loc15_;
         _loc4_.m_sweep.c.y += _loc4_.§=!C§ * _loc16_;
         _loc4_.m_sweep.a += _loc4_.§!!§ * (_loc8_ * _loc16_ - _loc9_ * _loc15_);
         _loc3_.§,M§();
         _loc4_.§,M§();
         return b2Math.§]3§(_loc13_) < b2Settings.b2_linearSlop;
      }
   }
}
