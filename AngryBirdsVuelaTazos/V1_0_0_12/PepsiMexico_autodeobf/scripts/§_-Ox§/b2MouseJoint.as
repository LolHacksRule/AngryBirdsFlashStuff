package §_-Ox§
{
   import §_-9z§.b2Mat22;
   import §_-9z§.b2Vec2;
   import §_-EH§.b2Body;
   import §_-EH§.b2TimeStep;
   import §_-sU§.b2internal;
   
   use namespace b2internal;
   
   public class b2MouseJoint extends b2Joint
   {
       
      
      private var §_-Jy§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var §_-s0§:b2Vec2;
      
      private var §_-PC§:b2Vec2;
      
      private var §_-AM§:b2Vec2;
      
      private var §_-hE§:b2Mat22;
      
      private var §_-qG§:b2Vec2;
      
      private var §_-OA§:Number;
      
      private var §_-Zq§:Number;
      
      private var §_-fc§:Number;
      
      private var §_-9q§:Number;
      
      private var §_-lL§:Number;
      
      public function b2MouseJoint(param1:b2MouseJointDef)
      {
         var _loc2_:Number = NaN;
         var _loc4_:b2Mat22 = null;
         this.§_-Jy§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.§_-s0§ = new b2Vec2();
         this.§_-PC§ = new b2Vec2();
         this.§_-AM§ = new b2Vec2();
         this.§_-hE§ = new b2Mat22();
         this.§_-qG§ = new b2Vec2();
         super(param1);
         this.§_-PC§.SetV(param1.target);
         _loc2_ = this.§_-PC§.x - b2internal::_-qA.m_xf.position.x;
         var _loc3_:Number = this.§_-PC§.y - b2internal::_-qA.m_xf.position.y;
         _loc4_ = b2internal::_-qA.m_xf.R;
         this.§_-s0§.x = _loc2_ * _loc4_.col1.x + _loc3_ * _loc4_.col1.y;
         this.§_-s0§.y = _loc2_ * _loc4_.col2.x + _loc3_ * _loc4_.col2.y;
         this.§_-OA§ = param1.§_-li§;
         this.§_-AM§.§_-TJ§();
         this.§_-Zq§ = param1.§_-Dr§;
         this.§_-fc§ = param1.§_-Dj§;
         this.§_-9q§ = 0;
         this.§_-lL§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return this.§_-PC§;
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::_-qA.GetWorldPoint(this.§_-s0§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§_-AM§.x,param1 * this.§_-AM§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §_-Je§() : b2Vec2
      {
         return this.§_-PC§;
      }
      
      public function §_-lM§(param1:b2Vec2) : void
      {
         if(b2internal::_-qA.IsAwake() == false)
         {
            b2internal::_-qA.SetAwake(true);
         }
         this.§_-PC§ = param1;
      }
      
      public function §_-KF§() : Number
      {
         return this.§_-OA§;
      }
      
      public function §_-98§(param1:Number) : void
      {
         this.§_-OA§ = param1;
      }
      
      public function §_-Pd§() : Number
      {
         return this.§_-Zq§;
      }
      
      public function §_-nO§(param1:Number) : void
      {
         this.§_-Zq§ = param1;
      }
      
      public function §_-Ue§() : Number
      {
         return this.§_-fc§;
      }
      
      public function §_-15§(param1:Number) : void
      {
         this.§_-fc§ = param1;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc7_:b2Mat22 = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc2_:b2Body = b2internal::_-qA;
         var _loc3_:Number = _loc2_.GetMass();
         var _loc4_:Number = 2 * Math.PI * this.§_-Zq§;
         var _loc5_:Number = 2 * _loc3_ * this.§_-fc§ * _loc4_;
         var _loc6_:Number = _loc3_ * _loc4_ * _loc4_;
         this.§_-lL§ = param1.§_-pG§ * (_loc5_ + param1.§_-pG§ * _loc6_);
         this.§_-lL§ = this.§_-lL§ != 0 ? Number(1 / this.§_-lL§) : Number(0);
         this.§_-9q§ = param1.§_-pG§ * _loc6_ * this.§_-lL§;
         _loc7_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.§_-s0§.x - _loc2_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§_-s0§.y - _loc2_.m_sweep.localCenter.y;
         var _loc10_:Number = _loc7_.col1.x * _loc8_ + _loc7_.col2.x * _loc9_;
         _loc9_ = _loc7_.col1.y * _loc8_ + _loc7_.col2.y * _loc9_;
         _loc8_ = _loc10_;
         _loc11_ = _loc2_.§_-dH§;
         _loc12_ = _loc2_.§_-sp§;
         this.K1.col1.x = _loc11_;
         this.K1.col2.x = 0;
         this.K1.col1.y = 0;
         this.K1.col2.y = _loc11_;
         this.K2.col1.x = _loc12_ * _loc9_ * _loc9_;
         this.K2.col2.x = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col1.y = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col2.y = _loc12_ * _loc8_ * _loc8_;
         this.§_-Jy§.§_-5m§(this.K1);
         this.§_-Jy§.§_-qQ§(this.K2);
         this.§_-Jy§.col1.x += this.§_-lL§;
         this.§_-Jy§.col2.y += this.§_-lL§;
         this.§_-Jy§.§_-Sy§(this.§_-hE§);
         this.§_-qG§.x = _loc2_.m_sweep.c.x + _loc8_ - this.§_-PC§.x;
         this.§_-qG§.y = _loc2_.m_sweep.c.y + _loc9_ - this.§_-PC§.y;
         _loc2_.m_angularVelocity *= 0.98;
         this.§_-AM§.x *= param1.§_-Xs§;
         this.§_-AM§.y *= param1.§_-Xs§;
         _loc2_.§_-wk§.x += _loc11_ * this.§_-AM§.x;
         _loc2_.§_-wk§.y += _loc11_ * this.§_-AM§.y;
         _loc2_.m_angularVelocity += _loc12_ * (_loc8_ * this.§_-AM§.y - _loc9_ * this.§_-AM§.x);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc3_:b2Mat22 = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:b2Body = b2internal::_-qA;
         _loc3_ = _loc2_.m_xf.R;
         var _loc6_:Number = this.§_-s0§.x - _loc2_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§_-s0§.y - _loc2_.m_sweep.localCenter.y;
         _loc4_ = _loc3_.col1.x * _loc6_ + _loc3_.col2.x * _loc7_;
         _loc7_ = _loc3_.col1.y * _loc6_ + _loc3_.col2.y * _loc7_;
         _loc6_ = _loc4_;
         var _loc8_:Number = _loc2_.§_-wk§.x + -_loc2_.m_angularVelocity * _loc7_;
         var _loc9_:Number = _loc2_.§_-wk§.y + _loc2_.m_angularVelocity * _loc6_;
         _loc3_ = this.§_-hE§;
         _loc4_ = _loc8_ + this.§_-9q§ * this.§_-qG§.x + this.§_-lL§ * this.§_-AM§.x;
         _loc5_ = _loc9_ + this.§_-9q§ * this.§_-qG§.y + this.§_-lL§ * this.§_-AM§.y;
         var _loc10_:Number = -(_loc3_.col1.x * _loc4_ + _loc3_.col2.x * _loc5_);
         var _loc11_:Number = -(_loc3_.col1.y * _loc4_ + _loc3_.col2.y * _loc5_);
         var _loc12_:Number = this.§_-AM§.x;
         var _loc13_:Number = this.§_-AM§.y;
         this.§_-AM§.x += _loc10_;
         this.§_-AM§.y += _loc11_;
         var _loc14_:Number = param1.§_-pG§ * this.§_-OA§;
         if(this.§_-AM§.§_-8y§() > _loc14_ * _loc14_)
         {
            this.§_-AM§.§_-5L§(_loc14_ / this.§_-AM§.§_-UN§());
         }
         _loc10_ = this.§_-AM§.x - _loc12_;
         _loc11_ = this.§_-AM§.y - _loc13_;
         _loc2_.§_-wk§.x += _loc2_.§_-dH§ * _loc10_;
         _loc2_.§_-wk§.y += _loc2_.§_-dH§ * _loc11_;
         _loc2_.m_angularVelocity += _loc2_.§_-sp§ * (_loc6_ * _loc11_ - _loc7_ * _loc10_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
