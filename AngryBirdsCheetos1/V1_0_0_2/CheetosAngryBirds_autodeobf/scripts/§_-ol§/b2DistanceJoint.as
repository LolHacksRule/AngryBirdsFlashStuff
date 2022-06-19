package §_-ol§
{
   import §_-43§.b2Body;
   import §_-43§.b2TimeStep;
   import §_-F2§.b2Mat22;
   import §_-F2§.b2Math;
   import §_-F2§.b2Vec2;
   import §_-d6§.b2Settings;
   import §_-d6§.b2internal;
   
   use namespace b2internal;
   
   public class b2DistanceJoint extends b2Joint
   {
       
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var §_-gD§:b2Vec2;
      
      private var §_-m1§:Number;
      
      private var §_-YC§:Number;
      
      private var §_-Be§:Number;
      
      private var §_-lP§:Number;
      
      private var §_-cR§:Number;
      
      private var §_-3i§:Number;
      
      private var §_-rC§:Number;
      
      public function b2DistanceJoint(param1:b2DistanceJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§_-gD§ = new b2Vec2();
         super(param1);
         this.m_localAnchor1.SetV(param1.§_-lj§);
         this.m_localAnchor2.SetV(param1.§_-zW§);
         this.§_-rC§ = param1.length;
         this.§_-m1§ = param1.§_-NZ§;
         this.§_-YC§ = param1.§_-EV§;
         this.§_-cR§ = 0;
         this.§_-Be§ = 0;
         this.§_-lP§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::_-Fj.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::_-eo.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§_-cR§ * this.§_-gD§.x,param1 * this.§_-cR§ * this.§_-gD§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §_-L5§() : Number
      {
         return this.§_-rC§;
      }
      
      public function §_-JR§(param1:Number) : void
      {
         this.§_-rC§ = param1;
      }
      
      public function §_-y-§() : Number
      {
         return this.§_-m1§;
      }
      
      public function §_-sv§(param1:Number) : void
      {
         this.§_-m1§ = param1;
      }
      
      public function §_-tL§() : Number
      {
         return this.§_-YC§;
      }
      
      public function §_-vY§(param1:Number) : void
      {
         this.§_-YC§ = param1;
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
         _loc4_ = b2internal::_-Fj;
         _loc5_ = b2internal::_-eo;
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
         this.§_-gD§.x = _loc5_.m_sweep.§_-FO§.x + _loc8_ - _loc4_.m_sweep.§_-FO§.x - _loc6_;
         this.§_-gD§.y = _loc5_.m_sweep.§_-FO§.y + _loc9_ - _loc4_.m_sweep.§_-FO§.y - _loc7_;
         var _loc10_:Number;
         if((_loc10_ = Math.sqrt(this.§_-gD§.x * this.§_-gD§.x + this.§_-gD§.y * this.§_-gD§.y)) > b2Settings.b2_linearSlop)
         {
            this.§_-gD§.§_-X-§(1 / _loc10_);
         }
         else
         {
            this.§_-gD§.§_-t5§();
         }
         var _loc11_:Number = _loc6_ * this.§_-gD§.y - _loc7_ * this.§_-gD§.x;
         var _loc12_:Number = _loc8_ * this.§_-gD§.y - _loc9_ * this.§_-gD§.x;
         var _loc13_:Number = _loc4_.§_-N0§ + _loc4_.§_-pA§ * _loc11_ * _loc11_ + _loc5_.§_-N0§ + _loc5_.§_-pA§ * _loc12_ * _loc12_;
         this.§_-3i§ = _loc13_ != 0 ? Number(1 / _loc13_) : Number(0);
         if(this.§_-m1§ > 0)
         {
            _loc14_ = _loc10_ - this.§_-rC§;
            _loc15_ = 2 * Math.PI * this.§_-m1§;
            _loc16_ = 2 * this.§_-3i§ * this.§_-YC§ * _loc15_;
            _loc17_ = this.§_-3i§ * _loc15_ * _loc15_;
            this.§_-Be§ = param1.§_-At§ * (_loc16_ + param1.§_-At§ * _loc17_);
            this.§_-Be§ = this.§_-Be§ != 0 ? Number(1 / this.§_-Be§) : Number(0);
            this.§_-lP§ = _loc14_ * param1.§_-At§ * _loc17_ * this.§_-Be§;
            this.§_-3i§ = _loc13_ + this.§_-Be§;
            this.§_-3i§ = this.§_-3i§ != 0 ? Number(1 / this.§_-3i§) : Number(0);
         }
         if(param1.§_-fo§)
         {
            this.§_-cR§ *= param1.§_-cz§;
            _loc18_ = this.§_-cR§ * this.§_-gD§.x;
            _loc19_ = this.§_-cR§ * this.§_-gD§.y;
            _loc4_.§_-We§.x -= _loc4_.§_-N0§ * _loc18_;
            _loc4_.§_-We§.y -= _loc4_.§_-N0§ * _loc19_;
            _loc4_.m_angularVelocity -= _loc4_.§_-pA§ * (_loc6_ * _loc19_ - _loc7_ * _loc18_);
            _loc5_.§_-We§.x += _loc5_.§_-N0§ * _loc18_;
            _loc5_.§_-We§.y += _loc5_.§_-N0§ * _loc19_;
            _loc5_.m_angularVelocity += _loc5_.§_-pA§ * (_loc8_ * _loc19_ - _loc9_ * _loc18_);
         }
         else
         {
            this.§_-cR§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:b2Body = b2internal::_-Fj;
         var _loc4_:b2Body = b2internal::_-eo;
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
         var _loc10_:Number = _loc3_.§_-We§.x + -_loc3_.m_angularVelocity * _loc6_;
         var _loc11_:Number = _loc3_.§_-We§.y + _loc3_.m_angularVelocity * _loc5_;
         var _loc12_:Number = _loc4_.§_-We§.x + -_loc4_.m_angularVelocity * _loc9_;
         var _loc13_:Number = _loc4_.§_-We§.y + _loc4_.m_angularVelocity * _loc8_;
         var _loc14_:Number = this.§_-gD§.x * (_loc12_ - _loc10_) + this.§_-gD§.y * (_loc13_ - _loc11_);
         var _loc15_:Number = -this.§_-3i§ * (_loc14_ + this.§_-lP§ + this.§_-Be§ * this.§_-cR§);
         this.§_-cR§ += _loc15_;
         var _loc16_:Number = _loc15_ * this.§_-gD§.x;
         var _loc17_:Number = _loc15_ * this.§_-gD§.y;
         _loc3_.§_-We§.x -= _loc3_.§_-N0§ * _loc16_;
         _loc3_.§_-We§.y -= _loc3_.§_-N0§ * _loc17_;
         _loc3_.m_angularVelocity -= _loc3_.§_-pA§ * (_loc5_ * _loc17_ - _loc6_ * _loc16_);
         _loc4_.§_-We§.x += _loc4_.§_-N0§ * _loc16_;
         _loc4_.§_-We§.y += _loc4_.§_-N0§ * _loc17_;
         _loc4_.m_angularVelocity += _loc4_.§_-pA§ * (_loc8_ * _loc17_ - _loc9_ * _loc16_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc2_:b2Mat22 = null;
         if(this.§_-m1§ > 0)
         {
            return true;
         }
         var _loc3_:b2Body = b2internal::_-Fj;
         var _loc4_:b2Body = b2internal::_-eo;
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
         var _loc10_:Number = _loc4_.m_sweep.§_-FO§.x + _loc8_ - _loc3_.m_sweep.§_-FO§.x - _loc5_;
         var _loc11_:Number = _loc4_.m_sweep.§_-FO§.y + _loc9_ - _loc3_.m_sweep.§_-FO§.y - _loc6_;
         var _loc12_:Number = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
         _loc10_ /= _loc12_;
         _loc11_ /= _loc12_;
         var _loc13_:Number = _loc12_ - this.§_-rC§;
         _loc13_ = b2Math.§_-3V§(_loc13_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
         var _loc14_:Number = -this.§_-3i§ * _loc13_;
         this.§_-gD§.Set(_loc10_,_loc11_);
         var _loc15_:Number = _loc14_ * this.§_-gD§.x;
         var _loc16_:Number = _loc14_ * this.§_-gD§.y;
         _loc3_.m_sweep.§_-FO§.x -= _loc3_.§_-N0§ * _loc15_;
         _loc3_.m_sweep.§_-FO§.y -= _loc3_.§_-N0§ * _loc16_;
         _loc3_.m_sweep.a -= _loc3_.§_-pA§ * (_loc5_ * _loc16_ - _loc6_ * _loc15_);
         _loc4_.m_sweep.§_-FO§.x += _loc4_.§_-N0§ * _loc15_;
         _loc4_.m_sweep.§_-FO§.y += _loc4_.§_-N0§ * _loc16_;
         _loc4_.m_sweep.a += _loc4_.§_-pA§ * (_loc8_ * _loc16_ - _loc9_ * _loc15_);
         _loc3_.§_-76§();
         _loc4_.§_-76§();
         return b2Math.§_-qe§(_loc13_) < b2Settings.b2_linearSlop;
      }
   }
}
