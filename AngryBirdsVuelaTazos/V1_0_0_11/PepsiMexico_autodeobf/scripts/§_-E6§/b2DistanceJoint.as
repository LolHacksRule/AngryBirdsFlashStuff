package §_-E6§
{
   import §_-WW§.b2Body;
   import §_-WW§.b2TimeStep;
   import §_-dx§.b2Mat22;
   import §_-dx§.b2Math;
   import §_-dx§.b2Vec2;
   import §_-iO§.b2Settings;
   import §_-iO§.b2internal;
   
   use namespace b2internal;
   
   public class b2DistanceJoint extends b2Joint
   {
       
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var §_-4V§:b2Vec2;
      
      private var §continue§:Number;
      
      private var §_-dL§:Number;
      
      private var §_-cg§:Number;
      
      private var §_-f3§:Number;
      
      private var §_-TC§:Number;
      
      private var §_-dz§:Number;
      
      private var §_-MS§:Number;
      
      public function b2DistanceJoint(param1:b2DistanceJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§_-4V§ = new b2Vec2();
         super(param1);
         this.m_localAnchor1.SetV(param1.§_-uE§);
         this.m_localAnchor2.SetV(param1.§_-L5§);
         this.§_-MS§ = param1.length;
         this.§continue§ = param1.§_-xZ§;
         this.§_-dL§ = param1.§_-BC§;
         this.§_-TC§ = 0;
         this.§_-cg§ = 0;
         this.§_-f3§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::_-t6.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::_-7f.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§_-TC§ * this.§_-4V§.x,param1 * this.§_-TC§ * this.§_-4V§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §_-1y§() : Number
      {
         return this.§_-MS§;
      }
      
      public function §_-fo§(param1:Number) : void
      {
         this.§_-MS§ = param1;
      }
      
      public function §_-Ml§() : Number
      {
         return this.§continue§;
      }
      
      public function §_-iy§(param1:Number) : void
      {
         this.§continue§ = param1;
      }
      
      public function §_-sG§() : Number
      {
         return this.§_-dL§;
      }
      
      public function §_-gH§(param1:Number) : void
      {
         this.§_-dL§ = param1;
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
         _loc4_ = b2internal::_-t6;
         _loc5_ = b2internal::_-7f;
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
         this.§_-4V§.x = _loc5_.m_sweep.c.x + _loc8_ - _loc4_.m_sweep.c.x - _loc6_;
         this.§_-4V§.y = _loc5_.m_sweep.c.y + _loc9_ - _loc4_.m_sweep.c.y - _loc7_;
         var _loc10_:Number;
         if((_loc10_ = Math.sqrt(this.§_-4V§.x * this.§_-4V§.x + this.§_-4V§.y * this.§_-4V§.y)) > b2Settings.b2_linearSlop)
         {
            this.§_-4V§.§_-Lp§(1 / _loc10_);
         }
         else
         {
            this.§_-4V§.§_-pZ§();
         }
         var _loc11_:Number = _loc6_ * this.§_-4V§.y - _loc7_ * this.§_-4V§.x;
         var _loc12_:Number = _loc8_ * this.§_-4V§.y - _loc9_ * this.§_-4V§.x;
         var _loc13_:Number = _loc4_.§_-YH§ + _loc4_.§_-49§ * _loc11_ * _loc11_ + _loc5_.§_-YH§ + _loc5_.§_-49§ * _loc12_ * _loc12_;
         this.§_-dz§ = _loc13_ != 0 ? Number(1 / _loc13_) : Number(0);
         if(this.§continue§ > 0)
         {
            _loc14_ = _loc10_ - this.§_-MS§;
            _loc15_ = 2 * Math.PI * this.§continue§;
            _loc16_ = 2 * this.§_-dz§ * this.§_-dL§ * _loc15_;
            _loc17_ = this.§_-dz§ * _loc15_ * _loc15_;
            this.§_-cg§ = param1.§_-a9§ * (_loc16_ + param1.§_-a9§ * _loc17_);
            this.§_-cg§ = this.§_-cg§ != 0 ? Number(1 / this.§_-cg§) : Number(0);
            this.§_-f3§ = _loc14_ * param1.§_-a9§ * _loc17_ * this.§_-cg§;
            this.§_-dz§ = _loc13_ + this.§_-cg§;
            this.§_-dz§ = this.§_-dz§ != 0 ? Number(1 / this.§_-dz§) : Number(0);
         }
         if(param1.§_-xV§)
         {
            this.§_-TC§ *= param1.§_-3W§;
            _loc18_ = this.§_-TC§ * this.§_-4V§.x;
            _loc19_ = this.§_-TC§ * this.§_-4V§.y;
            _loc4_.§_-Ce§.x -= _loc4_.§_-YH§ * _loc18_;
            _loc4_.§_-Ce§.y -= _loc4_.§_-YH§ * _loc19_;
            _loc4_.m_angularVelocity -= _loc4_.§_-49§ * (_loc6_ * _loc19_ - _loc7_ * _loc18_);
            _loc5_.§_-Ce§.x += _loc5_.§_-YH§ * _loc18_;
            _loc5_.§_-Ce§.y += _loc5_.§_-YH§ * _loc19_;
            _loc5_.m_angularVelocity += _loc5_.§_-49§ * (_loc8_ * _loc19_ - _loc9_ * _loc18_);
         }
         else
         {
            this.§_-TC§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:b2Body = b2internal::_-t6;
         var _loc4_:b2Body = b2internal::_-7f;
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
         var _loc10_:Number = _loc3_.§_-Ce§.x + -_loc3_.m_angularVelocity * _loc6_;
         var _loc11_:Number = _loc3_.§_-Ce§.y + _loc3_.m_angularVelocity * _loc5_;
         var _loc12_:Number = _loc4_.§_-Ce§.x + -_loc4_.m_angularVelocity * _loc9_;
         var _loc13_:Number = _loc4_.§_-Ce§.y + _loc4_.m_angularVelocity * _loc8_;
         var _loc14_:Number = this.§_-4V§.x * (_loc12_ - _loc10_) + this.§_-4V§.y * (_loc13_ - _loc11_);
         var _loc15_:Number = -this.§_-dz§ * (_loc14_ + this.§_-f3§ + this.§_-cg§ * this.§_-TC§);
         this.§_-TC§ += _loc15_;
         var _loc16_:Number = _loc15_ * this.§_-4V§.x;
         var _loc17_:Number = _loc15_ * this.§_-4V§.y;
         _loc3_.§_-Ce§.x -= _loc3_.§_-YH§ * _loc16_;
         _loc3_.§_-Ce§.y -= _loc3_.§_-YH§ * _loc17_;
         _loc3_.m_angularVelocity -= _loc3_.§_-49§ * (_loc5_ * _loc17_ - _loc6_ * _loc16_);
         _loc4_.§_-Ce§.x += _loc4_.§_-YH§ * _loc16_;
         _loc4_.§_-Ce§.y += _loc4_.§_-YH§ * _loc17_;
         _loc4_.m_angularVelocity += _loc4_.§_-49§ * (_loc8_ * _loc17_ - _loc9_ * _loc16_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc2_:b2Mat22 = null;
         if(this.§continue§ > 0)
         {
            return true;
         }
         var _loc3_:b2Body = b2internal::_-t6;
         var _loc4_:b2Body = b2internal::_-7f;
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
         var _loc13_:Number = _loc12_ - this.§_-MS§;
         _loc13_ = b2Math.§_-k3§(_loc13_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
         var _loc14_:Number = -this.§_-dz§ * _loc13_;
         this.§_-4V§.Set(_loc10_,_loc11_);
         var _loc15_:Number = _loc14_ * this.§_-4V§.x;
         var _loc16_:Number = _loc14_ * this.§_-4V§.y;
         _loc3_.m_sweep.c.x -= _loc3_.§_-YH§ * _loc15_;
         _loc3_.m_sweep.c.y -= _loc3_.§_-YH§ * _loc16_;
         _loc3_.m_sweep.a -= _loc3_.§_-49§ * (_loc5_ * _loc16_ - _loc6_ * _loc15_);
         _loc4_.m_sweep.c.x += _loc4_.§_-YH§ * _loc15_;
         _loc4_.m_sweep.c.y += _loc4_.§_-YH§ * _loc16_;
         _loc4_.m_sweep.a += _loc4_.§_-49§ * (_loc8_ * _loc16_ - _loc9_ * _loc15_);
         _loc3_.§_-B0§();
         _loc4_.§_-B0§();
         return b2Math.§_-2l§(_loc13_) < b2Settings.b2_linearSlop;
      }
   }
}
