package §_-bt§
{
   import §_-4n§.b2Mat22;
   import §_-4n§.b2Math;
   import §_-4n§.b2Vec2;
   import §_-bW§.b2Settings;
   import §_-bW§.b2internal;
   import §const§.b2Body;
   import §const§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2DistanceJoint extends b2Joint
   {
       
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var §_-cG§:b2Vec2;
      
      private var §_-ti§:Number;
      
      private var §_-z5§:Number;
      
      private var §_-Ls§:Number;
      
      private var §_-Uf§:Number;
      
      private var §_-A0§:Number;
      
      private var §_-dp§:Number;
      
      private var §_-CJ§:Number;
      
      public function b2DistanceJoint(param1:b2DistanceJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§_-cG§ = new b2Vec2();
         super(param1);
         this.m_localAnchor1.SetV(param1.§_-5O§);
         this.m_localAnchor2.SetV(param1.§_-q3§);
         this.§_-CJ§ = param1.length;
         this.§_-ti§ = param1.§_-3I§;
         this.§_-z5§ = param1.§_-wr§;
         this.§_-A0§ = 0;
         this.§_-Ls§ = 0;
         this.§_-Uf§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::_-ba.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::_-pK.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§_-A0§ * this.§_-cG§.x,param1 * this.§_-A0§ * this.§_-cG§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §_-FY§() : Number
      {
         return this.§_-CJ§;
      }
      
      public function §_-KS§(param1:Number) : void
      {
         this.§_-CJ§ = param1;
      }
      
      public function §_-vv§() : Number
      {
         return this.§_-ti§;
      }
      
      public function §_-e7§(param1:Number) : void
      {
         this.§_-ti§ = param1;
      }
      
      public function §_-Ij§() : Number
      {
         return this.§_-z5§;
      }
      
      public function §_-91§(param1:Number) : void
      {
         this.§_-z5§ = param1;
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
         _loc4_ = b2internal::_-ba;
         _loc5_ = b2internal::_-pK;
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
         this.§_-cG§.x = _loc5_.m_sweep.c.x + _loc8_ - _loc4_.m_sweep.c.x - _loc6_;
         this.§_-cG§.y = _loc5_.m_sweep.c.y + _loc9_ - _loc4_.m_sweep.c.y - _loc7_;
         var _loc10_:Number;
         if((_loc10_ = Math.sqrt(this.§_-cG§.x * this.§_-cG§.x + this.§_-cG§.y * this.§_-cG§.y)) > b2Settings.b2_linearSlop)
         {
            this.§_-cG§.§_-wB§(1 / _loc10_);
         }
         else
         {
            this.§_-cG§.§_-IE§();
         }
         var _loc11_:Number = _loc6_ * this.§_-cG§.y - _loc7_ * this.§_-cG§.x;
         var _loc12_:Number = _loc8_ * this.§_-cG§.y - _loc9_ * this.§_-cG§.x;
         var _loc13_:Number = _loc4_.§_-RG§ + _loc4_.§_-n4§ * _loc11_ * _loc11_ + _loc5_.§_-RG§ + _loc5_.§_-n4§ * _loc12_ * _loc12_;
         this.§_-dp§ = _loc13_ != 0 ? Number(1 / _loc13_) : Number(0);
         if(this.§_-ti§ > 0)
         {
            _loc14_ = _loc10_ - this.§_-CJ§;
            _loc15_ = 2 * Math.PI * this.§_-ti§;
            _loc16_ = 2 * this.§_-dp§ * this.§_-z5§ * _loc15_;
            _loc17_ = this.§_-dp§ * _loc15_ * _loc15_;
            this.§_-Ls§ = param1.§_-ib§ * (_loc16_ + param1.§_-ib§ * _loc17_);
            this.§_-Ls§ = this.§_-Ls§ != 0 ? Number(1 / this.§_-Ls§) : Number(0);
            this.§_-Uf§ = _loc14_ * param1.§_-ib§ * _loc17_ * this.§_-Ls§;
            this.§_-dp§ = _loc13_ + this.§_-Ls§;
            this.§_-dp§ = this.§_-dp§ != 0 ? Number(1 / this.§_-dp§) : Number(0);
         }
         if(param1.§_-lv§)
         {
            this.§_-A0§ *= param1.§_-4Y§;
            _loc18_ = this.§_-A0§ * this.§_-cG§.x;
            _loc19_ = this.§_-A0§ * this.§_-cG§.y;
            _loc4_.§_-eW§.x -= _loc4_.§_-RG§ * _loc18_;
            _loc4_.§_-eW§.y -= _loc4_.§_-RG§ * _loc19_;
            _loc4_.m_angularVelocity -= _loc4_.§_-n4§ * (_loc6_ * _loc19_ - _loc7_ * _loc18_);
            _loc5_.§_-eW§.x += _loc5_.§_-RG§ * _loc18_;
            _loc5_.§_-eW§.y += _loc5_.§_-RG§ * _loc19_;
            _loc5_.m_angularVelocity += _loc5_.§_-n4§ * (_loc8_ * _loc19_ - _loc9_ * _loc18_);
         }
         else
         {
            this.§_-A0§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:b2Body = b2internal::_-ba;
         var _loc4_:b2Body = b2internal::_-pK;
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
         var _loc10_:Number = _loc3_.§_-eW§.x + -_loc3_.m_angularVelocity * _loc6_;
         var _loc11_:Number = _loc3_.§_-eW§.y + _loc3_.m_angularVelocity * _loc5_;
         var _loc12_:Number = _loc4_.§_-eW§.x + -_loc4_.m_angularVelocity * _loc9_;
         var _loc13_:Number = _loc4_.§_-eW§.y + _loc4_.m_angularVelocity * _loc8_;
         var _loc14_:Number = this.§_-cG§.x * (_loc12_ - _loc10_) + this.§_-cG§.y * (_loc13_ - _loc11_);
         var _loc15_:Number = -this.§_-dp§ * (_loc14_ + this.§_-Uf§ + this.§_-Ls§ * this.§_-A0§);
         this.§_-A0§ += _loc15_;
         var _loc16_:Number = _loc15_ * this.§_-cG§.x;
         var _loc17_:Number = _loc15_ * this.§_-cG§.y;
         _loc3_.§_-eW§.x -= _loc3_.§_-RG§ * _loc16_;
         _loc3_.§_-eW§.y -= _loc3_.§_-RG§ * _loc17_;
         _loc3_.m_angularVelocity -= _loc3_.§_-n4§ * (_loc5_ * _loc17_ - _loc6_ * _loc16_);
         _loc4_.§_-eW§.x += _loc4_.§_-RG§ * _loc16_;
         _loc4_.§_-eW§.y += _loc4_.§_-RG§ * _loc17_;
         _loc4_.m_angularVelocity += _loc4_.§_-n4§ * (_loc8_ * _loc17_ - _loc9_ * _loc16_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc2_:b2Mat22 = null;
         if(this.§_-ti§ > 0)
         {
            return true;
         }
         var _loc3_:b2Body = b2internal::_-ba;
         var _loc4_:b2Body = b2internal::_-pK;
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
         var _loc13_:Number = _loc12_ - this.§_-CJ§;
         _loc13_ = b2Math.§_-1P§(_loc13_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
         var _loc14_:Number = -this.§_-dp§ * _loc13_;
         this.§_-cG§.Set(_loc10_,_loc11_);
         var _loc15_:Number = _loc14_ * this.§_-cG§.x;
         var _loc16_:Number = _loc14_ * this.§_-cG§.y;
         _loc3_.m_sweep.c.x -= _loc3_.§_-RG§ * _loc15_;
         _loc3_.m_sweep.c.y -= _loc3_.§_-RG§ * _loc16_;
         _loc3_.m_sweep.a -= _loc3_.§_-n4§ * (_loc5_ * _loc16_ - _loc6_ * _loc15_);
         _loc4_.m_sweep.c.x += _loc4_.§_-RG§ * _loc15_;
         _loc4_.m_sweep.c.y += _loc4_.§_-RG§ * _loc16_;
         _loc4_.m_sweep.a += _loc4_.§_-n4§ * (_loc8_ * _loc16_ - _loc9_ * _loc15_);
         _loc3_.§_-Zz§();
         _loc4_.§_-Zz§();
         return b2Math.§_-R3§(_loc13_) < b2Settings.b2_linearSlop;
      }
   }
}
