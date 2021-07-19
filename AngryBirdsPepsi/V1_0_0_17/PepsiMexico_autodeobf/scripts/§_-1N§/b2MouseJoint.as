package §_-1N§
{
   import §_-Iw§.b2Body;
   import §_-Iw§.b2TimeStep;
   import §_-Ja§.b2Mat22;
   import §_-Ja§.b2Vec2;
   import §_-lh§.b2internal;
   
   use namespace b2internal;
   
   public class b2MouseJoint extends b2Joint
   {
       
      
      private var §_-9s§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var §_-Ht§:b2Vec2;
      
      private var §_-Wr§:b2Vec2;
      
      private var §_-tN§:b2Vec2;
      
      private var §_-jI§:b2Mat22;
      
      private var §_-TZ§:b2Vec2;
      
      private var §_-CU§:Number;
      
      private var §_-Hc§:Number;
      
      private var §_-xD§:Number;
      
      private var §_-4S§:Number;
      
      private var §_-B4§:Number;
      
      public function b2MouseJoint(param1:b2MouseJointDef)
      {
         var _loc2_:Number = NaN;
         var _loc4_:b2Mat22 = null;
         this.§_-9s§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.§_-Ht§ = new b2Vec2();
         this.§_-Wr§ = new b2Vec2();
         this.§_-tN§ = new b2Vec2();
         this.§_-jI§ = new b2Mat22();
         this.§_-TZ§ = new b2Vec2();
         super(param1);
         this.§_-Wr§.SetV(param1.target);
         _loc2_ = this.§_-Wr§.x - b2internal::_-9K.m_xf.position.x;
         var _loc3_:Number = this.§_-Wr§.y - b2internal::_-9K.m_xf.position.y;
         _loc4_ = b2internal::_-9K.m_xf.R;
         this.§_-Ht§.x = _loc2_ * _loc4_.col1.x + _loc3_ * _loc4_.col1.y;
         this.§_-Ht§.y = _loc2_ * _loc4_.col2.x + _loc3_ * _loc4_.col2.y;
         this.§_-CU§ = param1.§_-O9§;
         this.§_-tN§.§_-0a§();
         this.§_-Hc§ = param1.§_-Kf§;
         this.§_-xD§ = param1.§_-Co§;
         this.§_-4S§ = 0;
         this.§_-B4§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return this.§_-Wr§;
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::_-9K.GetWorldPoint(this.§_-Ht§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§_-tN§.x,param1 * this.§_-tN§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §_-Qn§() : b2Vec2
      {
         return this.§_-Wr§;
      }
      
      public function §_-e9§(param1:b2Vec2) : void
      {
         if(b2internal::_-9K.IsAwake() == false)
         {
            b2internal::_-9K.SetAwake(true);
         }
         this.§_-Wr§ = param1;
      }
      
      public function §_-8N§() : Number
      {
         return this.§_-CU§;
      }
      
      public function §_-23§(param1:Number) : void
      {
         this.§_-CU§ = param1;
      }
      
      public function §_-51§() : Number
      {
         return this.§_-Hc§;
      }
      
      public function §_-LE§(param1:Number) : void
      {
         this.§_-Hc§ = param1;
      }
      
      public function §_-po§() : Number
      {
         return this.§_-xD§;
      }
      
      public function §_-b-§(param1:Number) : void
      {
         this.§_-xD§ = param1;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc7_:b2Mat22 = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc2_:b2Body = b2internal::_-9K;
         var _loc3_:Number = _loc2_.GetMass();
         var _loc4_:Number = 2 * Math.PI * this.§_-Hc§;
         var _loc5_:Number = 2 * _loc3_ * this.§_-xD§ * _loc4_;
         var _loc6_:Number = _loc3_ * _loc4_ * _loc4_;
         this.§_-B4§ = param1.§_-h8§ * (_loc5_ + param1.§_-h8§ * _loc6_);
         this.§_-B4§ = this.§_-B4§ != 0 ? Number(1 / this.§_-B4§) : Number(0);
         this.§_-4S§ = param1.§_-h8§ * _loc6_ * this.§_-B4§;
         _loc7_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.§_-Ht§.x - _loc2_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§_-Ht§.y - _loc2_.m_sweep.localCenter.y;
         var _loc10_:Number = _loc7_.col1.x * _loc8_ + _loc7_.col2.x * _loc9_;
         _loc9_ = _loc7_.col1.y * _loc8_ + _loc7_.col2.y * _loc9_;
         _loc8_ = _loc10_;
         _loc11_ = _loc2_.§_-eZ§;
         _loc12_ = _loc2_.§_-DZ§;
         this.K1.col1.x = _loc11_;
         this.K1.col2.x = 0;
         this.K1.col1.y = 0;
         this.K1.col2.y = _loc11_;
         this.K2.col1.x = _loc12_ * _loc9_ * _loc9_;
         this.K2.col2.x = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col1.y = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col2.y = _loc12_ * _loc8_ * _loc8_;
         this.§_-9s§.§_-AH§(this.K1);
         this.§_-9s§.get(this.K2);
         this.§_-9s§.col1.x += this.§_-B4§;
         this.§_-9s§.col2.y += this.§_-B4§;
         this.§_-9s§.§_-uq§(this.§_-jI§);
         this.§_-TZ§.x = _loc2_.m_sweep.c.x + _loc8_ - this.§_-Wr§.x;
         this.§_-TZ§.y = _loc2_.m_sweep.c.y + _loc9_ - this.§_-Wr§.y;
         _loc2_.m_angularVelocity *= 0.98;
         this.§_-tN§.x *= param1.§break§;
         this.§_-tN§.y *= param1.§break§;
         _loc2_.§_-ZZ§.x += _loc11_ * this.§_-tN§.x;
         _loc2_.§_-ZZ§.y += _loc11_ * this.§_-tN§.y;
         _loc2_.m_angularVelocity += _loc12_ * (_loc8_ * this.§_-tN§.y - _loc9_ * this.§_-tN§.x);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc3_:b2Mat22 = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:b2Body = b2internal::_-9K;
         _loc3_ = _loc2_.m_xf.R;
         var _loc6_:Number = this.§_-Ht§.x - _loc2_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§_-Ht§.y - _loc2_.m_sweep.localCenter.y;
         _loc4_ = _loc3_.col1.x * _loc6_ + _loc3_.col2.x * _loc7_;
         _loc7_ = _loc3_.col1.y * _loc6_ + _loc3_.col2.y * _loc7_;
         _loc6_ = _loc4_;
         var _loc8_:Number = _loc2_.§_-ZZ§.x + -_loc2_.m_angularVelocity * _loc7_;
         var _loc9_:Number = _loc2_.§_-ZZ§.y + _loc2_.m_angularVelocity * _loc6_;
         _loc3_ = this.§_-jI§;
         _loc4_ = _loc8_ + this.§_-4S§ * this.§_-TZ§.x + this.§_-B4§ * this.§_-tN§.x;
         _loc5_ = _loc9_ + this.§_-4S§ * this.§_-TZ§.y + this.§_-B4§ * this.§_-tN§.y;
         var _loc10_:Number = -(_loc3_.col1.x * _loc4_ + _loc3_.col2.x * _loc5_);
         var _loc11_:Number = -(_loc3_.col1.y * _loc4_ + _loc3_.col2.y * _loc5_);
         var _loc12_:Number = this.§_-tN§.x;
         var _loc13_:Number = this.§_-tN§.y;
         this.§_-tN§.x += _loc10_;
         this.§_-tN§.y += _loc11_;
         var _loc14_:Number = param1.§_-h8§ * this.§_-CU§;
         if(this.§_-tN§.§_-Un§() > _loc14_ * _loc14_)
         {
            this.§_-tN§.§_-6z§(_loc14_ / this.§_-tN§.§_-dP§());
         }
         _loc10_ = this.§_-tN§.x - _loc12_;
         _loc11_ = this.§_-tN§.y - _loc13_;
         _loc2_.§_-ZZ§.x += _loc2_.§_-eZ§ * _loc10_;
         _loc2_.§_-ZZ§.y += _loc2_.§_-eZ§ * _loc11_;
         _loc2_.m_angularVelocity += _loc2_.§_-DZ§ * (_loc6_ * _loc11_ - _loc7_ * _loc10_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
