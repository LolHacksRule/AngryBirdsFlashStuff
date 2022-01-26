package §_-Rb§
{
   import §_-Zl§.b2Mat22;
   import §_-Zl§.b2Math;
   import §_-Zl§.b2Vec2;
   import §_-rg§.b2Body;
   import §_-rg§.b2TimeStep;
   import §_-uS§.b2Settings;
   import §_-uS§.b2internal;
   
   use namespace b2internal;
   
   public class b2DistanceJoint extends b2Joint
   {
       
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var §_-o-§:b2Vec2;
      
      private var §_-FM§:Number;
      
      private var §_-ka§:Number;
      
      private var §_-sz§:Number;
      
      private var §_-lP§:Number;
      
      private var §_-ro§:Number;
      
      private var §_-qa§:Number;
      
      private var §_-ct§:Number;
      
      public function b2DistanceJoint(param1:b2DistanceJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§_-o-§ = new b2Vec2();
         super(param1);
         this.m_localAnchor1.SetV(param1.§_-24§);
         this.m_localAnchor2.SetV(param1.§_-2Z§);
         this.§_-ct§ = param1.length;
         this.§_-FM§ = param1.§_-8R§;
         this.§_-ka§ = param1.§_-XX§;
         this.§_-ro§ = 0;
         this.§_-sz§ = 0;
         this.§_-lP§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::_-Rz.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::_-GP.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§_-ro§ * this.§_-o-§.x,param1 * this.§_-ro§ * this.§_-o-§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §_-v0§() : Number
      {
         return this.§_-ct§;
      }
      
      public function §_-mj§(param1:Number) : void
      {
         this.§_-ct§ = param1;
      }
      
      public function §_-QA§() : Number
      {
         return this.§_-FM§;
      }
      
      public function §_-bv§(param1:Number) : void
      {
         this.§_-FM§ = param1;
      }
      
      public function §_-lw§() : Number
      {
         return this.§_-ka§;
      }
      
      public function §_-Ct§(param1:Number) : void
      {
         this.§_-ka§ = param1;
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
         _loc4_ = b2internal::_-Rz;
         _loc5_ = b2internal::_-GP;
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
         this.§_-o-§.x = _loc5_.m_sweep.c.x + _loc8_ - _loc4_.m_sweep.c.x - _loc6_;
         this.§_-o-§.y = _loc5_.m_sweep.c.y + _loc9_ - _loc4_.m_sweep.c.y - _loc7_;
         var _loc10_:Number;
         if((_loc10_ = Math.sqrt(this.§_-o-§.x * this.§_-o-§.x + this.§_-o-§.y * this.§_-o-§.y)) > b2Settings.b2_linearSlop)
         {
            this.§_-o-§.§_-v8§(1 / _loc10_);
         }
         else
         {
            this.§_-o-§.§_-Vw§();
         }
         var _loc11_:Number = _loc6_ * this.§_-o-§.y - _loc7_ * this.§_-o-§.x;
         var _loc12_:Number = _loc8_ * this.§_-o-§.y - _loc9_ * this.§_-o-§.x;
         var _loc13_:Number = _loc4_.§_-s§ + _loc4_.§_-TW§ * _loc11_ * _loc11_ + _loc5_.§_-s§ + _loc5_.§_-TW§ * _loc12_ * _loc12_;
         this.§_-qa§ = _loc13_ != 0 ? Number(1 / _loc13_) : Number(0);
         if(this.§_-FM§ > 0)
         {
            _loc14_ = _loc10_ - this.§_-ct§;
            _loc15_ = 2 * Math.PI * this.§_-FM§;
            _loc16_ = 2 * this.§_-qa§ * this.§_-ka§ * _loc15_;
            _loc17_ = this.§_-qa§ * _loc15_ * _loc15_;
            this.§_-sz§ = param1.§_-Vj§ * (_loc16_ + param1.§_-Vj§ * _loc17_);
            this.§_-sz§ = this.§_-sz§ != 0 ? Number(1 / this.§_-sz§) : Number(0);
            this.§_-lP§ = _loc14_ * param1.§_-Vj§ * _loc17_ * this.§_-sz§;
            this.§_-qa§ = _loc13_ + this.§_-sz§;
            this.§_-qa§ = this.§_-qa§ != 0 ? Number(1 / this.§_-qa§) : Number(0);
         }
         if(param1.§_-Fx§)
         {
            this.§_-ro§ *= param1.§_-4i§;
            _loc18_ = this.§_-ro§ * this.§_-o-§.x;
            _loc19_ = this.§_-ro§ * this.§_-o-§.y;
            _loc4_.§_-Ng§.x -= _loc4_.§_-s§ * _loc18_;
            _loc4_.§_-Ng§.y -= _loc4_.§_-s§ * _loc19_;
            _loc4_.m_angularVelocity -= _loc4_.§_-TW§ * (_loc6_ * _loc19_ - _loc7_ * _loc18_);
            _loc5_.§_-Ng§.x += _loc5_.§_-s§ * _loc18_;
            _loc5_.§_-Ng§.y += _loc5_.§_-s§ * _loc19_;
            _loc5_.m_angularVelocity += _loc5_.§_-TW§ * (_loc8_ * _loc19_ - _loc9_ * _loc18_);
         }
         else
         {
            this.§_-ro§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:b2Body = b2internal::_-Rz;
         var _loc4_:b2Body = b2internal::_-GP;
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
         var _loc10_:Number = _loc3_.§_-Ng§.x + -_loc3_.m_angularVelocity * _loc6_;
         var _loc11_:Number = _loc3_.§_-Ng§.y + _loc3_.m_angularVelocity * _loc5_;
         var _loc12_:Number = _loc4_.§_-Ng§.x + -_loc4_.m_angularVelocity * _loc9_;
         var _loc13_:Number = _loc4_.§_-Ng§.y + _loc4_.m_angularVelocity * _loc8_;
         var _loc14_:Number = this.§_-o-§.x * (_loc12_ - _loc10_) + this.§_-o-§.y * (_loc13_ - _loc11_);
         var _loc15_:Number = -this.§_-qa§ * (_loc14_ + this.§_-lP§ + this.§_-sz§ * this.§_-ro§);
         this.§_-ro§ += _loc15_;
         var _loc16_:Number = _loc15_ * this.§_-o-§.x;
         var _loc17_:Number = _loc15_ * this.§_-o-§.y;
         _loc3_.§_-Ng§.x -= _loc3_.§_-s§ * _loc16_;
         _loc3_.§_-Ng§.y -= _loc3_.§_-s§ * _loc17_;
         _loc3_.m_angularVelocity -= _loc3_.§_-TW§ * (_loc5_ * _loc17_ - _loc6_ * _loc16_);
         _loc4_.§_-Ng§.x += _loc4_.§_-s§ * _loc16_;
         _loc4_.§_-Ng§.y += _loc4_.§_-s§ * _loc17_;
         _loc4_.m_angularVelocity += _loc4_.§_-TW§ * (_loc8_ * _loc17_ - _loc9_ * _loc16_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc2_:b2Mat22 = null;
         if(this.§_-FM§ > 0)
         {
            return true;
         }
         var _loc3_:b2Body = b2internal::_-Rz;
         var _loc4_:b2Body = b2internal::_-GP;
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
         var _loc13_:Number = _loc12_ - this.§_-ct§;
         _loc13_ = b2Math.§_-Kz§(_loc13_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
         var _loc14_:Number = -this.§_-qa§ * _loc13_;
         this.§_-o-§.Set(_loc10_,_loc11_);
         var _loc15_:Number = _loc14_ * this.§_-o-§.x;
         var _loc16_:Number = _loc14_ * this.§_-o-§.y;
         _loc3_.m_sweep.c.x -= _loc3_.§_-s§ * _loc15_;
         _loc3_.m_sweep.c.y -= _loc3_.§_-s§ * _loc16_;
         _loc3_.m_sweep.a -= _loc3_.§_-TW§ * (_loc5_ * _loc16_ - _loc6_ * _loc15_);
         _loc4_.m_sweep.c.x += _loc4_.§_-s§ * _loc15_;
         _loc4_.m_sweep.c.y += _loc4_.§_-s§ * _loc16_;
         _loc4_.m_sweep.a += _loc4_.§_-TW§ * (_loc8_ * _loc16_ - _loc9_ * _loc15_);
         _loc3_.§_-Ax§();
         _loc4_.§_-Ax§();
         return b2Math.§_-Os§(_loc13_) < b2Settings.b2_linearSlop;
      }
   }
}
