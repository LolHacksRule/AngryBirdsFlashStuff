package §_-zP§
{
   import §_-bA§.b2Mat22;
   import §_-bA§.b2Vec2;
   import §_-rz§.b2internal;
   import §_-vk§.b2Body;
   import §_-vk§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2MouseJoint extends b2Joint
   {
       
      
      private var §_-Gb§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var §_-Lk§:b2Vec2;
      
      private var §_-rL§:b2Vec2;
      
      private var §_-TZ§:b2Vec2;
      
      private var §_-aR§:b2Mat22;
      
      private var §_-1z§:b2Vec2;
      
      private var §_-zo§:Number;
      
      private var §_-UZ§:Number;
      
      private var §_-Vz§:Number;
      
      private var §_-Gq§:Number;
      
      private var §_-3d§:Number;
      
      public function b2MouseJoint(param1:b2MouseJointDef)
      {
         var _loc2_:Number = NaN;
         var _loc4_:b2Mat22 = null;
         this.§_-Gb§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.§_-Lk§ = new b2Vec2();
         this.§_-rL§ = new b2Vec2();
         this.§_-TZ§ = new b2Vec2();
         this.§_-aR§ = new b2Mat22();
         this.§_-1z§ = new b2Vec2();
         super(param1);
         this.§_-rL§.SetV(param1.target);
         _loc2_ = this.§_-rL§.x - b2internal::_-qa.m_xf.position.x;
         var _loc3_:Number = this.§_-rL§.y - b2internal::_-qa.m_xf.position.y;
         _loc4_ = b2internal::_-qa.m_xf.R;
         this.§_-Lk§.x = _loc2_ * _loc4_.col1.x + _loc3_ * _loc4_.col1.y;
         this.§_-Lk§.y = _loc2_ * _loc4_.col2.x + _loc3_ * _loc4_.col2.y;
         this.§_-zo§ = param1.§_-qo§;
         this.§_-TZ§.§_-qi§();
         this.§_-UZ§ = param1.§_-4J§;
         this.§_-Vz§ = param1.§_-ZH§;
         this.§_-Gq§ = 0;
         this.§_-3d§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return this.§_-rL§;
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::_-qa.GetWorldPoint(this.§_-Lk§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§_-TZ§.x,param1 * this.§_-TZ§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §_-5Y§() : b2Vec2
      {
         return this.§_-rL§;
      }
      
      public function §_-lm§(param1:b2Vec2) : void
      {
         if(b2internal::_-qa.IsAwake() == false)
         {
            b2internal::_-qa.SetAwake(true);
         }
         this.§_-rL§ = param1;
      }
      
      public function §_-H9§() : Number
      {
         return this.§_-zo§;
      }
      
      public function §_-lT§(param1:Number) : void
      {
         this.§_-zo§ = param1;
      }
      
      public function §_-38§() : Number
      {
         return this.§_-UZ§;
      }
      
      public function §_-Z-§(param1:Number) : void
      {
         this.§_-UZ§ = param1;
      }
      
      public function §_-6W§() : Number
      {
         return this.§_-Vz§;
      }
      
      public function §_-wP§(param1:Number) : void
      {
         this.§_-Vz§ = param1;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc7_:b2Mat22 = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc2_:b2Body = b2internal::_-qa;
         var _loc3_:Number = _loc2_.GetMass();
         var _loc4_:Number = 2 * Math.PI * this.§_-UZ§;
         var _loc5_:Number = 2 * _loc3_ * this.§_-Vz§ * _loc4_;
         var _loc6_:Number = _loc3_ * _loc4_ * _loc4_;
         this.§_-3d§ = param1.§_-Qf§ * (_loc5_ + param1.§_-Qf§ * _loc6_);
         this.§_-3d§ = this.§_-3d§ != 0 ? Number(1 / this.§_-3d§) : Number(0);
         this.§_-Gq§ = param1.§_-Qf§ * _loc6_ * this.§_-3d§;
         _loc7_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.§_-Lk§.x - _loc2_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§_-Lk§.y - _loc2_.m_sweep.localCenter.y;
         var _loc10_:Number = _loc7_.col1.x * _loc8_ + _loc7_.col2.x * _loc9_;
         _loc9_ = _loc7_.col1.y * _loc8_ + _loc7_.col2.y * _loc9_;
         _loc8_ = _loc10_;
         _loc11_ = _loc2_.§_-Wd§;
         _loc12_ = _loc2_.§_-Ox§;
         this.K1.col1.x = _loc11_;
         this.K1.col2.x = 0;
         this.K1.col1.y = 0;
         this.K1.col2.y = _loc11_;
         this.K2.col1.x = _loc12_ * _loc9_ * _loc9_;
         this.K2.col2.x = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col1.y = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col2.y = _loc12_ * _loc8_ * _loc8_;
         this.§_-Gb§.§_-zL§(this.K1);
         this.§_-Gb§.§_-ae§(this.K2);
         this.§_-Gb§.col1.x += this.§_-3d§;
         this.§_-Gb§.col2.y += this.§_-3d§;
         this.§_-Gb§.§_-c3§(this.§_-aR§);
         this.§_-1z§.x = _loc2_.m_sweep.§_-Zh§.x + _loc8_ - this.§_-rL§.x;
         this.§_-1z§.y = _loc2_.m_sweep.§_-Zh§.y + _loc9_ - this.§_-rL§.y;
         _loc2_.m_angularVelocity *= 0.98;
         this.§_-TZ§.x *= param1.§_-D§;
         this.§_-TZ§.y *= param1.§_-D§;
         _loc2_.§_-At§.x += _loc11_ * this.§_-TZ§.x;
         _loc2_.§_-At§.y += _loc11_ * this.§_-TZ§.y;
         _loc2_.m_angularVelocity += _loc12_ * (_loc8_ * this.§_-TZ§.y - _loc9_ * this.§_-TZ§.x);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc3_:b2Mat22 = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:b2Body = b2internal::_-qa;
         _loc3_ = _loc2_.m_xf.R;
         var _loc6_:Number = this.§_-Lk§.x - _loc2_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§_-Lk§.y - _loc2_.m_sweep.localCenter.y;
         _loc4_ = _loc3_.col1.x * _loc6_ + _loc3_.col2.x * _loc7_;
         _loc7_ = _loc3_.col1.y * _loc6_ + _loc3_.col2.y * _loc7_;
         _loc6_ = _loc4_;
         var _loc8_:Number = _loc2_.§_-At§.x + -_loc2_.m_angularVelocity * _loc7_;
         var _loc9_:Number = _loc2_.§_-At§.y + _loc2_.m_angularVelocity * _loc6_;
         _loc3_ = this.§_-aR§;
         _loc4_ = _loc8_ + this.§_-Gq§ * this.§_-1z§.x + this.§_-3d§ * this.§_-TZ§.x;
         _loc5_ = _loc9_ + this.§_-Gq§ * this.§_-1z§.y + this.§_-3d§ * this.§_-TZ§.y;
         var _loc10_:Number = -(_loc3_.col1.x * _loc4_ + _loc3_.col2.x * _loc5_);
         var _loc11_:Number = -(_loc3_.col1.y * _loc4_ + _loc3_.col2.y * _loc5_);
         var _loc12_:Number = this.§_-TZ§.x;
         var _loc13_:Number = this.§_-TZ§.y;
         this.§_-TZ§.x += _loc10_;
         this.§_-TZ§.y += _loc11_;
         var _loc14_:Number = param1.§_-Qf§ * this.§_-zo§;
         if(this.§_-TZ§.§_-vz§() > _loc14_ * _loc14_)
         {
            this.§_-TZ§.§_-2O§(_loc14_ / this.§_-TZ§.§_-vp§());
         }
         _loc10_ = this.§_-TZ§.x - _loc12_;
         _loc11_ = this.§_-TZ§.y - _loc13_;
         _loc2_.§_-At§.x += _loc2_.§_-Wd§ * _loc10_;
         _loc2_.§_-At§.y += _loc2_.§_-Wd§ * _loc11_;
         _loc2_.m_angularVelocity += _loc2_.§_-Ox§ * (_loc6_ * _loc11_ - _loc7_ * _loc10_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
