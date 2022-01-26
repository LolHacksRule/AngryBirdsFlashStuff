package §_-E§
{
   import §_-00B§.b2Body;
   import §_-00B§.b2TimeStep;
   import §_-Jf§.b2Settings;
   import §_-Jf§.b2internal;
   import §_-Vn§.b2Mat22;
   import §_-Vn§.b2Math;
   import §_-Vn§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2DistanceJoint extends b2Joint
   {
       
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var §_-eI§:b2Vec2;
      
      private var §_-Xo§:Number;
      
      private var §_-D5§:Number;
      
      private var §_-l-§:Number;
      
      private var §_-mo§:Number;
      
      private var §_-Ud§:Number;
      
      private var §_-5y§:Number;
      
      private var §_-0M§:Number;
      
      public function b2DistanceJoint(param1:b2DistanceJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§_-eI§ = new b2Vec2();
         super(param1);
         this.m_localAnchor1.SetV(param1.§_-4N§);
         this.m_localAnchor2.SetV(param1.§_-nR§);
         this.§_-0M§ = param1.length;
         this.§_-Xo§ = param1.§_-R-§;
         this.§_-D5§ = param1.§_-q6§;
         this.§_-Ud§ = 0;
         this.§_-l-§ = 0;
         this.§_-mo§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::_-oB.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::_-52.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§_-Ud§ * this.§_-eI§.x,param1 * this.§_-Ud§ * this.§_-eI§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §_-dy§() : Number
      {
         return this.§_-0M§;
      }
      
      public function §_-m8§(param1:Number) : void
      {
         this.§_-0M§ = param1;
      }
      
      public function §_-0-L§() : Number
      {
         return this.§_-Xo§;
      }
      
      public function §_-au§(param1:Number) : void
      {
         this.§_-Xo§ = param1;
      }
      
      public function §_-bC§() : Number
      {
         return this.§_-D5§;
      }
      
      public function §_-6U§(param1:Number) : void
      {
         this.§_-D5§ = param1;
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
         _loc4_ = b2internal::_-oB;
         _loc5_ = b2internal::_-52;
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
         this.§_-eI§.x = _loc5_.m_sweep.c.x + _loc8_ - _loc4_.m_sweep.c.x - _loc6_;
         this.§_-eI§.y = _loc5_.m_sweep.c.y + _loc9_ - _loc4_.m_sweep.c.y - _loc7_;
         var _loc10_:Number;
         if((_loc10_ = Math.sqrt(this.§_-eI§.x * this.§_-eI§.x + this.§_-eI§.y * this.§_-eI§.y)) > b2Settings.b2_linearSlop)
         {
            this.§_-eI§.§_-Hx§(1 / _loc10_);
         }
         else
         {
            this.§_-eI§.§return§();
         }
         var _loc11_:Number = _loc6_ * this.§_-eI§.y - _loc7_ * this.§_-eI§.x;
         var _loc12_:Number = _loc8_ * this.§_-eI§.y - _loc9_ * this.§_-eI§.x;
         var _loc13_:Number = _loc4_.§_-zL§ + _loc4_.§_-aJ§ * _loc11_ * _loc11_ + _loc5_.§_-zL§ + _loc5_.§_-aJ§ * _loc12_ * _loc12_;
         this.§_-5y§ = _loc13_ != 0 ? Number(1 / _loc13_) : Number(0);
         if(this.§_-Xo§ > 0)
         {
            _loc14_ = _loc10_ - this.§_-0M§;
            _loc15_ = 2 * Math.PI * this.§_-Xo§;
            _loc16_ = 2 * this.§_-5y§ * this.§_-D5§ * _loc15_;
            _loc17_ = this.§_-5y§ * _loc15_ * _loc15_;
            this.§_-l-§ = param1.§_-Km§ * (_loc16_ + param1.§_-Km§ * _loc17_);
            this.§_-l-§ = this.§_-l-§ != 0 ? Number(1 / this.§_-l-§) : Number(0);
            this.§_-mo§ = _loc14_ * param1.§_-Km§ * _loc17_ * this.§_-l-§;
            this.§_-5y§ = _loc13_ + this.§_-l-§;
            this.§_-5y§ = this.§_-5y§ != 0 ? Number(1 / this.§_-5y§) : Number(0);
         }
         if(param1.§_-eH§)
         {
            this.§_-Ud§ *= param1.§_-na§;
            _loc18_ = this.§_-Ud§ * this.§_-eI§.x;
            _loc19_ = this.§_-Ud§ * this.§_-eI§.y;
            _loc4_.§_-Yd§.x -= _loc4_.§_-zL§ * _loc18_;
            _loc4_.§_-Yd§.y -= _loc4_.§_-zL§ * _loc19_;
            _loc4_.m_angularVelocity -= _loc4_.§_-aJ§ * (_loc6_ * _loc19_ - _loc7_ * _loc18_);
            _loc5_.§_-Yd§.x += _loc5_.§_-zL§ * _loc18_;
            _loc5_.§_-Yd§.y += _loc5_.§_-zL§ * _loc19_;
            _loc5_.m_angularVelocity += _loc5_.§_-aJ§ * (_loc8_ * _loc19_ - _loc9_ * _loc18_);
         }
         else
         {
            this.§_-Ud§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:b2Body = b2internal::_-oB;
         var _loc4_:b2Body = b2internal::_-52;
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
         var _loc10_:Number = _loc3_.§_-Yd§.x + -_loc3_.m_angularVelocity * _loc6_;
         var _loc11_:Number = _loc3_.§_-Yd§.y + _loc3_.m_angularVelocity * _loc5_;
         var _loc12_:Number = _loc4_.§_-Yd§.x + -_loc4_.m_angularVelocity * _loc9_;
         var _loc13_:Number = _loc4_.§_-Yd§.y + _loc4_.m_angularVelocity * _loc8_;
         var _loc14_:Number = this.§_-eI§.x * (_loc12_ - _loc10_) + this.§_-eI§.y * (_loc13_ - _loc11_);
         var _loc15_:Number = -this.§_-5y§ * (_loc14_ + this.§_-mo§ + this.§_-l-§ * this.§_-Ud§);
         this.§_-Ud§ += _loc15_;
         var _loc16_:Number = _loc15_ * this.§_-eI§.x;
         var _loc17_:Number = _loc15_ * this.§_-eI§.y;
         _loc3_.§_-Yd§.x -= _loc3_.§_-zL§ * _loc16_;
         _loc3_.§_-Yd§.y -= _loc3_.§_-zL§ * _loc17_;
         _loc3_.m_angularVelocity -= _loc3_.§_-aJ§ * (_loc5_ * _loc17_ - _loc6_ * _loc16_);
         _loc4_.§_-Yd§.x += _loc4_.§_-zL§ * _loc16_;
         _loc4_.§_-Yd§.y += _loc4_.§_-zL§ * _loc17_;
         _loc4_.m_angularVelocity += _loc4_.§_-aJ§ * (_loc8_ * _loc17_ - _loc9_ * _loc16_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc2_:b2Mat22 = null;
         if(this.§_-Xo§ > 0)
         {
            return true;
         }
         var _loc3_:b2Body = b2internal::_-oB;
         var _loc4_:b2Body = b2internal::_-52;
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
         var _loc13_:Number = _loc12_ - this.§_-0M§;
         _loc13_ = b2Math.§_-a4§(_loc13_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
         var _loc14_:Number = -this.§_-5y§ * _loc13_;
         this.§_-eI§.Set(_loc10_,_loc11_);
         var _loc15_:Number = _loc14_ * this.§_-eI§.x;
         var _loc16_:Number = _loc14_ * this.§_-eI§.y;
         _loc3_.m_sweep.c.x -= _loc3_.§_-zL§ * _loc15_;
         _loc3_.m_sweep.c.y -= _loc3_.§_-zL§ * _loc16_;
         _loc3_.m_sweep.a -= _loc3_.§_-aJ§ * (_loc5_ * _loc16_ - _loc6_ * _loc15_);
         _loc4_.m_sweep.c.x += _loc4_.§_-zL§ * _loc15_;
         _loc4_.m_sweep.c.y += _loc4_.§_-zL§ * _loc16_;
         _loc4_.m_sweep.a += _loc4_.§_-aJ§ * (_loc8_ * _loc16_ - _loc9_ * _loc15_);
         _loc3_.§_-X2§();
         _loc4_.§_-X2§();
         return b2Math.§_-hI§(_loc13_) < b2Settings.b2_linearSlop;
      }
   }
}
