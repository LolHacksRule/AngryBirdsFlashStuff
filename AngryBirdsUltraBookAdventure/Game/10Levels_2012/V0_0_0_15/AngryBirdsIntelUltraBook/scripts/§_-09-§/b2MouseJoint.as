package §_-09-§
{
   import §_-5§.b2internal;
   import §_-Yp§.b2Mat22;
   import §_-Yp§.b2Vec2;
   import §_-aU§.b2Body;
   import §_-aU§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2MouseJoint extends b2Joint
   {
       
      
      private var §_-2d§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var §_-d2§:b2Vec2;
      
      private var §_-§:b2Vec2;
      
      private var §_-MK§:b2Vec2;
      
      private var §_-5W§:b2Mat22;
      
      private var §_-vD§:b2Vec2;
      
      private var §_-RK§:Number;
      
      private var §_-FO§:Number;
      
      private var §_-x6§:Number;
      
      private var §_-jU§:Number;
      
      private var §_-v-§:Number;
      
      public function b2MouseJoint(param1:b2MouseJointDef)
      {
         var _loc2_:Number = NaN;
         var _loc4_:b2Mat22 = null;
         this.§_-2d§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.§_-d2§ = new b2Vec2();
         this.§_-§ = new b2Vec2();
         this.§_-MK§ = new b2Vec2();
         this.§_-5W§ = new b2Mat22();
         this.§_-vD§ = new b2Vec2();
         super(param1);
         this.§_-§.SetV(param1.target);
         _loc2_ = this.§_-§.x - b2internal::_-c9.m_xf.position.x;
         var _loc3_:Number = this.§_-§.y - b2internal::_-c9.m_xf.position.y;
         _loc4_ = b2internal::_-c9.m_xf.R;
         this.§_-d2§.x = _loc2_ * _loc4_.col1.x + _loc3_ * _loc4_.col1.y;
         this.§_-d2§.y = _loc2_ * _loc4_.col2.x + _loc3_ * _loc4_.col2.y;
         this.§_-RK§ = param1.§_-oX§;
         this.§_-MK§.§_-el§();
         this.§_-FO§ = param1.§true §;
         this.§_-x6§ = param1.§_-9r§;
         this.§_-jU§ = 0;
         this.§_-v-§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return this.§_-§;
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::_-c9.GetWorldPoint(this.§_-d2§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§_-MK§.x,param1 * this.§_-MK§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §_-0AF§() : b2Vec2
      {
         return this.§_-§;
      }
      
      public function §_-6F§(param1:b2Vec2) : void
      {
         if(b2internal::_-c9.IsAwake() == false)
         {
            b2internal::_-c9.SetAwake(true);
         }
         this.§_-§ = param1;
      }
      
      public function §_-vZ§() : Number
      {
         return this.§_-RK§;
      }
      
      public function §_-EZ§(param1:Number) : void
      {
         this.§_-RK§ = param1;
      }
      
      public function §_-Am§() : Number
      {
         return this.§_-FO§;
      }
      
      public function §_-9W§(param1:Number) : void
      {
         this.§_-FO§ = param1;
      }
      
      public function §_-U8§() : Number
      {
         return this.§_-x6§;
      }
      
      public function §_-6H§(param1:Number) : void
      {
         this.§_-x6§ = param1;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc7_:b2Mat22 = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc2_:b2Body = b2internal::_-c9;
         var _loc3_:Number = _loc2_.GetMass();
         var _loc4_:Number = 2 * Math.PI * this.§_-FO§;
         var _loc5_:Number = 2 * _loc3_ * this.§_-x6§ * _loc4_;
         var _loc6_:Number = _loc3_ * _loc4_ * _loc4_;
         this.§_-v-§ = param1.§_-pn§ * (_loc5_ + param1.§_-pn§ * _loc6_);
         this.§_-v-§ = this.§_-v-§ != 0 ? Number(1 / this.§_-v-§) : Number(0);
         this.§_-jU§ = param1.§_-pn§ * _loc6_ * this.§_-v-§;
         _loc7_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.§_-d2§.x - _loc2_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§_-d2§.y - _loc2_.m_sweep.localCenter.y;
         var _loc10_:Number = _loc7_.col1.x * _loc8_ + _loc7_.col2.x * _loc9_;
         _loc9_ = _loc7_.col1.y * _loc8_ + _loc7_.col2.y * _loc9_;
         _loc8_ = _loc10_;
         _loc11_ = _loc2_.§_-03A§;
         _loc12_ = _loc2_.§_-Dz§;
         this.K1.col1.x = _loc11_;
         this.K1.col2.x = 0;
         this.K1.col1.y = 0;
         this.K1.col2.y = _loc11_;
         this.K2.col1.x = _loc12_ * _loc9_ * _loc9_;
         this.K2.col2.x = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col1.y = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col2.y = _loc12_ * _loc8_ * _loc8_;
         this.§_-2d§.§_-tP§(this.K1);
         this.§_-2d§.§_-a3§(this.K2);
         this.§_-2d§.col1.x += this.§_-v-§;
         this.§_-2d§.col2.y += this.§_-v-§;
         this.§_-2d§.§_-84§(this.§_-5W§);
         this.§_-vD§.x = _loc2_.m_sweep.c.x + _loc8_ - this.§_-§.x;
         this.§_-vD§.y = _loc2_.m_sweep.c.y + _loc9_ - this.§_-§.y;
         _loc2_.m_angularVelocity *= 0.98;
         this.§_-MK§.x *= param1.§_-b8§;
         this.§_-MK§.y *= param1.§_-b8§;
         _loc2_.§_-kZ§.x += _loc11_ * this.§_-MK§.x;
         _loc2_.§_-kZ§.y += _loc11_ * this.§_-MK§.y;
         _loc2_.m_angularVelocity += _loc12_ * (_loc8_ * this.§_-MK§.y - _loc9_ * this.§_-MK§.x);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc3_:b2Mat22 = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:b2Body = b2internal::_-c9;
         _loc3_ = _loc2_.m_xf.R;
         var _loc6_:Number = this.§_-d2§.x - _loc2_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§_-d2§.y - _loc2_.m_sweep.localCenter.y;
         _loc4_ = _loc3_.col1.x * _loc6_ + _loc3_.col2.x * _loc7_;
         _loc7_ = _loc3_.col1.y * _loc6_ + _loc3_.col2.y * _loc7_;
         _loc6_ = _loc4_;
         var _loc8_:Number = _loc2_.§_-kZ§.x + -_loc2_.m_angularVelocity * _loc7_;
         var _loc9_:Number = _loc2_.§_-kZ§.y + _loc2_.m_angularVelocity * _loc6_;
         _loc3_ = this.§_-5W§;
         _loc4_ = _loc8_ + this.§_-jU§ * this.§_-vD§.x + this.§_-v-§ * this.§_-MK§.x;
         _loc5_ = _loc9_ + this.§_-jU§ * this.§_-vD§.y + this.§_-v-§ * this.§_-MK§.y;
         var _loc10_:Number = -(_loc3_.col1.x * _loc4_ + _loc3_.col2.x * _loc5_);
         var _loc11_:Number = -(_loc3_.col1.y * _loc4_ + _loc3_.col2.y * _loc5_);
         var _loc12_:Number = this.§_-MK§.x;
         var _loc13_:Number = this.§_-MK§.y;
         this.§_-MK§.x += _loc10_;
         this.§_-MK§.y += _loc11_;
         var _loc14_:Number = param1.§_-pn§ * this.§_-RK§;
         if(this.§_-MK§.§_-wN§() > _loc14_ * _loc14_)
         {
            this.§_-MK§.§_-mx§(_loc14_ / this.§_-MK§.§_-YT§());
         }
         _loc10_ = this.§_-MK§.x - _loc12_;
         _loc11_ = this.§_-MK§.y - _loc13_;
         _loc2_.§_-kZ§.x += _loc2_.§_-03A§ * _loc10_;
         _loc2_.§_-kZ§.y += _loc2_.§_-03A§ * _loc11_;
         _loc2_.m_angularVelocity += _loc2_.§_-Dz§ * (_loc6_ * _loc11_ - _loc7_ * _loc10_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
