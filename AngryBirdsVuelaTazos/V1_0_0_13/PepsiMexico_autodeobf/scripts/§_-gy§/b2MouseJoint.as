package §_-gy§
{
   import §_-SM§.b2internal;
   import §_-qW§.b2Body;
   import §_-qW§.b2TimeStep;
   import §var§.b2Mat22;
   import §var§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2MouseJoint extends b2Joint
   {
       
      
      private var §_-HX§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var §_-yV§:b2Vec2;
      
      private var §_-FS§:b2Vec2;
      
      private var §continue§:b2Vec2;
      
      private var §_-wV§:b2Mat22;
      
      private var §_-2t§:b2Vec2;
      
      private var §_-8P§:Number;
      
      private var §_-zH§:Number;
      
      private var §_-57§:Number;
      
      private var §_-Jt§:Number;
      
      private var §_-6k§:Number;
      
      public function b2MouseJoint(param1:b2MouseJointDef)
      {
         var _loc2_:Number = NaN;
         var _loc4_:b2Mat22 = null;
         this.§_-HX§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.§_-yV§ = new b2Vec2();
         this.§_-FS§ = new b2Vec2();
         this.§continue§ = new b2Vec2();
         this.§_-wV§ = new b2Mat22();
         this.§_-2t§ = new b2Vec2();
         super(param1);
         this.§_-FS§.SetV(param1.target);
         _loc2_ = this.§_-FS§.x - b2internal::_-Zw.m_xf.position.x;
         var _loc3_:Number = this.§_-FS§.y - b2internal::_-Zw.m_xf.position.y;
         _loc4_ = b2internal::_-Zw.m_xf.R;
         this.§_-yV§.x = _loc2_ * _loc4_.col1.x + _loc3_ * _loc4_.col1.y;
         this.§_-yV§.y = _loc2_ * _loc4_.col2.x + _loc3_ * _loc4_.col2.y;
         this.§_-8P§ = param1.§_-Fz§;
         this.§continue§.§_-pR§();
         this.§_-zH§ = param1.§_-DV§;
         this.§_-57§ = param1.§_-qi§;
         this.§_-Jt§ = 0;
         this.§_-6k§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return this.§_-FS§;
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::_-Zw.GetWorldPoint(this.§_-yV§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§continue§.x,param1 * this.§continue§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §_-7N§() : b2Vec2
      {
         return this.§_-FS§;
      }
      
      public function §_-lw§(param1:b2Vec2) : void
      {
         if(b2internal::_-Zw.IsAwake() == false)
         {
            b2internal::_-Zw.SetAwake(true);
         }
         this.§_-FS§ = param1;
      }
      
      public function §_-zP§() : Number
      {
         return this.§_-8P§;
      }
      
      public function override(param1:Number) : void
      {
         this.§_-8P§ = param1;
      }
      
      public function §_-pw§() : Number
      {
         return this.§_-zH§;
      }
      
      public function §_-FC§(param1:Number) : void
      {
         this.§_-zH§ = param1;
      }
      
      public function §_-5z§() : Number
      {
         return this.§_-57§;
      }
      
      public function §_-Z-§(param1:Number) : void
      {
         this.§_-57§ = param1;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc7_:b2Mat22 = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc2_:b2Body = b2internal::_-Zw;
         var _loc3_:Number = _loc2_.GetMass();
         var _loc4_:Number = 2 * Math.PI * this.§_-zH§;
         var _loc5_:Number = 2 * _loc3_ * this.§_-57§ * _loc4_;
         var _loc6_:Number = _loc3_ * _loc4_ * _loc4_;
         this.§_-6k§ = param1.§_-sn§ * (_loc5_ + param1.§_-sn§ * _loc6_);
         this.§_-6k§ = this.§_-6k§ != 0 ? Number(1 / this.§_-6k§) : Number(0);
         this.§_-Jt§ = param1.§_-sn§ * _loc6_ * this.§_-6k§;
         _loc7_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.§_-yV§.x - _loc2_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§_-yV§.y - _loc2_.m_sweep.localCenter.y;
         var _loc10_:Number = _loc7_.col1.x * _loc8_ + _loc7_.col2.x * _loc9_;
         _loc9_ = _loc7_.col1.y * _loc8_ + _loc7_.col2.y * _loc9_;
         _loc8_ = _loc10_;
         _loc11_ = _loc2_.§_-Af§;
         _loc12_ = _loc2_.§_-Yq§;
         this.K1.col1.x = _loc11_;
         this.K1.col2.x = 0;
         this.K1.col1.y = 0;
         this.K1.col2.y = _loc11_;
         this.K2.col1.x = _loc12_ * _loc9_ * _loc9_;
         this.K2.col2.x = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col1.y = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col2.y = _loc12_ * _loc8_ * _loc8_;
         this.§_-HX§.§_-rb§(this.K1);
         this.§_-HX§.§_-Ge§(this.K2);
         this.§_-HX§.col1.x += this.§_-6k§;
         this.§_-HX§.col2.y += this.§_-6k§;
         this.§_-HX§.§_-Ph§(this.§_-wV§);
         this.§_-2t§.x = _loc2_.m_sweep.c.x + _loc8_ - this.§_-FS§.x;
         this.§_-2t§.y = _loc2_.m_sweep.c.y + _loc9_ - this.§_-FS§.y;
         _loc2_.m_angularVelocity *= 0.98;
         this.§continue§.x *= param1.§_-PA§;
         this.§continue§.y *= param1.§_-PA§;
         _loc2_.§_-dS§.x += _loc11_ * this.§continue§.x;
         _loc2_.§_-dS§.y += _loc11_ * this.§continue§.y;
         _loc2_.m_angularVelocity += _loc12_ * (_loc8_ * this.§continue§.y - _loc9_ * this.§continue§.x);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc3_:b2Mat22 = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:b2Body = b2internal::_-Zw;
         _loc3_ = _loc2_.m_xf.R;
         var _loc6_:Number = this.§_-yV§.x - _loc2_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§_-yV§.y - _loc2_.m_sweep.localCenter.y;
         _loc4_ = _loc3_.col1.x * _loc6_ + _loc3_.col2.x * _loc7_;
         _loc7_ = _loc3_.col1.y * _loc6_ + _loc3_.col2.y * _loc7_;
         _loc6_ = _loc4_;
         var _loc8_:Number = _loc2_.§_-dS§.x + -_loc2_.m_angularVelocity * _loc7_;
         var _loc9_:Number = _loc2_.§_-dS§.y + _loc2_.m_angularVelocity * _loc6_;
         _loc3_ = this.§_-wV§;
         _loc4_ = _loc8_ + this.§_-Jt§ * this.§_-2t§.x + this.§_-6k§ * this.§continue§.x;
         _loc5_ = _loc9_ + this.§_-Jt§ * this.§_-2t§.y + this.§_-6k§ * this.§continue§.y;
         var _loc10_:Number = -(_loc3_.col1.x * _loc4_ + _loc3_.col2.x * _loc5_);
         var _loc11_:Number = -(_loc3_.col1.y * _loc4_ + _loc3_.col2.y * _loc5_);
         var _loc12_:Number = this.§continue§.x;
         var _loc13_:Number = this.§continue§.y;
         this.§continue§.x += _loc10_;
         this.§continue§.y += _loc11_;
         var _loc14_:Number = param1.§_-sn§ * this.§_-8P§;
         if(this.§continue§.§_-0k§() > _loc14_ * _loc14_)
         {
            this.§continue§.§_-ju§(_loc14_ / this.§continue§.§_-yl§());
         }
         _loc10_ = this.§continue§.x - _loc12_;
         _loc11_ = this.§continue§.y - _loc13_;
         _loc2_.§_-dS§.x += _loc2_.§_-Af§ * _loc10_;
         _loc2_.§_-dS§.y += _loc2_.§_-Af§ * _loc11_;
         _loc2_.m_angularVelocity += _loc2_.§_-Yq§ * (_loc6_ * _loc11_ - _loc7_ * _loc10_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
