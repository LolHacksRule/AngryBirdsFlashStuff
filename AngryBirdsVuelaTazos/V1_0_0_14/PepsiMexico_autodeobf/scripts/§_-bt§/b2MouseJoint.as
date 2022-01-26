package §_-bt§
{
   import §_-4n§.b2Mat22;
   import §_-4n§.b2Vec2;
   import §_-bW§.b2internal;
   import §const§.b2Body;
   import §const§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2MouseJoint extends b2Joint
   {
       
      
      private var §_-s3§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var §_-Kr§:b2Vec2;
      
      private var §_-KV§:b2Vec2;
      
      private var §_-A0§:b2Vec2;
      
      private var §_-dp§:b2Mat22;
      
      private var §_-HY§:b2Vec2;
      
      private var §_-Ig§:Number;
      
      private var §_-ti§:Number;
      
      private var §_-z5§:Number;
      
      private var §_-9E§:Number;
      
      private var §_-Ls§:Number;
      
      public function b2MouseJoint(param1:b2MouseJointDef)
      {
         var _loc2_:Number = NaN;
         var _loc4_:b2Mat22 = null;
         this.§_-s3§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.§_-Kr§ = new b2Vec2();
         this.§_-KV§ = new b2Vec2();
         this.§_-A0§ = new b2Vec2();
         this.§_-dp§ = new b2Mat22();
         this.§_-HY§ = new b2Vec2();
         super(param1);
         this.§_-KV§.SetV(param1.target);
         _loc2_ = this.§_-KV§.x - b2internal::_-pK.m_xf.position.x;
         var _loc3_:Number = this.§_-KV§.y - b2internal::_-pK.m_xf.position.y;
         _loc4_ = b2internal::_-pK.m_xf.R;
         this.§_-Kr§.x = _loc2_ * _loc4_.col1.x + _loc3_ * _loc4_.col1.y;
         this.§_-Kr§.y = _loc2_ * _loc4_.col2.x + _loc3_ * _loc4_.col2.y;
         this.§_-Ig§ = param1.§_-2w§;
         this.§_-A0§.§_-IE§();
         this.§_-ti§ = param1.§_-3I§;
         this.§_-z5§ = param1.§_-wr§;
         this.§_-9E§ = 0;
         this.§_-Ls§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return this.§_-KV§;
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::_-pK.GetWorldPoint(this.§_-Kr§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§_-A0§.x,param1 * this.§_-A0§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §_-0C§() : b2Vec2
      {
         return this.§_-KV§;
      }
      
      public function §_-6q§(param1:b2Vec2) : void
      {
         if(b2internal::_-pK.IsAwake() == false)
         {
            b2internal::_-pK.SetAwake(true);
         }
         this.§_-KV§ = param1;
      }
      
      public function §_-ic§() : Number
      {
         return this.§_-Ig§;
      }
      
      public function §_-30§(param1:Number) : void
      {
         this.§_-Ig§ = param1;
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
         var _loc7_:b2Mat22 = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc2_:b2Body = b2internal::_-pK;
         var _loc3_:Number = _loc2_.GetMass();
         var _loc4_:Number = 2 * Math.PI * this.§_-ti§;
         var _loc5_:Number = 2 * _loc3_ * this.§_-z5§ * _loc4_;
         var _loc6_:Number = _loc3_ * _loc4_ * _loc4_;
         this.§_-Ls§ = param1.§_-ib§ * (_loc5_ + param1.§_-ib§ * _loc6_);
         this.§_-Ls§ = this.§_-Ls§ != 0 ? Number(1 / this.§_-Ls§) : Number(0);
         this.§_-9E§ = param1.§_-ib§ * _loc6_ * this.§_-Ls§;
         _loc7_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.§_-Kr§.x - _loc2_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§_-Kr§.y - _loc2_.m_sweep.localCenter.y;
         var _loc10_:Number = _loc7_.col1.x * _loc8_ + _loc7_.col2.x * _loc9_;
         _loc9_ = _loc7_.col1.y * _loc8_ + _loc7_.col2.y * _loc9_;
         _loc8_ = _loc10_;
         _loc11_ = _loc2_.§_-RG§;
         _loc12_ = _loc2_.§_-n4§;
         this.K1.col1.x = _loc11_;
         this.K1.col2.x = 0;
         this.K1.col1.y = 0;
         this.K1.col2.y = _loc11_;
         this.K2.col1.x = _loc12_ * _loc9_ * _loc9_;
         this.K2.col2.x = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col1.y = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col2.y = _loc12_ * _loc8_ * _loc8_;
         this.§_-s3§.§_-Dj§(this.K1);
         this.§_-s3§.§_-99§(this.K2);
         this.§_-s3§.col1.x += this.§_-Ls§;
         this.§_-s3§.col2.y += this.§_-Ls§;
         this.§_-s3§.§_-8g§(this.§_-dp§);
         this.§_-HY§.x = _loc2_.m_sweep.c.x + _loc8_ - this.§_-KV§.x;
         this.§_-HY§.y = _loc2_.m_sweep.c.y + _loc9_ - this.§_-KV§.y;
         _loc2_.m_angularVelocity *= 0.98;
         this.§_-A0§.x *= param1.§_-4Y§;
         this.§_-A0§.y *= param1.§_-4Y§;
         _loc2_.§_-eW§.x += _loc11_ * this.§_-A0§.x;
         _loc2_.§_-eW§.y += _loc11_ * this.§_-A0§.y;
         _loc2_.m_angularVelocity += _loc12_ * (_loc8_ * this.§_-A0§.y - _loc9_ * this.§_-A0§.x);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc3_:b2Mat22 = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:b2Body = b2internal::_-pK;
         _loc3_ = _loc2_.m_xf.R;
         var _loc6_:Number = this.§_-Kr§.x - _loc2_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§_-Kr§.y - _loc2_.m_sweep.localCenter.y;
         _loc4_ = _loc3_.col1.x * _loc6_ + _loc3_.col2.x * _loc7_;
         _loc7_ = _loc3_.col1.y * _loc6_ + _loc3_.col2.y * _loc7_;
         _loc6_ = _loc4_;
         var _loc8_:Number = _loc2_.§_-eW§.x + -_loc2_.m_angularVelocity * _loc7_;
         var _loc9_:Number = _loc2_.§_-eW§.y + _loc2_.m_angularVelocity * _loc6_;
         _loc3_ = this.§_-dp§;
         _loc4_ = _loc8_ + this.§_-9E§ * this.§_-HY§.x + this.§_-Ls§ * this.§_-A0§.x;
         _loc5_ = _loc9_ + this.§_-9E§ * this.§_-HY§.y + this.§_-Ls§ * this.§_-A0§.y;
         var _loc10_:Number = -(_loc3_.col1.x * _loc4_ + _loc3_.col2.x * _loc5_);
         var _loc11_:Number = -(_loc3_.col1.y * _loc4_ + _loc3_.col2.y * _loc5_);
         var _loc12_:Number = this.§_-A0§.x;
         var _loc13_:Number = this.§_-A0§.y;
         this.§_-A0§.x += _loc10_;
         this.§_-A0§.y += _loc11_;
         var _loc14_:Number = param1.§_-ib§ * this.§_-Ig§;
         if(this.§_-A0§.§_-xA§() > _loc14_ * _loc14_)
         {
            this.§_-A0§.§_-wB§(_loc14_ / this.§_-A0§.§_-K-§());
         }
         _loc10_ = this.§_-A0§.x - _loc12_;
         _loc11_ = this.§_-A0§.y - _loc13_;
         _loc2_.§_-eW§.x += _loc2_.§_-RG§ * _loc10_;
         _loc2_.§_-eW§.y += _loc2_.§_-RG§ * _loc11_;
         _loc2_.m_angularVelocity += _loc2_.§_-n4§ * (_loc6_ * _loc11_ - _loc7_ * _loc10_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
