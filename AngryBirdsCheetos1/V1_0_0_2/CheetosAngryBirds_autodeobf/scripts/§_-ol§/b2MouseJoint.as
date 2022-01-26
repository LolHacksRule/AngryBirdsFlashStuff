package §_-ol§
{
   import §_-43§.b2Body;
   import §_-43§.b2TimeStep;
   import §_-F2§.b2Mat22;
   import §_-F2§.b2Vec2;
   import §_-d6§.b2internal;
   
   use namespace b2internal;
   
   public class b2MouseJoint extends b2Joint
   {
       
      
      private var §_-Tt§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var §_-h4§:b2Vec2;
      
      private var §_-gy§:b2Vec2;
      
      private var §_-cR§:b2Vec2;
      
      private var §_-3i§:b2Mat22;
      
      private var §_-LF§:b2Vec2;
      
      private var §_-Aj§:Number;
      
      private var §_-m1§:Number;
      
      private var §_-YC§:Number;
      
      private var §_-Al§:Number;
      
      private var §_-Be§:Number;
      
      public function b2MouseJoint(param1:b2MouseJointDef)
      {
         var _loc2_:Number = NaN;
         var _loc4_:b2Mat22 = null;
         this.§_-Tt§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.§_-h4§ = new b2Vec2();
         this.§_-gy§ = new b2Vec2();
         this.§_-cR§ = new b2Vec2();
         this.§_-3i§ = new b2Mat22();
         this.§_-LF§ = new b2Vec2();
         super(param1);
         this.§_-gy§.SetV(param1.target);
         _loc2_ = this.§_-gy§.x - b2internal::_-eo.m_xf.position.x;
         var _loc3_:Number = this.§_-gy§.y - b2internal::_-eo.m_xf.position.y;
         _loc4_ = b2internal::_-eo.m_xf.R;
         this.§_-h4§.x = _loc2_ * _loc4_.col1.x + _loc3_ * _loc4_.col1.y;
         this.§_-h4§.y = _loc2_ * _loc4_.col2.x + _loc3_ * _loc4_.col2.y;
         this.§_-Aj§ = param1.§_-5J§;
         this.§_-cR§.§_-t5§();
         this.§_-m1§ = param1.§_-NZ§;
         this.§_-YC§ = param1.§_-EV§;
         this.§_-Al§ = 0;
         this.§_-Be§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return this.§_-gy§;
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::_-eo.GetWorldPoint(this.§_-h4§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§_-cR§.x,param1 * this.§_-cR§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §_-zt§() : b2Vec2
      {
         return this.§_-gy§;
      }
      
      public function §_-yl§(param1:b2Vec2) : void
      {
         if(b2internal::_-eo.IsAwake() == false)
         {
            b2internal::_-eo.SetAwake(true);
         }
         this.§_-gy§ = param1;
      }
      
      public function §_-h8§() : Number
      {
         return this.§_-Aj§;
      }
      
      public function §_-lO§(param1:Number) : void
      {
         this.§_-Aj§ = param1;
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
         var _loc7_:b2Mat22 = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc2_:b2Body = b2internal::_-eo;
         var _loc3_:Number = _loc2_.GetMass();
         var _loc4_:Number = 2 * Math.PI * this.§_-m1§;
         var _loc5_:Number = 2 * _loc3_ * this.§_-YC§ * _loc4_;
         var _loc6_:Number = _loc3_ * _loc4_ * _loc4_;
         this.§_-Be§ = param1.§_-At§ * (_loc5_ + param1.§_-At§ * _loc6_);
         this.§_-Be§ = this.§_-Be§ != 0 ? Number(1 / this.§_-Be§) : Number(0);
         this.§_-Al§ = param1.§_-At§ * _loc6_ * this.§_-Be§;
         _loc7_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.§_-h4§.x - _loc2_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§_-h4§.y - _loc2_.m_sweep.localCenter.y;
         var _loc10_:Number = _loc7_.col1.x * _loc8_ + _loc7_.col2.x * _loc9_;
         _loc9_ = _loc7_.col1.y * _loc8_ + _loc7_.col2.y * _loc9_;
         _loc8_ = _loc10_;
         _loc11_ = _loc2_.§_-N0§;
         _loc12_ = _loc2_.§_-pA§;
         this.K1.col1.x = _loc11_;
         this.K1.col2.x = 0;
         this.K1.col1.y = 0;
         this.K1.col2.y = _loc11_;
         this.K2.col1.x = _loc12_ * _loc9_ * _loc9_;
         this.K2.col2.x = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col1.y = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col2.y = _loc12_ * _loc8_ * _loc8_;
         this.§_-Tt§.§_-x1§(this.K1);
         this.§_-Tt§.§_-U8§(this.K2);
         this.§_-Tt§.col1.x += this.§_-Be§;
         this.§_-Tt§.col2.y += this.§_-Be§;
         this.§_-Tt§.§_-B0§(this.§_-3i§);
         this.§_-LF§.x = _loc2_.m_sweep.§_-FO§.x + _loc8_ - this.§_-gy§.x;
         this.§_-LF§.y = _loc2_.m_sweep.§_-FO§.y + _loc9_ - this.§_-gy§.y;
         _loc2_.m_angularVelocity *= 0.98;
         this.§_-cR§.x *= param1.§_-cz§;
         this.§_-cR§.y *= param1.§_-cz§;
         _loc2_.§_-We§.x += _loc11_ * this.§_-cR§.x;
         _loc2_.§_-We§.y += _loc11_ * this.§_-cR§.y;
         _loc2_.m_angularVelocity += _loc12_ * (_loc8_ * this.§_-cR§.y - _loc9_ * this.§_-cR§.x);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc3_:b2Mat22 = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:b2Body = b2internal::_-eo;
         _loc3_ = _loc2_.m_xf.R;
         var _loc6_:Number = this.§_-h4§.x - _loc2_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§_-h4§.y - _loc2_.m_sweep.localCenter.y;
         _loc4_ = _loc3_.col1.x * _loc6_ + _loc3_.col2.x * _loc7_;
         _loc7_ = _loc3_.col1.y * _loc6_ + _loc3_.col2.y * _loc7_;
         _loc6_ = _loc4_;
         var _loc8_:Number = _loc2_.§_-We§.x + -_loc2_.m_angularVelocity * _loc7_;
         var _loc9_:Number = _loc2_.§_-We§.y + _loc2_.m_angularVelocity * _loc6_;
         _loc3_ = this.§_-3i§;
         _loc4_ = _loc8_ + this.§_-Al§ * this.§_-LF§.x + this.§_-Be§ * this.§_-cR§.x;
         _loc5_ = _loc9_ + this.§_-Al§ * this.§_-LF§.y + this.§_-Be§ * this.§_-cR§.y;
         var _loc10_:Number = -(_loc3_.col1.x * _loc4_ + _loc3_.col2.x * _loc5_);
         var _loc11_:Number = -(_loc3_.col1.y * _loc4_ + _loc3_.col2.y * _loc5_);
         var _loc12_:Number = this.§_-cR§.x;
         var _loc13_:Number = this.§_-cR§.y;
         this.§_-cR§.x += _loc10_;
         this.§_-cR§.y += _loc11_;
         var _loc14_:Number = param1.§_-At§ * this.§_-Aj§;
         if(this.§_-cR§.§_-V4§() > _loc14_ * _loc14_)
         {
            this.§_-cR§.§_-X-§(_loc14_ / this.§_-cR§.§_-kd§());
         }
         _loc10_ = this.§_-cR§.x - _loc12_;
         _loc11_ = this.§_-cR§.y - _loc13_;
         _loc2_.§_-We§.x += _loc2_.§_-N0§ * _loc10_;
         _loc2_.§_-We§.y += _loc2_.§_-N0§ * _loc11_;
         _loc2_.m_angularVelocity += _loc2_.§_-pA§ * (_loc6_ * _loc11_ - _loc7_ * _loc10_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
