package §_-Rb§
{
   import §_-Zl§.b2Mat22;
   import §_-Zl§.b2Vec2;
   import §_-rg§.b2Body;
   import §_-rg§.b2TimeStep;
   import §_-uS§.b2internal;
   
   use namespace b2internal;
   
   public class b2MouseJoint extends b2Joint
   {
       
      
      private var §_-1c§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var §_-KT§:b2Vec2;
      
      private var §_-ja§:b2Vec2;
      
      private var §_-ro§:b2Vec2;
      
      private var §_-qa§:b2Mat22;
      
      private var §_-Zg§:b2Vec2;
      
      private var §_-U2§:Number;
      
      private var §_-FM§:Number;
      
      private var §_-ka§:Number;
      
      private var §_-hf§:Number;
      
      private var §_-sz§:Number;
      
      public function b2MouseJoint(param1:b2MouseJointDef)
      {
         var _loc2_:Number = NaN;
         var _loc4_:b2Mat22 = null;
         this.§_-1c§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.§_-KT§ = new b2Vec2();
         this.§_-ja§ = new b2Vec2();
         this.§_-ro§ = new b2Vec2();
         this.§_-qa§ = new b2Mat22();
         this.§_-Zg§ = new b2Vec2();
         super(param1);
         this.§_-ja§.SetV(param1.target);
         _loc2_ = this.§_-ja§.x - b2internal::_-GP.m_xf.position.x;
         var _loc3_:Number = this.§_-ja§.y - b2internal::_-GP.m_xf.position.y;
         _loc4_ = b2internal::_-GP.m_xf.R;
         this.§_-KT§.x = _loc2_ * _loc4_.col1.x + _loc3_ * _loc4_.col1.y;
         this.§_-KT§.y = _loc2_ * _loc4_.col2.x + _loc3_ * _loc4_.col2.y;
         this.§_-U2§ = param1.§_-GC§;
         this.§_-ro§.§_-Vw§();
         this.§_-FM§ = param1.§_-8R§;
         this.§_-ka§ = param1.§_-XX§;
         this.§_-hf§ = 0;
         this.§_-sz§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return this.§_-ja§;
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::_-GP.GetWorldPoint(this.§_-KT§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§_-ro§.x,param1 * this.§_-ro§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §_-QC§() : b2Vec2
      {
         return this.§_-ja§;
      }
      
      public function §_-6T§(param1:b2Vec2) : void
      {
         if(b2internal::_-GP.IsAwake() == false)
         {
            b2internal::_-GP.SetAwake(true);
         }
         this.§_-ja§ = param1;
      }
      
      public function §else§() : Number
      {
         return this.§_-U2§;
      }
      
      public function §_-18§(param1:Number) : void
      {
         this.§_-U2§ = param1;
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
         var _loc7_:b2Mat22 = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc2_:b2Body = b2internal::_-GP;
         var _loc3_:Number = _loc2_.GetMass();
         var _loc4_:Number = 2 * Math.PI * this.§_-FM§;
         var _loc5_:Number = 2 * _loc3_ * this.§_-ka§ * _loc4_;
         var _loc6_:Number = _loc3_ * _loc4_ * _loc4_;
         this.§_-sz§ = param1.§_-Vj§ * (_loc5_ + param1.§_-Vj§ * _loc6_);
         this.§_-sz§ = this.§_-sz§ != 0 ? Number(1 / this.§_-sz§) : Number(0);
         this.§_-hf§ = param1.§_-Vj§ * _loc6_ * this.§_-sz§;
         _loc7_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.§_-KT§.x - _loc2_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§_-KT§.y - _loc2_.m_sweep.localCenter.y;
         var _loc10_:Number = _loc7_.col1.x * _loc8_ + _loc7_.col2.x * _loc9_;
         _loc9_ = _loc7_.col1.y * _loc8_ + _loc7_.col2.y * _loc9_;
         _loc8_ = _loc10_;
         _loc11_ = _loc2_.§_-s§;
         _loc12_ = _loc2_.§_-TW§;
         this.K1.col1.x = _loc11_;
         this.K1.col2.x = 0;
         this.K1.col1.y = 0;
         this.K1.col2.y = _loc11_;
         this.K2.col1.x = _loc12_ * _loc9_ * _loc9_;
         this.K2.col2.x = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col1.y = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col2.y = _loc12_ * _loc8_ * _loc8_;
         this.§_-1c§.§_-Xw§(this.K1);
         this.§_-1c§.§_-Ph§(this.K2);
         this.§_-1c§.col1.x += this.§_-sz§;
         this.§_-1c§.col2.y += this.§_-sz§;
         this.§_-1c§.§_-EY§(this.§_-qa§);
         this.§_-Zg§.x = _loc2_.m_sweep.c.x + _loc8_ - this.§_-ja§.x;
         this.§_-Zg§.y = _loc2_.m_sweep.c.y + _loc9_ - this.§_-ja§.y;
         _loc2_.m_angularVelocity *= 0.98;
         this.§_-ro§.x *= param1.§_-4i§;
         this.§_-ro§.y *= param1.§_-4i§;
         _loc2_.§_-Ng§.x += _loc11_ * this.§_-ro§.x;
         _loc2_.§_-Ng§.y += _loc11_ * this.§_-ro§.y;
         _loc2_.m_angularVelocity += _loc12_ * (_loc8_ * this.§_-ro§.y - _loc9_ * this.§_-ro§.x);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc3_:b2Mat22 = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:b2Body = b2internal::_-GP;
         _loc3_ = _loc2_.m_xf.R;
         var _loc6_:Number = this.§_-KT§.x - _loc2_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§_-KT§.y - _loc2_.m_sweep.localCenter.y;
         _loc4_ = _loc3_.col1.x * _loc6_ + _loc3_.col2.x * _loc7_;
         _loc7_ = _loc3_.col1.y * _loc6_ + _loc3_.col2.y * _loc7_;
         _loc6_ = _loc4_;
         var _loc8_:Number = _loc2_.§_-Ng§.x + -_loc2_.m_angularVelocity * _loc7_;
         var _loc9_:Number = _loc2_.§_-Ng§.y + _loc2_.m_angularVelocity * _loc6_;
         _loc3_ = this.§_-qa§;
         _loc4_ = _loc8_ + this.§_-hf§ * this.§_-Zg§.x + this.§_-sz§ * this.§_-ro§.x;
         _loc5_ = _loc9_ + this.§_-hf§ * this.§_-Zg§.y + this.§_-sz§ * this.§_-ro§.y;
         var _loc10_:Number = -(_loc3_.col1.x * _loc4_ + _loc3_.col2.x * _loc5_);
         var _loc11_:Number = -(_loc3_.col1.y * _loc4_ + _loc3_.col2.y * _loc5_);
         var _loc12_:Number = this.§_-ro§.x;
         var _loc13_:Number = this.§_-ro§.y;
         this.§_-ro§.x += _loc10_;
         this.§_-ro§.y += _loc11_;
         var _loc14_:Number = param1.§_-Vj§ * this.§_-U2§;
         if(this.§_-ro§.§_-QN§() > _loc14_ * _loc14_)
         {
            this.§_-ro§.§_-v8§(_loc14_ / this.§_-ro§.§_-pM§());
         }
         _loc10_ = this.§_-ro§.x - _loc12_;
         _loc11_ = this.§_-ro§.y - _loc13_;
         _loc2_.§_-Ng§.x += _loc2_.§_-s§ * _loc10_;
         _loc2_.§_-Ng§.y += _loc2_.§_-s§ * _loc11_;
         _loc2_.m_angularVelocity += _loc2_.§_-TW§ * (_loc6_ * _loc11_ - _loc7_ * _loc10_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
