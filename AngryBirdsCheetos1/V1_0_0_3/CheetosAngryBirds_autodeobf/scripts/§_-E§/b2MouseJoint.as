package §_-E§
{
   import §_-00B§.b2Body;
   import §_-00B§.b2TimeStep;
   import §_-Jf§.b2internal;
   import §_-Vn§.b2Mat22;
   import §_-Vn§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2MouseJoint extends b2Joint
   {
       
      
      private var §_-cH§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var §_-0z§:b2Vec2;
      
      private var §_-Cy§:b2Vec2;
      
      private var §_-Ud§:b2Vec2;
      
      private var §_-5y§:b2Mat22;
      
      private var §_-ZQ§:b2Vec2;
      
      private var §_-Ws§:Number;
      
      private var §_-Xo§:Number;
      
      private var §_-D5§:Number;
      
      private var §_-Ql§:Number;
      
      private var §_-l-§:Number;
      
      public function b2MouseJoint(param1:b2MouseJointDef)
      {
         var _loc2_:Number = NaN;
         var _loc4_:b2Mat22 = null;
         this.§_-cH§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.§_-0z§ = new b2Vec2();
         this.§_-Cy§ = new b2Vec2();
         this.§_-Ud§ = new b2Vec2();
         this.§_-5y§ = new b2Mat22();
         this.§_-ZQ§ = new b2Vec2();
         super(param1);
         this.§_-Cy§.SetV(param1.target);
         _loc2_ = this.§_-Cy§.x - b2internal::_-52.m_xf.position.x;
         var _loc3_:Number = this.§_-Cy§.y - b2internal::_-52.m_xf.position.y;
         _loc4_ = b2internal::_-52.m_xf.R;
         this.§_-0z§.x = _loc2_ * _loc4_.col1.x + _loc3_ * _loc4_.col1.y;
         this.§_-0z§.y = _loc2_ * _loc4_.col2.x + _loc3_ * _loc4_.col2.y;
         this.§_-Ws§ = param1.§_-4V§;
         this.§_-Ud§.§return§();
         this.§_-Xo§ = param1.§_-R-§;
         this.§_-D5§ = param1.§_-q6§;
         this.§_-Ql§ = 0;
         this.§_-l-§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return this.§_-Cy§;
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::_-52.GetWorldPoint(this.§_-0z§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§_-Ud§.x,param1 * this.§_-Ud§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §_-0F§() : b2Vec2
      {
         return this.§_-Cy§;
      }
      
      public function §_-j-§(param1:b2Vec2) : void
      {
         if(b2internal::_-52.IsAwake() == false)
         {
            b2internal::_-52.SetAwake(true);
         }
         this.§_-Cy§ = param1;
      }
      
      public function §_-8J§() : Number
      {
         return this.§_-Ws§;
      }
      
      public function §_-WT§(param1:Number) : void
      {
         this.§_-Ws§ = param1;
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
         var _loc7_:b2Mat22 = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc2_:b2Body = b2internal::_-52;
         var _loc3_:Number = _loc2_.GetMass();
         var _loc4_:Number = 2 * Math.PI * this.§_-Xo§;
         var _loc5_:Number = 2 * _loc3_ * this.§_-D5§ * _loc4_;
         var _loc6_:Number = _loc3_ * _loc4_ * _loc4_;
         this.§_-l-§ = param1.§_-Km§ * (_loc5_ + param1.§_-Km§ * _loc6_);
         this.§_-l-§ = this.§_-l-§ != 0 ? Number(1 / this.§_-l-§) : Number(0);
         this.§_-Ql§ = param1.§_-Km§ * _loc6_ * this.§_-l-§;
         _loc7_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.§_-0z§.x - _loc2_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§_-0z§.y - _loc2_.m_sweep.localCenter.y;
         var _loc10_:Number = _loc7_.col1.x * _loc8_ + _loc7_.col2.x * _loc9_;
         _loc9_ = _loc7_.col1.y * _loc8_ + _loc7_.col2.y * _loc9_;
         _loc8_ = _loc10_;
         _loc11_ = _loc2_.§_-zL§;
         _loc12_ = _loc2_.§_-aJ§;
         this.K1.col1.x = _loc11_;
         this.K1.col2.x = 0;
         this.K1.col1.y = 0;
         this.K1.col2.y = _loc11_;
         this.K2.col1.x = _loc12_ * _loc9_ * _loc9_;
         this.K2.col2.x = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col1.y = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col2.y = _loc12_ * _loc8_ * _loc8_;
         this.§_-cH§.§_-QN§(this.K1);
         this.§_-cH§.§_-Fj§(this.K2);
         this.§_-cH§.col1.x += this.§_-l-§;
         this.§_-cH§.col2.y += this.§_-l-§;
         this.§_-cH§.§throw§(this.§_-5y§);
         this.§_-ZQ§.x = _loc2_.m_sweep.c.x + _loc8_ - this.§_-Cy§.x;
         this.§_-ZQ§.y = _loc2_.m_sweep.c.y + _loc9_ - this.§_-Cy§.y;
         _loc2_.m_angularVelocity *= 0.98;
         this.§_-Ud§.x *= param1.§_-na§;
         this.§_-Ud§.y *= param1.§_-na§;
         _loc2_.§_-Yd§.x += _loc11_ * this.§_-Ud§.x;
         _loc2_.§_-Yd§.y += _loc11_ * this.§_-Ud§.y;
         _loc2_.m_angularVelocity += _loc12_ * (_loc8_ * this.§_-Ud§.y - _loc9_ * this.§_-Ud§.x);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc3_:b2Mat22 = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:b2Body = b2internal::_-52;
         _loc3_ = _loc2_.m_xf.R;
         var _loc6_:Number = this.§_-0z§.x - _loc2_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§_-0z§.y - _loc2_.m_sweep.localCenter.y;
         _loc4_ = _loc3_.col1.x * _loc6_ + _loc3_.col2.x * _loc7_;
         _loc7_ = _loc3_.col1.y * _loc6_ + _loc3_.col2.y * _loc7_;
         _loc6_ = _loc4_;
         var _loc8_:Number = _loc2_.§_-Yd§.x + -_loc2_.m_angularVelocity * _loc7_;
         var _loc9_:Number = _loc2_.§_-Yd§.y + _loc2_.m_angularVelocity * _loc6_;
         _loc3_ = this.§_-5y§;
         _loc4_ = _loc8_ + this.§_-Ql§ * this.§_-ZQ§.x + this.§_-l-§ * this.§_-Ud§.x;
         _loc5_ = _loc9_ + this.§_-Ql§ * this.§_-ZQ§.y + this.§_-l-§ * this.§_-Ud§.y;
         var _loc10_:Number = -(_loc3_.col1.x * _loc4_ + _loc3_.col2.x * _loc5_);
         var _loc11_:Number = -(_loc3_.col1.y * _loc4_ + _loc3_.col2.y * _loc5_);
         var _loc12_:Number = this.§_-Ud§.x;
         var _loc13_:Number = this.§_-Ud§.y;
         this.§_-Ud§.x += _loc10_;
         this.§_-Ud§.y += _loc11_;
         var _loc14_:Number = param1.§_-Km§ * this.§_-Ws§;
         if(this.§_-Ud§.§_-Tv§() > _loc14_ * _loc14_)
         {
            this.§_-Ud§.§_-Hx§(_loc14_ / this.§_-Ud§.§_-VY§());
         }
         _loc10_ = this.§_-Ud§.x - _loc12_;
         _loc11_ = this.§_-Ud§.y - _loc13_;
         _loc2_.§_-Yd§.x += _loc2_.§_-zL§ * _loc10_;
         _loc2_.§_-Yd§.y += _loc2_.§_-zL§ * _loc11_;
         _loc2_.m_angularVelocity += _loc2_.§_-aJ§ * (_loc6_ * _loc11_ - _loc7_ * _loc10_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
