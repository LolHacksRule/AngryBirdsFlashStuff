package §const§
{
   import §_-b4§.b2Settings;
   import §_-b4§.b2internal;
   import §_-cP§.b2Mat22;
   import §_-cP§.b2Math;
   import §_-cP§.b2Vec2;
   import §try§.b2Body;
   import §try§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2DistanceJoint extends b2Joint
   {
       
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var §_-tm§:b2Vec2;
      
      private var §_-6§:Number;
      
      private var §_-37§:Number;
      
      private var §_-jQ§:Number;
      
      private var §_-T4§:Number;
      
      private var §_-gD§:Number;
      
      private var §_-p4§:Number;
      
      private var §_-Um§:Number;
      
      public function b2DistanceJoint(param1:b2DistanceJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§_-tm§ = new b2Vec2();
         super(param1);
         this.m_localAnchor1.SetV(param1.§_-Vd§);
         this.m_localAnchor2.SetV(param1.§_-j3§);
         this.§_-Um§ = param1.length;
         this.§_-6§ = param1.§_-ek§;
         this.§_-37§ = param1.§_-DN§;
         this.§_-gD§ = 0;
         this.§_-jQ§ = 0;
         this.§_-T4§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::_-Jb.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::_-RO.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§_-gD§ * this.§_-tm§.x,param1 * this.§_-gD§ * this.§_-tm§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §_-co§() : Number
      {
         return this.§_-Um§;
      }
      
      public function §_-1Z§(param1:Number) : void
      {
         this.§_-Um§ = param1;
      }
      
      public function §_-bZ§() : Number
      {
         return this.§_-6§;
      }
      
      public function §_-Kx§(param1:Number) : void
      {
         this.§_-6§ = param1;
      }
      
      public function §_-RW§() : Number
      {
         return this.§_-37§;
      }
      
      public function §_-Tj§(param1:Number) : void
      {
         this.§_-37§ = param1;
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
         _loc4_ = b2internal::_-Jb;
         _loc5_ = b2internal::_-RO;
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
         this.§_-tm§.x = _loc5_.m_sweep.§_-xQ§.x + _loc8_ - _loc4_.m_sweep.§_-xQ§.x - _loc6_;
         this.§_-tm§.y = _loc5_.m_sweep.§_-xQ§.y + _loc9_ - _loc4_.m_sweep.§_-xQ§.y - _loc7_;
         var _loc10_:Number;
         if((_loc10_ = Math.sqrt(this.§_-tm§.x * this.§_-tm§.x + this.§_-tm§.y * this.§_-tm§.y)) > b2Settings.b2_linearSlop)
         {
            this.§_-tm§.§_-qa§(1 / _loc10_);
         }
         else
         {
            this.§_-tm§.§_-WO§();
         }
         var _loc11_:Number = _loc6_ * this.§_-tm§.y - _loc7_ * this.§_-tm§.x;
         var _loc12_:Number = _loc8_ * this.§_-tm§.y - _loc9_ * this.§_-tm§.x;
         var _loc13_:Number = _loc4_.§_-hk§ + _loc4_.§_-LF§ * _loc11_ * _loc11_ + _loc5_.§_-hk§ + _loc5_.§_-LF§ * _loc12_ * _loc12_;
         this.§_-p4§ = _loc13_ != 0 ? Number(1 / _loc13_) : Number(0);
         if(this.§_-6§ > 0)
         {
            _loc14_ = _loc10_ - this.§_-Um§;
            _loc15_ = 2 * Math.PI * this.§_-6§;
            _loc16_ = 2 * this.§_-p4§ * this.§_-37§ * _loc15_;
            _loc17_ = this.§_-p4§ * _loc15_ * _loc15_;
            this.§_-jQ§ = param1.§_-ec§ * (_loc16_ + param1.§_-ec§ * _loc17_);
            this.§_-jQ§ = this.§_-jQ§ != 0 ? Number(1 / this.§_-jQ§) : Number(0);
            this.§_-T4§ = _loc14_ * param1.§_-ec§ * _loc17_ * this.§_-jQ§;
            this.§_-p4§ = _loc13_ + this.§_-jQ§;
            this.§_-p4§ = this.§_-p4§ != 0 ? Number(1 / this.§_-p4§) : Number(0);
         }
         if(param1.§_-0X§)
         {
            this.§_-gD§ *= param1.§_-Mu§;
            _loc18_ = this.§_-gD§ * this.§_-tm§.x;
            _loc19_ = this.§_-gD§ * this.§_-tm§.y;
            _loc4_.§_-PK§.x -= _loc4_.§_-hk§ * _loc18_;
            _loc4_.§_-PK§.y -= _loc4_.§_-hk§ * _loc19_;
            _loc4_.m_angularVelocity -= _loc4_.§_-LF§ * (_loc6_ * _loc19_ - _loc7_ * _loc18_);
            _loc5_.§_-PK§.x += _loc5_.§_-hk§ * _loc18_;
            _loc5_.§_-PK§.y += _loc5_.§_-hk§ * _loc19_;
            _loc5_.m_angularVelocity += _loc5_.§_-LF§ * (_loc8_ * _loc19_ - _loc9_ * _loc18_);
         }
         else
         {
            this.§_-gD§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:b2Body = b2internal::_-Jb;
         var _loc4_:b2Body = b2internal::_-RO;
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
         var _loc10_:Number = _loc3_.§_-PK§.x + -_loc3_.m_angularVelocity * _loc6_;
         var _loc11_:Number = _loc3_.§_-PK§.y + _loc3_.m_angularVelocity * _loc5_;
         var _loc12_:Number = _loc4_.§_-PK§.x + -_loc4_.m_angularVelocity * _loc9_;
         var _loc13_:Number = _loc4_.§_-PK§.y + _loc4_.m_angularVelocity * _loc8_;
         var _loc14_:Number = this.§_-tm§.x * (_loc12_ - _loc10_) + this.§_-tm§.y * (_loc13_ - _loc11_);
         var _loc15_:Number = -this.§_-p4§ * (_loc14_ + this.§_-T4§ + this.§_-jQ§ * this.§_-gD§);
         this.§_-gD§ += _loc15_;
         var _loc16_:Number = _loc15_ * this.§_-tm§.x;
         var _loc17_:Number = _loc15_ * this.§_-tm§.y;
         _loc3_.§_-PK§.x -= _loc3_.§_-hk§ * _loc16_;
         _loc3_.§_-PK§.y -= _loc3_.§_-hk§ * _loc17_;
         _loc3_.m_angularVelocity -= _loc3_.§_-LF§ * (_loc5_ * _loc17_ - _loc6_ * _loc16_);
         _loc4_.§_-PK§.x += _loc4_.§_-hk§ * _loc16_;
         _loc4_.§_-PK§.y += _loc4_.§_-hk§ * _loc17_;
         _loc4_.m_angularVelocity += _loc4_.§_-LF§ * (_loc8_ * _loc17_ - _loc9_ * _loc16_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc2_:b2Mat22 = null;
         if(this.§_-6§ > 0)
         {
            return true;
         }
         var _loc3_:b2Body = b2internal::_-Jb;
         var _loc4_:b2Body = b2internal::_-RO;
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
         var _loc10_:Number = _loc4_.m_sweep.§_-xQ§.x + _loc8_ - _loc3_.m_sweep.§_-xQ§.x - _loc5_;
         var _loc11_:Number = _loc4_.m_sweep.§_-xQ§.y + _loc9_ - _loc3_.m_sweep.§_-xQ§.y - _loc6_;
         var _loc12_:Number = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
         _loc10_ /= _loc12_;
         _loc11_ /= _loc12_;
         var _loc13_:Number = _loc12_ - this.§_-Um§;
         _loc13_ = b2Math.§_-9P§(_loc13_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
         var _loc14_:Number = -this.§_-p4§ * _loc13_;
         this.§_-tm§.Set(_loc10_,_loc11_);
         var _loc15_:Number = _loc14_ * this.§_-tm§.x;
         var _loc16_:Number = _loc14_ * this.§_-tm§.y;
         _loc3_.m_sweep.§_-xQ§.x -= _loc3_.§_-hk§ * _loc15_;
         _loc3_.m_sweep.§_-xQ§.y -= _loc3_.§_-hk§ * _loc16_;
         _loc3_.m_sweep.a -= _loc3_.§_-LF§ * (_loc5_ * _loc16_ - _loc6_ * _loc15_);
         _loc4_.m_sweep.§_-xQ§.x += _loc4_.§_-hk§ * _loc15_;
         _loc4_.m_sweep.§_-xQ§.y += _loc4_.§_-hk§ * _loc16_;
         _loc4_.m_sweep.a += _loc4_.§_-LF§ * (_loc8_ * _loc16_ - _loc9_ * _loc15_);
         _loc3_.§_-fH§();
         _loc4_.§_-fH§();
         return b2Math.§_-5C§(_loc13_) < b2Settings.b2_linearSlop;
      }
   }
}
