package §_-E6§
{
   import §_-WW§.b2Body;
   import §_-WW§.b2TimeStep;
   import §_-dx§.b2Mat22;
   import §_-dx§.b2Vec2;
   import §_-iO§.b2internal;
   
   use namespace b2internal;
   
   public class b2MouseJoint extends b2Joint
   {
       
      
      private var §_-2q§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var §_-kR§:b2Vec2;
      
      private var §_-S4§:b2Vec2;
      
      private var §_-TC§:b2Vec2;
      
      private var §_-dz§:b2Mat22;
      
      private var §_-e§:b2Vec2;
      
      private var §_-wm§:Number;
      
      private var §continue§:Number;
      
      private var §_-dL§:Number;
      
      private var §else §:Number;
      
      private var §_-cg§:Number;
      
      public function b2MouseJoint(param1:b2MouseJointDef)
      {
         var _loc2_:Number = NaN;
         var _loc4_:b2Mat22 = null;
         this.§_-2q§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.§_-kR§ = new b2Vec2();
         this.§_-S4§ = new b2Vec2();
         this.§_-TC§ = new b2Vec2();
         this.§_-dz§ = new b2Mat22();
         this.§_-e§ = new b2Vec2();
         super(param1);
         this.§_-S4§.SetV(param1.target);
         _loc2_ = this.§_-S4§.x - b2internal::_-7f.m_xf.position.x;
         var _loc3_:Number = this.§_-S4§.y - b2internal::_-7f.m_xf.position.y;
         _loc4_ = b2internal::_-7f.m_xf.R;
         this.§_-kR§.x = _loc2_ * _loc4_.col1.x + _loc3_ * _loc4_.col1.y;
         this.§_-kR§.y = _loc2_ * _loc4_.col2.x + _loc3_ * _loc4_.col2.y;
         this.§_-wm§ = param1.§_-Nd§;
         this.§_-TC§.§_-pZ§();
         this.§continue§ = param1.§_-xZ§;
         this.§_-dL§ = param1.§_-BC§;
         this.§else § = 0;
         this.§_-cg§ = 0;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return this.§_-S4§;
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::_-7f.GetWorldPoint(this.§_-kR§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§_-TC§.x,param1 * this.§_-TC§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §_-iu§() : b2Vec2
      {
         return this.§_-S4§;
      }
      
      public function §_-jw§(param1:b2Vec2) : void
      {
         if(b2internal::_-7f.IsAwake() == false)
         {
            b2internal::_-7f.SetAwake(true);
         }
         this.§_-S4§ = param1;
      }
      
      public function §_-Kl§() : Number
      {
         return this.§_-wm§;
      }
      
      public function §_-0V§(param1:Number) : void
      {
         this.§_-wm§ = param1;
      }
      
      public function §_-Ml§() : Number
      {
         return this.§continue§;
      }
      
      public function §_-iy§(param1:Number) : void
      {
         this.§continue§ = param1;
      }
      
      public function §_-sG§() : Number
      {
         return this.§_-dL§;
      }
      
      public function §_-gH§(param1:Number) : void
      {
         this.§_-dL§ = param1;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc7_:b2Mat22 = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc2_:b2Body = b2internal::_-7f;
         var _loc3_:Number = _loc2_.GetMass();
         var _loc4_:Number = 2 * Math.PI * this.§continue§;
         var _loc5_:Number = 2 * _loc3_ * this.§_-dL§ * _loc4_;
         var _loc6_:Number = _loc3_ * _loc4_ * _loc4_;
         this.§_-cg§ = param1.§_-a9§ * (_loc5_ + param1.§_-a9§ * _loc6_);
         this.§_-cg§ = this.§_-cg§ != 0 ? Number(1 / this.§_-cg§) : Number(0);
         this.§else § = param1.§_-a9§ * _loc6_ * this.§_-cg§;
         _loc7_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.§_-kR§.x - _loc2_.m_sweep.localCenter.x;
         var _loc9_:Number = this.§_-kR§.y - _loc2_.m_sweep.localCenter.y;
         var _loc10_:Number = _loc7_.col1.x * _loc8_ + _loc7_.col2.x * _loc9_;
         _loc9_ = _loc7_.col1.y * _loc8_ + _loc7_.col2.y * _loc9_;
         _loc8_ = _loc10_;
         _loc11_ = _loc2_.§_-YH§;
         _loc12_ = _loc2_.§_-49§;
         this.K1.col1.x = _loc11_;
         this.K1.col2.x = 0;
         this.K1.col1.y = 0;
         this.K1.col2.y = _loc11_;
         this.K2.col1.x = _loc12_ * _loc9_ * _loc9_;
         this.K2.col2.x = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col1.y = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col2.y = _loc12_ * _loc8_ * _loc8_;
         this.§_-2q§.§_-JX§(this.K1);
         this.§_-2q§.§_-hU§(this.K2);
         this.§_-2q§.col1.x += this.§_-cg§;
         this.§_-2q§.col2.y += this.§_-cg§;
         this.§_-2q§.§_-Hd§(this.§_-dz§);
         this.§_-e§.x = _loc2_.m_sweep.c.x + _loc8_ - this.§_-S4§.x;
         this.§_-e§.y = _loc2_.m_sweep.c.y + _loc9_ - this.§_-S4§.y;
         _loc2_.m_angularVelocity *= 0.98;
         this.§_-TC§.x *= param1.§_-3W§;
         this.§_-TC§.y *= param1.§_-3W§;
         _loc2_.§_-Ce§.x += _loc11_ * this.§_-TC§.x;
         _loc2_.§_-Ce§.y += _loc11_ * this.§_-TC§.y;
         _loc2_.m_angularVelocity += _loc12_ * (_loc8_ * this.§_-TC§.y - _loc9_ * this.§_-TC§.x);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc3_:b2Mat22 = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:b2Body = b2internal::_-7f;
         _loc3_ = _loc2_.m_xf.R;
         var _loc6_:Number = this.§_-kR§.x - _loc2_.m_sweep.localCenter.x;
         var _loc7_:Number = this.§_-kR§.y - _loc2_.m_sweep.localCenter.y;
         _loc4_ = _loc3_.col1.x * _loc6_ + _loc3_.col2.x * _loc7_;
         _loc7_ = _loc3_.col1.y * _loc6_ + _loc3_.col2.y * _loc7_;
         _loc6_ = _loc4_;
         var _loc8_:Number = _loc2_.§_-Ce§.x + -_loc2_.m_angularVelocity * _loc7_;
         var _loc9_:Number = _loc2_.§_-Ce§.y + _loc2_.m_angularVelocity * _loc6_;
         _loc3_ = this.§_-dz§;
         _loc4_ = _loc8_ + this.§else § * this.§_-e§.x + this.§_-cg§ * this.§_-TC§.x;
         _loc5_ = _loc9_ + this.§else § * this.§_-e§.y + this.§_-cg§ * this.§_-TC§.y;
         var _loc10_:Number = -(_loc3_.col1.x * _loc4_ + _loc3_.col2.x * _loc5_);
         var _loc11_:Number = -(_loc3_.col1.y * _loc4_ + _loc3_.col2.y * _loc5_);
         var _loc12_:Number = this.§_-TC§.x;
         var _loc13_:Number = this.§_-TC§.y;
         this.§_-TC§.x += _loc10_;
         this.§_-TC§.y += _loc11_;
         var _loc14_:Number = param1.§_-a9§ * this.§_-wm§;
         if(this.§_-TC§.§_-u4§() > _loc14_ * _loc14_)
         {
            this.§_-TC§.§_-Lp§(_loc14_ / this.§_-TC§.§_-gq§());
         }
         _loc10_ = this.§_-TC§.x - _loc12_;
         _loc11_ = this.§_-TC§.y - _loc13_;
         _loc2_.§_-Ce§.x += _loc2_.§_-YH§ * _loc10_;
         _loc2_.§_-Ce§.y += _loc2_.§_-YH§ * _loc11_;
         _loc2_.m_angularVelocity += _loc2_.§_-49§ * (_loc6_ * _loc11_ - _loc7_ * _loc10_);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
