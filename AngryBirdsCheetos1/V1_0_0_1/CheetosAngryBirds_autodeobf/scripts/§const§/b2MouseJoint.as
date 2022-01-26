package §const§
{
   import §_-b4§.b2internal;
   import §_-cP§.b2Mat22;
   import §_-cP§.b2Vec2;
   import §try§.b2Body;
   import §try§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2MouseJoint extends b2Joint
   {
       
      
      private var §_-eQ§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var §_-uI§:b2Vec2;
      
      private var §_-WL§:b2Vec2;
      
      private var §_-gD§:b2Vec2;
      
      private var §_-p4§:b2Mat22;
      
      private var §_-0z§:b2Vec2;
      
      private var §_-y§:Number;
      
      private var §_-6§:Number;
      
      private var §_-37§:Number;
      
      private var §_-Ge§:Number;
      
      private var §_-jQ§:Number;
      
      public function b2MouseJoint(param1:b2MouseJointDef)
      {
         var _loc2_:Number = NaN;
         var _loc4_:b2Mat22 = null;
         this.§_-eQ§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.§_-uI§ = new b2Vec2();
         this.§_-WL§ = new b2Vec2();
         this.§_-gD§ = new b2Vec2();
         this.§_-p4§ = new b2Mat22();
         this.§_-0z§ = new b2Vec2();
         super(param1);
         this.§_-WL§.SetV(param1.target);
         _loc2_ = this.§_-WL§.x - b2internal::_-RO.m_xf.position.x;
         var _loc3_:Number = this.§_-WL§.y - b2internal::_-RO.m_xf.position.y;
         _loc4_ = b2internal::_-RO.m_xf.R;
         this.§_-uI§.x = _loc2_ * _loc4_.col1.x + _loc3_ * _loc4_.col1.y;
         this.§_-uI§.y = _loc2_ * _loc4_.col2.x + _loc3_ * _loc4_.col2.y;
         this.§_-y§ = param1.§_-Ao§;
         this.§_-gD§.§_-WO§();
         this.§_-6§ = param1.§_-ek§;
         this.§_-37§ = param1.§_-DN§;
         this.§_-Ge§ = 0;
         this.§_-jQ§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return this.§_-WL§;
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::_-RO.GetWorldPoint(this.§_-uI§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§_-gD§.x,param1 * this.§_-gD§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §_-tA§() : b2Vec2
      {
         return this.§_-WL§;
      }
      
      public function §_-8F§(param1:b2Vec2) : void
      {
         if(b2internal::_-RO.IsAwake() == false)
         {
            b2internal::_-RO.SetAwake(true);
         }
         this.§_-WL§ = param1;
      }
      
      public function §_-9I§() : Number
      {
         return this.§_-y§;
      }
      
      public function §_-dn§(param1:Number) : void
      {
         this.§_-y§ = param1;
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
         var _loc7_:b2Mat22 = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc2_:b2Body = b2internal::_-RO;
         var _loc3_:Number = _loc2_.GetMass();
         var _loc4_:Number = 2 * Math.PI * this.§_-6§;
         var _loc5_:Number = 2 * _loc3_ * this.§_-37§ * _loc4_;
         var _loc6_:Number = _loc3_ * _loc4_ * _loc4_;
         this.§_-jQ§ = param1.§_-ec§ * (_loc5_ + param1.§_-ec§ * _loc6_);
         this.§_-jQ§ = this.§_-jQ§ != 0 ? Number(1 / this.§_-jQ§) : Number(0);
         this.§_-Ge§ = param1.§_-ec§ * _loc6_ * this.§_-jQ§;
         _loc7_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.§_-uI§.x - _loc2_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§_-uI§.y - _loc2_.m_sweep.localCenter.y;
         var _loc10_:Number = _loc7_.col1.x * _loc8_ + _loc7_.col2.x * _loc9_;
         _loc9_ = _loc7_.col1.y * _loc8_ + _loc7_.col2.y * _loc9_;
         _loc8_ = _loc10_;
         _loc11_ = _loc2_.§_-hk§;
         _loc12_ = _loc2_.§_-LF§;
         this.K1.col1.x = _loc11_;
         this.K1.col2.x = 0;
         this.K1.col1.y = 0;
         this.K1.col2.y = _loc11_;
         this.K2.col1.x = _loc12_ * _loc9_ * _loc9_;
         this.K2.col2.x = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col1.y = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col2.y = _loc12_ * _loc8_ * _loc8_;
         this.§_-eQ§.§_-TY§(this.K1);
         this.§_-eQ§.§_-h-§(this.K2);
         this.§_-eQ§.col1.x += this.§_-jQ§;
         this.§_-eQ§.col2.y += this.§_-jQ§;
         this.§_-eQ§.§_-HT§(this.§_-p4§);
         this.§_-0z§.x = _loc2_.m_sweep.§_-xQ§.x + _loc8_ - this.§_-WL§.x;
         this.§_-0z§.y = _loc2_.m_sweep.§_-xQ§.y + _loc9_ - this.§_-WL§.y;
         _loc2_.m_angularVelocity *= 0.98;
         this.§_-gD§.x *= param1.§_-Mu§;
         this.§_-gD§.y *= param1.§_-Mu§;
         _loc2_.§_-PK§.x += _loc11_ * this.§_-gD§.x;
         _loc2_.§_-PK§.y += _loc11_ * this.§_-gD§.y;
         _loc2_.m_angularVelocity += _loc12_ * (_loc8_ * this.§_-gD§.y - _loc9_ * this.§_-gD§.x);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc3_:b2Mat22 = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:b2Body = b2internal::_-RO;
         _loc3_ = _loc2_.m_xf.R;
         var _loc6_:Number = this.§_-uI§.x - _loc2_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§_-uI§.y - _loc2_.m_sweep.localCenter.y;
         _loc4_ = _loc3_.col1.x * _loc6_ + _loc3_.col2.x * _loc7_;
         _loc7_ = _loc3_.col1.y * _loc6_ + _loc3_.col2.y * _loc7_;
         _loc6_ = _loc4_;
         var _loc8_:Number = _loc2_.§_-PK§.x + -_loc2_.m_angularVelocity * _loc7_;
         var _loc9_:Number = _loc2_.§_-PK§.y + _loc2_.m_angularVelocity * _loc6_;
         _loc3_ = this.§_-p4§;
         _loc4_ = _loc8_ + this.§_-Ge§ * this.§_-0z§.x + this.§_-jQ§ * this.§_-gD§.x;
         _loc5_ = _loc9_ + this.§_-Ge§ * this.§_-0z§.y + this.§_-jQ§ * this.§_-gD§.y;
         var _loc10_:Number = -(_loc3_.col1.x * _loc4_ + _loc3_.col2.x * _loc5_);
         var _loc11_:Number = -(_loc3_.col1.y * _loc4_ + _loc3_.col2.y * _loc5_);
         var _loc12_:Number = this.§_-gD§.x;
         var _loc13_:Number = this.§_-gD§.y;
         this.§_-gD§.x += _loc10_;
         this.§_-gD§.y += _loc11_;
         var _loc14_:Number = param1.§_-ec§ * this.§_-y§;
         if(this.§_-gD§.§_-yJ§() > _loc14_ * _loc14_)
         {
            this.§_-gD§.§_-qa§(_loc14_ / this.§_-gD§.§_-DP§());
         }
         _loc10_ = this.§_-gD§.x - _loc12_;
         _loc11_ = this.§_-gD§.y - _loc13_;
         _loc2_.§_-PK§.x += _loc2_.§_-hk§ * _loc10_;
         _loc2_.§_-PK§.y += _loc2_.§_-hk§ * _loc11_;
         _loc2_.m_angularVelocity += _loc2_.§_-LF§ * (_loc6_ * _loc11_ - _loc7_ * _loc10_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
