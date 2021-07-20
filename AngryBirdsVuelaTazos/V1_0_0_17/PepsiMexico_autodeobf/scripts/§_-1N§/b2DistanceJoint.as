package §_-1N§
{
   import §_-Iw§.b2Body;
   import §_-Iw§.b2TimeStep;
   import §_-Ja§.b2Mat22;
   import §_-Ja§.b2Math;
   import §_-Ja§.b2Vec2;
   import §_-lh§.b2Settings;
   import §_-lh§.b2internal;
   
   use namespace b2internal;
   
   public class b2DistanceJoint extends b2Joint
   {
       
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var §_-NQ§:b2Vec2;
      
      private var §_-Hc§:Number;
      
      private var §_-xD§:Number;
      
      private var §_-B4§:Number;
      
      private var §_-f1§:Number;
      
      private var §_-tN§:Number;
      
      private var §_-jI§:Number;
      
      private var §_-GG§:Number;
      
      public function b2DistanceJoint(param1:b2DistanceJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§_-NQ§ = new b2Vec2();
         super(param1);
         this.m_localAnchor1.SetV(param1.§_-Kz§);
         this.m_localAnchor2.SetV(param1.§_-Dq§);
         this.§_-GG§ = param1.length;
         this.§_-Hc§ = param1.§_-Kf§;
         this.§_-xD§ = param1.§_-Co§;
         this.§_-tN§ = 0;
         this.§_-B4§ = 0;
         this.§_-f1§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::_-93.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::_-9K.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§_-tN§ * this.§_-NQ§.x,param1 * this.§_-tN§ * this.§_-NQ§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §_-jD§() : Number
      {
         return this.§_-GG§;
      }
      
      public function §_-kW§(param1:Number) : void
      {
         this.§_-GG§ = param1;
      }
      
      public function §_-51§() : Number
      {
         return this.§_-Hc§;
      }
      
      public function §_-LE§(param1:Number) : void
      {
         this.§_-Hc§ = param1;
      }
      
      public function §_-po§() : Number
      {
         return this.§_-xD§;
      }
      
      public function §_-b-§(param1:Number) : void
      {
         this.§_-xD§ = param1;
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
         _loc4_ = b2internal::_-93;
         _loc5_ = b2internal::_-9K;
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
         this.§_-NQ§.x = _loc5_.m_sweep.c.x + _loc8_ - _loc4_.m_sweep.c.x - _loc6_;
         this.§_-NQ§.y = _loc5_.m_sweep.c.y + _loc9_ - _loc4_.m_sweep.c.y - _loc7_;
         var _loc10_:Number;
         if((_loc10_ = Math.sqrt(this.§_-NQ§.x * this.§_-NQ§.x + this.§_-NQ§.y * this.§_-NQ§.y)) > b2Settings.b2_linearSlop)
         {
            this.§_-NQ§.§_-6z§(1 / _loc10_);
         }
         else
         {
            this.§_-NQ§.§_-0a§();
         }
         var _loc11_:Number = _loc6_ * this.§_-NQ§.y - _loc7_ * this.§_-NQ§.x;
         var _loc12_:Number = _loc8_ * this.§_-NQ§.y - _loc9_ * this.§_-NQ§.x;
         var _loc13_:Number = _loc4_.§_-eZ§ + _loc4_.§_-DZ§ * _loc11_ * _loc11_ + _loc5_.§_-eZ§ + _loc5_.§_-DZ§ * _loc12_ * _loc12_;
         this.§_-jI§ = _loc13_ != 0 ? Number(1 / _loc13_) : Number(0);
         if(this.§_-Hc§ > 0)
         {
            _loc14_ = _loc10_ - this.§_-GG§;
            _loc15_ = 2 * Math.PI * this.§_-Hc§;
            _loc16_ = 2 * this.§_-jI§ * this.§_-xD§ * _loc15_;
            _loc17_ = this.§_-jI§ * _loc15_ * _loc15_;
            this.§_-B4§ = param1.§_-h8§ * (_loc16_ + param1.§_-h8§ * _loc17_);
            this.§_-B4§ = this.§_-B4§ != 0 ? Number(1 / this.§_-B4§) : Number(0);
            this.§_-f1§ = _loc14_ * param1.§_-h8§ * _loc17_ * this.§_-B4§;
            this.§_-jI§ = _loc13_ + this.§_-B4§;
            this.§_-jI§ = this.§_-jI§ != 0 ? Number(1 / this.§_-jI§) : Number(0);
         }
         if(param1.§_-o-§)
         {
            this.§_-tN§ *= param1.§break§;
            _loc18_ = this.§_-tN§ * this.§_-NQ§.x;
            _loc19_ = this.§_-tN§ * this.§_-NQ§.y;
            _loc4_.§_-ZZ§.x -= _loc4_.§_-eZ§ * _loc18_;
            _loc4_.§_-ZZ§.y -= _loc4_.§_-eZ§ * _loc19_;
            _loc4_.m_angularVelocity -= _loc4_.§_-DZ§ * (_loc6_ * _loc19_ - _loc7_ * _loc18_);
            _loc5_.§_-ZZ§.x += _loc5_.§_-eZ§ * _loc18_;
            _loc5_.§_-ZZ§.y += _loc5_.§_-eZ§ * _loc19_;
            _loc5_.m_angularVelocity += _loc5_.§_-DZ§ * (_loc8_ * _loc19_ - _loc9_ * _loc18_);
         }
         else
         {
            this.§_-tN§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:b2Body = b2internal::_-93;
         var _loc4_:b2Body = b2internal::_-9K;
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
         var _loc10_:Number = _loc3_.§_-ZZ§.x + -_loc3_.m_angularVelocity * _loc6_;
         var _loc11_:Number = _loc3_.§_-ZZ§.y + _loc3_.m_angularVelocity * _loc5_;
         var _loc12_:Number = _loc4_.§_-ZZ§.x + -_loc4_.m_angularVelocity * _loc9_;
         var _loc13_:Number = _loc4_.§_-ZZ§.y + _loc4_.m_angularVelocity * _loc8_;
         var _loc14_:Number = this.§_-NQ§.x * (_loc12_ - _loc10_) + this.§_-NQ§.y * (_loc13_ - _loc11_);
         var _loc15_:Number = -this.§_-jI§ * (_loc14_ + this.§_-f1§ + this.§_-B4§ * this.§_-tN§);
         this.§_-tN§ += _loc15_;
         var _loc16_:Number = _loc15_ * this.§_-NQ§.x;
         var _loc17_:Number = _loc15_ * this.§_-NQ§.y;
         _loc3_.§_-ZZ§.x -= _loc3_.§_-eZ§ * _loc16_;
         _loc3_.§_-ZZ§.y -= _loc3_.§_-eZ§ * _loc17_;
         _loc3_.m_angularVelocity -= _loc3_.§_-DZ§ * (_loc5_ * _loc17_ - _loc6_ * _loc16_);
         _loc4_.§_-ZZ§.x += _loc4_.§_-eZ§ * _loc16_;
         _loc4_.§_-ZZ§.y += _loc4_.§_-eZ§ * _loc17_;
         _loc4_.m_angularVelocity += _loc4_.§_-DZ§ * (_loc8_ * _loc17_ - _loc9_ * _loc16_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc2_:b2Mat22 = null;
         if(this.§_-Hc§ > 0)
         {
            return true;
         }
         var _loc3_:b2Body = b2internal::_-93;
         var _loc4_:b2Body = b2internal::_-9K;
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
         var _loc13_:Number = _loc12_ - this.§_-GG§;
         _loc13_ = b2Math.§_-Gj§(_loc13_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
         var _loc14_:Number = -this.§_-jI§ * _loc13_;
         this.§_-NQ§.Set(_loc10_,_loc11_);
         var _loc15_:Number = _loc14_ * this.§_-NQ§.x;
         var _loc16_:Number = _loc14_ * this.§_-NQ§.y;
         _loc3_.m_sweep.c.x -= _loc3_.§_-eZ§ * _loc15_;
         _loc3_.m_sweep.c.y -= _loc3_.§_-eZ§ * _loc16_;
         _loc3_.m_sweep.a -= _loc3_.§_-DZ§ * (_loc5_ * _loc16_ - _loc6_ * _loc15_);
         _loc4_.m_sweep.c.x += _loc4_.§_-eZ§ * _loc15_;
         _loc4_.m_sweep.c.y += _loc4_.§_-eZ§ * _loc16_;
         _loc4_.m_sweep.a += _loc4_.§_-DZ§ * (_loc8_ * _loc16_ - _loc9_ * _loc15_);
         _loc3_.§_-Z9§();
         _loc4_.§_-Z9§();
         return b2Math.§_-xY§(_loc13_) < b2Settings.b2_linearSlop;
      }
   }
}
